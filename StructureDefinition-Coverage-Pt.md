# PTCoverage - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PTCoverage**

## Resource Profile: PTCoverage 

| | |
| :--- | :--- |
| *Official URL*:http://example.com/fhir/hl7pt/StructureDefinition/Coverage-Pt | *Version*:1.0.0 |
| Active as of 2026-02-13 | *Computable Name*:PTCoverage |

 
Perfil de Coverage para contexto PT, com tipos de coberturas/isenções, beneficiários (numero de beneficiários, apólices) e entidades responsáveis associadas. 

**Usos:**

* Este Perfil não é utilizado por nenhum perfil neste guia de implementação

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.pt.patient-admin-ig|current/StructureDefinition/Coverage-Pt)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Coverage-Pt.csv), [Excel](StructureDefinition-Coverage-Pt.xlsx), [Schematron](StructureDefinition-Coverage-Pt.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Coverage-Pt",
  "url" : "http://example.com/fhir/hl7pt/StructureDefinition/Coverage-Pt",
  "version" : "1.0.0",
  "name" : "PTCoverage",
  "title" : "PTCoverage",
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
  "description" : "Perfil de Coverage para contexto PT, com tipos de coberturas/isenções, beneficiários (numero de beneficiários, apólices) e entidades responsáveis associadas.",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
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
    },
    {
      "identity" : "cdanetv4",
      "uri" : "http://www.cda-adc.ca/en/services/cdanet/",
      "name" : "Canadian Dental Association eclaims standard"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "cpha3pharm",
      "uri" : "http://www.pharmacists.ca/",
      "name" : "Canadian Pharmacy Associaiton eclaims standard"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Coverage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Coverage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Coverage",
        "path" : "Coverage"
      },
      {
        "id" : "Coverage.id",
        "path" : "Coverage.id",
        "min" : 1
      },
      {
        "id" : "Coverage.extension",
        "path" : "Coverage.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Coverage.extension:coverage-reason",
        "path" : "Coverage.extension",
        "sliceName" : "coverage-reason",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.com/fhir/hl7pt/StructureDefinition/coverage-reason-pt"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Coverage.type",
        "path" : "Coverage.type",
        "mustSupport" : true
      },
      {
        "id" : "Coverage.beneficiary",
        "path" : "Coverage.beneficiary",
        "mustSupport" : true
      },
      {
        "id" : "Coverage.period",
        "path" : "Coverage.period",
        "mustSupport" : true
      },
      {
        "id" : "Coverage.payor",
        "path" : "Coverage.payor",
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization"]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
