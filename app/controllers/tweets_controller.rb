class TweetsController < ApplicationController
	def show
		@tweet = Tweet.find(params[:id])
	end

	def create
		@tweet = Tweet.new(params[:tweet])
		if @tweet.save
			redirect_to @tweet
		else
			render 'new'

	end

end
