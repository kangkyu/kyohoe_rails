class Api::V1::PostingsController < ActionController::API

  before_action :doorkeeper_authorize! # Requires access token for all actions

  # run a curl command with auth
  # curl localhost:3000/api/v1/postings/1 -H "content-type: application/json" -H "accept: application/json"
  def show
    @posting = Posting.find(params[:id])
    render json: @posting
  end
end
