Rails.application.routes.draw do
  get 'weapon/sword'
  get 'weapon/rance'
  get 'weapon/axe'
  get 'weapon/hammer'
  get 'weapon/wand'
  get 'weapon/bow'
  get 'weapon/armor'
  get 'weapon/other'
  get 'weapon/index'
  get 'contacts/sended'
  get 'contacts/new' 
  
  get 'contact/index'
  get 'sitemap/index'
  get 'policy/index'
  get 'kiyaku/index'
  get 'guide/index'
  get 'support/index'
  get 'g/support'
  get 'g/index'
  get 'catalog/index'
  get 'buy/index'
  # This line mounts Solidus's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Solidus relies on it being the default of "spree"
  mount Spree::Core::Engine, at: '/'
  resources :contacts
  get 'buy/index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
