Extension: S3AddressGeolocation
Id: S3AddressGeolocation
Context: Address
* extension contains
    longitude 0..* and
    latitude 0..* and
    altitude 0..*
* extension[longitude].id ..0
* extension[longitude].value[x] only decimal
* extension[latitude].id ..0
* extension[latitude].value[x] only decimal
* extension[altitude].id ..0
* extension[altitude].value[x] only decimal
