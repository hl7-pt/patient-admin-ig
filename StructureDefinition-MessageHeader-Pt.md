# PTMessageHeader - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PTMessageHeader**

## Resource Profile: PTMessageHeader 

| | |
| :--- | :--- |
| *Official URL*:http://example.com/fhir/hl7pt/StructureDefinition/MessageHeader-Pt | *Version*:1.0.0 |
| Active as of 2026-02-13 | *Computable Name*:PTMessageHeader |

 
Perfil de MessageHeader para contexto de comunicação **Messaging**. 

**Usos:**

* Este Perfil não é utilizado por nenhum perfil neste guia de implementação

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.pt.patient-admin-ig|current/StructureDefinition/MessageHeader-Pt)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MessageHeader-Pt.csv), [Excel](StructureDefinition-MessageHeader-Pt.xlsx), [Schematron](StructureDefinition-MessageHeader-Pt.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MessageHeader-Pt",
  "url" : "http://example.com/fhir/hl7pt/StructureDefinition/MessageHeader-Pt",
  "version" : "1.0.0",
  "name" : "PTMessageHeader",
  "title" : "PTMessageHeader",
  "status" : "active",
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
  "description" : "Perfil de MessageHeader para contexto de comunicação _Messaging_.",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MessageHeader",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MessageHeader",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MessageHeader",
        "path" : "MessageHeader"
      },
      {
        "id" : "MessageHeader.id",
        "path" : "MessageHeader.id",
        "min" : 1
      },
      {
        "id" : "MessageHeader.event[x]",
        "path" : "MessageHeader.event[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://example.com/fhir/hl7pt/ValueSet/vs-patient-identity-events"
        }
      },
      {
        "id" : "MessageHeader.destination",
        "path" : "MessageHeader.destination",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "MessageHeader.sender",
        "path" : "MessageHeader.sender",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "MessageHeader.enterer",
        "path" : "MessageHeader.enterer",
        "mustSupport" : true
      },
      {
        "id" : "MessageHeader.source",
        "path" : "MessageHeader.source",
        "mustSupport" : true
      },
      {
        "id" : "MessageHeader.focus",
        "path" : "MessageHeader.focus",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
