Rails.application.routes.draw do
  get 'office/home'
  get '/', to: 'office#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
