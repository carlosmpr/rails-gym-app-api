class Client < ApplicationRecord
    has_many :memberships
    has_many :gyms, through: :memberships


    def detail
        {
            id: self.id,
            name: self.name,
            age: self.age,
            membership: self.memberships
        }
    end
end
