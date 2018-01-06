puts " ==> Welcome to RTysh v0.1  -+-  \`rman <cmd>\` for help  -+-  ^D to quit"

module RTysh
	class Clear; def inspect; "\e[H\e[2J" end end
	def RTysh.load(mod) require_relative "rtysh/#{mod}/true.rb" end
end

Dir.children(__FILE__[0..-4]).each do |d| require_relative "rtysh/#{d}/facade.rb" end

def rman method_name
	puts "For the time being, RTysh (and thus \`rman\`) is a work in progress and not intended for daily use.\nHowever, with the exception of things like sudo, arbitrary UNIX shell functionality can be achieved with the %%x macro (subshell). Also, \`cd\` and \`pwd\` methods are implemented which work exactly as you'd expect (albeit they are typed bool and string)."
	return true
end
