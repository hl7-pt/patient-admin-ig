# PTBundleMessage - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PTBundleMessage**

## Resource Profile: PTBundleMessage ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:http://example.com/fhir/hl7pt/StructureDefinition/BundleMessage-Pt | *Version*:1.0.0 |
| Active as of 2026-02-01 | *Computable Name*:PTBundleMessage |

 
Perfil de BundleMessage para contexto de comunicação **Messaging**. 

**Usos:**

* Este Perfil não é utilizado por nenhum perfil neste guia de implementação

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.pt.patient-admin-ig|current/StructureDefinition/BundleMessage-Pt)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BundleMessage-Pt.csv), [Excel](StructureDefinition-BundleMessage-Pt.xlsx), [Schematron](StructureDefinition-BundleMessage-Pt.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BundleMessage-Pt",
  "url" : "http://example.com/fhir/hl7pt/StructureDefinition/BundleMessage-Pt",
  "version" : "1.0.0",
  "name" : "PTBundleMessage",
  "title" : "PTBundleMessage",
  "status" : "active",
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
  "description" : "Perfil de BundleMessage para contexto de comunicação _Messaging_.",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : true,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.id",
        "path" : "Bundle.id",
        "min" : 1
      },
      {
        "id" : "Bundle.meta",
        "path" : "Bundle.meta",
        "min" : 1
      },
      {
        "id" : "Bundle.language",
        "path" : "Bundle.language",
        "max" : "0"
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "message"
      },
      {
        "id" : "Bundle.timestamp",
        "path" : "Bundle.timestamp",
        "min" : 1
      }
    ]
  }
}

```
