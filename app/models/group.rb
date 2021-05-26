class Group < ApplicationRecord
    has_many :concerts 
    enum band_type: ['Boyband','Girlband', 'Band']


    def to_s #Nos permite pasar a string
        name
    end 
end
