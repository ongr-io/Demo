# Load DSL and Setup Up Stages
require 'ongr_deploy'

# Includes default deployment tasks
require 'capistrano/deploy'

# Load custom tasks from `app/tasks' if you have any defined
Dir.glob( 'app/tasks/*.rake' ).each { |r| import r }
