class FakesController < ApplicationController
	before_action :authenticate_user!, except: [:index]

	def index
		@fakes = Fake.all
	end

	def new
		@fake = Fake.new

		respond_to do |f|
			f.js
		end
	end

	def create
		@fake = Fake.create(fake_params)
		# flash[:alerts] = @fake.errors.empty? ? "Error" : @fake.errors.full_messages.to_sentence

		redirect_to :root
	end

	def show
		@fake = Fake.find(params[:id])
	end

	def destroy
		@fake = current_user.fakes.find(params[:id])
		@fake.destroy

		respond_to do |f|
			f.js
		end
	end

	private

	def fake_params
		params.require(:fake).permit(:image, :creator_id, :source, :title)
	end
end
