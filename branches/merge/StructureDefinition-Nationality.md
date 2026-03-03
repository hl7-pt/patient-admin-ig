# PTNationality - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PTNationality**

## Extension: PTNationality 

| | |
| :--- | :--- |
| *Official URL*:http://example.com/fhir/example/StructureDefinition/Nationality | *Version*:1.0.0 |
| Active as of 2025-12-03 | *Computable Name*:PTNationality |

**Context of Use**

**Usage info**

**Usos:**

* Usa este Extensão: [PTPatient](StructureDefinition-Patient-Pt.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.pt.patient-admin-ig|current/StructureDefinition/Nationality)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Nationality.csv), [Excel](StructureDefinition-Nationality.xlsx), [Schematron](StructureDefinition-Nationality.sch) 

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Nationality",
  "url" : "http://example.com/fhir/example/StructureDefinition/Nationality",
  "version" : "1.0.0",
  "name" : "PTNationality",
  "status" : "active",
  "date" : "2025-12-03T08:17:48+00:00",
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
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.com/fhir/example/StructureDefinition/Nationality"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.value[x].coding.system",
        "path" : "Extension.value[x].coding.system",
        "patternUri" : "http://www.ine.pt"
      }
    ]
  }
}

```
