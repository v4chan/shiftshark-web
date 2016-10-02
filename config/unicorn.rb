
require 'dotenv'
Dotenv.load
rails_env = ENV['RAILS_ENV']

# set path to application
app_dir = File.expand_path( "../..", __FILE__)
shared_dir = "#{app_dir}/run"
working_directory app_dir
port = ENV.fetch("RAILS_PORT", 3000 )

# Set unicorn options
worker_processes ENV.fetch( "RAILS_WORKERS", 2 ).to_i
preload_app true
timeout 30

# Set up socket location
listen "#{shared_dir}/unicorn.sock", :backlog => 64
if rails_env != 'production'
	listen "localhost:#{port}"
end

# Logging
if [ 'beta', 'production'].include? rails_env
	stderr_path "#{shared_dir}/unicorn.err.log"
	stdout_path "#{shared_dir}/unicorn.out.log"
end

# Set master PID location
pid "#{shared_dir}/unicorn.pid"
