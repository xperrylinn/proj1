class Pokemon < ApplicationRecord
	attr_accessor :health
 	belongs_to :trainer, optional:true
	@health
end
