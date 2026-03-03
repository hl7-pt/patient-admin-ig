# Conversão de mensagens entre Standards - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* **Conversão de mensagens entre Standards**

## Conversão de mensagens entre Standards

## HL7 v2 para FHIR

Muitas ddas implementações exigem que seja realizado a conversão entre mensagens HL7 v2 e mensagens FHIR em ambos os sentidos. Apesar de existir alguma informação de conversão entre HL7 v2 e FHIR, no sentido de FHIR para HL7 v2 nem por isso. Esta secção pretende dar uma orientação para que em implementaçãoes que necessitem de mapeamento de mensagens entre os dois standards em ambos os sentidos haja um entendimento comum.

### Criação de Novo Utente

A mensagem que comunica a criação de um novo utente é uma ADT^A28. Os segmentos e os campos relevantes para este evento são:

* MSH (Recurso MessageHeader) 
* Aplicação de envio (MessageHeader.source)
* Entidade emissora (MessageHeader.sender)
* Aplicação destinatária (MessageHeader.destination.name / MessageHeader.destination.endpoint)
* Entidade destinatária (MessageHeader.destination.receiver)
* Tipo Mensagem ^ Tipo Evento (MessageHeader.eventCoding => PATIENT_NEW)
 
* EVN 
* dados do evento 
* data hora do evento (eventualmente necessário para algumas implementações como data/hora de updated)
* utilizador que executou a ação (MessageHeader.enterer => referencia para o recurso Practitioner)
 
 
* PID (Recurso Patient) 
* identificadores do utentes
* dados de identificação disponiveis
 
* ZID (Recurso Coverage) 
* dados relativos a isenções associadas ao utente (Coverage.type)
 
* ROL 
* Dados do medico de familia e centro de saúde do utente
 
* NK1 (Recurso Patient) 
* dados de contactos de pessoas relacionadas (Patient.contact)
 
* IN1 / IN2 (Recurso Coverage) 
* dados relativos a entidades responsáveis associadas ao utente (Coverage.payor)
 
* OBX (Recurso Patient) 
* observações associadas ao registo do utente (Patient.extension("notes"))
 
* PV1 
* algumas mensagens poderão vir com PV1.2 ="N" indicando que não há informação relativa a episódio, pelo que não é criado qualquer recurso para este segmento.
 

### Atulização de dados do Utente

A mensagem que comunica a atualização de dados do utente é uma ADT^A31. Algumas implementações, nomeadamente no contexto de Portugal, as que trocam dados com o SONHO via LIGHt, será ser uma ADT^A08 na qual vem o segmento PV1 com o campo PV1.2 = "N". Os segmentos e os campos relevantes para este evento são:

* MSH (Recurso MessageHeader) 
* Aplicação de envio (MessageHeader.source)
* Entidade emissora (MessageHeader.sender)
* Aplicação destinatária (MessageHeader.destination.name / MessageHeader.destination.endpoint)
* Entidade destinatária (MessageHeader.destination.receiver)
* Tipo Mensagem ^ Tipo Evento (MessageHeader.eventCoding => PATIENT_UPDATE)
 
* EVN 
* dados do evento 
* data hora do evento (eventualmente necessário para algumas implementações como data/hora de updated)
* utilizador que executou a ação (MessageHeader.enterer => referencia para o recurso Practitioner)
 
 
* PID (Recurso Patient) 
* identificadores do utentes
* dados de identificação disponiveis
 
* ZID (Recurso Coverage) 
* dados relativos a isenções associadas ao utente (Coverage.type)
 
* ROL 
* Dados do medico de familia e centro de saúde do utente
 
* NK1 (Recurso Patient) 
* dados de contactos de pessoas relacionadas (Patient.contact)
 
* IN1 / IN2 (Recurso Coverage) 
* dados relativos a entidades responsáveis associadas ao utente (Coverage.payor)
 
* OBX (Recurso Patient) 
* observações associadas ao registo do utente (Patient.extension("notes"))
 
* PV1 
* algumas mensagens poderão vir com PV1.2 ="N" indicando que não há informação relativa a episódio, pelo que não é criado qualquer recurso para este segmento.
 

### Fusao de dados do Utente

A mensagem que comunica a fusão de 2 registos do mesmo utente é uma ADT^A40. Os segmentos e os campos relevantes para este evento são:

* MSH (Recurso MessageHeader) 
* Aplicação de envio (MessageHeader.source)
* Entidade emissora (MessageHeader.sender)
* Aplicação destinatária (MessageHeader.destination.name / MessageHeader.destination.endpoint)
* Entidade destinatária (MessageHeader.destination.receiver)
* Tipo Mensagem ^ Tipo Evento (MessageHeader.eventCoding => PATIENT_MERGE)
 
* EVN 
* dados do evento 
* data hora do evento (eventualmente necessário para algumas implementações como data/hora de updated)
* utilizador que executou a ação (MessageHeader.enterer => referencia para o recurso Practitioner)
 
 
* PID (Recurso Patient principal) 
* identificadores do utentes
* dados de identificação disponiveis
 
* PD1 (Recurso Patient principal) 
* este segmento vem com a informação de confidencialidade dos dados (Patient.meta.security)
 
* MRG (Recurso Patient) 
* este segemento é mapeado para um segundo recurso Patient que vai ser referenciado no recurso: 
* Patient.link.other(Patient (2º))
* Patient.link.type = replaces
 
 

### Associação de dados do Utente

A mensagem que comunica a associação de 2 registos do mesmo utente é uma ADT^A24. Os segmentos e os campos relevantes para este evento são:

* MSH (Recurso MessageHeader) 
* Aplicação de envio (MessageHeader.source)
* Entidade emissora (MessageHeader.sender)
* Aplicação destinatária (MessageHeader.destination.name / MessageHeader.destination.endpoint)
* Entidade destinatária (MessageHeader.destination.receiver)
* Tipo Mensagem ^ Tipo Evento (MessageHeader.eventCoding => PATIENT_LINK)
 
* EVN 
* dados do evento 
* data hora do evento (eventualmente necessário para algumas implementações como data/hora de updated)
* utilizador que executou a ação (MessageHeader.enterer => referencia para o recurso Practitioner)
 
 
* PID (Recurso Patient principal) 
* identificadores do utentes
* dados de identificação disponiveis
 
* PD1 (Recurso Patient principal) 
* este segmento vem com a informação de confidencialidade dos dados (Patient.meta.security)
 
* MRG (Recurso Patient) 
* este segemento é mapeado para um segundo recurso Patient que vai ser referenciado no recurso: 
* Patient.link.other(Patient (2º))
* Patient.link.type = replaces
 
 

### Deassociação de dados do Utente

A mensagem que comunica a atualização de dados do utente é uma ADT^A37. Os segmentos e os campos relevantes para este evento são:

* MSH (Recurso MessageHeader e Recurso Bundle) 
* Aplicação de envio (MessageHeader.source)
* Entidade emissora (MessageHeader.sender)
* Aplicação destinatária (MessageHeader.destination.name / MessageHeader.destination.endpoint)
* Entidade destinatária (MessageHeader.destination.receiver)
* Data/hora (Bundle.timestamp)
* Tipo Mensagem ^ Tipo Evento (MessageHeader.eventCoding => PATIENT_UNLINK)
 
* EVN 
* dados do evento 
* data hora do evento (eventualmente necessário para algumas implementações como data/hora de updated)
* utilizador que executou a ação (MessageHeader.enterer => referencia para o recurso Practitioner)
 
 
* PID (Recurso Patient principal) 
* identificadores do utentes
* dados de identificação disponiveis
 
* PD1 (Recurso Patient principal) 
* este segmento vem com a informação de confidencialidade dos dados (Patient.meta.security)
 
* MRG (Recurso Patient) 
* este segemento é mapeado para um segundo recurso Patient que vai ser referenciado no recurso: 
* Patient.link.other(Patient (2º))
* Patient.link.type = seealso
 
 

