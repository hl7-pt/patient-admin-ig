Profile: PTCoverage
Parent: Coverage
Id: Coverage-Pt
Title: "PTCoverage"
Description: "Perfil de Coverage para contexto PT, com tipos de coberturas/isenções, beneficiários (numero de beneficiários, apólices) e entidades responsáveis associadas."


* id 1..1
* extension contains PTCoverageReason named coverage-reason 0..1 MS
* beneficiary 1..1 MS
* payor 1..1 MS
* payor only Reference(Organization)
* period MS
* type MS

