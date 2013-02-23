# require Krakken
require '../lib/krakken.rb'

# Define our Config File
config = { "ip_address" => "127.0.0.1", "port" => "4568", "launch_code" => "5658" }

# Create a new Krakken Object
settings = Krakken.new

# Write the config file to disk
settings.write(config)

# Parse the config file we just saved
result = settings.parse

# And do something with it
puts "The server will run on #{result["ip_address"]}:#{result["port"]}"
puts "The launch code is #{result["launch_code"]}."
