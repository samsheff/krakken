# Krakken
# The Dynamic Config File Parser And Generator [![Code Climate](https://codeclimate.com/github/samsheff/krakken.png)](https://codeclimate.com/github/samsheff/krakken)

### What is Krakken?

Krakken is a simple library for Ruby that allows for simple generation and parsing of configuration files.

### Install

	gem install krakken

and

	require 'krakken'

### How Does it Work?

If you want to parse or write a configuration file, create a new Krakken like so:

	config = Krakken.new

And either tell it to parse or write a file with the desired settings.

To Write A Config File:

	# Define the keys and values in a hash
	settings = { "name" => "Krakken", "job" => "Config File Specialist" }

	# And save to disk. If no output filename is given, the default is "settings.conf"
	config.write(settings)

And to Parse:

	# Tell it where to find the config file or use the default.
	results = config.parse

	# Retrieve the values stored in the settings file and output to the screen
	puts results["name"]
	puts results["job"]

	# Which looks like:
	Krakken
	Config File Speciallist

### To Do

Add the ability to add comments to a config file made by Krakken. So far we can parse comments that are started with '#' but they have to be added in by hand.

### Additionally, there is a code climate page at https://codeclimate.com/github/samsheff/krakken
