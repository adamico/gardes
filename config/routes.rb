ActionController::Routing::Routes.draw do |map|
  map.resources :medecins, :gardes, :synchronisations
  map.do_synchro 'do_synchro', :controller => 'synchronisations', :action => 'do_synchro'
  map.root :controller => 'welcome', :action => 'index'
end
