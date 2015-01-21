# config valid only for current version of Capistrano
# lock '3.3.x'

set :application, 'ongr'
set :repo_url, 'git@github.com:ongr-io/ongr-sandbox.git'

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/var/www/ongr.nfq.com'

# Default value for :scm is :git
set :scm, :archive

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('app/config/parameters.yml')

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('app/logs')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5
set :archive_cache, true
set :archive_exclude, [
 '.capistrano',
 '.idea',
 '.jshintrc',
 '.scrutinizer.yml',
 '.scss-lint.yml',
 '.vagrant',
 'app/cache',
 'app/build',
 'app/data',
 'app/logs',
 'app/phpunit-ci.xml',
 'app/phpunit.xml.dist',
 'Gruntfile.js',
 'Vagrantfile',
 'behat.yml',
 'build.xml',
 'hiera.yaml',
 'local_build.xml',
]

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
