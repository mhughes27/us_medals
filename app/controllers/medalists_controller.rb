class MedalistsController < ApplicationController
	
	def index
		@medalist = Medalist.all
	end

	def show
		@medalist =Medalist.find(params[:id])
	end

	def new
		@medalist = Medalist.new
	end

	def edit
		@medalist = Medalist.find(params[:id])
	end

	def create
		@medalist = Medalist.new(medalist_params)

		if @medalist.save
			redirect_to @medalist
		else
			render 'new'
		end
	end

	def update
		@medalist = Medalist.find(params[:id])

		if @medalist.update(medalist_params)
			redirect_to @medalist
		else
			render 'edit'
		end
	end

	def destroy
		@medalist = Medalist.find(params[:id])
		@medalist.destroy

		redirect_to medalists_path
	end

	private
		def medalist_params
			params.require(:medalist).permit(:athlete, :sport, :event, :place)
		end
end
