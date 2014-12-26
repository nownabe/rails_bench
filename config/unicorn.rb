worker_processes `nproc || gnproc`.chomp.to_i

listen File.expand_path('tmp/sockets/unicorn.sock')
pid File.expand_path('tmp/pids/unicorn.pid')

log = File.expand_path('log/unicorn.log')
stderr_path log
stdout_path log

preload_app true

