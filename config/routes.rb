CodeStandards::Application.routes.draw do

  ym_users_routes

  get "standards-style" => "home#style"
  root :to => 'home#index'

end
