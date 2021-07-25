class Gym < ApplicationRecord
    has_many :memberships, dependent: :destroy
    has_many :clients, through: :memberships

    validates :client_id, uniqueness: {scope: :client_id, message: "already a member"}
end
