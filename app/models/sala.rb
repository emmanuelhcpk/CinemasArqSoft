class Sala < ActiveRecord::Base
    
    has_many :sillas
    belongs_to :sede
    has_many :funcions
    
end
