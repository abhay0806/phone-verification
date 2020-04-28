Rails.application.routes.draw do
  get 'phone_verifications/new'

  get 'phone_verifications/create'

  get 'phone_verifications/challenge'

  get 'phone_verifications/verify'

  get 'phone_verifications/success'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :phone_verifications, :only => [:new, :create] do |p|
    collection do
      get 'challenge'
      post 'verify'
      get 'success'
    end
  end
end
