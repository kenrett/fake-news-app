module FakesHelper

	def is_creator?(fake)
		current_user.id == fake.creator_id
	end
end
