local DominoURL = require(game.ReplicatedStorage.DominoPizzaAPI.URL)
local HttpService = game:GetService("HttpService")

local StoreLocator = {}
--[[
    The variable : IsDeliveryStore is to be ignored. If you want to check if a store is a delivery store look out for the following vars  : 
        "AllowDeliveryOrders": true,
      "AllowCarryoutOrders": true,
    TODO: use new luau variable type]]
function StoreLocator.StoreSearch(City,Province,PostalCode) -- Get all nearby store info in a array <array> StoreSearch(<string> City, <string> Province, <string> PostalCode)
    -- Error handling
    assert(City,'Missing argument : City missing')
    assert(Province,'Missing argument : Province missing')
    assert(PostalCode,'Missing argument  : PostalCode missing')
    -- Script
    local url = DominoURL.URL.Canada.StoreLocator .. City .. '%20' .. Province .. '%20' .. PostalCode
    local Data = HttpService:JSONDecode((HttpService:GetAsync(url)))
    if Data.status == -104 then 
        error('You did not entered the store information correctly. Check if you entred the Address corretcly',2) 
    end
    return Data
end

function StoreLocator.GetStoreInfo(City,Province,PostalCode)
    -- Eroor handling 
    assert(City,'Missing argument : City missing')
    assert(Province,'Missing argument : Province missing')
    assert(PostalCode,'Missing argument : PostalCode missing')
    -- Script
    
    return 
end

return StoreLocator
