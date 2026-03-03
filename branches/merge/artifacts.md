# Artifacts Summary - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Abstract Profiles 

These are profiles on resources or data types that describe patterns used by other profiles, but cannot be instantiated directly. I.e. instances can conform to profiles **based** on these abstract profiles but do not declare conformance to the abstract profiles themselves.

| | |
| :--- | :--- |
| [PTBundleMessage](StructureDefinition-BundleMessage-Pt.md) | Perfil de BundleMessage para contexto de comunicação **Messaging**. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [PTCoverage](StructureDefinition-Coverage-Pt.md) | Perfil de Coverage para contexto PT, com tipos de coberturas/isenções, beneficiários (numero de beneficiários, apólices) e entidades responsáveis associadas. |
| [PTMessageHeader](StructureDefinition-MessageHeader-Pt.md) | Perfil de MessageHeader para contexto de comunicação **Messaging**. |
| [PTOrganization](StructureDefinition-Organization-Pt.md) | Perfil de Organization para contexto PT, com identificadores institucionais e requisitos mínimos de nome/contactos. |
| [PTPatient](StructureDefinition-Patient-Pt.md) | Perfil de Patient para contexto PT, incluindo tipos de indentificadores, nacionalidade, naturalidade (INE), notas, endereços codidificados, contactos, inscrição nos CSP. |
| [PTPractitioner](StructureDefinition-Practitioner-Pt.md) | Perfil de Practitioner para contexto PT, com identificadores institucionais e requisitos mínimos de nome/contatos. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Birthplace Extension](StructureDefinition-birthplace-pt.md) | Extensão para o local de nascimento do utente. |
| [Endereço estruturado PT](StructureDefinition-address-pt.md) | Extensão complexa para endereço com tipo e códigos INE. |
| [Nationality Extension](StructureDefinition-nationality-pt.md) | Represents the patient's nationality |
| [PTContactIndicative](StructureDefinition-ContactIndicative-Pt.md) |  |
| [PTCoverageReason](StructureDefinition-coverage-reason-pt.md) | Extensão para codigo do motivo de isenção do utente . |
| [PTNotes](StructureDefinition-Notes-pt.md) | Extensão para notas relativas ao registo do utente. |
| [PTPatientEnrollmentCategoryPrimarycare](StructureDefinition-PatientEnrollmentCategoryPrimarycare-Pt.md) | Extensão para código do tipo de utente no contexto de cuidados primários. |
| [PTPatientPrimaryCarePeriod](StructureDefinition-PatientPrimaryCarePeriod-Pt.md) | Extensão para período de inscrição nos cuidados primários do utente. |
| [PTPersonEducation](StructureDefinition-PersonEducation-Pt.md) | Extensão para registo de escolaridade do utente. |
| [PTPersonOccupation](StructureDefinition-PersonOccupation-Pt.md) | Extensão para registo de ocupação do utente. |
| [PTPersonRecordType](StructureDefinition-PersonRecordType-Pt.md) | Extensão para tipo de registo do utente. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Eventos FHIR para Gestão de Identidade de Utentes](ValueSet-vs-patient-identity-events.md) | Eventos FHIR relacionados com a gestão da identidade de utentes. |
| [Tipos de Identificadores de Paciente](ValueSet-patient-identifier-type.md) | Conjunto de tipos válidos de identificadores para pacientes em Portugal. |
| [Tipos de Identificadores de Profissionais](ValueSet-practitioner-identifier-type.md) | Conjunto de tipos válidos de identificadores para profissionais em Portugal. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [FHIR Events CodeSystem](CodeSystem-cs-fhir-events.md) | Código dos eventos FHIR relacionados com transações baseadas em mensagens HL7v2. Este CodeSystem inclui mapeamentos para eventos de diferentes domínios (ex: gestão de utentes, emergência, etc.). |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| |
| :--- |
| [patient-link](Bundle-patient-link.md) |
| [patient-new](Bundle-patient-new.md) |
| [patient-update](Bundle-patient-update.md) |

