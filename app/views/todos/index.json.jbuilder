json.array!(@todos) do |todo|
  json.extract! todo, :id, :content, :limit_on, :done
  json.url todo_url(todo, format: :json)
end
