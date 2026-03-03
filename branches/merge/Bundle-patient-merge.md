# patient-merge - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **patient-merge**

## Example Bundle: patient-merge

Pacote patient-merge do tipo message

-------

Entrada 1

Recurso MessageHeader:

> **event**: cs-fhir-events: PATIENT_MERGE (Junção de identificações de utente)

### Destinations

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Receiver** |
| * | EXTERNAL SYSTEM | [Unidade Local de Saúde Dev](Bundle-patient-new.md#Organization_70cfff33-ebcb-4f99-9bf5-c560575295d8) |

**sender**:[Unidade Local de Saúde Dev](Bundle-patient-new.md#Organization_70cfff33-ebcb-4f99-9bf5-c560575295d8)

### Sources

| | |
| :--- | :--- |
| - | **Name** |
| * | ADT |

**focus**:[Lilia Jose Teste Alves (official) Female, DoB: 1995-10-09 ( Identificador sequencial do utente na entidade: 404066 (use: usual, ))](Bundle-patient-link.md#Patient_21af15d4-7e31-3976-8391-ff0b3a4ab37d)

-------

Entrada 2

Recurso Patient:

> 

Última atualização: 2025-10-24 14:16:11+0100

Etiqueta de segurança: Normal (Pormenores: Confidentiality código N = 'Normal')

Lilia Jose Teste Alves (official) Female, DoB: 1995-10-09 ( Identificador sequencial do utente na entidade: 21af15d4-7e31-3976-8391-ff0b3a4ab37d (use: usual, ))
-------

-------

Entrada 3

Recurso Patient:

> 

Etiqueta de segurança: Normal (Pormenores: Confidentiality código N = 'Normal')

Maria Teresa Rosa Teste (official) Female, DoB: 1973-02-04 ( Identificador sequencial do utente na entidade: 17fafe5f-6ce2-3190-8eb0-9d2e80a4cbf6 (use: usual, ))
-------

-------

Entrada 4

Recurso Practitioner:

> **identifier**: Numero interno do profissional/cc5416a2-8697-3367-bba8-eec87f189664 (utilização: usual, ), Numero mecanográfico do profissional/30047 (utilização: official, )**active**: true



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "patient-merge",
  "type" : "message",
  "timestamp" : "2025-10-24T14:16:30.035+01:00",
  "entry" : [
    {
      "resource" : {
        "resourceType" : "MessageHeader",
        "id" : "96af02f3-5a9c-4220-8f62-ece462f2b4d3",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MessageHeader_96af02f3-5a9c-4220-8f62-ece462f2b4d3\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: MessageHeader 96af02f3-5a9c-4220-8f62-ece462f2b4d3</b></p><a name=\"96af02f3-5a9c-4220-8f62-ece462f2b4d3\"> </a><a name=\"hc96af02f3-5a9c-4220-8f62-ece462f2b4d3\"> </a><p><b>event</b>: cs-fhir-events: PATIENT_MERGE (Junção de identificações de utente)</p><h3>Destinations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Endpoint</b></td><td><b>Receiver</b></td></tr><tr><td style=\"display: none\">*</td><td>EXTERNAL SYSTEM</td><td>DEV/EXTERNALSYSTEM</td><td><a href=\"Bundle-patient-new.html#Organization_70cfff33-ebcb-4f99-9bf5-c560575295d8\">Unidade Local de Saúde Dev</a></td></tr></table><p><b>sender</b>: <a href=\"Bundle-patient-new.html#Organization_70cfff33-ebcb-4f99-9bf5-c560575295d8\">Unidade Local de Saúde Dev</a></p><p><b>enterer</b>: <a href=\"Bundle-patient-link.html#Practitioner_cc5416a2-8697-3367-bba8-eec87f189664\">Practitioner: identifier = Numero interno do profissional: cc5416a2-8697-3367-bba8-eec87f189664 (use: usual, ),Numero mecanográfico do profissional: 30047 (use: official, )</a></p><h3>Sources</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Endpoint</b></td></tr><tr><td style=\"display: none\">*</td><td>ADT</td><td>DEV/ADT</td></tr></table><p><b>focus</b>: <a href=\"Bundle-patient-link.html#Patient_21af15d4-7e31-3976-8391-ff0b3a4ab37d\">Lilia Jose Teste Alves (official) Female, DoB: 1995-10-09 ( Identificador sequencial do utente na entidade: 404066 (use: usual, ))</a></p></div>"
        },
        "eventCoding" : {
          "system" : "http://example.com/fhir/hl7pt/CodeSystem/cs-fhir-events",
          "code" : "PATIENT_MERGE",
          "display" : "Junção de identificações de utente"
        },
        "destination" : [
          {
            "name" : "EXTERNAL SYSTEM",
            "endpoint" : "DEV/EXTERNALSYSTEM",
            "receiver" : {
              "reference" : "Organization/70cfff33-ebcb-4f99-9bf5-c560575295d8",
              "display" : "Unidade Local de Saúde Dev"
            }
          }
        ],
        "sender" : {
          "reference" : "Organization/70cfff33-ebcb-4f99-9bf5-c560575295d8",
          "display" : "Unidade Local de Saúde Dev"
        },
        "enterer" : {
          "reference" : "Practitioner/cc5416a2-8697-3367-bba8-eec87f189664"
        },
        "source" : {
          "name" : "ADT",
          "endpoint" : "DEV/ADT"
        },
        "focus" : [
          {
            "reference" : "Patient/21af15d4-7e31-3976-8391-ff0b3a4ab37d"
          }
        ]
      }
    },
    {
      "resource" : {
        "resourceType" : "Patient",
        "id" : "21af15d4-7e31-3976-8391-ff0b3a4ab37d",
        "meta" : {
          "lastUpdated" : "2025-10-24T14:16:11.518+01:00",
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_21af15d4-7e31-3976-8391-ff0b3a4ab37d\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Patient 21af15d4-7e31-3976-8391-ff0b3a4ab37d</b></p><a name=\"21af15d4-7e31-3976-8391-ff0b3a4ab37d\"> </a><a name=\"hc21af15d4-7e31-3976-8391-ff0b3a4ab37d\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Última atualização: 2025-10-24 14:16:11+0100</p><p style=\"margin-bottom: 0px\">Etiqueta de segurança: Normal (Pormenores: Confidentiality código N = 'Normal')</p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Lilia Jose Teste Alves (official) Female, DoB: 1995-10-09 ( Identificador sequencial do utente na entidade: 404066 (use: usual, ))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"O registo está ativo\">Ativo:</td><td>true</td><td style=\"background-color: #f3f5da\" title=\"Estado conhecido do doente\">Falecido:</td><td colspan=\"3\">false</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Other Ids (see the one above)\">Other Ids:</td><td colspan=\"3\"><ul><li>Identificador sequencial do utente na entidade/21af15d4-7e31-3976-8391-ff0b3a4ab37d (utilização: usual, )</li><li>Número do processo/18015692 (utilização: official, )</li><li>Número de identificação fiscal/254781369 (utilização: official, )</li><li>Passport number/589471XS (utilização: official, )</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Formas de contactar o doente\">Detalhes do contacto</td><td colspan=\"3\"><ul><li>ph: 265842987</li><li>ph: 915469872(Mobile)</li><li><a href=\"mailto:li@email.com\">li@email.com</a></li><li> Rua De Casa, N.2 Ançã 3060-009 (billing)</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Contacto nomeado: Self\">Self:</td><td colspan=\"3\"><ul><li>Lilia Jose Teste Alves (Official)</li><li>ph: 265842987</li><li>ph: 915469872(Mobile)</li><li><a href=\"mailto:li@email.com\">li@email.com</a></li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ligações para doentes\">Ligações:</td><td colspan=\"3\"><ul><li>Este registo substitui: <a href=\"Bundle-patient-link.html#Patient_17fafe5f-6ce2-3190-8eb0-9d2e80a4cbf6\">Maria Teresa Rosa Teste (official) Female, DoB: 1973-02-04 ( Identificador sequencial do utente na entidade: 1327 (use: usual, ))</a></li></ul></td></tr></table></div>"
        },
        "extension" : [
          {
            "url" : "http://spms.min-saude.pt/fhir/iop/extensions/nationality",
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
            "system" : "ADT",
            "value" : "21af15d4-7e31-3976-8391-ff0b3a4ab37d"
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
            "system" : "SONHO",
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
            "system" : "SONHO",
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
            "system" : "AT",
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
            "given" : ["Lilia", "Jose Teste"]
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
            "id" : "0877574c-b247-3999-8362-ab60fa8e378e",
            "extension" : [
              {
                "extension" : [
                  {
                    "url" : "address-type",
                    "valueCodeableConcept" : {
                      "coding" : [
                        {
                          "system" : "http://spms.min-saude.pt/rnu/extensions/address-types",
                          "code" : "MA",
                          "display" : "Main Address"
                        }
                      ]
                    }
                  },
                  {
                    "url" : "parish",
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
                    "url" : "municipality",
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
                    "url" : "county",
                    "valueCodeableConcept" : {
                      "coding" : [
                        {
                          "system" : "http://www.ine.pt",
                          "code" : "06"
                        }
                      ]
                    }
                  }
                ],
                "url" : "http://example.com/fhir/hl7pt/extensions/extension-address-v1-1-2"
              }
            ],
            "use" : "billing",
            "line" : [" Rua De Casa, N.2 Ançã"],
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
        "link" : [
          {
            "other" : {
              "reference" : "Patient/17fafe5f-6ce2-3190-8eb0-9d2e80a4cbf6"
            },
            "type" : "replaces"
          }
        ]
      }
    },
    {
      "resource" : {
        "resourceType" : "Patient",
        "id" : "17fafe5f-6ce2-3190-8eb0-9d2e80a4cbf6",
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_17fafe5f-6ce2-3190-8eb0-9d2e80a4cbf6\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Patient 17fafe5f-6ce2-3190-8eb0-9d2e80a4cbf6</b></p><a name=\"17fafe5f-6ce2-3190-8eb0-9d2e80a4cbf6\"> </a><a name=\"hc17fafe5f-6ce2-3190-8eb0-9d2e80a4cbf6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Etiqueta de segurança: Normal (Pormenores: Confidentiality código N = 'Normal')</p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Maria Teresa Rosa Teste (official) Female, DoB: 1973-02-04 ( Identificador sequencial do utente na entidade: 1327 (use: usual, ))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"O registo está ativo\">Ativo:</td><td>true</td><td style=\"background-color: #f3f5da\" title=\"Estado conhecido do doente\">Falecido:</td><td>false</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Estado civil conhecido do doente\">Estado civil:</td><td colspan=\"3\"><span title=\"Códigos:{http://terminology.hl7.org/CodeSystem/v3-MaritalStatus M}\">Casado</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Other Ids (see the one above)\">Other Ids:</td><td colspan=\"3\"><ul><li>Identificador sequencial do utente na entidade/17fafe5f-6ce2-3190-8eb0-9d2e80a4cbf6 (utilização: usual, )</li><li>Número nacional de utente/377588788 (utilização: official, )</li><li>Número do processo/99005087 (utilização: official, )</li><li>Número de identificação civil/12755547 (utilização: official, )</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Formas de contactar o doente\">Detalhes do contacto</td><td colspan=\"3\"><ul><li>ph: 918282812</li><li>ph: 9687854845(Mobile)</li><li> Rua Dr Manuel Da Cruz Junior 128 Moradia 14 Samouco 2890-002 (billing)</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Contacto nomeado: Father\">Father:</td><td colspan=\"3\"><ul><li>Joao Jose Nunes (Official)</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Contacto nomeado: Mother\">Mother:</td><td colspan=\"3\"><ul><li>Maria Dora Nunes (Official)</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Contacto nomeado: Self\">Self:</td><td colspan=\"3\"><ul><li>Maria Teresa Rosa Teste (Official)</li><li>ph: 918282812</li><li>ph: 9687854845(Mobile)</li></ul></td></tr></table></div>"
        },
        "extension" : [
          {
            "url" : "http://example.com/fhir/hl7pt/extensions/nationality",
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
            "system" : "ADT",
            "value" : "17fafe5f-6ce2-3190-8eb0-9d2e80a4cbf6"
          },
          {
            "use" : "official",
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code" : "HC",
                  "display" : "Health Card Number"
                }
              ],
              "text" : "Número nacional de utente"
            },
            "system" : "RNU",
            "value" : "377588788"
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
            "system" : "SONHO",
            "value" : "1327"
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
            "system" : "SONHO",
            "value" : "99005087"
          },
          {
            "use" : "official",
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code" : "CZ",
                  "display" : "Citizenship Card"
                }
              ],
              "text" : "Número de identificação civil"
            },
            "system" : "IRN",
            "value" : "12755547"
          }
        ],
        "active" : true,
        "name" : [
          {
            "use" : "official",
            "family" : "Teste",
            "given" : ["Maria", "Teresa Rosa"]
          }
        ],
        "telecom" : [
          {
            "system" : "phone",
            "value" : "918282812",
            "rank" : 1
          },
          {
            "system" : "phone",
            "value" : "9687854845",
            "use" : "mobile",
            "rank" : 1
          }
        ],
        "gender" : "female",
        "birthDate" : "1973-02-04",
        "deceasedBoolean" : false,
        "address" : [
          {
            "id" : "c264baba-5727-3f88-bcc0-a2dc89f2fec7",
            "extension" : [
              {
                "extension" : [
                  {
                    "url" : "parish",
                    "valueCodeableConcept" : {
                      "coding" : [
                        {
                          "system" : "http://www.ine.pt",
                          "code" : "150202"
                        }
                      ]
                    }
                  },
                  {
                    "url" : "municipality",
                    "valueCodeableConcept" : {
                      "coding" : [
                        {
                          "system" : "http://www.ine.pt",
                          "code" : "1502"
                        }
                      ]
                    }
                  },
                  {
                    "url" : "county",
                    "valueCodeableConcept" : {
                      "coding" : [
                        {
                          "system" : "http://www.ine.pt",
                          "code" : "15"
                        }
                      ]
                    }
                  }
                ],
                "url" : "http://example.com/fhir/hl7pt/extensions/extension-address-v1-1-2"
              }
            ],
            "use" : "billing",
            "line" : [" Rua Dr Manuel Da Cruz Junior 128 Moradia 14 Samouco"],
            "postalCode" : "2890-002"
          }
        ],
        "maritalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
              "code" : "M",
              "display" : "Casado"
            }
          ]
        },
        "contact" : [
          {
            "relationship" : [
              {
                "coding" : [
                  {
                    "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
                    "code" : "FTH",
                    "display" : "Father"
                  }
                ]
              }
            ],
            "name" : {
              "use" : "official",
              "family" : "Nunes",
              "given" : ["Joao", "Jose"]
            }
          },
          {
            "relationship" : [
              {
                "coding" : [
                  {
                    "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
                    "code" : "MTH",
                    "display" : "Mother"
                  }
                ]
              }
            ],
            "name" : {
              "use" : "official",
              "family" : "Nunes",
              "given" : ["Maria", "Dora"]
            }
          },
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
              "family" : "Teste",
              "given" : ["Maria", "Teresa Rosa"]
            },
            "telecom" : [
              {
                "system" : "phone",
                "value" : "918282812",
                "rank" : 1
              },
              {
                "system" : "phone",
                "value" : "9687854845",
                "use" : "mobile",
                "rank" : 1
              }
            ]
          }
        ]
      }
    },
    {
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "cc5416a2-8697-3367-bba8-eec87f189664",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_cc5416a2-8697-3367-bba8-eec87f189664\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Practitioner cc5416a2-8697-3367-bba8-eec87f189664</b></p><a name=\"cc5416a2-8697-3367-bba8-eec87f189664\"> </a><a name=\"hccc5416a2-8697-3367-bba8-eec87f189664\"> </a><p><b>identifier</b>: Numero interno do profissional/cc5416a2-8697-3367-bba8-eec87f189664 (utilização: usual, ), Numero mecanográfico do profissional/30047 (utilização: official, )</p><p><b>active</b>: true</p></div>"
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
            "system" : "ADT",
            "value" : "cc5416a2-8697-3367-bba8-eec87f189664"
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
            "system" : "RHV",
            "value" : "30047"
          }
        ],
        "active" : true
      }
    }
  ]
}

```
