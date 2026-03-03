# Eventos FHIR para Gestão de Identidade de Utentes - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Eventos FHIR para Gestão de Identidade de Utentes**

## ValueSet: Eventos FHIR para Gestão de Identidade de Utentes 

| | |
| :--- | :--- |
| *Official URL*:http://example.com/fhir/hl7pt/ValueSet/vs-patient-identity-events | *Version*:1.0.0 |
| Active as of 2026-02-01 | *Computable Name*:VS_PatientIdentityEvents |

 
Eventos FHIR relacionados com a gestão da identidade de utentes. 

 **References** 

* [PTMessageHeader](StructureDefinition-MessageHeader-Pt.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-patient-identity-events",
  "url" : "http://example.com/fhir/hl7pt/ValueSet/vs-patient-identity-events",
  "version" : "1.0.0",
  "name" : "VS_PatientIdentityEvents",
  "title" : "Eventos FHIR para Gestão de Identidade de Utentes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-01T11:20:10+00:00",
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
  "description" : "Eventos FHIR relacionados com a gestão da identidade de utentes.",
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
  "compose" : {
    "include" : [
      {
        "system" : "http://example.com/fhir/hl7pt/CodeSystem/cs-fhir-events",
        "concept" : [
          {
            "code" : "PATIENT_NEW",
            "display" : "Criação de novo utente"
          },
          {
            "code" : "PATIENT_NEW_RESPONSE",
            "display" : "Resposta da criação de novo utente"
          },
          {
            "code" : "PATIENT_UPDATE",
            "display" : "Atualização de dados do utente"
          },
          {
            "code" : "PATIENT_UPDATE_RESPONSE",
            "display" : "Resposta da atualização de dados do utente"
          },
          {
            "code" : "PATIENT_MERGE",
            "display" : "Fusão de utentes"
          },
          {
            "code" : "PATIENT_MERGE_RESPONSE",
            "display" : "Resposta da fusão de utentes"
          },
          {
            "code" : "PATIENT_LINK",
            "display" : "Associação de registos de identificações de utente"
          },
          {
            "code" : "PATIENT_LINK_RESPONSE",
            "display" : "Resposta da associação de utentes"
          },
          {
            "code" : "PATIENT_UNLINK",
            "display" : "Desassociação de utentes"
          },
          {
            "code" : "PATIENT_UNLINK_RESPONSE",
            "display" : "Resposta da desassociação de utentes"
          }
        ]
      }
    ]
  }
}

```
