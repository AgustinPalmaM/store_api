Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  scope '(:locale)', locale: /es|en/ do
    get 'home/greeting'
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
