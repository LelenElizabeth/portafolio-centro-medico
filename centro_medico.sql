CREATE TABLE paciente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rut VARCHAR(12) NOT NULL,
    nombres VARCHAR(50) NOT NULL,
    apellido1 VARCHAR(50) NOT NULL,
    apellido2 VARCHAR(50),
    fecha_nacimiento DATE NOT NULL,
    genero ENUM('Masculino', 'Femenino', 'Otro') NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    comuna VARCHAR(50) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    correo VARCHAR(50)
);

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rut VARCHAR(12) NOT NULL,
    nombres VARCHAR(50) NOT NULL,
    apellido1 VARCHAR(50) NOT NULL,
    apellido2 VARCHAR(50),
    fecha_nacimiento DATE NOT NULL,
    genero ENUM('Masculino', 'Femenino', 'Otro') NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    comuna VARCHAR(50) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    perfil VARCHAR(25) NOT NULL,
    usuario VARCHAR(15) NOT NULL,
    contrasena VARCHAR(20) NOT NULL
);

CREATE TABLE especialidad_medica (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_especialidad VARCHAR(50) NOT NULL
);

CREATE TABLE perfil (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_perfil VARCHAR(25) NOT NULL
);

ALTER TABLE usuarios
ADD COLUMN id_perfil INT,
ADD FOREIGN KEY (id_perfil) REFERENCES perfil(id);


CREATE TABLE usuario_especialidad (
    id_usuario INT, 
    id_especialidad INT, 
	FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY (id_especialidad) REFERENCES especialidad_medica(id),
    PRIMARY KEY (id_usuario, id_especialidad)
);

CREATE TABLE ficha (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT,
    anamnesis VARCHAR(5000) NOT NULL,
    indicaciones_generales VARCHAR(5000) NOT NULL,
    receta_medica VARCHAR(5000) NOT NULL,
    diagnostico VARCHAR(1000) NOT NULL,
    FOREIGN KEY (id_paciente) REFERENCES paciente(id)
);

INSERT INTO paciente (rut, nombres, apellido1, apellido2, fecha_nacimiento, genero, direccion, comuna, telefono, correo)
VALUES
    ('12345678-9', 'Juan', 'Pérez', 'Gómez', '1990-05-15', 'Masculino', 'Calle 123', 'Santiago', '987654321', 'juan@example.com'),
    ('98765432-1', 'María', 'López', 'Vega', '1985-11-20', 'Femenino', 'Avenida 456', 'Valparaiso', '212345678', 'maria@example.com'),
    ('54321678-0', 'Pedro', 'Ramírez', 'González', '1982-08-10', 'Masculino', 'Calle 789', 'Concepción', '456789012', 'pedro@example.com'),
    ('87654321-2', 'Ana', 'Martínez', 'Pérez', '1978-06-25', 'Femenino', 'Avenida 987', 'Santiago', '222222222', 'ana@example.com'),
    ('23456789-1', 'Carlos', 'Gómez', 'Silva', '1998-03-12', 'Masculino', 'Calle 555', 'Valparaíso', '123456789', 'carlos@example.com');

INSERT INTO perfil (nombre_perfil)
VALUES
    ('Administrativo'),
    ('Medico'),
    ('Sistemas'),
    ('Aseo');

INSERT INTO usuarios (rut, nombres, apellido1, apellido2, fecha_nacimiento, genero, direccion, comuna, telefono, correo, perfil, usuario, contrasena,id_perfil)
VALUES
    ('11111111-1', 'Pedro Andres', 'Ramírez', 'González', '1980-09-10', 'Masculino', 'Avenida 789', 'Concepción', '456789012', 'pedro@example.com', 'Medico', 'pramirez', 'q2w3e4',2),
    ('22222222-2', 'Ana Lucia', 'Martínez', 'Pérez', '1975-07-25', 'Femenino', 'Calle 987', 'Santiago', '222222222', 'ana@example.com', 'Medico', 'amartinez', 'q2w3e4',2),
    ('33333333-3', 'Carlos Eduardo', 'González', 'López', '1995-03-12', 'Masculino', 'Calle 555', 'Valparaíso', '123456789', 'carlos.gonzalez@centromedico.com', 'Administrativo', 'cgonzalez', 'q2w3e4',1),
    ('44444444-4', 'Sofía Antonia', 'Hernández', 'Silva', '1988-12-01', 'Femenino', 'Avenida 222', 'Concepción', '999999999', 'sofia.hernandez@centromedico.com', 'Administrativo', 'shernandez', 'q2w3e4',1),
    ('18249054-7', 'Marlene Elizabeth', 'Castro', 'Pinto', '1992-11-12', 'Femenino', 'Avenida 333', 'Concepción', '999999999', 'marlene.castro@centromedico.com', 'Sistemas', 'mcastro', 'q2w3e4',3);

INSERT INTO especialidad_medica (nombre_especialidad)
VALUES
    ('Cardiología'),
    ('Dermatología'),
    ('Pediatría'),
    ('Oftalmología');

INSERT INTO ficha (id_paciente, anamnesis, indicaciones_generales, receta_medica, diagnostico)
VALUES
    (1, 'anamnesis de muestra', 'indicaciones generales de muestra', 'receta medica de muestra', 'diagnostico de muestra'),
    (2, 'anamnesis de muestra numero 2', 'indicaciones generales de muestra numero 2', 'receta medica de muestra numero 2', 'diagnostico de muestra numero 2');