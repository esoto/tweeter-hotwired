class LikesController < ApplicationController
  before_action :set_tweet, only: %i[ create destroy ]

  # POST /likes or /likes.json
  def create
    @tweet.increment!(:likes_count)
    redirect_to @tweet
  end

  # DELETE /likes/1 or /likes/1.json
  def destroy
    @tweet.decrement!(:likes_count)
    redirect_to @tweet
  end

  private
  def set_tweet
    @tweet = Tweet.find(params[:tweet_id])
  end
end