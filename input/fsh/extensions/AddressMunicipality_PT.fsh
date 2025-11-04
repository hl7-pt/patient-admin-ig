Extension: PTAddressMunicipality
Id: AddressMunicipality-Pt
Context: Address

* . ^short = "Codigo do concelho"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.coding.system = "http://www.ine.pt"
