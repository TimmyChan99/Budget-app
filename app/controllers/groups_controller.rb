class GroupsController < ApplicationController
	def home
	@categories = Group.all
	end
end
