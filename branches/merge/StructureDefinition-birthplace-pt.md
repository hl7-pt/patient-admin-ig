# Birthplace Extension - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Birthplace Extension**

## Extension: Birthplace Extension 

| | |
| :--- | :--- |
| *Official URL*:http://example.com/fhir/hl7pt/StructureDefinition/birthplace-pt | *Version*:1.0.0 |
| Active as of 2026-03-03 | *Computable Name*:PTPersonBirthplace |

Extensão para o local de nascimento do utente.

**Context of Use**

**Usage info**

**Usos:**

* Usa este Extensão: [PTPatient](StructureDefinition-Patient-Pt.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.pt.patient-admin-ig|current/StructureDefinition/birthplace-pt)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-birthplace-pt.csv), [Excel](StructureDefinition-birthplace-pt.xlsx), [Schematron](StructureDefinition-birthplace-pt.sch) 

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "birthplace-pt",
  "url" : "http://example.com/fhir/hl7pt/StructureDefinition/birthplace-pt",
  "version" : "1.0.0",
  "name" : "PTPersonBirthplace",
  "title" : "Birthplace Extension",
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
  "description" : "Extensão para o local de nascimento do utente.",
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
      "short" : "Birthplace Extension",
      "definition" : "Extensão para o local de nascimento do utente."
    },
    {
      "id" : "Extension.extension:country",
      "path" : "Extension.extension",
      "sliceName" : "country",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:country.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "country"
    },
    {
      "id" : "Extension.extension:county",
      "path" : "Extension.extension",
      "sliceName" : "county",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:county.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "county"
    },
    {
      "id" : "Extension.extension:municipality",
      "path" : "Extension.extension",
      "sliceName" : "municipality",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:municipality.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "municipality"
    },
    {
      "id" : "Extension.extension:parish",
      "path" : "Extension.extension",
      "sliceName" : "parish",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:parish.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "parish"
    },
    {
      "id" : "Extension.extension:address-pt",
      "path" : "Extension.extension",
      "sliceName" : "address-pt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.com/fhir/hl7pt/StructureDefinition/address-pt"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.com/fhir/hl7pt/StructureDefinition/birthplace-pt"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
