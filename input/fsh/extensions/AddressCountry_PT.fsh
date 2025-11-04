Extension: PTAddressCountry
Id: AddressCountry-Pt
Context: Address

* . ^short = "Codigo do distrito"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.coding.system = "http://www.ine.pt"
