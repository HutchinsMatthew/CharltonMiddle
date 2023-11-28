json.extract! student, :id, :name, :grade, :year, :created_at, :updated_at
json.url student_url(student, format: :json)
