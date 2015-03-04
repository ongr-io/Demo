#!/bin/bash

####################################
# ProcessWire installation script. #
####################################
#
# Usage:
#
# chmod +x processwire.sh
# ./processwire.sh master
#
# To have the latest version use:
#
# ./processwire.sh dev
#
# To change the default installation path you can use the second parameter:
# ./processwire.sh master /var/www/full/path/to/the/installation/folder
#
# After the installation by default you'll be able to access
# your installation via this link:
# http://processwire.ongr.dev
#
# The administration dashboard will be located at:
# http://processwire.ongr.dev/manager
#
# And the default login data will be:
# Login:    admin
# Password: password1
#
# You can always change it in your profile settings.
#
############################################################################

######################################
# CONFIGURE THE DEFAULT VALUES HERE. #
######################################

# ProcessWire GitHub repository URL.
PW_REPO_URL="git://github.com/ryancramerdesign/ProcessWire.git"

# Absolute path to the directory with this installation script.
SCRIPT_LOCATION=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)

# ProcessWire installation directory.
INSTALLATION_LOCATION=${SCRIPT_LOCATION}/processwire

# MySQL default settings.
MYSQL_SERVER="localhost"
MYSQL_DATABASE="processwire"
MYSQL_USERNAME="root"
MYSQL_PASSWORD="root"

#############################################################
# IT IS NOT RECOMMENDED TO CHANGE ANYTHING BELOW THIS LINE! #
#############################################################

############
# Methods. #
############

#
# Method to colorize the output or to prepend the time and date to it.
#
# Usage:
#
# out red
# out "Error!"
# out "Something went wrong!"
# out end
#
function out ()
{
    if [[ $1 == "red" ]]
    then
        echo -e "\e[31m"
    elif [[ $1 == "green" ]]
    then
        echo -e "\e[32m"
    elif [[ $1 == "yellow" ]]
    then
        echo -e "\e[33m"
    elif [[ $1 == "blue" ]]
    then
        echo -e "\e[34m"
    elif [[ $1 == "end" ]]
    then
        echo -e "\e[0m"
    else
        echo "["`date +"%Y-%m-%d %T"`"] $1"
    fi
}

# Method to check the execution outcome.
function check_outcome()
{
    if [[ $? -ne 0 ]]
    then
        out red
        out "Failed: $1"
        out end
        exit 1
    else
        out green
        out "Success: $1"
        out end
    fi
}

# Method to import the database dump.
function import_db
{
    cat ${SCRIPT_LOCATION}/processwire.sql | mysql ${MYSQL_DATABASE} -u ${MYSQL_USERNAME} -p${MYSQL_PASSWORD}
    check_outcome "Putting database dump in it's place."
}

# SQL query function.
function sql_query()
{
    if [[ $2 != "" ]]
    then
        echo "$1" | mysql $2 -u ${MYSQL_USERNAME} -p${MYSQL_PASSWORD} 1>/dev/null
    else
        echo "$1" | mysql -u ${MYSQL_USERNAME} -p${MYSQL_PASSWORD} 1>/dev/null
    fi

    return $?
}

# Installation process.
function install ()
{
    git clone -b $1 $2 $3
    check_outcome "Cloning the ProcessWire repository."

    sudo rm ${INSTALLATION_LOCATION}/install.php
    check_outcome "Removing install.php file"

    sudo mv ${INSTALLATION_LOCATION}/site-languages ${INSTALLATION_LOCATION}/site
    check_outcome "Renaming site-languages to site."

    sudo cp ${SCRIPT_LOCATION}/processwireConfig.php ${INSTALLATION_LOCATION}/site/config.php
    check_outcome "Moving ProcessWire configuration file."

    sudo mkdir ${INSTALLATION_LOCATION}/site/assets/sessions
    check_outcome "Create sessions folder."

    (cd ${INSTALLATION_LOCATION}/site/modules; git clone https://github.com/ryancramerdesign/ServicePages.git; cp ServicePages/service-pages.php ../templates/service-pages.php)

    sudo chmod 777 ${INSTALLATION_LOCATION}/site/assets ${INSTALLATION_LOCATION}/site/assets/* ${INSTALLATION_LOCATION}/site/modules
    check_outcome "Defining CHMOD rights to the ProcessWire folders."

    sudo sed -i -e "s/if(ini_get('session.save_handler') == 'files')/\/\//g" ${INSTALLATION_LOCATION}/index.php
    check_outcome "Remove session save handler directive from ProcessWire's index.php file."

    sudo cp ${SCRIPT_LOCATION}/processwire.conf /etc/nginx/sites-available/processwire.ongr.dev.conf
    check_outcome "Copying NGINX configuration file."

    if [[ ! -f /etc/nginx/sites-enabled/processwire.ongr.dev.conf ]]
    then
        sudo ln -s /etc/nginx/sites-available/processwire.ongr.dev.conf /etc/nginx/sites-enabled/processwire.ongr.dev.conf
        check_outcome "Creating a symbolic link of NGINX configuration."
    fi

    sudo nginx -s reload
    check_outcome "Reloading NGINX server."

    # Importing database dump.
    sql_query "SHOW TABLES;" ${MYSQL_DATABASE}

    if [[ $? -ne 0 ]]
    then
        sql_query "CREATE DATABASE $MYSQL_DATABASE;"
        check_outcome "Creating database..."
        import_db
    else
        out yellow
        out "*** USER INPUT REQUIRED:"
        uinput=""

        while [[ ${uinput} == "" ]]
        do
            read -r -n 1 -p "Database ${MYSQL_DATABASE} exists. Do you want to [D]rop and recreate it, [I]mport data, [S]kip import of the data (default: [S])?" input
            echo ""
            case ${input} in
                D)
                    sql_query "DROP DATABASE $MYSQL_DATABASE;"
                    check_outcome "Dropping the database."
                    sql_query "CREATE DATABASE $MYSQL_DATABASE;"
                    check_outcome "Creating the database."
                    import_db
                    uinput="out"
                ;;
                I)
                    import_db
                    uinput="out"
                ;;
                S)
                    uinput="out"
                ;;
                *)
                echo "Invalid selection, choose one of the [ D, I, S ]!"
                ;;
            esac
        done

        out end
    fi
}

####################################
# The actual installation process. #
####################################

out blue
out "==============================="
out "ProcessWire installation script"
out "==============================="
out end

# Script arguments.
args=("$@")
BRANCH=${args[0]}
CUSTOM_INSTALLATION_LOCATION=${args[1]}

# Check if the ProcessWire GitHub branch was specified.
if [[ -z ${BRANCH} ]] || [[ ${BRANCH} != "master" && ${BRANCH} != "dev" ]]
then
    out red
    out "Error:"
    out "No correct ProcessWire branch specified."
    out "Example: './processwire.sh master' or './processwire.sh dev'"

    while [ ${BRANCH} != "master" ] && [ ${BRANCH} != "dev" ]
    do
        out yellow
        out "Please input a valid branch name or the letter 'n' to exit the script:"

        read BRANCH

        if [[ ${BRANCH} == "n" ]]
        then
            out end
            exit 0
        fi
    done

    out end
fi

# Check if the custom installation directory path is defined and does not already exist.
if [[ ! -z ${CUSTOM_INSTALLATION_LOCATION} ]]
then
    INSTALLATION_LOCATION=${CUSTOM_INSTALLATION_LOCATION}
fi

# Check if the installation directory already exists.
if [[ -d ${INSTALLATION_LOCATION} ]]
then
    out red
    out "Error:"
    out "The installation directory '${INSTALLATION_LOCATION}' already exists or is incorrectly defined."
    out "Please delete it before continuing."
    out yellow

    echo -e "\n*** USER INPUT REQUIRED"
        uinput=""
        while [[ ${uinput} == "" ]]
        do
            read -r -n 1 -p "Installation directory ${INSTALLATION_LOCATION} exists. Do you want to [D]elete and recreate it, or [S]top the installation (default: [S])?" input
            echo ""
            case ${input} in
            D)
                sudo rm -rf ${INSTALLATION_LOCATION}
                check_outcome "Removing the directory for ProcessWire installation."
                uinput="out"
            ;;
            S)
                uinput="out"
                exit 0
            ;;
            *)
            echo "Invalid selection, choose one of [ D, M, S ]!"
            ;;
        esac
    done

    out end
fi

# Start the setup.
install ${BRANCH} ${PW_REPO_URL} ${INSTALLATION_LOCATION}
check_outcome "ProcessWire installation."

out blue
out "======================"
out "Installation complete!"
out "Admin link: http://processwire.ongr.dev/manager"
out "Username: admin"
out "Username: password1"
out "======================"
out end
