class Article < ApplicationRecord
    acts_as_paranoid
    validates :title, presence: true,
    length: { minimum: 5 }


    def self.from_today
        where("'created_at' > #{Date.today - 1.day}")
    end
end
