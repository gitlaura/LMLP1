SbxSplashPage::Application.routes.draw do

  root :to => 'welcome#index'
  post '/register-email' => 'welcome#register_email', as: :register_email

  get '/therapists' => 'welcome#therapists'

  get '/signupform' => 'welcome#signupform'

  # match '*path', :to => 'application#render_404'
end
