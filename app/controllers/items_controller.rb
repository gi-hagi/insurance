class ItemsController < ApplicationController
  before_action :item_action, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_user_access, only: [:new, :creste, :edit, :update, :destroy]
  before_action :log_edit, only: [:edit, :update, :destroy]

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
    @comment = Comment.new
    @comments = @item.comments.includes(:user)
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path
    else
      render :edit
    end
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to root_path
  end
  private

  def item_action
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:title, :concept, :feature, :merit, :demerit).merge(user_id: current_user.id)
  end

  def check_user_access
    unless current_user == User.find_by(nickname: 'owner')
      redirect_to root_path, alert: "アクセス権限がありません。"
    end
  end

  def log_edit
    redirect_to root_path unless current_user == @item.user 
  end
end
