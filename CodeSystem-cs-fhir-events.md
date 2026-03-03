# FHIR Events CodeSystem - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FHIR Events CodeSystem**

## CodeSystem: FHIR Events CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://example.com/fhir/hl7pt/CodeSystem/cs-fhir-events | *Version*:1.0.0 |
| Active as of 2026-02-13 | *Computable Name*:CS_FHIREvents |

 
Código dos eventos FHIR relacionados com transações baseadas em mensagens HL7v2. Este CodeSystem inclui mapeamentos para eventos de diferentes domínios (ex: gestão de utentes, emergência, etc.). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VS_PatientIdentityEvents](ValueSet-vs-patient-identity-events.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-fhir-events",
  "url" : "http://example.com/fhir/hl7pt/CodeSystem/cs-fhir-events",
  "version" : "1.0.0",
  "name" : "CS_FHIREvents",
  "title" : "FHIR Events CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-13T20:27:46+00:00",
  "publisher" : "HL7 Portugal",
  "contact" : [
    {
      "name" : "HL7 Portugal",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://hl7.pt"
        },
        {
          "system" : "email",
          "value" : "info@hl7.pt"
        }
      ]
    },
    {
      "name" : "HL7 Portugal",
      "telecom" : [
        {
          "system" : "email",
          "value" : "geral@hl7.pt",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Código dos eventos FHIR relacionados com transações baseadas em mensagens HL7v2.\nEste CodeSystem inclui mapeamentos para eventos de diferentes domínios (ex: gestão de utentes, emergência, etc.).",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "PT",
          "display" : "Portugal"
        }
      ]
    }
  ],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 20,
  "concept" : [
    {
      "code" : "PATIENT_NEW",
      "display" : "Criação de novo utente",
      "definition" : "Evento FHIR que representa a criação de um novo utente."
    },
    {
      "code" : "PATIENT_NEW_RESPONSE",
      "display" : "Resposta da criação de novo utente",
      "definition" : "Resposta FHIR à criação de um novo utente."
    },
    {
      "code" : "PATIENT_UPDATE",
      "display" : "Atualização de dados do utente",
      "definition" : "Evento FHIR que representa a atualização de dados do utente."
    },
    {
      "code" : "PATIENT_UPDATE_RESPONSE",
      "display" : "Resposta da atualização de dados do utente",
      "definition" : "Resposta FHIR à atualização de dados do utente."
    },
    {
      "code" : "PATIENT_LINK",
      "display" : "Associação de registos de identificações de utente",
      "definition" : "Evento FHIR que representa a associação (link) de utentes."
    },
    {
      "code" : "PATIENT_LINK_RESPONSE",
      "display" : "Resposta da associação de utentes",
      "definition" : "Resposta FHIR à associação de utentes."
    },
    {
      "code" : "PATIENT_UNLINK",
      "display" : "Desassociação de utentes",
      "definition" : "Evento FHIR que representa a desassociação (unlink) de utentes."
    },
    {
      "code" : "PATIENT_UNLINK_RESPONSE",
      "display" : "Resposta da desassociação de utentes",
      "definition" : "Resposta FHIR à desassociação de utentes."
    },
    {
      "code" : "PATIENT_MERGE",
      "display" : "Fusão de utentes",
      "definition" : "Evento FHIR que representa a fusão de dois ou mais utentes."
    },
    {
      "code" : "PATIENT_MERGE_RESPONSE",
      "display" : "Resposta da fusão de utentes",
      "definition" : "Resposta FHIR à fusão de utentes."
    },
    {
      "code" : "PATIENT_SEARCH",
      "display" : "Pesquisa de utente",
      "definition" : "Evento FHIR que representa a pesquisa de utentes no sistema."
    },
    {
      "code" : "PATIENT_SEARCH_RESPONSE",
      "display" : "Resposta à pesquisa de utente",
      "definition" : "Resposta FHIR à pesquisa de utentes no sistema."
    },
    {
      "code" : "EMERGENCY_ADMISSION",
      "display" : "Admissão à urgência",
      "definition" : "Criação de um novo episodio de urgencia. HL7v2: ADT^A04."
    },
    {
      "code" : "EMERGENCY_ADMISSION_RESPONSE",
      "display" : "Resposta à Admissão à urgência",
      "definition" : "Resposta à criação de um novo episodio de urgencia. HL7v2: ACK^A04'."
    },
    {
      "code" : "EMERGENCY_UPDATE",
      "display" : "Atualização de dados de admissão do episodio de urgência",
      "definition" : "Atualização de dados do episódio de urgência. HL7v2: ADT^A08 com Action Code 'U'."
    },
    {
      "code" : "EMERGENCY_UPDATE_RESPONSE",
      "display" : "Resposta à atualização de dados de admissão do episodio de urgência",
      "definition" : "Resposta à atualização de dados de admissão do episódio de urgência. HL7v2: ACK^A08."
    },
    {
      "code" : "EMERGENCY_UPDATE_TRIAGE",
      "display" : "Atualização do episodio de urgência com a triagem realizada",
      "definition" : "Atualização de dados do episódio de urgência durante a fase de triagem. HL7v2: ADT^A08 com Action Code 'T'."
    },
    {
      "code" : "EMERGENCY_UPDATE_TRIAGE_RESPONSE",
      "display" : "Resposta à atualização do episodio de urgência com a triagem realizada",
      "definition" : "Resposta Atualização de dados do episódio de urgência durante a fase de triagem. HL7v2: ACK^A08."
    },
    {
      "code" : "EMERGENCY_UPDATE_PATIENT_CALL",
      "display" : "Atualização do episodio de urgência com chamada do utente",
      "definition" : "Atualização de dados do episódio de urgência na fase de chamada do utente. HL7v2: ADT^A08 com Action Code 'CP'."
    },
    {
      "code" : "EMERGENCY_UPDATE_PATIENT_CALL_RESPONSE",
      "display" : "Resposta à atualização do episodio de urgência com chamada do utente",
      "definition" : "Atualização de dados do episódio de urgência na fase de chamada do utente. HL7v2: ACK^A08."
    }
  ]
}

```
