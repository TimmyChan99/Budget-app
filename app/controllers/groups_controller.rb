class GroupsController < ApplicationController
	def home
	@categories = current_user.groups
  end
end
