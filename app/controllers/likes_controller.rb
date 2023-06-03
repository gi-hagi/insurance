class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item

  def index
    @likes = current_user.likes
  end

  def create
    like = current_user.likes.build(item_id: params[:item_id], user_id: current_user.id)
    like.save
    render 'create.js.erb'
  end


  def destroy
    like = Like.find_by(item_id: params[:item_id], user_id: current_user.id)
    like.destroy
    render 'destroy.js.erb'
  end

  def set_item
    @item = Item.find(params[:item_id])
  end
end
