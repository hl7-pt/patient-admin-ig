# patient-update - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **patient-update**

## Example Bundle: patient-update



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "patient-update",
  "type" : "message",
  "timestamp" : "2025-10-24T14:16:30.035+01:00",
  "entry" : [
    {
      "fullUrl" : "urn:uuid:96af02f3-5a9c-4220-8f62-ece462f2b4d1",
      "resource" : {
        "resourceType" : "MessageHeader",
        "id" : "96af02f3-5a9c-4220-8f62-ece462f2b4d1",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MessageHeader_96af02f3-5a9c-4220-8f62-ece462f2b4d1\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: MessageHeader 96af02f3-5a9c-4220-8f62-ece462f2b4d1</b></p><a name=\"96af02f3-5a9c-4220-8f62-ece462f2b4d1\"> </a><a name=\"hc96af02f3-5a9c-4220-8f62-ece462f2b4d1\"> </a><p><b>event</b>: <a href=\"CodeSystem-cs-fhir-events.html#cs-fhir-events-PATIENT_UPDATE\">FHIR Events CodeSystem: PATIENT_UPDATE</a> (Atualização de dados do utente)</p><h3>Destinations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Endpoint</b></td><td><b>Receiver</b></td></tr><tr><td style=\"display: none\">*</td><td>EXTERNAL SYSTEM</td><td>DEV/EXTERNALSYSTEM</td><td><a href=\"Bundle-patient-link.html#urn-uuid-70cfff33-ebcb-4f99-9bf5-c560575295d8\">Unidade Local de Saúde Dev</a></td></tr></table><p><b>sender</b>: <a href=\"Bundle-patient-link.html#urn-uuid-70cfff33-ebcb-4f99-9bf5-c560575295d8\">Unidade Local de Saúde Dev</a></p><p><b>enterer</b>: <a href=\"Bundle-patient-update.html#urn-uuid-cc5416a2-8697-3367-bba8-eec87f189665\">Practitioner: identifier = Numero interno do profissional: cc5416a2-8697-3367-bba8-eec87f189665 (use: usual, ),Numero mecanográfico do profissional: 30047 (use: official, )</a></p><h3>Sources</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Endpoint</b></td></tr><tr><td style=\"display: none\">*</td><td>ADT</td><td>DEV/ADT</td></tr></table><p><b>focus</b>: <a href=\"Bundle-patient-update.html#urn-uuid-21af15d4-7e31-3976-8391-ff0b3a4ab37e\">Liliana Cristina Alves (official) Female, DoB: 1995-10-09 ( Identificador sequencial do utente na entidade: 404066 (use: usual, ))</a></p></div>"
        },
        "eventCoding" : {
          "system" : "http://example.com/fhir/hl7pt/CodeSystem/cs-fhir-events",
          "code" : "PATIENT_UPDATE",
          "display" : "Atualização de dados do utente"
        },
        "destination" : [
          {
            "name" : "EXTERNAL SYSTEM",
            "endpoint" : "DEV/EXTERNALSYSTEM",
            "receiver" : {
              "reference" : "urn:uuid:70cfff33-ebcb-4f99-9bf5-c560575295d8",
              "display" : "Unidade Local de Saúde Dev"
            }
          }
        ],
        "sender" : {
          "reference" : "urn:uuid:70cfff33-ebcb-4f99-9bf5-c560575295d8",
          "display" : "Unidade Local de Saúde Dev"
        },
        "enterer" : {
          "reference" : "urn:uuid:cc5416a2-8697-3367-bba8-eec87f189665"
        },
        "source" : {
          "name" : "ADT",
          "endpoint" : "DEV/ADT"
        },
        "focus" : [
          {
            "reference" : "urn:uuid:21af15d4-7e31-3976-8391-ff0b3a4ab37e"
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:21af15d4-7e31-3976-8391-ff0b3a4ab37e",
      "resource" : {
        "resourceType" : "Patient",
        "id" : "21af15d4-7e31-3976-8391-ff0b3a4ab37e",
        "meta" : {
          "security" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-Confidentiality",
              "code" : "N",
              "display" : "Normal"
            }
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_21af15d4-7e31-3976-8391-ff0b3a4ab37e\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Patient 21af15d4-7e31-3976-8391-ff0b3a4ab37e</b></p><a name=\"21af15d4-7e31-3976-8391-ff0b3a4ab37e\"> </a><a name=\"hc21af15d4-7e31-3976-8391-ff0b3a4ab37e\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Etiqueta de segurança: Normal (Pormenores: Confidentiality código N = 'Normal')</p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Liliana Cristina Alves (official) Female, DoB: 1995-10-09 ( Identificador sequencial do utente na entidade: 404066 (use: usual, ))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"O registo está ativo\">Ativo:</td><td>true</td><td style=\"background-color: #f3f5da\" title=\"Estado conhecido do doente\">Falecido:</td><td colspan=\"3\">false</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Other Ids (see the one above)\">Other Ids:</td><td colspan=\"3\"><ul><li>Identificador sequencial do utente na entidade/b4d3104a-7d7d-4fc0-a61b-3547836fb84c (utilização: usual, )</li><li>Número do processo/18015692 (utilização: official, )</li><li>Número de identificação fiscal/254781369 (utilização: official, )</li><li>Passport number/589471XS (utilização: official, )</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Formas de contactar o doente\">Detalhes do contacto</td><td colspan=\"3\"><ul><li>ph: 265842987</li><li>ph: 915469872(Mobile)</li><li><a href=\"mailto:li@email.com\">li@email.com</a></li><li>Rua De Casa, N.2 Ançã 3060-009 (billing)</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Contacto nomeado: Self\">Self:</td><td colspan=\"3\"><ul><li>Lilia Jose Teste Alves (Official)</li><li>ph: 265842987</li><li>ph: 915469872(Mobile)</li><li><a href=\"mailto:li@email.com\">li@email.com</a></li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ligações para doentes\">Ligações:</td><td colspan=\"3\"><ul><li>Médico de clínica geral: <a href=\"Bundle-patient-update.html#urn-uuid-0040e52f-85c7-3d99-b3dd-4c6431285d30\">Practitioner Ana Torres </a></li><li>Médico de clínica geral: <a href=\"Bundle-patient-update.html#urn-uuid-17fafe5f-6ce2-3190-8ec0-9d2e80a4cbf6\">Organization USF DEV</a></li><li>Organização de gestão: <a href=\"Bundle-patient-update.html#urn-uuid-21af15d4-7e31-3976-8391-fe0b3a4ab37d\">Organization ULS DEV</a></li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Represents the patient's nationality\"><a href=\"StructureDefinition-nationality-pt.html\">Nationality Extension</a></td><td colspan=\"3\"><span title=\"Códigos:{https://www.iso.org/iso-3166-country-codes.html PT}\">Portugal</span></td></tr></table></div>"
        },
        "extension" : [
          {
            "url" : "http://example.com/fhir/hl7pt/StructureDefinition/nationality-pt",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "https://www.iso.org/iso-3166-country-codes.html",
                  "code" : "PT",
                  "display" : "Portugal"
                }
              ]
            }
          }
        ],
        "identifier" : [
          {
            "use" : "usual",
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code" : "PI",
                  "display" : "Patient internal identifier"
                }
              ],
              "text" : "Identificador sequencial do utente na entidade"
            },
            "system" : "http://example.org/ADT",
            "value" : "b4d3104a-7d7d-4fc0-a61b-3547836fb84c"
          },
          {
            "use" : "usual",
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code" : "PI",
                  "display" : "Patient internal identifier"
                }
              ],
              "text" : "Identificador sequencial do utente na entidade"
            },
            "system" : "http://example.org/SONHO",
            "value" : "404066"
          },
          {
            "use" : "official",
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code" : "MR",
                  "display" : "Medical record number"
                }
              ],
              "text" : "Número do processo"
            },
            "system" : "http://example.org/SONHO",
            "value" : "18015692"
          },
          {
            "use" : "official",
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code" : "TAX",
                  "display" : "Tax ID number"
                }
              ],
              "text" : "Número de identificação fiscal"
            },
            "system" : "http://example.org/AT",
            "value" : "254781369"
          },
          {
            "use" : "official",
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code" : "PPN",
                  "display" : "Passport Number"
                }
              ],
              "text" : "Passport number"
            },
            "value" : "589471XS"
          }
        ],
        "active" : true,
        "name" : [
          {
            "use" : "official",
            "family" : "Alves",
            "given" : ["Liliana", "Cristina"]
          }
        ],
        "telecom" : [
          {
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
          }
        ],
        "gender" : "female",
        "birthDate" : "1995-10-09",
        "deceasedBoolean" : false,
        "address" : [
          {
            "extension" : [
              {
                "extension" : [
                  {
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
                      "coding" : [
                        {
                          "system" : "http://www.ine.pt",
                          "code" : "060201"
                        }
                      ]
                    }
                  },
                  {
                    "url" : "municipality-pt",
                    "valueCodeableConcept" : {
                      "coding" : [
                        {
                          "system" : "http://www.ine.pt",
                          "code" : "0602"
                        }
                      ]
                    }
                  },
                  {
                    "url" : "county-pt",
                    "valueCodeableConcept" : {
                      "coding" : [
                        {
                          "system" : "http://www.ine.pt",
                          "code" : "06"
                        }
                      ]
                    }
                  },
                  {
                    "url" : "country-pt",
                    "valueCodeableConcept" : {
                      "coding" : [
                        {
                          "system" : "https://www.iso.org/iso-3166-country-codes.html",
                          "code" : "PT"
                        }
                      ]
                    }
                  }
                ],
                "url" : "http://example.com/fhir/hl7pt/StructureDefinition/address-pt"
              }
            ],
            "use" : "billing",
            "line" : ["Rua De Casa, N.2 Ançã"],
            "postalCode" : "3060-009"
          }
        ],
        "contact" : [
          {
            "relationship" : [
              {
                "coding" : [
                  {
                    "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
                    "code" : "ONESELF",
                    "display" : "Self"
                  }
                ]
              }
            ],
            "name" : {
              "use" : "official",
              "family" : "Alves",
              "given" : ["Lilia", "Jose Teste"]
            },
            "telecom" : [
              {
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
              }
            ]
          }
        ],
        "generalPractitioner" : [
          {
            "reference" : "urn:uuid:0040e52f-85c7-3d99-b3dd-4c6431285d30"
          },
          {
            "reference" : "urn:uuid:17fafe5f-6ce2-3190-8ec0-9d2e80a4cbf6"
          }
        ],
        "managingOrganization" : {
          "reference" : "urn:uuid:21af15d4-7e31-3976-8391-fe0b3a4ab37d"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:cc5416a2-8697-3367-bba8-eec87f189665",
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "cc5416a2-8697-3367-bba8-eec87f189665",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_cc5416a2-8697-3367-bba8-eec87f189665\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Practitioner cc5416a2-8697-3367-bba8-eec87f189665</b></p><a name=\"cc5416a2-8697-3367-bba8-eec87f189665\"> </a><a name=\"hccc5416a2-8697-3367-bba8-eec87f189665\"> </a><p><b>identifier</b>: Numero interno do profissional/cc5416a2-8697-3367-bba8-eec87f189665 (utilização: usual, ), Numero mecanográfico do profissional/30047 (utilização: official, )</p><p><b>active</b>: true</p></div>"
        },
        "identifier" : [
          {
            "use" : "usual",
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code" : "EI",
                  "display" : "Employee number"
                }
              ],
              "text" : "Numero interno do profissional"
            },
            "system" : "http://example.org/ADT",
            "value" : "cc5416a2-8697-3367-bba8-eec87f189665"
          },
          {
            "use" : "official",
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code" : "EI",
                  "display" : "Employee number"
                }
              ],
              "text" : "Numero mecanográfico do profissional"
            },
            "system" : "http://example.org/RHV",
            "value" : "30047"
          }
        ],
        "active" : true
      }
    },
    {
      "fullUrl" : "urn:uuid:8d71060c-92da-35e9-a62e-576973141ccb",
      "resource" : {
        "resourceType" : "Coverage",
        "id" : "8d71060c-92da-35e9-a62e-576973141ccb",
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Coverage_8d71060c-92da-35e9-a62e-576973141ccb\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Coverage 8d71060c-92da-35e9-a62e-576973141ccb</b></p><a name=\"8d71060c-92da-35e9-a62e-576973141ccb\"> </a><a name=\"hc8d71060c-92da-35e9-a62e-576973141ccb\"> </a><p><b>PTCoverageReason</b>: <span title=\"Códigos:{http://example.org/SONHO 705}\">Insuficiencia Económica</span></p><p><b>status</b>: Active</p><p><b>type</b>: <span title=\"Códigos:{http://spms.min-saude.pt/rnu/systemcodes/coverage-type BU}\">Beneficio do utente</span></p><p><b>beneficiary</b>: <a href=\"Bundle-patient-update.html#urn-uuid-21af15d4-7e31-3976-8391-ff0b3a4ab37e\">Liliana Cristina Alves (official) Female, DoB: 1995-10-09 ( Identificador sequencial do utente na entidade: 404066 (use: usual, ))</a></p><p><b>period</b>: 2024-12-08 00:00:00+0000 --&gt; (em curso)</p><p><b>payor</b>: <a href=\"Bundle-patient-update.html#urn-uuid-7cb2fb44-1e55-4fde-bde1-652ce717a0ce\">Organization Serviço Nacional de Saúde</a></p></div>"
        },
        "extension" : [
          {
            "url" : "http://example.com/fhir/hl7pt/StructureDefinition/coverage-reason-pt",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://example.org/SONHO",
                  "code" : "705",
                  "display" : "Insuficiencia Económica"
                }
              ]
            }
          }
        ],
        "status" : "active",
        "type" : {
          "coding" : [
            {
              "system" : "http://spms.min-saude.pt/rnu/systemcodes/coverage-type",
              "code" : "BU",
              "display" : "Beneficio do utente"
            }
          ]
        },
        "beneficiary" : {
          "reference" : "urn:uuid:21af15d4-7e31-3976-8391-ff0b3a4ab37e"
        },
        "period" : {
          "start" : "2024-12-08T00:00:00+00:00"
        },
        "payor" : [
          {
            "reference" : "urn:uuid:7cb2fb44-1e55-4fde-bde1-652ce717a0ce"
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:7cb2fb44-1e55-4fde-bde1-652ce717a0ce",
      "resource" : {
        "resourceType" : "Organization",
        "id" : "7cb2fb44-1e55-4fde-bde1-652ce717a0ce",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_7cb2fb44-1e55-4fde-bde1-652ce717a0ce\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Organization 7cb2fb44-1e55-4fde-bde1-652ce717a0ce</b></p><a name=\"7cb2fb44-1e55-4fde-bde1-652ce717a0ce\"> </a><a name=\"hc7cb2fb44-1e55-4fde-bde1-652ce717a0ce\"> </a><p><b>identifier</b>: <code>http://example.org/SONHO</code>/935601 (utilização: usual, )</p><p><b>active</b>: true</p><p><b>name</b>: Serviço Nacional de Saúde</p></div>"
        },
        "identifier" : [
          {
            "use" : "usual",
            "system" : "http://example.org/SONHO",
            "value" : "935601"
          }
        ],
        "active" : true,
        "name" : "Serviço Nacional de Saúde"
      }
    },
    {
      "fullUrl" : "urn:uuid:0040e52f-85c7-3d99-b3dd-4c6431285d30",
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "0040e52f-85c7-3d99-b3dd-4c6431285d30",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_0040e52f-85c7-3d99-b3dd-4c6431285d30\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Practitioner 0040e52f-85c7-3d99-b3dd-4c6431285d30</b></p><a name=\"0040e52f-85c7-3d99-b3dd-4c6431285d30\"> </a><a name=\"hc0040e52f-85c7-3d99-b3dd-4c6431285d30\"> </a><p><b>active</b>: true</p><p><b>name</b>: Ana Torres </p></div>"
        },
        "active" : true,
        "name" : [
          {
            "family" : "Torres",
            "given" : ["Ana"]
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:21af15d4-7e31-3976-8391-fe0b3a4ab37d",
      "resource" : {
        "resourceType" : "Organization",
        "id" : "21af15d4-7e31-3976-8391-fe0b3a4ab37d",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_21af15d4-7e31-3976-8391-fe0b3a4ab37d\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Organization 21af15d4-7e31-3976-8391-fe0b3a4ab37d</b></p><a name=\"21af15d4-7e31-3976-8391-fe0b3a4ab37d\"> </a><a name=\"hc21af15d4-7e31-3976-8391-fe0b3a4ab37d\"> </a><p><b>identifier</b>: <code>http://example.org/SONHO</code>/454321 (utilização: usual, )</p><p><b>active</b>: true</p><p><b>name</b>: ULS DEV</p></div>"
        },
        "identifier" : [
          {
            "use" : "usual",
            "system" : "http://example.org/SONHO",
            "value" : "454321"
          }
        ],
        "active" : true,
        "name" : "ULS DEV"
      }
    },
    {
      "fullUrl" : "urn:uuid:17fafe5f-6ce2-3190-8ec0-9d2e80a4cbf6",
      "resource" : {
        "resourceType" : "Organization",
        "id" : "17fafe5f-6ce2-3190-8ec0-9d2e80a4cbf6",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_17fafe5f-6ce2-3190-8ec0-9d2e80a4cbf6\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Organization 17fafe5f-6ce2-3190-8ec0-9d2e80a4cbf6</b></p><a name=\"17fafe5f-6ce2-3190-8ec0-9d2e80a4cbf6\"> </a><a name=\"hc17fafe5f-6ce2-3190-8ec0-9d2e80a4cbf6\"> </a><p><b>identifier</b>: <code>http://example.org/SONHO</code>/454321 (utilização: usual, )</p><p><b>active</b>: true</p><p><b>name</b>: USF DEV</p></div>"
        },
        "identifier" : [
          {
            "use" : "usual",
            "system" : "http://example.org/SONHO",
            "value" : "454321"
          }
        ],
        "active" : true,
        "name" : "USF DEV"
      }
    }
  ]
}

```
