class PropsController < ApplicationController
  before_action :set_prop, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, except: [:update, :create, :destroy]

  # GET /props
  def index
    @props = Prop.all

    render json: @props
  end

  # GET /props/1
  def show
    render json: @prop
  end

  # POST /props
  def create
    @prop = Prop.new(prop_params)
    @prop.user = current_user

    if @prop.save
      render json: @prop, status: :created, location: @prop
    else
      render json: @prop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /props/1
  def update
    if @prop.update(prop_params)
      render json: @prop
    else
      render json: @prop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /props/1
  def destroy
    if @prop.user == current_user || !@prop.user
      @prop.destroy
    else
      render json: { errors: ["Unauthorized"] }, status: 401
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prop
        @prop = Prop.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def prop_params
      params.require(:prop).permit(:name, :image, :description, :user_id, :category, :available)
    end
end
