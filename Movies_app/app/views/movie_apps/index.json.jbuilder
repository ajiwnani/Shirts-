json.array!(@movie_apps) do |movie_app|
  json.extract! movie_app, :title, :string
  json.url movie_app_url(movie_app, format: :json)
end
