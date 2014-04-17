CodeStandards::Application.routes.draw do

  ym_users_routes

  get "standards-style" => "home#style"
  get "layout-search" => "home#layout_search"
  root :to => 'home#index'

end
