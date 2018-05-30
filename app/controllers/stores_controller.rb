class StoresController < ApplicationController
  before_action :store_set, only: [:show, :delete, :edit, :update]
  
  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
    render :form
  end

  def show
  end

  def edit
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to stores_path
    else
      render :form
    end
  end

  def update
    if @store.update(store_params)
      redirect_to store_path
    else
      render :form
    end
  end

  def destroy
    @store.destroy
    redirect_to stores_path
  end

  private
    def store_params
      params.require(:store).permit(:name, :description)
    end

    def store_set
     @store = Store.find(params[:id])
    end
end