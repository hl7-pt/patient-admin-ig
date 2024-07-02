Profile: Encounter_Emergency_PT
Parent: Encounter
Id: Encounter-Emergency-Pt

* extension contains
    Notes-Pt named notes 0..* and
    $encounter-modeOfArrival named modeOfArrival 0..* and
    CoduCode-Pt named CoduCode 0..1 and
    $encounter-reasonCancelled named reasonCancelled 0..*
* extension[notes].value[x] 1..
* extension[modeOfArrival].id ..0
* extension[CoduCode].value[x] 1..
* extension[reasonCancelled].id ..0
* identifier.id ..0
* identifier.use ..0
* identifier.type ..0
* identifier.period ..0
* identifier.assigner ..0
* statusHistory ..0
* class.id ..0
* class.version ..0
* class.userSelected ..0
* classHistory ..0
* type ..0
* serviceType ..0
* priority ..0
* subject.id ..0
* subject.type ..0
* subject.identifier ..0
* subject.display ..0
* episodeOfCare ..0
* basedOn.id ..0
* basedOn.type ..0
* basedOn.identifier ..0
* basedOn.display ..0
* participant ..0
* appointment ..0
* period.id ..0
* length ..0
* reasonCode.id ..0
* reasonCode.coding.id ..0
* reasonCode.coding.version ..0
* reasonCode.coding.userSelected ..0
* reasonCode.text ..0
* reasonReference ..0
* diagnosis ..0
* account.id ..0
* account.type ..0
* account.identifier ..0
* account.display ..0
* hospitalization.id ..0
* hospitalization.preAdmissionIdentifier ..0
* hospitalization.origin.id ..0
* hospitalization.origin.type ..0
* hospitalization.origin.identifier ..0
* hospitalization.origin.display ..0
* hospitalization.admitSource.id ..0
* hospitalization.admitSource.coding.id ..0
* hospitalization.admitSource.coding.version ..0
* hospitalization.admitSource.coding.userSelected ..0
* hospitalization.reAdmission ..0
* hospitalization.dietPreference ..0
* hospitalization.specialCourtesy ..0
* hospitalization.specialArrangement ..0
* hospitalization.destination ..0
* hospitalization.destination.id ..0
* hospitalization.destination.type ..0
* hospitalization.destination.identifier ..0
* hospitalization.destination.display ..0
* hospitalization.dischargeDisposition ..0
* location.id ..0
* location.location.id ..0
* location.location.type ..0
* location.location.identifier ..0
* location.location.display ..0
* location.status ..0
* location.physicalType ..0
* location.period ..0
* serviceProvider ..0
* partOf ..0