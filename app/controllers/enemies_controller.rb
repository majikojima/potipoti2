class EnemiesController < ApplicationController

	def index
		@enemies = Enemy.all
	end

	def show
		@enemy = Enemy.find(params[:id])
	end

	def new
		@enemy = Enemy.new
	end

	def create
		@enemy = Enemy.new(enemy_params)
		@enemy.save
		redirect_to enemies_path
	end

	private
		def enemy_params
			params[:enemy].permit(:name, :hp)
		end
end
