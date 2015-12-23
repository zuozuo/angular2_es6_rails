class Angular2Es6RailsGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

	def copy_package_json
		copy_file 'package.json', "package.json"
	end
end
