class SwordsController < ApplicationController
  before_action :set_sword, only: [:show, :edit, :update]

  def index
    @swords = current_user.swords
  end

  def show
  end

  def new
    @sword = Sword.new
  end

  def create
    @sword = current_user.swords.new(sword_params)

    if @sword.save
    flash[:success] = "Sword Created"
      redirect_to swords_path
    else
      flash[:error] = "error #{@sword.errors.full_messages.join('\n')}"
      render :new
    end
  end

  def edit
  end

  def update
    if @sword.update(sword_params)
      redirect_to swords_path
    else
      render :edit
    end
  end

  def destroy
    @sword.destroy
    redirect_to swords_path
  end

  private

  def sword_params
    params.require(:sword).permit(:name, :category)
  end

  def set_sword
    @sword = current_user.stwords.find(params[:id])
  end
end
