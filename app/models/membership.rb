class Membership < ApplicationRecord
    belongs_to :gym
    belongs_to :client


    validates :client_id, uniqueness: {scope: :client_id, message: "already a member"}
end
