require '../lib/krakken.rb'

config = { "ip_address" => "127.0.0.1", "port" => "4568", "launch_code" => "5658" }

settings = Krakken.new

settings.write(config)

result = settings.parse

puts "The server will run on #{result["ip_address"]}:#{result["port"]}"
puts "The launch code is #{result["launch_code"]}."
