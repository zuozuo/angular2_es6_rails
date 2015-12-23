module Angular2Es6Rails
  class Engine < ::Rails::Engine
    isolate_namespace Angular2Es6Rails
  end
end

Gem.loaded_specs['angular2_es6_rails'].dependencies.each do |d|
  require d.name
end

