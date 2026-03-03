# patient-new - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **patient-new**

## Example Bundle: patient-new



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "patient-new",
  "type" : "message",
  "timestamp" : "2025-10-24T14:16:30.035+01:00",
  "entry" : [{
    "fullUrl" : "urn:uuid:8f3aa0e0-4a19-4a7e-9f87-3e5b4d6f9b32",
    "resource" : {
      "resourceType" : "MessageHeader",
      "id" : "8f3aa0e0-4a19-4a7e-9f87-3e5b4d6f9b32",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MessageHeader_8f3aa0e0-4a19-4a7e-9f87-3e5b4d6f9b32\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: MessageHeader 8f3aa0e0-4a19-4a7e-9f87-3e5b4d6f9b32</b></p><a name=\"8f3aa0e0-4a19-4a7e-9f87-3e5b4d6f9b32\"> </a><a name=\"hc8f3aa0e0-4a19-4a7e-9f87-3e5b4d6f9b32\"> </a><p><b>event</b>: <a href=\"CodeSystem-cs-fhir-events.html#cs-fhir-events-PATIENT_NEW\">FHIR Events CodeSystem: PATIENT_NEW</a> (Criação de novo utente)</p><h3>Destinations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Endpoint</b></td><td><b>Receiver</b></td></tr><tr><td style=\"display: none\">*</td><td>EXTERNAL SYSTEM</td><td>DEV/EXTERNALSYSTEM</td><td><a href=\"Bundle-patient-new.html#urn-uuid-e10c7e4f-6c49-4ee3-a6dd-71e5b70230c1\">Unidade Local de Saúde Dev</a></td></tr></table><p><b>sender</b>: <a href=\"Bundle-patient-new.html#urn-uuid-e10c7e4f-6c49-4ee3-a6dd-71e5b70230c1\">Unidade Local de Saúde Dev</a></p><p><b>enterer</b>: <a href=\"Bundle-patient-new.html#urn-uuid-5bdc0d91-2c0f-47a8-bbb2-7f6fcb7c4ef5\">Practitioner: identifier = Numero interno do profissional: 5bdc0d91-2c0f-47a8-bbb2-7f6fcb7c4ef5 (use: usual, ),Numero mecanográfico do profissional: 30047 (use: official, )</a></p><h3>Sources</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Endpoint</b></td></tr><tr><td style=\"display: none\">*</td><td>ADT</td><td>DEV/ADT</td></tr></table><p><b>focus</b>: <a href=\"Bundle-patient-new.html#urn-uuid-2c1e7f78-41cd-4df4-a6de-1f8c7bd4a021\">Lilia Jose Teste Alves (official) Female, DoB: 1995-10-09 ( Identificador sequencial do utente na entidade: 404066 (use: usual, ))</a></p></div>"
      },
      "eventCoding" : {
        "system" : "http://example.com/fhir/hl7pt/CodeSystem/cs-fhir-events",
        "code" : "PATIENT_NEW",
        "display" : "Criação de novo utente"
      },
      "destination" : [{
        "name" : "EXTERNAL SYSTEM",
        "endpoint" : "DEV/EXTERNALSYSTEM",
        "receiver" : {
          "reference" : "urn:uuid:e10c7e4f-6c49-4ee3-a6dd-71e5b70230c1",
          "display" : "Unidade Local de Saúde Dev"
        }
      }],
      "sender" : {
        "reference" : "urn:uuid:e10c7e4f-6c49-4ee3-a6dd-71e5b70230c1",
        "display" : "Unidade Local de Saúde Dev"
      },
      "enterer" : {
        "reference" : "urn:uuid:5bdc0d91-2c0f-47a8-bbb2-7f6fcb7c4ef5"
      },
      "source" : {
        "name" : "ADT",
        "endpoint" : "DEV/ADT"
      },
      "focus" : [{
        "reference" : "urn:uuid:2c1e7f78-41cd-4df4-a6de-1f8c7bd4a021"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:2c1e7f78-41cd-4df4-a6de-1f8c7bd4a021",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "2c1e7f78-41cd-4df4-a6de-1f8c7bd4a021",
      "meta" : {
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-Confidentiality",
          "code" : "N",
          "display" : "Normal"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_2c1e7f78-41cd-4df4-a6de-1f8c7bd4a021\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Patient 2c1e7f78-41cd-4df4-a6de-1f8c7bd4a021</b></p><a name=\"2c1e7f78-41cd-4df4-a6de-1f8c7bd4a021\"> </a><a name=\"hc2c1e7f78-41cd-4df4-a6de-1f8c7bd4a021\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Etiqueta de segurança: Normal (Pormenores: Confidentiality código N = 'Normal')</p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Lilia Jose Teste Alves (official) Female, DoB: 1995-10-09 ( Identificador sequencial do utente na entidade: 404066 (use: usual, ))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"O registo está ativo\">Ativo:</td><td>true</td><td style=\"background-color: #f3f5da\" title=\"Estado conhecido do doente\">Falecido:</td><td colspan=\"3\">false</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Other Ids (see the one above)\">Other Ids:</td><td colspan=\"3\"><ul><li>Identificador sequencial do utente na entidade/b4d3104a-7d7d-4fc0-a61b-3547836fb84c (utilização: usual, )</li><li>Número do processo/18015692 (utilização: official, )</li><li>Número de identificação fiscal/254781369 (utilização: official, )</li><li>Passport number/589471XS (utilização: official, )</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Formas de contactar o doente\">Detalhes do contacto</td><td colspan=\"3\"><ul><li>ph: 265842987</li><li>ph: 915469872(Mobile)</li><li><a href=\"mailto:li@email.com\">li@email.com</a></li><li>Rua De Casa, N.2 Ançã 3060-009 (billing)</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Contacto nomeado: Self\">Self:</td><td colspan=\"3\"><ul><li>Lilia Jose Teste Alves (Official)</li><li>ph: 265842987</li><li>ph: 915469872(Mobile)</li><li><a href=\"mailto:li@email.com\">li@email.com</a></li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ligações para doentes\">Ligações:</td><td colspan=\"3\"><ul><li>Médico de clínica geral: <a href=\"Bundle-patient-new.html#urn-uuid-0f4cfb73-91ea-43a7-bb84-1b0c2419837f\">Practitioner Ana Torres </a></li><li>Médico de clínica geral: <a href=\"Bundle-patient-new.html#urn-uuid-3a9e5ae2-2dcf-44d0-bd38-a12439ac0a96\">Organization USF DEV</a></li><li>Organização de gestão: <a href=\"Bundle-patient-new.html#urn-uuid-e10c7e4f-6c49-4ee3-a6dd-71e5b70230c1\">Organization ULS DEV</a></li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Represents the patient's nationality\"><a href=\"StructureDefinition-nationality-pt.html\">Nationality Extension</a></td><td colspan=\"3\"><span title=\"Códigos:{https://www.iso.org/iso-3166-country-codes.html PT}\">Portugal</span></td></tr></table></div>"
      },
      "extension" : [{
        "url" : "http://example.com/fhir/hl7pt/StructureDefinition/nationality-pt",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.iso.org/iso-3166-country-codes.html",
            "code" : "PT",
            "display" : "Portugal"
          }]
        }
      }],
      "identifier" : [{
        "use" : "usual",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PI",
            "display" : "Patient internal identifier"
          }],
          "text" : "Identificador sequencial do utente na entidade"
        },
        "system" : "http://example.org/ADT",
        "value" : "b4d3104a-7d7d-4fc0-a61b-3547836fb84c"
      },
      {
        "use" : "usual",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PI",
            "display" : "Patient internal identifier"
          }],
          "text" : "Identificador sequencial do utente na entidade"
        },
        "system" : "http://example.org/SONHO",
        "value" : "404066"
      },
      {
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "MR",
            "display" : "Medical record number"
          }],
          "text" : "Número do processo"
        },
        "system" : "http://example.org/SONHO",
        "value" : "18015692"
      },
      {
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "TAX",
            "display" : "Tax ID number"
          }],
          "text" : "Número de identificação fiscal"
        },
        "system" : "http://example.org/AT",
        "value" : "254781369"
      },
      {
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PPN",
            "display" : "Passport Number"
          }],
          "text" : "Passport number"
        },
        "value" : "589471XS"
      }],
      "active" : true,
      "name" : [{
        "use" : "official",
        "family" : "Alves",
        "given" : ["Lilia", "Jose Teste"]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "265842987",
        "rank" : 1
      },
      {
        "system" : "phone",
        "value" : "915469872",
        "use" : "mobile",
        "rank" : 1
      },
      {
        "system" : "email",
        "value" : "li@email.com",
        "rank" : 1
      }],
      "gender" : "female",
      "birthDate" : "1995-10-09",
      "deceasedBoolean" : false,
      "address" : [{
        "extension" : [{
          "extension" : [{
            "url" : "address-type-pt",
            "valueCoding" : {
              "system" : "http://spms.min-saude.pt/rnu/extensions/address-types",
              "code" : "MA",
              "display" : "Main Address"
            }
          },
          {
            "url" : "parish-pt",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "http://www.ine.pt",
                "code" : "060201"
              }]
            }
          },
          {
            "url" : "municipality-pt",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "http://www.ine.pt",
                "code" : "0602"
              }]
            }
          },
          {
            "url" : "county-pt",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "http://www.ine.pt",
                "code" : "06"
              }]
            }
          }],
          "url" : "http://example.com/fhir/hl7pt/StructureDefinition/address-pt"
        }],
        "use" : "billing",
        "line" : ["Rua De Casa, N.2 Ançã"],
        "postalCode" : "3060-009"
      }],
      "contact" : [{
        "relationship" : [{
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
            "code" : "ONESELF",
            "display" : "Self"
          }]
        }],
        "name" : {
          "use" : "official",
          "family" : "Alves",
          "given" : ["Lilia", "Jose Teste"]
        },
        "telecom" : [{
          "system" : "phone",
          "value" : "265842987",
          "rank" : 1
        },
        {
          "system" : "phone",
          "value" : "915469872",
          "use" : "mobile",
          "rank" : 1
        },
        {
          "system" : "email",
          "value" : "li@email.com",
          "rank" : 1
        }]
      }],
      "generalPractitioner" : [{
        "reference" : "urn:uuid:0f4cfb73-91ea-43a7-bb84-1b0c2419837f"
      },
      {
        "reference" : "urn:uuid:3a9e5ae2-2dcf-44d0-bd38-a12439ac0a96"
      }],
      "managingOrganization" : {
        "reference" : "urn:uuid:e10c7e4f-6c49-4ee3-a6dd-71e5b70230c1"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:5bdc0d91-2c0f-47a8-bbb2-7f6fcb7c4ef5",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "5bdc0d91-2c0f-47a8-bbb2-7f6fcb7c4ef5",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_5bdc0d91-2c0f-47a8-bbb2-7f6fcb7c4ef5\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Practitioner 5bdc0d91-2c0f-47a8-bbb2-7f6fcb7c4ef5</b></p><a name=\"5bdc0d91-2c0f-47a8-bbb2-7f6fcb7c4ef5\"> </a><a name=\"hc5bdc0d91-2c0f-47a8-bbb2-7f6fcb7c4ef5\"> </a><p><b>identifier</b>: Numero interno do profissional/5bdc0d91-2c0f-47a8-bbb2-7f6fcb7c4ef5 (utilização: usual, ), Numero mecanográfico do profissional/30047 (utilização: official, )</p><p><b>active</b>: true</p></div>"
      },
      "identifier" : [{
        "use" : "usual",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "EI",
            "display" : "Employee number"
          }],
          "text" : "Numero interno do profissional"
        },
        "system" : "http://example.org/ADT",
        "value" : "5bdc0d91-2c0f-47a8-bbb2-7f6fcb7c4ef5"
      },
      {
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "EI",
            "display" : "Employee number"
          }],
          "text" : "Numero mecanográfico do profissional"
        },
        "system" : "http://example.org/RHV",
        "value" : "30047"
      }],
      "active" : true
    }
  },
  {
    "fullUrl" : "urn:uuid:91b6c6fa-0d5e-4d72-9d89-4ffbcb3fae07",
    "resource" : {
      "resourceType" : "Coverage",
      "id" : "91b6c6fa-0d5e-4d72-9d89-4ffbcb3fae07",
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Coverage_91b6c6fa-0d5e-4d72-9d89-4ffbcb3fae07\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Coverage 91b6c6fa-0d5e-4d72-9d89-4ffbcb3fae07</b></p><a name=\"91b6c6fa-0d5e-4d72-9d89-4ffbcb3fae07\"> </a><a name=\"hc91b6c6fa-0d5e-4d72-9d89-4ffbcb3fae07\"> </a><p><b>PTCoverageReason</b>: <span title=\"Códigos:{http://example.org/SONHO 705}\">Insuficiencia Económica</span></p><p><b>status</b>: Active</p><p><b>type</b>: <span title=\"Códigos:{http://spms.min-saude.pt/rnu/systemcodes/coverage-type BU}\">Beneficio do utente</span></p><p><b>beneficiary</b>: <a href=\"Bundle-patient-new.html#urn-uuid-2c1e7f78-41cd-4df4-a6de-1f8c7bd4a021\">Lilia Jose Teste Alves (official) Female, DoB: 1995-10-09 ( Identificador sequencial do utente na entidade: 404066 (use: usual, ))</a></p><p><b>period</b>: 2024-12-08 00:00:00+0000 --&gt; (em curso)</p><p><b>payor</b>: <a href=\"Bundle-patient-new.html#urn-uuid-6b3e55bb-98c4-4dbd-a45f-dc941f093e5e\">Organization Serviço Nacional de Saúde</a></p></div>"
      },
      "extension" : [{
        "url" : "http://example.com/fhir/hl7pt/StructureDefinition/coverage-reason-pt",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://example.org/SONHO",
            "code" : "705",
            "display" : "Insuficiencia Económica"
          }]
        }
      }],
      "status" : "active",
      "type" : {
        "coding" : [{
          "system" : "http://spms.min-saude.pt/rnu/systemcodes/coverage-type",
          "code" : "BU",
          "display" : "Beneficio do utente"
        }]
      },
      "beneficiary" : {
        "reference" : "urn:uuid:2c1e7f78-41cd-4df4-a6de-1f8c7bd4a021"
      },
      "period" : {
        "start" : "2024-12-08T00:00:00+00:00"
      },
      "payor" : [{
        "reference" : "urn:uuid:6b3e55bb-98c4-4dbd-a45f-dc941f093e5e"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:6b3e55bb-98c4-4dbd-a45f-dc941f093e5e",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "6b3e55bb-98c4-4dbd-a45f-dc941f093e5e",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_6b3e55bb-98c4-4dbd-a45f-dc941f093e5e\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Organization 6b3e55bb-98c4-4dbd-a45f-dc941f093e5e</b></p><a name=\"6b3e55bb-98c4-4dbd-a45f-dc941f093e5e\"> </a><a name=\"hc6b3e55bb-98c4-4dbd-a45f-dc941f093e5e\"> </a><p><b>identifier</b>: <code>http://example.org/SONHO</code>/935601 (utilização: usual, )</p><p><b>active</b>: true</p><p><b>name</b>: Serviço Nacional de Saúde</p></div>"
      },
      "identifier" : [{
        "use" : "usual",
        "system" : "http://example.org/SONHO",
        "value" : "935601"
      }],
      "active" : true,
      "name" : "Serviço Nacional de Saúde"
    }
  },
  {
    "fullUrl" : "urn:uuid:0f4cfb73-91ea-43a7-bb84-1b0c2419837f",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "0f4cfb73-91ea-43a7-bb84-1b0c2419837f",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_0f4cfb73-91ea-43a7-bb84-1b0c2419837f\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Practitioner 0f4cfb73-91ea-43a7-bb84-1b0c2419837f</b></p><a name=\"0f4cfb73-91ea-43a7-bb84-1b0c2419837f\"> </a><a name=\"hc0f4cfb73-91ea-43a7-bb84-1b0c2419837f\"> </a><p><b>active</b>: true</p><p><b>name</b>: Ana Torres </p></div>"
      },
      "active" : true,
      "name" : [{
        "family" : "Torres",
        "given" : ["Ana"]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:e10c7e4f-6c49-4ee3-a6dd-71e5b70230c1",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "e10c7e4f-6c49-4ee3-a6dd-71e5b70230c1",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_e10c7e4f-6c49-4ee3-a6dd-71e5b70230c1\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Organization e10c7e4f-6c49-4ee3-a6dd-71e5b70230c1</b></p><a name=\"e10c7e4f-6c49-4ee3-a6dd-71e5b70230c1\"> </a><a name=\"hce10c7e4f-6c49-4ee3-a6dd-71e5b70230c1\"> </a><p><b>identifier</b>: <code>http://example.org/SONHO</code>/454321 (utilização: usual, )</p><p><b>active</b>: true</p><p><b>name</b>: ULS DEV</p></div>"
      },
      "identifier" : [{
        "use" : "usual",
        "system" : "http://example.org/SONHO",
        "value" : "454321"
      }],
      "active" : true,
      "name" : "ULS DEV"
    }
  },
  {
    "fullUrl" : "urn:uuid:3a9e5ae2-2dcf-44d0-bd38-a12439ac0a96",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "3a9e5ae2-2dcf-44d0-bd38-a12439ac0a96",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_3a9e5ae2-2dcf-44d0-bd38-a12439ac0a96\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Organization 3a9e5ae2-2dcf-44d0-bd38-a12439ac0a96</b></p><a name=\"3a9e5ae2-2dcf-44d0-bd38-a12439ac0a96\"> </a><a name=\"hc3a9e5ae2-2dcf-44d0-bd38-a12439ac0a96\"> </a><p><b>identifier</b>: <code>http://example.org/SONHO</code>/454321 (utilização: usual, )</p><p><b>active</b>: true</p><p><b>name</b>: USF DEV</p></div>"
      },
      "identifier" : [{
        "use" : "usual",
        "system" : "http://example.org/SONHO",
        "value" : "454321"
      }],
      "active" : true,
      "name" : "USF DEV"
    }
  }]
}

```
