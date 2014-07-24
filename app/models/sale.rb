class Sale < ActiveRecord::Base
  belongs_to :asset

  monetize :value, as: 'earned'
end
