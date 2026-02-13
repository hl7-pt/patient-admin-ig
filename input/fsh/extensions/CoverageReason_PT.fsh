Extension: PTCoverageReason
Id: coverage-reason-pt
Description: "Extensão para codigo do motivo de isenção do utente ."

Context: Coverage

* ^status = #active
* . ^short = "motivo de isenção"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.coding.system = $sonho
