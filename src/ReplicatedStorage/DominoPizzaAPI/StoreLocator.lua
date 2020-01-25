local DominoURL = require(game.ReplicatedStorage.DominoPizzaAPI.URL)
local HttpService = game:GetService("HttpService")

local StoreLocator = {}
-- to do : use new luau variable type
function StoreLocator.StoreSearch(City,Province,Zipcode) -- Get all nearby store info in a array <array> StoreSearch(<string> City, <string> Province, <string> Zipcode)
    -- Error handling
    assert(City,'Missing argument : City missing')
    assert(Province,'Missing argument : Province missing')
    assert(Zipcode,'Missing argument  : Zipcode missing')
    -- Script
    local url = DominoURL.URL.Canada.StoreLocator .. City .. '%20' .. Province .. '%20' .. Zipcode
    local Data = HttpService:JSONDecode((HttpService:GetAsync(url)))
    if Data.status == -104 then 
        error('You did not entered the store information correctly. Check if you entred the Address corretcly',2) 
    end
    return Data
end

return StoreLocator
