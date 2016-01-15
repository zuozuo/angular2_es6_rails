module Angular2Es6Rails
  class Engine < ::Rails::Engine
    isolate_namespace Angular2Es6Rails
  end
end

Gem.loaded_specs['angular2_es6_rails'].dependencies.each do |d|
	begin
		require d.name
	rescue Exception => e
		puts e
	end
end
