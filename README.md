Esta Implementation Guide (IG) surge como resultado de um trabalho contínuo de análise e implementação de fluxos de integração em FHIR, no contexto da Gestão da Identidade do Utente, incorporando a experiência e o trabalho previamente desenvolvidos e implementados em HL7 v2.

Ao longo deste processo, foi realizado um levantamento detalhado das regras de negócio, bem como da forma como os dados são representados e comunicados em FHIR. Este trabalho prevê, quando aplicável, uma etapa intermédia de comunicação em HL7 v2, embora a sua existência não seja obrigatória.

A opção por representar o paradigma de Messaging como modelo de comunicação deve-se ao facto de este ser um dos mais utilizados em Portugal, bem como noutros países. No entanto, a especificação dos recursos definidos no âmbito da Gestão da Identidade do Utente é independente do paradigma de comunicação, podendo ser aplicada em diferentes cenários e modelos de interoperabilidade.

### Publicação

Continuous Build: https://hl7-pt.github.io/patient-admin-ig/  
Canonical / permanent URL: 


### Instruções


#### Desenvolvimento local

1. correr o updatepublisher
2. correr o genonce
3. o conteudo do site estará na pasta output

#### locais a usar

1. pagecontent para descrição narrativa (usar markdown)
2. sushi-config para orquestrar paginas e menu
3. input/fsh para conteudo FHIR Short Hand
4. pasta examples para recursos exemplo em json
5. pasta images para images
6. pasta images-source para conteudo plantuml
