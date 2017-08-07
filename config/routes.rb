Rails.application.routes.draw do
  get 'answer', to: 'coaching#answer'

  get 'coaching/ask'

  root to: 'coaching#ask'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
