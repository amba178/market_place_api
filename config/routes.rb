require 'api_constraints'

Rails.application.routes.draw do
  
  devise_for :users
  # Api definition example: http://api.market_palce_api.dev/users/1 using pow
  namespace :api, defaults: { format: :json }, constraints: {subdomain: 'api'}, path: '/' do 

    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
    	resources :users, :only => [:show, :create, :update, :destroy]
               
    end

  end
end
