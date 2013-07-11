json.array!(@movies) do |movie|
  json.extract! movie, :index
  json.url movie_url(movie, format: :json)
end
