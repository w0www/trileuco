json.extract! upload, :id, :created_at, :updated_at, :title
json.url upload_url(upload, format: :json)
json.extract! upload, :file
