# PTAddressNuts - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PTAddressNuts**

## Extension: PTAddressNuts 

| | |
| :--- | :--- |
| *Official URL*:http://example.com/fhir/hl7pt/StructureDefinition/AddressNuts-Pt | *Version*:1.0.0 |
| Active as of 2026-02-01 | *Computable Name*:PTAddressNuts |

**Context of Use**

**Usage info**

**Usos:**

* Este Extensão não é utilizado por nenhum perfil neste guia de implementação

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.pt.patient-admin-ig|current/StructureDefinition/AddressNuts-Pt)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-AddressNuts-Pt.csv), [Excel](StructureDefinition-AddressNuts-Pt.xlsx), [Schematron](StructureDefinition-AddressNuts-Pt.sch) 

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "AddressNuts-Pt",
  "url" : "http://example.com/fhir/hl7pt/StructureDefinition/AddressNuts-Pt",
  "version" : "1.0.0",
  "name" : "PTAddressNuts",
  "status" : "active",
  "date" : "2026-02-01T11:21:19+00:00",
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
        "path" : "Extension"
      },
      {
        "id" : "Extension.extension:nuts-I",
        "path" : "Extension.extension",
        "sliceName" : "nuts-I",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:nuts-I.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:nuts-I.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "nuts-I"
      },
      {
        "id" : "Extension.extension:nuts-I.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.extension:nuts-II",
        "path" : "Extension.extension",
        "sliceName" : "nuts-II",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:nuts-II.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:nuts-II.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "nuts-II"
      },
      {
        "id" : "Extension.extension:nuts-II.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.extension:nuts-III",
        "path" : "Extension.extension",
        "sliceName" : "nuts-III",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:nuts-III.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:nuts-III.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "nuts-III"
      },
      {
        "id" : "Extension.extension:nuts-III.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.com/fhir/hl7pt/StructureDefinition/AddressNuts-Pt"
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
