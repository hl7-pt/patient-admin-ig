# Endereço estruturado PT - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Endereço estruturado PT**

## Extension: Endereço estruturado PT 

| | |
| :--- | :--- |
| *Official URL*:http://example.com/fhir/hl7pt/StructureDefinition/address-pt | *Version*:1.0.0 |
| Active as of 2026-02-01 | *Computable Name*:PTAddress |

Extensão complexa para endereço com tipo e códigos INE.

**Context of Use**

**Usage info**

**Usos:**

* Usa este Extensão: [PTPatient](StructureDefinition-Patient-Pt.md) and [PTPersonBirthplace](StructureDefinition-birthplace-pt.md)
* Exemplos para este Extensão: [Bundle/patient-link](Bundle-patient-link.md), [Bundle/patient-new](Bundle-patient-new.md) and [Bundle/patient-update](Bundle-patient-update.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.pt.patient-admin-ig|current/StructureDefinition/address-pt)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-address-pt.csv), [Excel](StructureDefinition-address-pt.xlsx), [Schematron](StructureDefinition-address-pt.sch) 

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "address-pt",
  "url" : "http://example.com/fhir/hl7pt/StructureDefinition/address-pt",
  "version" : "1.0.0",
  "name" : "PTAddress",
  "title" : "Endereço estruturado PT",
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
  "description" : "Extensão complexa para endereço com tipo e códigos INE.",
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
      "expression" : "Address"
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
        "short" : "Endereço estruturado PT",
        "definition" : "Extensão complexa para endereço com tipo e códigos INE."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:addressType",
        "path" : "Extension.extension",
        "sliceName" : "addressType",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:addressType.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:addressType.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "address-type-pt"
      },
      {
        "id" : "Extension.extension:addressType.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      },
      {
        "id" : "Extension.extension:addressType.value[x].system",
        "path" : "Extension.extension.value[x].system",
        "patternUri" : "http://spms.min-saude.pt/rnu/extensions/address-types"
      },
      {
        "id" : "Extension.extension:parish",
        "path" : "Extension.extension",
        "sliceName" : "parish",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:parish.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:parish.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "parish-pt"
      },
      {
        "id" : "Extension.extension:parish.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.extension:parish.value[x].coding.system",
        "path" : "Extension.extension.value[x].coding.system",
        "patternUri" : "http://www.ine.pt"
      },
      {
        "id" : "Extension.extension:municipality",
        "path" : "Extension.extension",
        "sliceName" : "municipality",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:municipality.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:municipality.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "municipality-pt"
      },
      {
        "id" : "Extension.extension:municipality.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.extension:municipality.value[x].coding.system",
        "path" : "Extension.extension.value[x].coding.system",
        "patternUri" : "http://www.ine.pt"
      },
      {
        "id" : "Extension.extension:county",
        "path" : "Extension.extension",
        "sliceName" : "county",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:county.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:county.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "county-pt"
      },
      {
        "id" : "Extension.extension:county.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.extension:county.value[x].coding.system",
        "path" : "Extension.extension.value[x].coding.system",
        "patternUri" : "http://www.ine.pt"
      },
      {
        "id" : "Extension.extension:country",
        "path" : "Extension.extension",
        "sliceName" : "country",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:country.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:country.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "country-pt"
      },
      {
        "id" : "Extension.extension:country.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.extension:country.value[x].coding.system",
        "path" : "Extension.extension.value[x].coding.system",
        "patternUri" : "https://www.iso.org/iso-3166-country-codes.html"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.com/fhir/hl7pt/StructureDefinition/address-pt"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
