json.array!(@deathmatches) do |deathmatch|
  json.extract! deathmatch, :id, :name, :modality, :competitors, :type_competitors
  json.url deathmatch_url(deathmatch, format: :json)
end
