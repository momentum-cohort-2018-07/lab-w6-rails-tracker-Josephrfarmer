json.links do
  json.self api_beers_url(@beer)
  json.list api_beers_url
  json.update do
    json.method "PUT"
    json.href api_beers_url(@beer)
  end
  json.delete do
    json.method "DELETE"
    json.href api_beers_url(@beer)
  end
end
json.data do
  json.id @beer.id
  json.attributes do
    json.name @beer.name
    json.style @beer.style
    json.abv @beer.avb
    json.malt_type @beer.malt_type
    json.description @beer.description
  end