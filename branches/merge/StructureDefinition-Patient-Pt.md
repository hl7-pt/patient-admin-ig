# PTPatient - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PTPatient**

## Resource Profile: PTPatient 

| | |
| :--- | :--- |
| *Official URL*:http://example.com/fhir/hl7pt/StructureDefinition/Patient-Pt | *Version*:1.0.0 |
| Active as of 2026-03-03 | *Computable Name*:PTPatient |

 
Perfil de Patient para contexto PT, incluindo tipos de indentificadores, nacionalidade, naturalidade (INE), notas, endereços codidificados, contactos, inscrição nos CSP. 

**Usos:**

* Este Perfil não é utilizado por nenhum perfil neste guia de implementação

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.pt.patient-admin-ig|current/StructureDefinition/Patient-Pt)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Patient-Pt.csv), [Excel](StructureDefinition-Patient-Pt.xlsx), [Schematron](StructureDefinition-Patient-Pt.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Patient-Pt",
  "url" : "http://example.com/fhir/hl7pt/StructureDefinition/Patient-Pt",
  "version" : "1.0.0",
  "name" : "PTPatient",
  "title" : "PTPatient",
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
  "description" : "Perfil de Patient para contexto PT, incluindo tipos de indentificadores, nacionalidade, naturalidade (INE), notas, endereços codidificados, contactos, inscrição nos CSP.",
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
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.id",
      "path" : "Patient.id",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension",
      "path" : "Patient.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.extension:birthplace-pt",
      "path" : "Patient.extension",
      "sliceName" : "birthplace-pt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.com/fhir/hl7pt/StructureDefinition/birthplace-pt"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:nationality-pt",
      "path" : "Patient.extension",
      "sliceName" : "nationality-pt",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.com/fhir/hl7pt/StructureDefinition/nationality-pt"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:notes",
      "path" : "Patient.extension",
      "sliceName" : "notes",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.com/fhir/hl7pt/StructureDefinition/Notes-pt"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Patient.active",
      "path" : "Patient.active",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.extension:address-pt",
      "path" : "Patient.address.extension",
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
      "id" : "Patient.address.use",
      "path" : "Patient.address.use",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.type",
      "path" : "Patient.address.type",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.text",
      "path" : "Patient.address.text",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.line",
      "path" : "Patient.address.line",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.city",
      "path" : "Patient.address.city",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.postalCode",
      "path" : "Patient.address.postalCode",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.country",
      "path" : "Patient.address.country",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact",
      "path" : "Patient.contact",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.address",
      "path" : "Patient.contact.address",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.address.extension:address-pt",
      "path" : "Patient.contact.address.extension",
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
      "id" : "Patient.contact.address.use",
      "path" : "Patient.contact.address.use",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.address.type",
      "path" : "Patient.contact.address.type",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.address.text",
      "path" : "Patient.contact.address.text",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.address.line",
      "path" : "Patient.contact.address.line",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.address.city",
      "path" : "Patient.contact.address.city",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.address.postalCode",
      "path" : "Patient.contact.address.postalCode",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.address.country",
      "path" : "Patient.contact.address.country",
      "mustSupport" : true
    },
    {
      "id" : "Patient.generalPractitioner",
      "path" : "Patient.generalPractitioner",
      "mustSupport" : true
    },
    {
      "id" : "Patient.generalPractitioner.extension:patient-primary-care-period",
      "path" : "Patient.generalPractitioner.extension",
      "sliceName" : "patient-primary-care-period",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.com/fhir/hl7pt/StructureDefinition/PatientPrimaryCarePeriod-Pt"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.managingOrganization",
      "path" : "Patient.managingOrganization",
      "mustSupport" : true
    }]
  }
}

```
