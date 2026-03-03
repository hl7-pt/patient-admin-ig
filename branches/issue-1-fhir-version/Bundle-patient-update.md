# patient-update - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **patient-update**

## Example Bundle: patient-update

Pacote patient-update do tipo message

-------

Entrada 1

Recurso MessageHeader:

> **event**: cs-fhir-events: PATIENT_UPDATE (Atualização de dados do utente)

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

**focus**:[ANA CATARINA CARVALHO PAULINO (official) Female, DoB: 1950-09-11 ( Identificador sequencial do utente na entidade: 1884)](Bundle-patient-update.md#Patient_f0fcf351-df4e-3678-ae9b-b6fc4e2dee02)

-------

Entrada 2

Recurso Patient:

> 

Última atualização: 2025-10-24 12:55:15+0100

ANA CATARINA CARVALHO PAULINO (official) Female, DoB: 1950-09-11 ( Identificador sequencial do utente na entidade: 1884)
-------

-------

Entrada 3

Recurso Organization:

> **active**: true**name**: Unidade Local de Saúde

-------

Entrada 4

Recurso Practitioner:

> **identifier**: Numero interno do profissional/2953 (utilização: usual, ), Numero mecanográfico do profissional/112 (utilização: official, )**name**: PIS TESTES

-------

Entrada 5

Recurso Practitioner:

> **name**: MARIA SANTOS

-------

Entrada 6

Recurso Organization:

> **identifier**: 2010105 (utilização: official, )**active**: true

-------

Entrada 7

Recurso Coverage:

> **status**: Active**beneficiary**:[ANA CATARINA CARVALHO PAULINO (official) Female, DoB: 1950-09-11 ( Identificador sequencial do utente na entidade: 1884)](Bundle-patient-update.md#Patient_f0fcf351-df4e-3678-ae9b-b6fc4e2dee02)**period**: ?? --> 2016-06-16 00:00:00+0100

-------

Entrada 8

Recurso Coverage:

> **status**: Active**beneficiary**:[ANA CATARINA CARVALHO PAULINO (official) Female, DoB: 1950-09-11 ( Identificador sequencial do utente na entidade: 1884)](Bundle-patient-update.md#Patient_f0fcf351-df4e-3678-ae9b-b6fc4e2dee02)**period**: ?? --> 2012-09-11 00:00:00+0100



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "patient-update",
  "type" : "message",
  "timestamp" : "2025-10-24T12:55:36.839+01:00",
  "entry" : [
    {
      "resource" : {
        "resourceType" : "MessageHeader",
        "id" : "c003f928-d3f8-4d60-85b0-47aa3b6447c2",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MessageHeader_c003f928-d3f8-4d60-85b0-47aa3b6447c2\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: MessageHeader c003f928-d3f8-4d60-85b0-47aa3b6447c2</b></p><a name=\"c003f928-d3f8-4d60-85b0-47aa3b6447c2\"> </a><a name=\"hcc003f928-d3f8-4d60-85b0-47aa3b6447c2\"> </a><p><b>event</b>: cs-fhir-events: PATIENT_UPDATE (Atualização de dados do utente)</p><h3>Destinations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Endpoint</b></td><td><b>Receiver</b></td></tr><tr><td style=\"display: none\">*</td><td>EXTERNAL SYSTEM</td><td>DEV/EXTERNALSYSTEM</td><td><a href=\"Bundle-patient-new.html#Organization_70cfff33-ebcb-4f99-9bf5-c560575295d8\">Unidade Local de Saúde Dev</a></td></tr></table><p><b>sender</b>: <a href=\"Bundle-patient-new.html#Organization_70cfff33-ebcb-4f99-9bf5-c560575295d8\">Unidade Local de Saúde Dev</a></p><p><b>enterer</b>: <a href=\"Bundle-patient-update.html#Practitioner_7f6ffaa6-bb0b-3080-97b6-2254211691b5\">Practitioner PIS TESTES </a></p><h3>Sources</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Endpoint</b></td></tr><tr><td style=\"display: none\">*</td><td>ADT</td><td>DEV/ADT</td></tr></table><p><b>focus</b>: <a href=\"Bundle-patient-update.html#Patient_f0fcf351-df4e-3678-ae9b-b6fc4e2dee02\">ANA CATARINA CARVALHO PAULINO (official) Female, DoB: 1950-09-11 ( Identificador sequencial do utente na entidade: 1884)</a></p></div>"
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
          "reference" : "Practitioner/7f6ffaa6-bb0b-3080-97b6-2254211691b5"
        },
        "source" : {
          "name" : "ADT",
          "endpoint" : "DEV/ADT"
        },
        "focus" : [
          {
            "reference" : "Patient/f0fcf351-df4e-3678-ae9b-b6fc4e2dee02"
          }
        ]
      }
    },
    {
      "resource" : {
        "resourceType" : "Patient",
        "id" : "f0fcf351-df4e-3678-ae9b-b6fc4e2dee02",
        "meta" : {
          "lastUpdated" : "2025-10-24T12:55:15.000+01:00"
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_f0fcf351-df4e-3678-ae9b-b6fc4e2dee02\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Patient f0fcf351-df4e-3678-ae9b-b6fc4e2dee02</b></p><a name=\"f0fcf351-df4e-3678-ae9b-b6fc4e2dee02\"> </a><a name=\"hcf0fcf351-df4e-3678-ae9b-b6fc4e2dee02\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Última atualização: 2025-10-24 12:55:15+0100</p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">ANA CATARINA CARVALHO PAULINO (official) Female, DoB: 1950-09-11 ( Identificador sequencial do utente na entidade: 1884)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Estado conhecido do doente\">Falecido:</td><td>false</td><td style=\"background-color: #f3f5da\" title=\"Estado civil conhecido do doente\">Estado civil:</td><td colspan=\"3\"><span title=\"Códigos:{http://terminology.hl7.org/CodeSystem/v3-MaritalStatus M}\">Casado</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Other Ids (see the one above)\">Other Ids:</td><td colspan=\"3\"><ul><li>Número nacional de utente/382404836</li><li>Número de identificação civil/5645556</li><li>Número de identificação fiscal/124325555</li><li>Número do processo/99007246</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Formas de contactar o doente\">Detalhes do contacto</td><td colspan=\"3\"><ul><li>ph: 210987988(Home)</li><li>ph: 911345654(Mobile)</li><li><a href=\"mailto:ana@email.com\">ana@email.com</a></li><li>RUA PROF PINTO CORREIA 10 R C DTO SANTAREM 2000-013 PT (home)</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Contacto nomeado: family member\">family member:</td><td colspan=\"3\"><ul><li>CASA PARA CORREIO </li><li>RUA DO CORREIO N.º1 AMÊNDOA 6120-156 PT </li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Contacto nomeado: Emergency Contact\">Emergency Contact:</td><td colspan=\"3\"><ul><li>MARIA </li><li>RUA DA AJUDA ABADE DE NEIVA 4750-006 PT </li><li>ph: 911112112(Mobile)</li><li><a href=\"mailto:MAE@EMAIL.COM\">MAE@EMAIL.COM</a></li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Contacto nomeado: father\">father:</td><td colspan=\"3\"><ul><li>ANIBAL JOSE RIBEIRO </li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Contacto nomeado: mother\">mother:</td><td colspan=\"3\"><ul><li>DELFINA ROSA GOMES </li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ligações para doentes\">Ligações:</td><td colspan=\"3\"><ul><li>Médico de clínica geral: <a href=\"Bundle-patient-new.html#Practitioner_598fe4e3-dfb7-394f-b94c-1b0502ca3d1c\">Practitioner FILIPE CASTRO </a></li><li>Médico de clínica geral: <a href=\"Bundle-patient-new.html#Organization_86db4073-1bcb-3791-a7da-3675bdeb5177\">Organization: identifier = 3110300 (use: official, )</a></li><li>Organização de gestão: <a href=\"Bundle-patient-new.html#Organization_70cfff33-ebcb-4f99-9bf5-c560575295d8\">Organization Unidade Local de Saúde Dev</a></li></ul></td></tr></table></div>"
        },
        "extension" : [
          {
            "extension" : [
              {
                "url" : "country",
                "valueCodeableConcept" : {
                  "coding" : [
                    {
                      "system" : "http://www.ine.pt",
                      "code" : "PT"
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
                      "code" : "14"
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
                      "code" : "1414"
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
                      "code" : "141408"
                    }
                  ]
                }
              }
            ],
            "url" : "http://example.pt/fhir/hl7pt/extensions/birthplace"
          },
          {
            "url" : "http://example.com/fhir/hl7pt/extensions/nationality",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://www.ine.pt",
                  "code" : "PT",
                  "display" : "PORTUGAL"
                }
              ]
            }
          },
          {
            "url" : "notes",
            "valueAnnotation" : {
              "text" : "notas relativas ao utente ex.Invisual"
            }
          }
        ],
        "identifier" : [
          {
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
            "value" : "1884"
          },
          {
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
            "value" : "382404836"
          },
          {
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
            "value" : "5645556"
          },
          {
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
            "value" : "124325555"
          },
          {
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
            "value" : "99007246"
          }
        ],
        "name" : [
          {
            "use" : "official",
            "family" : "CARVALHO PAULINO",
            "given" : ["ANA", "CATARINA"]
          }
        ],
        "telecom" : [
          {
            "system" : "phone",
            "value" : "210987988",
            "use" : "home",
            "rank" : 1
          },
          {
            "system" : "phone",
            "value" : "911345654",
            "use" : "mobile"
          },
          {
            "system" : "email",
            "value" : "ana@email.com"
          }
        ],
        "gender" : "female",
        "birthDate" : "1950-09-11",
        "deceasedBoolean" : false,
        "address" : [
          {
            "extension" : [
              {
                "extension" : [
                  {
                    "url" : "address-type",
                    "valueCoding" : {
                      "system" : "http://spms.min-saude.pt/rnu/extensions/address-types",
                      "code" : "MA",
                      "display" : "Main Address"
                    }
                  },
                  {
                    "url" : "county",
                    "valueCodeableConcept" : {
                      "coding" : [
                        {
                          "system" : "http://www.ine.pt",
                          "code" : "14"
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
                          "code" : "1416"
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
                          "code" : "141612"
                        }
                      ]
                    }
                  }
                ],
                "url" : "http://example.com/fhir/hl7pt/extensions/extension-address-v1-1-2"
              }
            ],
            "use" : "home",
            "type" : "both",
            "line" : ["RUA PROF PINTO CORREIA 10 R C DTO", "SANTAREM"],
            "district" : "SANTAREM",
            "postalCode" : "2000-013",
            "country" : "PT"
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
                    "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
                    "code" : "FAMMEMB",
                    "display" : "family member"
                  }
                ]
              }
            ],
            "name" : {
              "family" : "CORREIO",
              "given" : ["CASA", "PARA"]
            },
            "address" : {
              "extension" : [
                {
                  "extension" : [
                    {
                      "url" : "address-type",
                      "valueCoding" : {
                        "system" : "V2",
                        "code" : "C",
                        "display" : "Current Or Temporary"
                      }
                    },
                    {
                      "url" : "county",
                      "valueCodeableConcept" : {
                        "coding" : [
                          {
                            "system" : "http://www.ine.pt",
                            "code" : "14"
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
                            "code" : "1413"
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
                            "code" : "141302"
                          }
                        ]
                      }
                    }
                  ],
                  "url" : "http://example.com/fhir/hl7pt/extensions/extension-address-v1-1-2"
                }
              ],
              "type" : "postal",
              "line" : ["RUA DO CORREIO N.º1"],
              "city" : "AMÊNDOA",
              "district" : "SANTAREM",
              "postalCode" : "6120-156",
              "country" : "PT"
            }
          },
          {
            "relationship" : [
              {
                "coding" : [
                  {
                    "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
                    "code" : "C",
                    "display" : "Emergency Contact"
                  }
                ]
              }
            ],
            "name" : {
              "given" : ["MARIA"]
            },
            "telecom" : [
              {
                "system" : "phone",
                "value" : "911112112",
                "use" : "mobile"
              },
              {
                "system" : "email",
                "value" : "MAE@EMAIL.COM"
              }
            ],
            "address" : {
              "line" : ["RUA DA AJUDA"],
              "city" : "ABADE DE NEIVA",
              "district" : "BRAGA",
              "postalCode" : "4750-006",
              "country" : "PT"
            }
          },
          {
            "relationship" : [
              {
                "coding" : [
                  {
                    "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
                    "code" : "FTH",
                    "display" : "father"
                  }
                ]
              }
            ],
            "name" : {
              "family" : "RIBEIRO",
              "given" : ["ANIBAL", "JOSE"]
            }
          },
          {
            "relationship" : [
              {
                "coding" : [
                  {
                    "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
                    "code" : "MTH",
                    "display" : "mother"
                  }
                ]
              }
            ],
            "name" : {
              "family" : "GOMES",
              "given" : ["DELFINA", "ROSA"]
            }
          }
        ],
        "generalPractitioner" : [
          {
            "reference" : "Practitioner/598fe4e3-dfb7-394f-b94c-1b0502ca3d1c"
          },
          {
            "reference" : "Organization/86db4073-1bcb-3791-a7da-3675bdeb5177"
          }
        ],
        "managingOrganization" : {
          "reference" : "Organization/70cfff33-ebcb-4f99-9bf5-c560575295d8"
        }
      }
    },
    {
      "resource" : {
        "resourceType" : "Organization",
        "id" : "70cfff33-ebcb-4f99-9bf5-c560575295d8",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_70cfff33-ebcb-4f99-9bf5-c560575295d8\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Organization 70cfff33-ebcb-4f99-9bf5-c560575295d8</b></p><a name=\"70cfff33-ebcb-4f99-9bf5-c560575295d8\"> </a><a name=\"hc70cfff33-ebcb-4f99-9bf5-c560575295d8\"> </a><p><b>active</b>: true</p><p><b>name</b>: Unidade Local de Saúde</p></div>"
        },
        "active" : true,
        "name" : "Unidade Local de Saúde"
      }
    },
    {
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "7f6ffaa6-bb0b-3080-97b6-2254211691b5",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_7f6ffaa6-bb0b-3080-97b6-2254211691b5\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Practitioner 7f6ffaa6-bb0b-3080-97b6-2254211691b5</b></p><a name=\"7f6ffaa6-bb0b-3080-97b6-2254211691b5\"> </a><a name=\"hc7f6ffaa6-bb0b-3080-97b6-2254211691b5\"> </a><p><b>identifier</b>: Numero interno do profissional/2953 (utilização: usual, ), Numero mecanográfico do profissional/112 (utilização: official, )</p><p><b>name</b>: PIS TESTES </p></div>"
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
            "system" : "SONHO",
            "value" : "2953"
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
            "value" : "112"
          }
        ],
        "name" : [
          {
            "family" : "TESTES",
            "given" : ["PIS"]
          }
        ]
      }
    },
    {
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "598fe4e3-dfb7-394f-b94c-1b0502ca3d1c",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_598fe4e3-dfb7-394f-b94c-1b0502ca3d1c\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Practitioner 598fe4e3-dfb7-394f-b94c-1b0502ca3d1c</b></p><a name=\"598fe4e3-dfb7-394f-b94c-1b0502ca3d1c\"> </a><a name=\"hc598fe4e3-dfb7-394f-b94c-1b0502ca3d1c\"> </a><p><b>name</b>: MARIA SANTOS </p></div>"
        },
        "name" : [
          {
            "family" : "SANTOS",
            "given" : ["MARIA"]
          }
        ]
      }
    },
    {
      "resource" : {
        "resourceType" : "Organization",
        "id" : "86db4073-1bcb-3791-a7da-3675bdeb5177",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_86db4073-1bcb-3791-a7da-3675bdeb5177\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Organization 86db4073-1bcb-3791-a7da-3675bdeb5177</b></p><a name=\"86db4073-1bcb-3791-a7da-3675bdeb5177\"> </a><a name=\"hc86db4073-1bcb-3791-a7da-3675bdeb5177\"> </a><p><b>identifier</b>: 2010105 (utilização: official, )</p><p><b>active</b>: true</p></div>"
        },
        "identifier" : [
          {
            "use" : "official",
            "value" : "2010105"
          }
        ],
        "active" : true
      }
    },
    {
      "resource" : {
        "resourceType" : "Coverage",
        "id" : "5b9d4a7a-1823-4998-9d16-216fcc05a5b3",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Coverage_5b9d4a7a-1823-4998-9d16-216fcc05a5b3\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Coverage 5b9d4a7a-1823-4998-9d16-216fcc05a5b3</b></p><a name=\"5b9d4a7a-1823-4998-9d16-216fcc05a5b3\"> </a><a name=\"hc5b9d4a7a-1823-4998-9d16-216fcc05a5b3\"> </a><p><b>status</b>: Active</p><p><b>beneficiary</b>: <a href=\"Bundle-patient-update.html#Patient_f0fcf351-df4e-3678-ae9b-b6fc4e2dee02\">ANA CATARINA CARVALHO PAULINO (official) Female, DoB: 1950-09-11 ( Identificador sequencial do utente na entidade: 1884)</a></p><p><b>period</b>: ?? --&gt; 2016-06-16 00:00:00+0100</p><p><b>payor</b>: <a href=\"Organization/f1cf7567-92e6-3df8-9406-39892836a36b\">ADSE -  ASSISTENCIA DOENCA SERVIDORES ESTADO</a></p></div>"
        },
        "status" : "active",
        "beneficiary" : {
          "reference" : "Patient/f0fcf351-df4e-3678-ae9b-b6fc4e2dee02",
          "identifier" : {
            "system" : "ADSE -  ASSISTENCIA DOENCA SERVIDORES ESTADO",
            "value" : "015809870CA"
          }
        },
        "period" : {
          "end" : "2016-06-16T00:00:00+01:00"
        },
        "payor" : [
          {
            "reference" : "Organization/f1cf7567-92e6-3df8-9406-39892836a36b",
            "identifier" : {
              "system" : "SONHO",
              "value" : "910005"
            },
            "display" : "ADSE -  ASSISTENCIA DOENCA SERVIDORES ESTADO"
          }
        ]
      }
    },
    {
      "resource" : {
        "resourceType" : "Coverage",
        "id" : "4b270fef-9033-46fc-b36a-aac2b87422dd",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Coverage_4b270fef-9033-46fc-b36a-aac2b87422dd\"> </a><p class=\"res-header-id\"><b>Narrativa gerada: Coverage 4b270fef-9033-46fc-b36a-aac2b87422dd</b></p><a name=\"4b270fef-9033-46fc-b36a-aac2b87422dd\"> </a><a name=\"hc4b270fef-9033-46fc-b36a-aac2b87422dd\"> </a><p><b>status</b>: Active</p><p><b>beneficiary</b>: <a href=\"Bundle-patient-update.html#Patient_f0fcf351-df4e-3678-ae9b-b6fc4e2dee02\">ANA CATARINA CARVALHO PAULINO (official) Female, DoB: 1950-09-11 ( Identificador sequencial do utente na entidade: 1884)</a></p><p><b>period</b>: ?? --&gt; 2012-09-11 00:00:00+0100</p><p><b>payor</b>: <a href=\"Organization/0040e52f-85c7-3d99-b3dd-4c6431285d30\">ADSE - SNS</a></p></div>"
        },
        "status" : "active",
        "beneficiary" : {
          "reference" : "Patient/f0fcf351-df4e-3678-ae9b-b6fc4e2dee02",
          "identifier" : {
            "system" : "ADSE - SNS",
            "value" : "015809870CA"
          }
        },
        "period" : {
          "end" : "2012-09-11T00:00:00+01:00"
        },
        "payor" : [
          {
            "reference" : "Organization/0040e52f-85c7-3d99-b3dd-4c6431285d30",
            "identifier" : {
              "system" : "SONHO",
              "value" : "935640"
            },
            "display" : "ADSE - SNS"
          }
        ]
      }
    }
  ]
}

```
