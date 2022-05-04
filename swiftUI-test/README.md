#  BDict

## Model

### JSON Beverage Data

```json
{
    "createdAt": Date,
    "map" : {
        "address": String,
        "latitude": Double,
        "longtitude": Double
    },
    "name": String,
    "manufacturer": String,
    "ingredient": Array<String>,
    "volume": {
        "unit": String,
        "value": Int
    },
    "price": {
        "unit": String,
        "value": Int
    },
    "category": String,
    "aroma": Array<String>,
    "taste": {
        "sweet": Double,
        "sour": Double,
        "bitter": Double,
        "salty": Double,
        "savory": Double
    },
    "picture": Image
}
```
