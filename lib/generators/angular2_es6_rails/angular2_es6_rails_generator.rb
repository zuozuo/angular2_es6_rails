class Angular2Es6RailsGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

	def copy_package_json
		copy_file 'package.json', "package.json"
	end

	def copy_babelrc
		copy_file 'babelrc', '.babelrc'
	end

	def copy_gulpfile
		copy_file 'gulpfile.babel.js', 'gulpfile.babel.js'
	end

	def config_browserify
		puts '      add browserify_rails config to application.rb'
		application ' '
		application do
			'config.browserify_rails.commandline_options = "-t babelify  --extension=\".js.es6\" --extension=\".js\" --extension=\".es6\""'
		end
	end

	def create_angular2_assets
		puts '      create angular2 assets files'
		system 'mkdir', '-p', 'app/assets/javascripts/components'
		system 'mkdir', '-p', 'app/assets/javascripts/services'
		system 'mkdir', '-p', 'app/assets/javascripts/templates'

		copy_file 'index.js', "app/assets/javascripts/index.js"
		copy_file 'app.js', "app/assets/javascripts/components/app.js"
	end

	def require_index_js
		puts "      add require('./index.js') to app/assets/javascripts/application.js"
		gsub_file 'app/assets/javascripts/application.js', '//= require_tree .', "require('./index.js')"
	end

end
