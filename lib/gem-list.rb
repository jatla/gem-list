module GemList

	# attr_accessor :list

	# def initialize
	# 	@list = []
	# 	Gem::Specification.each{|g| @list << g }
	# end

	def list
		Gem::Specification.all_names
	end

	def isInstalled gemName
		begin
			Gem::Specification.find_by_name(gemName).is_a?(Gem::Specification) 
		rescue Gem::LoadError
			false
		end
	end
end