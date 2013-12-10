json.array!(@bands) do |band|
  json.extract! band, :id, :name, :aboutus, :schedule
  json.url band_url(band, format: :json)
end
