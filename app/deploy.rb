# config valid only for current version of Capistrano
# lock '3.3.x'

set :application, 'sandbox'
set :repo_url, 'git@github.com:kazgurs/ongr-sandbox.git'

# Default branch is :master
set :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/tmp/'

# Default value for :scm is :git
set :scm, :archive

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
#set :linked_files, fetch(:linked_files, []).push('app/config/parameters.yml')

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('app/logs')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

set :archive_cache, true
set :tmp_dir, "build"
set :exclude, ["build"]

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
