Rails.application.routes.draw do
  devise_for :teachers#, controllers: { registrations: 'teachers/registrations'}
  devise_for :students, controllers: { registrations: 'students/registrations' }
  resources :tasks
  

	get 'classrooms/all'
	resources :enrollments, only: [:create, :update, :destroy]

  resources :classrooms do
    get 'officehours'
    get 'forum'
  	resources :assignments  do
      resources :questions do
      resources :submissions
      end
    end
  end

  root :to => 'classrooms#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
