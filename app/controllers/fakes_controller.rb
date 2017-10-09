class FakesController < ApplicationController
	before_action :authenticate_user!, except: [:index]

	def index
		@fakes = Fake.all
	end

	def new
		@fake = Fake.new

		respond_to do |f|
			f.js {}
		end
	end

	def create
		@fake = Fake.create(fake_params)

		redirect_to :root
	end

	private

	def fake_params
		params.require(:fake).permit(:image)
	end
end
