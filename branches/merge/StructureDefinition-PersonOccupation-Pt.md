# PTPersonOccupation - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PTPersonOccupation**

## Extension: PTPersonOccupation 

| | |
| :--- | :--- |
| *Official URL*:http://example.com/fhir/hl7pt/StructureDefinition/PersonOccupation-Pt | *Version*:1.0.0 |
| Active as of 2026-03-03 | *Computable Name*:PTPersonOccupation |

Extensão para registo de ocupação do utente.

**Context of Use**

**Usage info**

**Usos:**

* Este Extensão não é utilizado por nenhum perfil neste guia de implementação

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.pt.patient-admin-ig|current/StructureDefinition/PersonOccupation-Pt)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PersonOccupation-Pt.csv), [Excel](StructureDefinition-PersonOccupation-Pt.xlsx), [Schematron](StructureDefinition-PersonOccupation-Pt.sch) 

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PersonOccupation-Pt",
  "url" : "http://example.com/fhir/hl7pt/StructureDefinition/PersonOccupation-Pt",
  "version" : "1.0.0",
  "name" : "PTPersonOccupation",
  "title" : "PTPersonOccupation",
  "status" : "active",
  "date" : "2026-03-03T18:56:27+00:00",
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
  "description" : "Extensão para registo de ocupação do utente.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PT",
      "display" : "Portugal"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "PTPersonOccupation",
      "definition" : "Extensão para registo de ocupação do utente."
    },
    {
      "id" : "Extension.extension:occupation",
      "path" : "Extension.extension",
      "sliceName" : "occupation",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:occupation.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:occupation.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "occupation"
    },
    {
      "id" : "Extension.extension:occupation.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.com/fhir/hl7pt/StructureDefinition/PersonOccupation-Pt"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
