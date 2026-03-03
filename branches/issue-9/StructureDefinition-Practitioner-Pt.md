# PTPractitioner - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PTPractitioner**

## Resource Profile: PTPractitioner 

| | |
| :--- | :--- |
| *Official URL*:http://example.com/fhir/hl7pt/StructureDefinition/Practitioner-Pt | *Version*:1.0.0 |
| Active as of 2026-03-03 | *Computable Name*:PTPractitioner |

 
Perfil de Practitioner para contexto PT, com identificadores institucionais e requisitos mínimos de nome/contatos. 

**Usos:**

* Este Perfil não é utilizado por nenhum perfil neste guia de implementação

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.pt.patient-admin-ig|current/StructureDefinition/Practitioner-Pt)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Practitioner-Pt.csv), [Excel](StructureDefinition-Practitioner-Pt.xlsx), [Schematron](StructureDefinition-Practitioner-Pt.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Practitioner-Pt",
  "url" : "http://example.com/fhir/hl7pt/StructureDefinition/Practitioner-Pt",
  "version" : "1.0.0",
  "name" : "PTPractitioner",
  "title" : "PTPractitioner",
  "status" : "active",
  "date" : "2026-03-03T18:55:39+00:00",
  "publisher" : "HL7 Portugal",
  "contact" : [{
    "name" : "HL7 Portugal",
    "telecom" : [{
      "system" : "url",
      "value" : "http://hl7.pt"
    },
    {
      "system" : "email",
      "value" : "info@hl7.pt"
    }]
  },
  {
    "name" : "HL7 Portugal",
    "telecom" : [{
      "system" : "email",
      "value" : "geral@hl7.pt",
      "use" : "work"
    }]
  }],
  "description" : "Perfil de Practitioner para contexto PT, com identificadores institucionais e requisitos mínimos de nome/contatos.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PT",
      "display" : "Portugal"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    },
    {
      "id" : "Practitioner.id",
      "path" : "Practitioner.id",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier.type.coding",
      "path" : "Practitioner.identifier.type.coding",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://example.com/fhir/hl7pt/ValueSet/practitioner-identifier-type"
      }
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom",
      "path" : "Practitioner.telecom",
      "mustSupport" : true
    }]
  }
}

```
