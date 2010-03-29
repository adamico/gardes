ActionController::Routing::Routes.draw do |map|
  map.resources :medecins, :gardes
  map.root :controller => 'welcome', :action => 'index'
end
