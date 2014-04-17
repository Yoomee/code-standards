CodeStandards::Application.routes.draw do

  ym_users_routes

  get "standards-style" => "home#style"
  get "layout-basic" => "home#layout_basic"
  get "layout-list" => "home#layout_list"
  get "layout-tiles" => "home#layout_tiles"
  get "layout-blog-post" => "home#layout_blog_post"
  get "layout-search" => "home#layout_search"
  get "layout-carousel" => "home#layout_carousel"
  get "layout-one-page" => "home#layout_one_page"

  root :to => 'home#index'

end
