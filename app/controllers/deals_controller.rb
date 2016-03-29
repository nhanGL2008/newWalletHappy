class DealsController < ApplicationController
	before_action :find_deal, only: [:show, :edit, :update, :destroy]
	
	def index
		@deals = Deal.all.order("created_at DESC")
	end
	def show
	end
	def new
		@deal = Deal.new
	end
	def create
		@deal = Deal.new(deals_params)
		if @deal.save
			redirect_to @deal
		else
			render "New"
		end
	end
	def edit
		
	end
	def update
		if @deal.update(deals_params)
			redirect_to @deal
		else
			render "Edit"
		end
	end
	def destroy
		@deal.destroy
		redirect_to root_path
	end

	private

	def deals_params
		params.require(:deal).permit(:day, :money, :note, :wallet_id)
	end
	def find_deal
		@deal = Deal.find(params[:id])
	end
end
