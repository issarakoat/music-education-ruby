json.extract! course, :id, :title, :instrument, :genre, :description, :price, :created_at, :updated_at
json.url course_url(course, format: :json)
