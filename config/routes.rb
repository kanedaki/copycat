Rails.application.routes.draw do
  resources :copycat_translations, :only => [:index, :edit, :update] do
    get 'readme', :on => :collection
    get 'upload', :on => :collection
    post 'import_yaml', :on => :collection
  end
  post 'copycat_translations', :to => "copycat_translations#change_locale"
end
