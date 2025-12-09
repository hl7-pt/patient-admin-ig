ValueSet: VS_PatientIdentityEvents
Id: vs-patient-identity-events
Title: "Eventos FHIR para Gestão de Identidade de Utentes"
Description: "Eventos FHIR relacionados com a gestão da identidade de utentes."

* ^version = "1.0.0"
* ^status = #active
* ^experimental = false

* include CS_FHIREvents#PATIENT_NEW "Criação de novo utente"
* include CS_FHIREvents#PATIENT_NEW_RESPONSE "Resposta da criação de novo utente"
* include CS_FHIREvents#PATIENT_UPDATE "Atualização de dados do utente"
* include CS_FHIREvents#PATIENT_UPDATE_RESPONSE "Resposta da atualização de dados do utente"
* include CS_FHIREvents#PATIENT_MERGE "Fusão de utentes"
* include CS_FHIREvents#PATIENT_MERGE_RESPONSE "Resposta da fusão de utentes"
* include CS_FHIREvents#PATIENT_LINK "Associação de registos de identificações de utente"
* include CS_FHIREvents#PATIENT_LINK_RESPONSE "Resposta da associação de utentes"
* include CS_FHIREvents#PATIENT_UNLINK "Desassociação de utentes"
* include CS_FHIREvents#PATIENT_UNLINK_RESPONSE "Resposta da desassociação de utentes"
