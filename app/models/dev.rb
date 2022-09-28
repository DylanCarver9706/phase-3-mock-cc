require 'pry'
class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def recieved_one?(item_name)
        binding.pry
        self.freebies.any? do |freebie|
        freebie.item_name == item_name
    end
end
