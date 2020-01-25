local DominoURL = require(game.ReplicatedStorage.DominoPizzaAPI.URL)
local HttpService = game:GetService("HttpService")

local StoreLocator = {}
-- to do : use new luau variable type
function StoreLocator.StoreSearch(city,province,zipcode) -- Get all nearby store info in a array <array> StoreSearch(<string> city, <string> province, <string> zipcode)
    -- Error handling
    assert(city,'Missing argument : City missing')
    assert(province,'Missing argument : Province missing')
    assert(zipcode,'Missing argument  : Zipcode missing')
    -- Script
    local url = DominoURL.URL.Canada.StoreLocator .. city .. '%20' .. province .. '%20' .. zipcode
    local Data = HttpService:JSONDecode((HttpService:GetAsync(url)))
    if Data.status == -104 then error('You did not entered the store information correctly. Check if you entred the Address corretcly',2) end
    return Data
end

return StoreLocator
