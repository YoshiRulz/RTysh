def ls(options = {})
	flat = Dir.children Dir.pwd
	if options[:show_dotfiles].nil? || !options[:show_dotfiles]
		flat.reject! {|d| d.start_with? "."}
	else
		flat << "." if !options[:include_cwd].nil? && options[:include_cwd]
		flat << ".." if !options[:include_parent].nil? && options[:include_parent]
	end
	if !options[:show_mode].nil? && options[:show_mode]
		rich = flat.map {|d| [d, "%04o"%(File.stat(d).mode & 4095)]}
	end
	return rich.nil? ? flat : rich.sort_by(&:first)
end
