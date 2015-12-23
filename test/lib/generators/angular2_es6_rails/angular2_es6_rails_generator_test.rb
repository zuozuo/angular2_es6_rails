require 'test_helper'
require 'generators/angular2_es6_rails/angular2_es6_rails_generator'

module Angular2Es6Rails
  class Angular2Es6RailsGeneratorTest < Rails::Generators::TestCase
    tests Angular2Es6RailsGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
