class ItemsController < ApplicationController
  before_action :item_action, except: [:index, :new, :create]

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end
  
  private

  def item_action
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:title, :concept, :feature, :merit, :demerit).merge(user_id: current_user.id)
  end
end
