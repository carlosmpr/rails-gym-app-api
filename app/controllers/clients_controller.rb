class ClientsController < ApplicationController
  before_action :set_client, only: [:show]

  # GET /clients
  def index
    @clients = Client.all
    render json: @clients, except:[:created_at,:updated_at]
  end

  # GET /clients/1
  def show
    render json: @client.detail
  end

  # POST /clients
  def create
    begin
      @client = Client.create!(client_params)
      render json: client.detail
    rescue => exception
      render json: exception
    end
   

   
  end

  

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_params
      params.require(:client).permit(:name, :age)
    end
end
