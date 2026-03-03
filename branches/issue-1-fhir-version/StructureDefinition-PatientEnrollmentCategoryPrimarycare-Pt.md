# PTPatientEnrollmentCategoryPrimarycare - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PTPatientEnrollmentCategoryPrimarycare**

## Extension: PTPatientEnrollmentCategoryPrimarycare 

| | |
| :--- | :--- |
| *Official URL*:http://example.com/fhir/example/StructureDefinition/PatientEnrollmentCategoryPrimarycare-Pt | *Version*:1.0.0 |
| Active as of 2025-12-03 | *Computable Name*:PTPatientEnrollmentCategoryPrimarycare |

**Context of Use**

**Usage info**

**Usos:**

* Este Extensão não é utilizado por nenhum perfil neste guia de implementação

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.pt.patient-admin-ig|current/StructureDefinition/PatientEnrollmentCategoryPrimarycare-Pt)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PatientEnrollmentCategoryPrimarycare-Pt.csv), [Excel](StructureDefinition-PatientEnrollmentCategoryPrimarycare-Pt.xlsx), [Schematron](StructureDefinition-PatientEnrollmentCategoryPrimarycare-Pt.sch) 

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PatientEnrollmentCategoryPrimarycare-Pt",
  "url" : "http://example.com/fhir/example/StructureDefinition/PatientEnrollmentCategoryPrimarycare-Pt",
  "version" : "1.0.0",
  "name" : "PTPatientEnrollmentCategoryPrimarycare",
  "status" : "active",
  "date" : "2025-12-03T08:15:54+00:00",
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
        "fixedUri" : "http://example.com/fhir/example/StructureDefinition/PatientEnrollmentCategoryPrimarycare-Pt"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
