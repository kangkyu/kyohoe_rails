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

  def show
    @posting = Posting.find(params[:id])
  end

  private

  def posting_params
    params.require(:posting).permit(:title, :body, :video_url)
  end
end
