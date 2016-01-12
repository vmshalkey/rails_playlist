json.array!(@songs) do |song|
  json.extract! song, :id, :artist, :title, :count_added
  json.url song_url(song, format: :json)
end
