class PostingsController < ApplicationController
  before_action :require_sign_in

  def new
    @posting = Posting.new
  end

  def create
    @posting = Posting.new(posting_params)
    if @posting.save
      redirect_to @posting
    else
      render 'new'
    end
  end

  # curl localhost:3000/postings/1 -H "content-type: application/json" -H "accept: application/json"
  def show
    @posting = Posting.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @posting }
    end
  end

  private

  def posting_params
    params.require(:posting).permit(:title, :body, :video_url)
  end
end
