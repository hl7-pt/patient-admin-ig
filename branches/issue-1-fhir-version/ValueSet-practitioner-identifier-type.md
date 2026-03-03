# Tipos de Identificadores de Profissionais - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipos de Identificadores de Profissionais**

## ValueSet: Tipos de Identificadores de Profissionais 

| | |
| :--- | :--- |
| *Official URL*:http://example.com/fhir/example/ValueSet/practitioner-identifier-type | *Version*:1.0.0 |
| Active as of 2025-12-03 | *Computable Name*:VS_PractitionerIdentifierType |

 
Conjunto de tipos válidos de identificadores para profissionais em Portugal. 

 **References** 

* [PTPractitioner](StructureDefinition-Practitioner-Pt.md)

### Logical Definition (CLD)

* Include estes códigos, tal como definidos em [`http://terminology.hl7.org/CodeSystem/v2-0203`](http://terminology.hl7.org/7.0.0/CodeSystem-v2-0203.html)versão 📦5.0.0

 

### Expansion

Expansão efectuada internamente com base em [codesystem identifierType v5.0.0 (CodeSystem)](http://terminology.hl7.org/7.0.0/CodeSystem-v2-0203.html)

Este conjunto de valores contém 3 conceitos

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "practitioner-identifier-type",
  "url" : "http://example.com/fhir/example/ValueSet/practitioner-identifier-type",
  "version" : "1.0.0",
  "name" : "VS_PractitionerIdentifierType",
  "title" : "Tipos de Identificadores de Profissionais",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Conjunto de tipos válidos de identificadores para profissionais em Portugal.",
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
  "compose" : {
    "include" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "concept" : [
          {
            "code" : "EI",
            "display" : "Employee number"
          },
          {
            "code" : "MD",
            "display" : "Medical License number"
          },
          {
            "code" : "NP",
            "display" : "Nurse practitioner number"
          }
        ]
      }
    ]
  }
}

```
