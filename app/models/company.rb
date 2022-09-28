class Company < ActiveRecord::Base
has_many :freebies
has_many :devs, through: :freebies


    def give_freebie(dev, item_name, value)
        Freebie.create(dev_id: dev.dev_id, item_name: freebie.item_name, value: freebie.value )
    end


    def self.oldest_company
        order(:founding_year).first

    end
end
