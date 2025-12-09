Extension: PTCoverageReason
Id: coverage-reason-pt
Context: Coverage

* ^status = #active
* . ^short = "motivo de isenção"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.coding.system = $sonho
