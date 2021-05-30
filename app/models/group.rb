class Group < ApplicationRecord
    has_many :concerts, dependent: :destroy
    has_many :crews, dependent: :destroy
    enum band_type: [:Boyband, :Girlband, :Band]


    def to_s #Nos permite pasar a string
        name
    end 

    def total_concerts #cuenta los conciertos
        concerts.where(group_id: id).count
    end

    def attendance #asistentes al concierto por grupo
        concerts.pluck(:attendance).sum
    end


    def last_concert #Ultimo concierto en el mes
        if concerts.count > 0
            concerts.order(concert_date: :asc).last.concert_date
        else
            "No concert date"
        end
    end

    def max_attendence #max de personas en un concierto
        concerts.pluck(:attendance).max
    end

    def max_duration #duracion max de un concierto
        concerts.pluck(:duration).max
    end
    

end
