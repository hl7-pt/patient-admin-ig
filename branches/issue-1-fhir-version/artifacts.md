# Artifacts Summary - HL7 PT FHIR Implementation Guide: Example IG Release 1 | STU1 v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Abstract Profiles 

These are profiles on resources or data types that describe patterns used by other profiles, but cannot be instantiated directly. I.e. instances can conform to profiles **based** on these abstract profiles but do not declare conformance to the abstract profiles themselves.

| | |
| :--- | :--- |
| [PTBundleMessage](StructureDefinition-BundleMessage-Pt.md) | Perfil de BundleMessage para contexto de comunicação**Messaging**. |
| [PTBundleSearchset](StructureDefinition-BundleSearchset-Pt.md) |  |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [PTCoverage](StructureDefinition-Coverage-Pt.md) | Perfil de Coverage para contexto PT, com tipos de coberturas/isenções, beneficiários (numero de beneficiários, apólices) e entidades responsáveis associadas. |
| [PTMessageHeader](StructureDefinition-MessageHeader-Pt.md) | Perfil de MessageHeader para contexto de comunicação**Messaging**. |
| [PTOrganization](StructureDefinition-Organization-Pt.md) | Perfil de Organization para contexto PT, com identificadores institucionais e requisitos mínimos de nome/contactos. |
| [PTPatient](StructureDefinition-Patient-Pt.md) | Perfil de Patient para contexto PT, incluindo tipos de indentificadores, nacionalidade, naturalidade (INE), notas, endereços codidificados, contactos, inscrição nos CSP. |
| [PTPractitioner](StructureDefinition-Practitioner-Pt.md) | Perfil de Practitioner para contexto PT, com identificadores institucionais e requisitos mínimos de nome/contatos. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| |
| :--- |
| [PTAddressCountry](StructureDefinition-AddressCountry-Pt.md) |
| [PTAddressCounty](StructureDefinition-AddressCounty-Pt.md) |
| [PTAddressMunicipality](StructureDefinition-AddressMunicipality-Pt.md) |
| [PTAddressNuts](StructureDefinition-AddressNuts-Pt.md) |
| [PTAddressParish](StructureDefinition-AddressParish-Pt.md) |
| [PTAddressType](StructureDefinition-AddressType-Pt.md) |
| [PTContactIndicative](StructureDefinition-ContactIndicative-Pt.md) |
| [PTCoverageReason](StructureDefinition-CoverageReason-Pt.md) |
| [PTNationality](StructureDefinition-Nationality.md) |
| [PTNotes](StructureDefinition-Notes-pt.md) |
| [PTPatientEnrollmentCategoryPrimarycare](StructureDefinition-PatientEnrollmentCategoryPrimarycare-Pt.md) |
| [PTPatientPrimaryCarePeriod](StructureDefinition-PatientPrimaryCarePeriod-Pt.md) |
| [PTPersonBirthplace](StructureDefinition-PersonBirthplace-Pt.md) |
| [PTPersonEducation](StructureDefinition-PersonEducation-Pt.md) |
| [PTPersonOccupation](StructureDefinition-PersonOccupation-Pt.md) |
| [PTPersonRecordType](StructureDefinition-PersonRecordType-Pt.md) |

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
| [patient-merge](Bundle-patient-merge.md) |
| [patient-new](Bundle-patient-new.md) |
| [patient-update](Bundle-patient-update.md) |

