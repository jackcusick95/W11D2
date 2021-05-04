
json.pokemon do 
    json.set! @pokemon.id do 
        json.extract! @pokemon, :id, :name, :attack, :defense, :poke_type
        json.image_url asset_path("pokemon_snaps/#{@pokemon.image_url}")
    end 
end 

json.moves @pokemon.moves do |move|
    json.set! @pokemon.id do 
        json.id move.id
        json.name move.name
    end 
end 

json.items @pokemon.items do |item|
    json.set! @pokemon.id do 
        json.id item.id
        json.name item.name
        json.pokemon_id item.pokemon_id
        json.price item.price
        json.happiness item.happiness
        json.image_url asset_path("#{item.image_url}")
    end 
end 