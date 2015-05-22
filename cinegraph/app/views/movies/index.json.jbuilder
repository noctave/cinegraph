json.array!(@movies) do |movie|
  json.extract! movie, :id, :movie_id, :title, :url, :user_id
  json.url movie_url(movie, format: :json)
end
