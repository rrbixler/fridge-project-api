class GroceriesController < ProtectedController
  before_action :set_grocery, only: [:show, :update, :destroy]
  # skip_before_action :authenticate, only: %i[index]
  # GET /groceries
  def index
    @groceries = current_user.groceries.all

    render json: @groceries
  end

  # GET /groceries/1
  def show
    render json: @grocery
  end

  # POST /groceries
  def create
    @grocery = current_user.groceries.build(grocery_params)

    if @grocery.save
      render json: @grocery, status: :created
    else
      render json: @grocery.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /groceries/1
  def update
    if @grocery.update(grocery_params)
      render json: @grocery
    else
      render json: @grocery.errors, status: :unprocessable_entity
    end
  end

  # DELETE /groceries/1
  def destroy
    @grocery.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_grocery
    @grocery = current_user.groceries.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through

  def grocery_params
    params.require(:grocery)
          .permit(:name, :amount, :food_type, :user_id)
  end
end
