# config valid for current version and patch releases of Capistrano
lock "~> 3.10.2"

#set :application, "my_app_name"
#set :repo_url, "git@example.com:me/my_repo.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

# !! When editing the file (or defining the configurations),
#    you can either comment them out or add the new lines.
#    Make sure to **not** to have some example settings
#    overriding the ones you are appending.

# Define the name of the application
set :application, 'app'

# Define where can Capistrano access the source repository
# set :repo_url, 'https://github.com/[user name]/[application name].git'
#set :scm, :git depricated
set :repo_url, 'https://github.com/rahuldas11694/PhpProject.git'

# Define where to put your application code
set :deploy_to, "/var/www/html/app"

set :pty, true
set :deploy_via, :remote_cache
set :sudo, 'rvmsudo'
set :format, :pretty
set :default_env, { path: "/usr/local/bin:$PATH" }
set :stages, [:staging, :production]
set :default_stage, :production



# Set your post-deployment settings.
# For example, you can restart your Nginx process
# similar to the below example.
# To learn more about how to work with Capistrano tasks
# check out the official Capistrano documentation at:
# http://capistranorb.com/

# namespace :deploy do
#   desc 'Restart application'
#   task :restart do
#     on roles(:app), in: :sequence, wait: 5 do
#       # Your restart mechanism here, for example:
#       sudo "service nginx restart"
#     end
#   end
# end
