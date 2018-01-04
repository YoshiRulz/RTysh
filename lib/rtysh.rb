puts " ==> Welcome to RTysh v0.1  -+-  \`rman <cmd>\` for help  -+-  ^D to quit"

["builtins"].each do |f| require_relative "rtysh/#{f}.rb" end

def rman method_name
	puts "For the time being, RTysh (and thus \`rman\`) is a work in progress and not intended for daily use.\nHowever, with the exception of things like sudo, arbitrary UNIX shell functionality can be achieved with the %%x macro (subshell). Also, \`cd\` and \`pwd\` methods are implemented which work exactly as you'd expect (albeit they are typed bool and string)."
	return true
end
