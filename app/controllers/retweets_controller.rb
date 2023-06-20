class RetweetsController < ApplicationController
  before_action :set_tweet, only: %i[ create destroy ]

  # POST /retweets or /retweets.json
  def create
    @tweet.increment!(:retweets_count)
    redirect_to @tweet
  end

  # DELETE /retweets/1 or /retweets/1.json
  def destroy
    @tweet.decrement!(:retweets_count)
    redirect_to @tweet
  end

  private
  def set_tweet
    @tweet = Tweet.find(params[:tweet_id])
  end
end