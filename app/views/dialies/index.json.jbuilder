json.array!(@dialies) do |dialy|
  json.extract! dialy, :id, :title, :body
  json.url dialy_url(dialy, format: :json)
end
