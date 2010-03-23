ActionController::Routing::Routes.draw do |map|
  map.resources :gardes
  map.root :controller => 'welcome', :action => 'index'
end
