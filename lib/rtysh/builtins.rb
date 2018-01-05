def cd p; Dir.chdir(p) < 1 end
def clear; print "\e[H\e[2J" end
def pwd; Dir.pwd end
