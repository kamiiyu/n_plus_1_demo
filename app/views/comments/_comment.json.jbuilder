json.extract! comment, :id, :references, :content, :created_at, :updated_at
json.url comment_url(comment, format: :json)