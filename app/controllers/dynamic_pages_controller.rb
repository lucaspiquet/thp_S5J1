class DynamicPagesController < ApplicationController
	def welcome
		@user_name = params['name']
	end

end
