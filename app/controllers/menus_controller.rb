class MenusController < ApplicationController
	include MenusHelper
	def show
	end

	def index
		@menu = menu_items
	end
end
