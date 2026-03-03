# PTPatientPrimaryCarePeriod - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PTPatientPrimaryCarePeriod**

## Extension: PTPatientPrimaryCarePeriod 

| | |
| :--- | :--- |
| *Official URL*:http://example.com/fhir/hl7pt/StructureDefinition/PatientPrimaryCarePeriod-Pt | *Version*:1.0.0 |
| Active as of 2026-03-03 | *Computable Name*:PTPatientPrimaryCarePeriod |

Extensão para período de inscrição nos cuidados primários do utente.

**Context of Use**

**Usage info**

**Usos:**

* Usa este Extensão: [PTPatient](StructureDefinition-Patient-Pt.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.pt.patient-admin-ig|current/StructureDefinition/PatientPrimaryCarePeriod-Pt)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PatientPrimaryCarePeriod-Pt.csv), [Excel](StructureDefinition-PatientPrimaryCarePeriod-Pt.xlsx), [Schematron](StructureDefinition-PatientPrimaryCarePeriod-Pt.sch) 

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PatientPrimaryCarePeriod-Pt",
  "url" : "http://example.com/fhir/hl7pt/StructureDefinition/PatientPrimaryCarePeriod-Pt",
  "version" : "1.0.0",
  "name" : "PTPatientPrimaryCarePeriod",
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
  "description" : "Extensão para período de inscrição nos cuidados primários do utente.",
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
    "expression" : "Patient.generalPractitioner"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Extensão para período de inscrição nos cuidados primários do utente."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.com/fhir/hl7pt/StructureDefinition/PatientPrimaryCarePeriod-Pt"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Period"
      }]
    }]
  }
}

```
