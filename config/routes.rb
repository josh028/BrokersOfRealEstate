Rails.application.routes.draw do
  get 'contact_us' => 'site#contact_us'
  post 'contact_form' => 'site#send_contact_form'
  root 'site#index'
  resources :houses do
    collection do
      get 'search'
      match 'results', via: [:get, :post]
    end
  end
end
