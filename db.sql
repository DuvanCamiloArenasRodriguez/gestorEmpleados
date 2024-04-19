CREATE DATABASE taller2;

CREATE TABLE departamento(
    codigo INT(10) AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    presupuesto DOUBLE NOT NULL,
    CONSTRAINT PK_departamento PRIMARY KEY(codigo)
);

ALTER TABLE departamento ADD gastos DOUBLE;

CREATE TABLE empleado(
    codigo INT(10) AUTO_INCREMENT NOT NULL,
    nif VARCHAR(9) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellido1 VARCHAR(100) NOT NULL,
    apellido2 VARCHAR(100) NULL,
    codigo_departamento INT(10) NULL,
    CONSTRAINT PK_empleado PRIMARY KEY(codigo),
    CONSTRAINT FK_empleado_departamento FOREIGN KEY (codigo_departamento)
    REFERENCES departamento (codigo)
);

INSERT INTO departamento VALUES(1, 'Desarrollo', 120000, 6000);
INSERT INTO departamento VALUES(2, 'Sistemas', 150000, 21000);
INSERT INTO departamento VALUES(3, 'Recursos Humanos', 280000, 25000);
INSERT INTO departamento VALUES(4, 'Contabilidad', 110000, 3000);
INSERT INTO departamento VALUES(5, 'I+D', 375000, 380000);

INSERT INTO empleado VALUES(1, '32481596F', 'Aarón', 'Rivero', 'Gómez', 1);
INSERT INTO empleado VALUES(2, 'Y5575632D', 'Adela', 'Salas', 'Díaz', 2);
INSERT INTO empleado VALUES(3, 'R6970642B', 'Adolfo', 'Rubio', 'Flores', 3);
INSERT INTO empleado VALUES(4, '77705545E', 'Adrián', 'Suárez', NULL, 4);
INSERT INTO empleado VALUES(5, '17087203C', 'Marcos', 'Loyola', 'Méndez', 5);
INSERT INTO empleado VALUES(6, '38382980M', 'María', 'Santana', 'Moreno', 1);
INSERT INTO empleado VALUES(7, '80576669X', 'Pilar', 'Ruiz', NULL, 2);
INSERT INTO empleado VALUES(8, '71651431Z', 'Pepe', 'Ruiz', 'Santana', 3);
INSERT INTO empleado VALUES(9, '56399183D', 'Juan', 'Gómez', 'López', 2);
INSERT INTO empleado VALUES(10, '46384486H', 'Diego','Flores', 'Salas', 5);
INSERT INTO empleado VALUES(11, '67389283A', 'Marta','Herrera', 'Gil', 1);
INSERT INTO empleado VALUES(12, '41234836R', 'Irene','Salas', 'Flores', NULL);
INSERT INTO empleado VALUES(13, '82635162B', 'Juan Antonio','Sáez', 'Guerrero',
NULL);


-- Taller, cada punto está separado por un espacio
-- Consultas
SELECT apellido1
FROM empleado;

SELECT DISTINCT apellido1 
FROM empleado;

SELECT codigo, nif, nombre, apellido1, apellido2, codigo_departamento
FROM empleado;

SELECT nombre, apellido1, apellido2
FROM empleado;

SELECT codigo_departamento 
FROM empleado;

SELECT DISTINCT codigo_departamento 
FROM empleado;

SELECT CONCAT( nombre, ' ', apellido1, ' ', apellido2)
FROM empleado;

SELECT UPPER(CONCAT( nombre, ' ', apellido1, ' ', apellido2))
FROM empleado;

SELECT LOWER(CONCAT( nombre, ' ', apellido1, ' ', apellido2))
FROM empleado;

SELECT nombre, presupuesto - gastos as presupuesto_actual
FROM departamento;

SELECT nombre, presupuesto - gastos as presupuesto_actual
FROM departamento
ORDER BY presupuesto_actual ASC;

SELECT nombre
FROM departamento
ORDER BY nombre ASC;

SELECT nombre
FROM departamento
ORDER BY nombre DESC;

SELECT apellido1, apellido2, nombre
FROM empleado
ORDER BY apellido1 ASC, apellido2 ASC, nombre ASC;

SELECT nombre, presupuesto
FROM departamento 
ORDER BY presupuesto DESC
LIMIT 3;

SELECT nombre, presupuesto
FROM departamento
ORDER BY presupuesto ASC
LIMIT 3;

SELECT nombre, gastos
FROM departamento
ORDER BY gastos DESC
LIMIT 2;

SELECT nombre, gastos 
FROM departamento
ORDER BY gastos ASC
LIMIT 2;

SELECT codigo, nif, nombre, apellido1, apellido2, codigo_departamento
FROM empleado
LIMIT 5 OFFSET 2;

SELECT nombre, presupuesto
FROM departamento
WHERE presupuesto >= 150000;

SELECT nombre, gastos
FROM departamento
WHERE gastos < 5000;

SELECT nombre, presupuesto
FROM departamento
WHERE presupuesto > 100000 AND presupuesto < 200000;

SELECT nombre
FROM departamento
WHERE PRESUPUESTO < 100000 OR presupuesto > 200000;

SELECT nombre
FROM departamento
WHERE presupuesto BETWEEN 100000 AND 200000;

SELECT nombre
FROM departamento
WHERE presupuesto NOT BETWEEN 100000 AND 200000;

SELECT nombre, gastos, presupuesto
FROM departamento
WHERE gastos > presupuesto;

SELECT nombre, gastos, presupuesto
FROM departamento
WHERE gastos < presupuesto;

SELECT nombre, gastos, presupuesto
FROM departamento
WHERE gastos = presupuesto;

SELECT codigo, nif, nombre, apellido1, apellido2, codigo_departamento 
FROM empleado
WHERE apellido2 IS NULL;

SELECT codigo, nif, nombre, apellido1, apellido2, codigo_departamento
FROM empleado
WHERE apellido2 IS NOT NULL;

SELECT codigo, nif, nombre, apellido1, apellido2, codigo_departamento
FROM empleado
WHERE apellido2 = 'López';

SELECT codigo, nif, nombre, apellido1, apellido2, codigo_departamento
FROM empleado
WHERE apellido2 = 'Díaz' OR apellido2 = 'Moreno';

SELECT codigo, nif, nombre, apellido1, apellido2, codigo_departamento
FROM empleado
WHERE apellido2 IN('López', 'Moreno');

SELECT nombre, apellido1, apellido2, nif
FROM empleado
WHERE codigo_departamento = 3;

SELECT nombre, apellido1, apellido2, nif
FROM empleado
WHERE codigo_departamento IN (2, 4, 5);

-- Segunda sección
SELECT emp.codigo, emp.nombre, emp.nif, emp.apellido1, emp.apellido2, emp.codigo_departamento, dep.codigo, dep.nombre, dep.presupuesto 
FROM empleado as emp, departamento as dep
WHERE emp.codigo_departamento = dep.codigo;

SELECT CONCAT(emp.apellido1, ' ', emp.apellido2 || ' ', ' ', emp.nombre) as empleado, dep.codigo, dep.nombre, dep.presupuesto
FROM empleado as emp, departamento as dep 
WHERE emp.codigo_departamento = dep.codigo 
ORDER BY dep.nombre ASC, empleado;

SELECT dep.codigo, dep.nombre
FROM empleado AS emp, departamento AS dep
WHERE emp.codigo_departamento = dep.codigo;

SELECT DISTINCT dep.codigo, dep.nombre, dep.presupuesto - dep.gastos AS presupuesto_actual
FROM empleado AS emp, departamento AS dep
WHERE emp.codigo_departamento = dep.codigo;

SELECT dep.nombre
FROM empleado as emp, departamento as dep
WHERE emp.codigo_departamento = dep.codigo AND emp.nif = '38382980M';

SELECT dep.nombre
FROM empleado as emp, departamento as dep
WHERE emp.codigo_departamento = dep.codigo AND emp.nombre = 'Pepe' AND emp.apellido1 = 'Ruiz' AND emp.apellido2 = 'Santana';

SELECT CONCAT(emp.nombre, ' ', emp.apellido1, ' ', emp.apellido2) as 'empleados I+D'
FROM empleado as emp, departamento as dep
WHERE emp.codigo_departamento = dep.codigo AND dep.nombre = 'I+D'
ORDER BY emp.nombre ASC;

SELECT emp.codigo, emp.nif, emp.nombre, emp.apellido1, emp.apellido2, emp.codigo_departamento
FROM empleado AS emp, departamento AS dep
WHERE emp.codigo_departamento = dep.codigo AND dep.nombre IN ('Sistemas', 'Contabilidad', 'I+D')
ORDER BY emp.nombre ASC;

SELECT emp.nombre
FROM empleado AS emp, departamento AS dep
WHERE emp.codigo_departamento = dep.codigo AND dep.presupuesto NOT BETWEEN 100000 AND 200000;

SELECT dep.nombre
FROM empleado AS emp, departamento AS dep
WHERE emp.codigo_departamento = dep.codigo AND emp.apellido2 IS NULL;


-- Sección 3
SELECT emp.codigo, emp.nif, emp.nombre, emp.apellido1, emp.apellido2, emp.codigo_departamento, dep.codigo as 'Código Departamento', dep.nombre AS 'Nombre Departamento', dep.presupuesto, dep.gastos
FROM empleado AS emp 
LEFT JOIN departamento AS dep ON emp.codigo_departamento = dep.codigo; 

SELECT emp.codigo, emp.nif, emp.nombre, emp.apellido1, emp.apellido2, emp.codigo_departamento
FROM empleado AS emp
LEFT JOIN departamento AS dep  ON emp.codigo_departamento = dep.codigo
WHERE emp.codigo_departamento IS NULL ;

SELECT dep.codigo, dep.nombre, dep.presupuesto, dep.gastos
FROM departamento AS dep
LEFT JOIN empleado AS emp ON emp.codigo_departamento = dep.codigo
WHERE emp.codigo_departamento IS NULL;

-- SELECT emp.nombre, dep.nombre AS nombre_departamento
-- FROM empleados emp
-- LEFT JOIN departamento AS dep ON e.id_departamento = d.id_departamento
-- UNION
-- SELECT emp.nombre_empleado, NULL AS nombre_departamento
-- FROM empleado AS emp
-- WHERE e.id_departamento IS NULL
-- UNION
-- SELECT NULL AS nombre_empleado, NULL AS puesto, d.nombre_departamento
-- FROM departamentos d
-- LEFT JOIN empleados e ON d.id_departamento = e.id_departamento
-- WHERE e.id_empleado IS NULL
-- ORDER BY nombre_departamento;

-- Aquí va otro


-- Sección de resumen
SELECT SUM(presupuesto)
FROM departamento;

SELECT AVG(presupuesto)
FROM departamento;

SELECT MIN(presupuesto)
FROM departamento;

SELECT nombre, presupuesto
FROM departamento
WHERE presupuesto = (
    SELECT MIN(presupuesto)
    FROM departamento
)
LIMIT 1;

SELECT MAX(presupuesto)
FROM departamento;

SELECT nombre, presupuesto
FROM departamento
WHERE presupuesto = (
    SELECT MAX(presupuesto)
    FROM departamento
);

SELECT COUNT(nombre)
FROM empleado
WHERE apellido2 IS NOT NULL;

SELECT dep.nombre, COUNT(emp.nombre) as 'Número empleados'
FROM departamento as dep
LEFT JOIN empleado AS emp ON emp.codigo_departamento = dep.codigo
GROUP BY dep.nombre; 

SELECT dep.nombre, COUNT(emp.codigo)
FROM departamento as dep
LEFT JOIN empleado AS emp ON emp.codigo_departamento = dep.codigo
GROUP BY dep.nombre
HAVING COUNT(emp.codigo) > 2;

SELECT dep.nombre, COUNT(emp.nombre) as 'Número empleados'
FROM departamento as dep
LEFT JOIN empleado AS emp ON emp.codigo_departamento = dep.codigo
GROUP BY dep.nombre; 

SELECT dep.nombre, COUNT(emp.codigo) AS 'Número de empleados'
FROM empleado AS emp, departamento AS dep
WHERE emp.codigo_departamento = dep.codigo AND dep.presupuesto > 200000
GROUP BY dep.nombre;


-- Subconsultas
SELECT emp.nombre AS 'Nombre empleado', dep.nombre AS 'Departamento'
FROM empleado AS emp, departamento AS dep
WHERE dep.nombre = (
    SELECT nombre
    FROM departamento
    WHERE nombre = 'Sistemas'
) AND emp.codigo_departamento = dep.codigo;

SELECT dep.nombre, dep.presupuesto
FROM departamento AS dep
WHERE dep.presupuesto = (
    SELECT MIN(presupuesto)
    FROM departamento
);

SELECT dep.nombre, dep.presupuesto
FROM departamento AS dep
WHERE dep.presupuesto > ALL (
    SELECT presupuesto
    FROM departamento 
    WHERE dep.presupuesto != presupuesto
);

SELECT dep.nombre, dep.presupuesto
FROM departamento AS dep
WHERE dep.presupuesto < ALL (
    SELECT presupuesto
    FROM departamento 
    WHERE dep.presupuesto != presupuesto
);

SELECT DISTINCT dep.nombre
FROM departamento AS dep, empleado AS emp
WHERE emp.nombre = ANY(
    SELECT nombre
    FROM empleado
    WHERE emp.nombre = nombre
) AND emp.codigo_departamento = dep.codigo;

SELECT nombre
FROM departamento
WHERE codigo = ANY (
    SELECT dep.codigo
    FROM departamento AS dep
    LEFT JOIN empleado AS emp ON emp.codigo_departamento = dep.codigo
    WHERE emp.codigo_departamento IS NULL
);

SELECT nombre
FROM departamento
WHERE codigo IN (
    SELECT dep.codigo
    FROM departamento AS dep
    LEFT JOIN empleado AS emp ON emp.codigo_departamento = dep.codigo
    WHERE emp.codigo_departamento IS NOT NULL
);

SELECT nombre
FROM departamento
WHERE codigo NOT IN (
    SELECT dep.codigo
    FROM departamento AS dep
    LEFT JOIN empleado AS emp ON emp.codigo_departamento = dep.codigo
    WHERE emp.codigo_departamento IS NOT NULL
);

SELECT dep.nombre
FROM departamento AS dep
WHERE NOT EXISTS (
    SELECT 1
    FROM empleado AS emp
    WHERE emp.codigo_departamento = dep.codigo
);
