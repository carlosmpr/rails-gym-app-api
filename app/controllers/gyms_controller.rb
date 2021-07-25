class GymsController < ApplicationController


  # GET /gyms
  def index
    @gyms = Gym.all

    render json: @gyms, except:[:created_at,:updated_at]
  end

  # GET /gyms/1
  def show
    begin
     @gym = set_gym
      render json: @gym, except:[:created_at,:updated_at]
    rescue => exception
      render json: {message:' no gym found'} , status: :bad_request
    end

  end

  

  

  # DELETE /gyms/1
  def destroy
    @gym.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gym
      @gym = Gym.find(params[:id])
    end

   
end
