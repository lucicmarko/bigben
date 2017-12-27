json.errors do
  json.array!(errors.to_h) do |attribute, message|
    json.status 422
    json.detail message
  end
end
