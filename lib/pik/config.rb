require 'yaml'

class Pik

	class Config < Hash
			
		def initialize
			@file = File.join(PIK_HOME, 'config.yml')
			if File.exists? @file
				self.update( YAML.load( File.read( @file ) ) )
			end
		end

		def write
			File.open(@file, 'w'){|f| f.puts YAML::dump(self) }
		end

	end

end