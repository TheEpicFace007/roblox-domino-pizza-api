local DominoURL = require(game.ReplicatedStorage.DominoPizzaAPI.URL)
local HttpService = game:GetService("HttpService")

local StoreLocator = {}
--[[
    The variable : IsDeliveryStore is to be ignored. If you want to check if a store is a delivery store look out for the following vars  : 
        "AllowDeliveryOrders": true,
      "AllowCarryoutOrders": true,
    TODO: use new luau variable type]]
function StoreLocator.StoreSearch(City,Province,PostalCode) -- Get all nearby store info in a array <array> StoreSearch(<string> City, <string> Province, <string> PostalCode)
    assert(City,'Missing argument : City missing')
    assert(Province,'Missing argument : Province missing')
    assert(PostalCode,'Missing argument  : PostalCode missing')
    local url = DominoURL.URL.Canada.StoreLocator .. City .. '%20' .. Province .. '%20' .. PostalCode
    print(url)
    local Data = HttpService:JSONDecode((HttpService:GetAsync(url)))
    if Data.status == -104 then 
        error('You did not entered the store information correctly. Check if you entred the Address corretcly',2) 
    end
    return Data
end

function StoreLocator.GetStoreInfo(City,Province,PostalCode,StoreID)
    assert(City,'Missing argument : City missing')
    assert(Province,'Missing argument : Province missing')
    assert(PostalCode,'Missing argument : PostalCode missing')
    assert(StoreID,'Missing argument : StoreID missing')
    local  StoreIDSearch = table.find(StoreLocator.StoreSearch(City,Province,PostalCode,StoreID)
    if StoreIDSearch == 1 then
        print('Found!' .. '\n' .. StoreIDSearch)
    end
end

return StoreLocator
