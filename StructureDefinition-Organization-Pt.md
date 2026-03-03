# PTOrganization - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PTOrganization**

## Resource Profile: PTOrganization 

| | |
| :--- | :--- |
| *Official URL*:http://example.com/fhir/hl7pt/StructureDefinition/Organization-Pt | *Version*:1.0.0 |
| Active as of 2026-02-13 | *Computable Name*:PTOrganization |

 
Perfil de Organization para contexto PT, com identificadores institucionais e requisitos mínimos de nome/contactos. 

**Usos:**

* Este Perfil não é utilizado por nenhum perfil neste guia de implementação

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.pt.patient-admin-ig|current/StructureDefinition/Organization-Pt)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Organization-Pt.csv), [Excel](StructureDefinition-Organization-Pt.xlsx), [Schematron](StructureDefinition-Organization-Pt.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Organization-Pt",
  "url" : "http://example.com/fhir/hl7pt/StructureDefinition/Organization-Pt",
  "version" : "1.0.0",
  "name" : "PTOrganization",
  "title" : "PTOrganization",
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
  "description" : "Perfil de Organization para contexto PT, com identificadores institucionais e requisitos mínimos de nome/contactos.",
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
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization",
        "path" : "Organization"
      },
      {
        "id" : "Organization.id",
        "path" : "Organization.id",
        "min" : 1
      },
      {
        "id" : "Organization.identifier",
        "path" : "Organization.identifier",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Organization.name",
        "path" : "Organization.name",
        "mustSupport" : true
      }
    ]
  }
}

```
