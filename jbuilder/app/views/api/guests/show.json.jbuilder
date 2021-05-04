
# json.extract! @guest, :id, :name, :age, :favorite_color

json.partial! 'api/guests/guest', guest: @guest 

json.gifts do 
    json.array! @guest.gifts, :id, :title, :description
end 
