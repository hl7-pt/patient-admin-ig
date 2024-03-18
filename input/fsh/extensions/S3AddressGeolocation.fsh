Extension: S3AddressGeolocation
Id: S3AddressGeolocation
Context: Address
* ^url = "https://example.org/fhir/StructureDefinition/S3AddressGeolocation"
* ^status = #draft
* ^date = "2024-01-16T08:29:17.0648036+00:00"
* id ..0
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
* url = "https://example.org/fhir/StructureDefinition/S3AddressGeolocation" (exactly)