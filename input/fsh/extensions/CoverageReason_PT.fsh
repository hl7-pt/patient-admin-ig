Extension: PTCoverageReason
Id: CoverageReason-Pt
Context: Coverage

* . ^short = "motivo de isenção"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.coding.system = "http://exemplo.pt/fhir/hl7pt/coverage-reason"