json.array!(@logs) do |log|
  json.extract! log, :id, :ip, :created_at, :updated_at
  json.url log_url(log, format: :json)
end
