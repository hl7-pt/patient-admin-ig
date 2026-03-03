# Nationality Extension - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nationality Extension**

## Extension: Nationality Extension 

| | |
| :--- | :--- |
| *Official URL*:http://example.com/fhir/hl7pt/StructureDefinition/nationality-pt | *Version*:1.0.0 |
| Active as of 2026-02-01 | *Computable Name*:PTNationality |

Represents the patient's nationality

**Context of Use**

**Usage info**

**Usos:**

* Usa este Extensão: [PTPatient](StructureDefinition-Patient-Pt.md)
* Exemplos para este Extensão: [Bundle/patient-link](Bundle-patient-link.md), [Bundle/patient-new](Bundle-patient-new.md) and [Bundle/patient-update](Bundle-patient-update.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.pt.patient-admin-ig|current/StructureDefinition/nationality-pt)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-nationality-pt.csv), [Excel](StructureDefinition-nationality-pt.xlsx), [Schematron](StructureDefinition-nationality-pt.sch) 

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "nationality-pt",
  "url" : "http://example.com/fhir/hl7pt/StructureDefinition/nationality-pt",
  "version" : "1.0.0",
  "name" : "PTNationality",
  "title" : "Nationality Extension",
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
  "description" : "Represents the patient's nationality",
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
      "type" : "fhirpath",
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
        "path" : "Extension",
        "short" : "Nationality Extension",
        "definition" : "Represents the patient's nationality"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.com/fhir/hl7pt/StructureDefinition/nationality-pt"
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
        "patternUri" : "https://www.iso.org/iso-3166-country-codes.html"
      }
    ]
  }
}

```
