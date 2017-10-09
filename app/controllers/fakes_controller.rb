class FakesController < ApplicationController
	before_action :authenticate_user!, except: [:index]

	def index
		@fakes = Fake.all
	end
end
