Oraculo::Application.routes.draw do
  devise_for :users

  resources :questions do
    resources :answers
  end

  resources :answers do
    member do
      post :report_abuse
    end
  end

  root to: "questions#index"
end

