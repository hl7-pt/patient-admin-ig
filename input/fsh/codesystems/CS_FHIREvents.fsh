CodeSystem: CS_FHIREvents
Id: cs-fhir-events
Title: "FHIR Events CodeSystem"
Description: """
Código dos eventos FHIR relacionados com transações baseadas em mensagens HL7v2.
Este CodeSystem inclui mapeamentos para eventos de diferentes domínios (ex: gestão de utentes, emergência, etc.).
"""
* ^status = #active
* ^experimental = false
* ^version = "1.1.0"
* ^publisher = "HL7 Portugal"
* ^caseSensitive = true
* ^content = #complete

* #PATIENT_NEW "Criação de novo utente"
  * ^definition = "Evento FHIR que representa a criação de um novo utente."

* #PATIENT_NEW_RESPONSE "Resposta da criação de novo utente"
  * ^definition = "Resposta FHIR à criação de um novo utente."

* #PATIENT_UPDATE "Atualização de dados do utente"
  * ^definition = "Evento FHIR que representa a atualização de dados do utente."

* #PATIENT_UPDATE_RESPONSE "Resposta da atualização de dados do utente"
  * ^definition = "Resposta FHIR à atualização de dados do utente."

* #PATIENT_LINK "Associação de registos de identificações de utente"
  * ^definition = "Evento FHIR que representa a associação (link) de utentes."

* #PATIENT_LINK_RESPONSE "Resposta da associação de utentes"
  * ^definition = "Resposta FHIR à associação de utentes."

* #PATIENT_UNLINK "Desassociação de utentes"
  * ^definition = "Evento FHIR que representa a desassociação (unlink) de utentes."

* #PATIENT_UNLINK_RESPONSE "Resposta da desassociação de utentes"
  * ^definition = "Resposta FHIR à desassociação de utentes."

* #PATIENT_MERGE "Fusão de utentes"
  * ^definition = "Evento FHIR que representa a fusão de dois ou mais utentes."

* #PATIENT_MERGE_RESPONSE "Resposta da fusão de utentes"
  * ^definition = "Resposta FHIR à fusão de utentes."

// ========================
// Eventos específicos de pesquisas
// ========================

* #PATIENT_SEARCH "Pesquisa de utente"
  * ^definition = "Evento FHIR que representa a pesquisa de utentes no sistema."

* #PATIENT_SEARCH_RESPONSE "Resposta à pesquisa de utente"
  * ^definition = "Resposta FHIR à pesquisa de utentes no sistema."

// ========================
// Eventos específicos de urgencia
// ========================

* #EMERGENCY_ADMISSION "Admissão à urgência"
  * ^definition = "Criação de um novo episodio de urgencia. HL7v2: ADT^A04."

* #EMERGENCY_ADMISSION_RESPONSE "Resposta à Admissão à urgência"
  * ^definition = "Resposta à criação de um novo episodio de urgencia. HL7v2: ACK^A04'."

* #EMERGENCY_UPDATE "Atualização de dados de admissão do episodio de urgência"
  * ^definition = "Atualização de dados do episódio de urgência. HL7v2: ADT^A08 com Action Code 'U'."

* #EMERGENCY_UPDATE_RESPONSE "Resposta à atualização de dados de admissão do episodio de urgência"
  * ^definition = "Resposta à atualização de dados de admissão do episódio de urgência. HL7v2: ACK^A08."

* #EMERGENCY_UPDATE_TRIAGE "Atualização do episodio de urgência com a triagem realizada"
  * ^definition = "Atualização de dados do episódio de urgência durante a fase de triagem. HL7v2: ADT^A08 com Action Code 'T'."

* #EMERGENCY_UPDATE_TRIAGE_RESPONSE "Resposta à atualização do episodio de urgência com a triagem realizada"
  * ^definition = "Resposta Atualização de dados do episódio de urgência durante a fase de triagem. HL7v2: ACK^A08."

* #EMERGENCY_UPDATE_PATIENT_CALL "Atualização do episodio de urgência com chamada do utente"
  * ^definition = "Atualização de dados do episódio de urgência na fase de chamada do utente. HL7v2: ADT^A08 com Action Code 'CP'."

* #EMERGENCY_UPDATE_PATIENT_CALL_RESPONSE "Resposta à atualização do episodio de urgência com chamada do utente"
  * ^definition = "Atualização de dados do episódio de urgência na fase de chamada do utente. HL7v2: ACK^A08."



