json.array!(@movies) do |movie|
  json.extract! movie, :id, :movie_id, :user_id
  json.url movie_url(movie, format: :json)
end
