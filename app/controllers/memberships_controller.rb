class MembershipsController < ApplicationController
 

  



  # POST /memberships
  def create
    begin
      @membership = Membership.create!(membership_params)
      render json: @membership, except:[:created_at,:updated_at]
    rescue  => e
      render json: e
    end
    
  end

  

  

  private
    
    # Only allow a list of trusted parameters through.
    def membership_params
      params.require(:membership).permit(:gym_id, :client_id, :charge)
    end
end
