class Cochera < ActiveRecord::Base
    has_many :carros
    
    validates :name, presence: true
end
