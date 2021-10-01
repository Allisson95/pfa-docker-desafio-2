USE pfa_docker;

CREATE TABLE IF NOT EXISTS module (
    id BINARY(16) NOT NULL,
    name VARCHAR(255) NOT NULL,
    CONSTRAINT pk_modules PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

INSERT INTO module (id, name) VALUES (UUID_TO_BIN(UUID()), 'Comunicação');
INSERT INTO module (id, name) VALUES (UUID_TO_BIN(UUID()), 'Microsserviço: Catálogo de vídeos com Java ( Back-end )');
INSERT INTO module (id, name) VALUES (UUID_TO_BIN(UUID()), 'Ansible');
INSERT INTO module (id, name) VALUES (UUID_TO_BIN(UUID()), 'Terraform');
INSERT INTO module (id, name) VALUES (UUID_TO_BIN(UUID()), 'Domain Driven Design');
INSERT INTO module (id, name) VALUES (UUID_TO_BIN(UUID()), 'Arquitetura do projeto prático - Codeflix');
INSERT INTO module (id, name) VALUES (UUID_TO_BIN(UUID()), 'Arquitetura hexagonal');
INSERT INTO module (id, name) VALUES (UUID_TO_BIN(UUID()), 'Apache Kafka');
INSERT INTO module (id, name) VALUES (UUID_TO_BIN(UUID()), 'Observabilidade');
INSERT INTO module (id, name) VALUES (UUID_TO_BIN(UUID()), 'Service Mesh com Istio');