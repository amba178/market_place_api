class Api::V1::ProductsController < ApplicationController
	respond_to :json 

	def show
		product = Product.find(params[:id])
		respond_with product
	end

	def index
		respond_with Product.all 
	end
end
