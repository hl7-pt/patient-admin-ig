
## FHIR para HL7 v2

Muitas ddas implementações exigem que seja realizado a conversão entre mensagens HL7 v2 e mensagens FHIR em ambos os sentidos. Apesar de existir alguma informação de conversão entre HL7 v2 e FHIR, no sentido de FHIR para HL7 v2 nem por isso. Esta secção pretende dar uma orientação para que em implementaçãoes que necessitem de mapeamento de mensagens entre os dois standards em ambos os sentidos haja um entendimento comum.    


## Criação de Novo Utente

A mensagem que comunica a criação de um novo utente é uma ADT^A28. Os segmentos e os campos relevantes para este evento são:

- Recurso Bundle
  - Bundle.timestamp (MSH.7)
- Recurso MessageHeader(MSH e EVN)
  - MessageHeader.source -> MSH.3 (Aplicação de envio)
  - MessageHeader.sender -> MSH.4 (Entidade emissora)
  - MessageHeader.destination.name / MessageHeader.destination.endpoint -> MSH.5 (Aplicação destinatária)
  - MessageHeader.destination.receiver -> MSH.6 (Entidade destinatária)
  - MessageHeader.eventCoding => PATIENT_NEW -> MSH.9 = "ADT^A28" (Tipo Mensagem ^ Tipo Evento)
  - MessageHeader.enterer => referencia para o recurso Practitioner -> EVN.5  (utilizador que executou a ação)
- Recurso Patient (PID, NK1, ROL e OBX)
  - Patient.identifier -> PID.3 (identificadores do utentes) e PID.18 (número do processo)
  - dados de identificação disponiveis
  - Patient.contact -> NK1 (dados de contactos de pessoas relacionadas)
  - Patient.generalPractitioner -> ROL (Dados do medico de familia e centro de saúde do utente)
  - Patient.extension("notes") -> OBX (observações associadas ao registo do utente)
- Recurso Coverage (ZID e IN1/IN2)
  - Coverage.extension ("coverage-reason") / Coverage.type -> ZID (dados relativos a isenções associadas ao utente)
  - Coverage.payor -> IN1.2 (dados relativos a entidades responsáveis associadas ao utente)

## Atualização de dados do Utente

- Recurso Bundle
  - Bundle.timestamp (MSH.7)
- Recurso MessageHeader(MSH e EVN)
  - MessageHeader.source -> MSH.3 (Aplicação de envio)
  - MessageHeader.sender -> MSH.4 (Entidade emissora)
  - MessageHeader.destination.name / MessageHeader.destination.endpoint -> MSH.5 (Aplicação destinatária)
  - MessageHeader.destination.receiver -> MSH.6 (Entidade destinatária)
  - MessageHeader.eventCoding => PATIENT_UPDATE -> MSH.9 = "ADT^A31" (Tipo Mensagem ^ Tipo Evento)*
  - MessageHeader.enterer => referencia para o recurso Practitioner -> EVN.5  (utilizador que executou a ação)
- Recurso Patient (PID, NK1, ROL e OBX)
  - Patient.identifier -> PID.3 (identificadores do utentes) e PID.18 (número do processo)
  - dados de identificação disponiveis
  - Patient.contact -> NK1 (dados de contactos de pessoas relacionadas)
  - Patient.generalPractitioner -> ROL (Dados do medico de familia e centro de saúde do utente)
  - Patient.extension("notes") -> OBX (observações associadas ao registo do utente)
- Recurso Coverage (ZID e IN1/IN2)
  - Coverage.extension ("coverage-reason") / Coverage.type -> ZID (dados relativos a isenções associadas ao utente)
  - Coverage.payor -> IN1.2 (dados relativos a entidades responsáveis associadas ao utente)

*Implementações com a LIGHt (SONHO) poderão usar a ADT^A08 para este evento. Incluindo um segmento PV1 com o campo PV1.2 = N 

## Fusão de dados de 2 registos do mesmo Utente

- Recurso Bundle
  - Bundle.timestamp (MSH.7)
- Recurso MessageHeader(MSH e EVN)
  - MessageHeader.source -> MSH.3 (Aplicação de envio)
  - MessageHeader.sender -> MSH.4 (Entidade emissora)
  - MessageHeader.destination.name / MessageHeader.destination.endpoint -> MSH.5 (Aplicação destinatária)
  - MessageHeader.destination.receiver -> MSH.6 (Entidade destinatária)
    - MessageHeader.eventCoding => PATIENT_MERGE -> MSH.9 = "ADT^A40" (Tipo Mensagem ^ Tipo Evento)*
  - MessageHeader.enterer => referencia para o recurso Practitioner -> EVN.5  (utilizador que executou a ação)
- Recurso Patient principal (PID e MRG)
  - Patient.identifier -> PID.3 (identificadores do utentes) e PID.18 (número do processo)
  - dados de identificação disponiveis
  - Patient.meta.security -> PD1 (informação relativa à confidencialidade dos dados do utente)
  - Patient.link.other -> MRG (Recurso Patient linkado é passado no segento MRG)

## Associação de dados de 2 registos do mesmo Utente

- Recurso Bundle
  - Bundle.timestamp (MSH.7)
- Recurso MessageHeader(MSH e EVN)
  - MessageHeader.source -> MSH.3 (Aplicação de envio)
  - MessageHeader.sender -> MSH.4 (Entidade emissora)
  - MessageHeader.destination.name / MessageHeader.destination.endpoint -> MSH.5 (Aplicação destinatária)
  - MessageHeader.destination.receiver -> MSH.6 (Entidade destinatária)
    - MessageHeader.eventCoding => PATIENT_MERGE -> MSH.9 = "ADT^A24" (Tipo Mensagem ^ Tipo Evento)*
  - MessageHeader.enterer => referencia para o recurso Practitioner -> EVN.5  (utilizador que executou a ação)
- Recurso Patient principal (PID.1=1 (registo principal) | PID.1=2 (utente linkado))
  - Patient.identifier -> PID.3 (identificadores do utentes) e PID.18 (número do processo)
  - dados de identificação disponiveis
  - Patient.link.other -> PID (Recurso Patient linkado é passado no segento PID com PID.1=2)
