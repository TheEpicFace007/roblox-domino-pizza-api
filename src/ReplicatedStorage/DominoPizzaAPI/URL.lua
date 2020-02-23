local DominoUrl = {}

DominoUrl.URL = {
    Canada = {
        StoreLocator = 'http://order.dominos.ca/power/store-locator?type=Locations&c=',
        Menu = 'http://order.dominos.ca/power/store/', -- 'STOREID/menu?lang=en&structured=true',
        Order = 'https://order.dominos.ca/power/place-order'
    },
    UnitedStates = {
        StoreLocator = ''
    },
}

return DominoUrl