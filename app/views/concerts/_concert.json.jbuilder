json.extract! concert, :id, :attendance, :duration, :concert_date, :group_id, :created_at, :updated_at
json.url concert_url(concert, format: :json)
