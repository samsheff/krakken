class Krakken

	# The method used to parse the config files
	def parse(config="settings.conf")

		values = []
		
		# Create a new File handler object
		File.open(config, 'r') do |configfile|
			# Keep parsing long as there is another unparsed line in the file
			while (nextline = configfile.gets)
				# Check to see if we are parsing a comment
				if nextline[0] != "#"
					# Remove the whitespace
					nextline = nextline.gsub(/\s+/, '')
					# Split the key from the value
					# And add each to an array
					splitvalues = nextline.split("=")
					splitvalues.each {|object| values << object}
				end
			end
		end
		# Return the parsed values as a hash
		return Hash[*values.flatten]
	end

	# The method used to save the config file
	def write(settings, output="settings.conf")

		# Create the config file as a string to be written to disk
		config = settings.map{|k,v| "#{k} = #{v}\n"}.join('')

		# And save
		File.open(output, 'w') {|f| f.write(config)}

	end

end
