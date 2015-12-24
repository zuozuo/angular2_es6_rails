Rails.application.routes.draw do
  root "home#index"
  get 'home/index' => 'home#index'
  mount Angular2Es6Rails::Engine => "/angular2_es6_rails"
end
