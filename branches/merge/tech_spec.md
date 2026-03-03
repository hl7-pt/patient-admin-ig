# Especificação Técnica - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* **Especificação Técnica**

## Especificação Técnica

O paradigma de comunicação por mensagens FHIR entre os sistemas de informação, segue uma abordagem estruturada e interoperável, garantindo a troca eficiente e segura de dados do utente, nesta IG em particular dados administrativos.

Quando um profissional de saúde interage com o ADT, são gerados eventos que refletem as ações realizadas (nesta IG em concreto a criação de um novo utente, atualização de dados do utente, fusão de 2 registos do mesmo utente, ou alternativamente associação e desassociação de registos de 2 utentes). Estes eventos disparam a criação de mensagens FHIR compatíveis, utilizando o método de messaging, que encapsula os dados nos recursos relacionados, e outros associados ao evento. A mensagem resultante é então enviada para outros sistemas de informação que necessitem desta informação, garantindo sincronização em tempo real e rastreabilidade dos dados.

Este fluxo assegura que os diferentes eventos do sistema sejam comunicados de forma consistente e normalizada. O uso do FHIR permite não apenas a interoperabilidade entre sistemas heterogéneos, mas também uma maior eficiência no processamento e na integração dos dados, promovendo a continuidade e a qualidade do atendimento ao utente.

Todas as mensagens devem ser encapsula num Bundle do tipo **message**, tendo como primeiro recurso o **MessageHeader**, seguido do Patient (recurso foco da mensagem para todos os casos desta IG), e os restantes que sejam necessários para representar os dados de forma consistente, de acordo com os perfis desta IG.

### Criação de novo Utente

A ocorrência de um evento de criação de novo utente deve ser enviada uma mensagem FHIR.

* MessageHeader (Obrigatório ser o primeiro recurso da lista de recursos encapsulados no bundle) 
* MessageHeader.eventCoding = PATIENT_NEW
* MessageHeader.focus = Referencia para o recurso **Patient**
 
* Patient 
* Os identifiers devem indicar: 
* Patient.identifier.use
* Patient.identifier.system
* Patient.identifier.value
* Patient.identifier.type (system e code)
 
* O nome do Utente deve ser enviado em 
* se conhecido (utente identificado): 
* Patient.name.family (nome de familia)
* Patient.name.given (primeiro nome e nomes do meio)
 
* se desconhecido (Utente não identificado) 
* Patient.name.text
 
 
 
* Practitioner 
* Utilizador que fez os registos de criação (referenciado no **MessageHeader.enterer**)
* Medico de Familia (referenciado no **Patient.generalPractitioner**)
 
* Organization 
* Entidade de origem (referenciado no **MessageHeader.sender**)
* Entidade de destino (referenciado no **MessageHeader.destination.receiver**)
* Centro de Saúde do Utente (referenciado no **Patient.generalPractitioner**)
 
* Coverage 
* Referencia o Utente no elemento Coverage.beneficiary
* Referencia uma Entidade Responsável no elemento Coverage.payor
* Notas adicionais sobre Coverage: 
* uma cobertura é um instrumento que cobre parcialmente ou totalmente as custas de prestação de cuidados de saúde. Podem existir diferentes tipos de coberturas ou beneficios atribuidos aos utentes.
* utentes beneficiários do SNS tem redução de custos estnado sujeitos apenas ao pagamento de taxas moderadpres, sendo o valor remanescente pago pelo SNS, ou estarem totalmente isentos por determinada condição (ex: insuficiencia economica, excombatentes, entre outros motivos).
* os utentes do SNS podem acumular vários motivos de isenções, o que pode dar origem a vários recursos coverage a referenciarem o mesmo utente.
* Os utentes podem ter coberturas adicionais como subsistemas de saúde, ou planos e/ou seguros de saúde
 
 

### Atualização de dados do Utente

A ocorrência de um evento de atualização de dados do utente deve ser enviada uma mensagem FHIR.

* MessageHeader (Obrigatório ser o primeiro recurso da lista de recursos encapsulados no bundle) 
* MessageHeader.eventCoding = PATIENT_UPDATE
* MessageHeader.focus = Referencia para o recurso **Patient**
 
* Patient 
* Os identifiers devem indicar: 
* Patient.identifier.use
* Patient.identifier.system
* Patient.identifier.value
* Patient.identifier.type (system e code)
 
* O nome do Utente deve ser enviado em 
* se conhecido (utente identificado): 
* Patient.name.family (nome de familia)
* Patient.name.given (primeiro nome e nomes do meio)
 
* se desconhecido (Utente não identificado) 
* Patient.name.text
 
 
 
* Practitioner 
* Utilizador que fez os registos de criação (referenciado no **MessageHeader.enterer**)
* Medico de Familia (referenciado no **Patient.generalPractitioner**)
 
* Organization 
* Entidade de origem (referenciado no **MessageHeader.sender**)
* Entidade de destino (referenciado no **MessageHeader.destination.receiver**)
* Centro de Saúde do Utente (referenciado no **Patient.generalPractitioner**)
 
* Coverage 
* Referencia o Utente no Coverage.beneficiary
 

### Fusão de Utentes

* MessageHeader (Obrigatório ser o primeiro recurso da lista de recursos encapsulados no bundle) 
* MessageHeader.eventCoding = PATIENT_MERGE
* MessageHeader.focus = Referencia para o recurso **Patient**
 
* Patient 
* Os identifiers devem indicar: 
* Patient.identifier.use
* Patient.identifier.system
* Patient.identifier.value
* Patient.identifier.type (system e code)
 
* O nome do Utente deve ser enviado em 
* se conhecido (utente identificado): 
* Patient.name.family (nome de familia)
* Patient.name.given (primeiro nome e nomes do meio)
 
* se desconhecido (Utente não identificado) 
* Patient.name.text
 
 
* Deve ser criado um segundo recurso Patient 
* referenciado em Patient.link.other
* Patient.link.replaces = replaces
 
 
* Patient (dados do utente que vai ser fundido)
* Practitioner 
* Utilizador que fez os registos de criação (referenciado no **MessageHeader.enterer**)
* Medico de Familia (referenciado no **Patient.generalPractitioner**)
 
* Organization 
* Entidade de origem (referenciado no **MessageHeader.sender**)
* Entidade de destino (referenciado no **MessageHeader.destination.receiver**)
* Centro de Saúde do Utente (referenciado no **Patient.generalPractitioner**)
 
* Coverage 
* Referencia o Utente no Coverage.beneficiary
 

### Associação de Utentes

* MessageHeader (Obrigatório ser o primeiro recurso da lista de recursos encapsulados no bundle) 
* MessageHeader.eventCoding = PATIENT_LINK
* MessageHeader.focus = Referencia para o recurso **Patient**
 
* Patient 
* Os identifiers devem indicar: 
* Patient.identifier.use
* Patient.identifier.system
* Patient.identifier.value
* Patient.identifier.type (system e code)
 
* O nome do Utente deve ser enviado em 
* se conhecido (utente identificado): 
* Patient.name.family (nome de familia)
* Patient.name.given (primeiro nome e nomes do meio)
 
* se desconhecido (Utente não identificado) 
* Patient.name.text
 
 
* Deve ser criado um segundo recurso Patient 
* referenciado em Patient.link.other
* Patient.link.replaces = replaces
 
 
* Patient (dados do utente que vai ser fundido)
* Practitioner 
* Utilizador que fez os registos de criação (referenciado no **MessageHeader.enterer**)
* Medico de Familia (referenciado no **Patient.generalPractitioner**)
 
* Organization 
* Entidade de origem (referenciado no **MessageHeader.sender**)
* Entidade de destino (referenciado no **MessageHeader.destination.receiver**)
* Centro de Saúde do Utente (referenciado no **Patient.generalPractitioner**)
 
* Coverage 
* Referencia o Utente no Coverage.beneficiary
 

### Desassociação de Utentes

* MessageHeader (Obrigatório ser o primeiro recurso da lista de recursos encapsulados no bundle) 
* MessageHeader.eventCoding = PATIENT_UNLINK
* MessageHeader.focus = Referencia para o recurso **Patient**
 
* Patient 
* Os identifiers devem indicar: 
* Patient.identifier.use
* Patient.identifier.system
* Patient.identifier.value
* Patient.identifier.type (system e code)
 
* O nome do Utente deve ser enviado em 
* se conhecido (utente identificado): 
* Patient.name.family (nome de familia)
* Patient.name.given (primeiro nome e nomes do meio)
 
* se desconhecido (Utente não identificado) 
* Patient.name.text
 
 
* Deve ser criado um segundo recurso Patient 
* referenciado em Patient.link.other
* Patient.link.replaces = replaces
 
 
* Patient (dados do utente que vai ser fundido)
* Practitioner 
* Utilizador que fez os registos de criação (referenciado no **MessageHeader.enterer**)
* Medico de Familia (referenciado no **Patient.generalPractitioner**)
 
* Organization 
* Entidade de origem (referenciado no **MessageHeader.sender**)
* Entidade de destino (referenciado no **MessageHeader.destination.receiver**)
* Centro de Saúde do Utente (referenciado no **Patient.generalPractitioner**)
 
* Coverage 
* Referencia o Utente no Coverage.beneficiary
 

### Mensagem de resposta com resultado aplicacional

* MessageHeader (Obrigatório ser o primeiro recurso da lista de recursos encapsulados no bundle) 
* MessageHeader.eventCoding = PATIENT_NEW_RESPONSE
* MessageHeader.focus = Referencia para o recurso **Patient** se foi processado com sucesso e se vier o recurso atulizado na resposta, ou o recurso **OperationOutcome** se processado com erro.
* MessageHeader.response.id (id da mensagem original passado no MessageHeader.id)
* MessageHeader.response.code (resultado da comunicação)
 
* Patient (se houver dados adicionais do utente a retornar na resposta, ou se o recurso for necessário para processar a resposta)
* OperationOutcome (se forem retornados erros no processamento do bundle)

