Rails.application.routes.draw do
  scope(path_names: { new: 'nueva', edit: 'editar' }) do
    resources :clinicas, param: :codigo, only: [:index, :new, :edit, :create, :update]
    devise_for :usuarios, path_names: {
      sign_in: 'iniciar_sesion', sign_out: 'cerrar_sesion',
      password: 'contraseña', confirmation: 'confirmacion',
      invitation: 'invitaciones'
    }
    resources :usuarios, only: [:index, :destroy]

    resources :donantes do
      collection do
        get "importar", to: "donantes#import"
        post "importar", to: "donantes#do_import"
      end
    end
    # Defines the root path route ("/")
    root "donantes#index"
    get "up" => "rails/health#show", as: :rails_health_check
  end
end
