# set path to application
app_dir = File.expand_path("../..", __FILE__)
shared_dir = "#{app_dir}/shared"
working_directory app_dir
port = ENV.fetch("RAILS_PORT") { 3000 }

# Set unicorn options
worker_processes ENV.fetch("RAILS_WORKERS") { 3000 }
preload_app true
timeout 30

# Set up socket location
listen "#{shared_dir}/sockets/unicorn.sock", :backlog => 64
if ENV['RAILS_ENV'] != 'production'
	listen "localhost:#{port}"
end

# Logging
stderr_path "#{shared_dir}/log/unicorn.err.log"
stdout_path "#{shared_dir}/log/unicorn.out.log"

# Set master PID location
pid "#{shared_dir}/pids/unicorn.pid"
