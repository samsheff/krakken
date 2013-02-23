class Krakken

	def parse(config="settings.conf")

		values = []
		
		# Create a new File handler object
		File.open(config, 'r') do |configfile|
			# Keep parsing long as there is another unparsed line in the file
			while (nextline = configfile.gets)
				if nextline[0] != "#"
					nextline = nextline.gsub(/\s+/, '')
					splitvalues = nextline.split("=")
					splitvalues.each {|object| values << object}
				end
			end
		end
		return Hash[*values.flatten]
	end

	def write(settings, output="settings.conf")

		config = settings.map{|k,v| "#{k} = #{v}\n"}.join('')

		File.open(output, 'w') {|f| f.write(config)}

	end

end
