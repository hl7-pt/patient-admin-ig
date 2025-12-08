Extension: PTAddress
Id: address-pt
Title: "Endereço estruturado PT"
Description: "Extensão complexa para endereço com tipo e códigos INE."
Context: Address

* ^url = "http://example.com/fhir/hl7pt/StructureDefinition/address-pt"
* ^status = #active

* extension 1..*
* extension ^slicing.discriminator[0].path = "url"
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.rules = #open

* extension contains
    addressType 0..1 and
    parish 0..1 and
    municipality 0..1 and
    county 0..1 and
    country 0..1

* extension[addressType].url ^fixedUri = "address-type-pt"
* extension[addressType].value[x] only Coding
* extension[addressType].valueCoding.system = $address-types

* extension[parish].url ^fixedUri = "parish-pt"
* extension[parish].value[x] only CodeableConcept
* extension[parish].valueCodeableConcept.coding.system = $ine

* extension[municipality].url ^fixedUri = "municipality-pt"
* extension[municipality].value[x] only CodeableConcept
* extension[municipality].valueCodeableConcept.coding.system = $ine

* extension[county].url ^fixedUri = "county-pt"
* extension[county].value[x] only CodeableConcept
* extension[county].valueCodeableConcept.coding.system = $ine

* extension[country].url ^fixedUri = "country-pt"
* extension[country].value[x] only CodeableConcept
* extension[country].valueCodeableConcept.coding.system = $iso-3166-country-codes.html
