ActionController::Routing::Routes.draw do |map|
  map.resources :medecins, :gardes
  map.do_synchro 'synchro', :controller => 'gardes', :action => 'synchro'
  map.root :controller => 'welcome', :action => 'index'
end
