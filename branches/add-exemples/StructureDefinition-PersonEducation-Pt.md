# PTPersonEducation - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PTPersonEducation**

## Extension: PTPersonEducation 

| | |
| :--- | :--- |
| *Official URL*:http://example.com/fhir/hl7pt/StructureDefinition/PersonEducation-Pt | *Version*:1.0.0 |
| Draft as of 2024-01-16 | *Computable Name*:PTPersonEducation |

**Context of Use**

**Usage info**

**Usos:**

* Este Extensão não é utilizado por nenhum perfil neste guia de implementação

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.pt.patient-admin-ig|current/StructureDefinition/PersonEducation-Pt)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PersonEducation-Pt.csv), [Excel](StructureDefinition-PersonEducation-Pt.xlsx), [Schematron](StructureDefinition-PersonEducation-Pt.sch) 

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PersonEducation-Pt",
  "url" : "http://example.com/fhir/hl7pt/StructureDefinition/PersonEducation-Pt",
  "version" : "1.0.0",
  "name" : "PTPersonEducation",
  "status" : "draft",
  "date" : "2024-01-16T07:16:48.7799825+00:00",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Patient"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.com/fhir/hl7pt/StructureDefinition/PersonEducation-Pt"
      }
    ]
  }
}

```
