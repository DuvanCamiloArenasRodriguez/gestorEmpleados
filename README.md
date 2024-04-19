# Taller N°2 de Bases de Datos

**Estudiante:** Duván Camilo Arenas Rodríguez.

#### Consultas sobre una tabla

1. Lista el primer apellido de todos los empleados.

   ```mysql
   SELECT apellido1
   FROM empleado;
   +-----------+
   | apellido1 |
   +-----------+
   | Rivero    |
   | Salas     |
   | Rubio     |
   | Suárez    |
   | Loyola    |
   | Santana   |
   | Ruiz      |
   | Ruiz      |
   | Gómez     |
   | Flores    |
   | Herrera   |
   | Salas     |
   | Sáez      |
   +-----------+
   ```

   

2. Lista el primer apellido de los empleados eliminando los apellidos que estén repetidos.

   ```mysql
   SELECT DISTINCT apellido1 
   FROM empleado;
   +-----------+
   | apellido1 |
   +-----------+
   | Rivero    |
   | Salas     |
   | Rubio     |
   | Suárez    |
   | Loyola    |
   | Santana   |
   | Ruiz      |
   | Gómez     |
   | Flores    |
   | Herrera   |
   | Sáez      |
   +-----------+
   ```

   

3. Lista todas las columnas de la tabla `empleado`.

   ```mysql
   SELECT codigo, nif, nombre, apellido1, apellido2, codigo_departamento
   FROM empleado;
   +--------+-----------+--------------+-----------+-----------+---------------------+
   | codigo | nif       | nombre       | apellido1 | apellido2 | codigo_departamento |
   +--------+-----------+--------------+-----------+-----------+---------------------+
   |      1 | 32481596F | Aarón        | Rivero    | Gómez     |                   1 |
   |      2 | Y5575632D | Adela        | Salas     | Díaz      |                   2 |
   |      3 | R6970642B | Adolfo       | Rubio     | Flores    |                   3 |
   |      4 | 77705545E | Adrián       | Suárez    | NULL      |                   4 |
   |      5 | 17087203C | Marcos       | Loyola    | Méndez    |                   5 |
   |      6 | 38382980M | María        | Santana   | Moreno    |                   1 |
   |      7 | 80576669X | Pilar        | Ruiz      | NULL      |                   2 |
   |      8 | 71651431Z | Pepe         | Ruiz      | Santana   |                   3 |
   |      9 | 56399183D | Juan         | Gómez     | López     |                   2 |
   |     10 | 46384486H | Diego        | Flores    | Salas     |                   5 |
   |     11 | 67389283A | Marta        | Herrera   | Gil       |                   1 |
   |     12 | 41234836R | Irene        | Salas     | Flores    |                NULL |
   |     13 | 82635162B | Juan Antonio | Sáez      | Guerrero  |                NULL |
   +--------+-----------+--------------+-----------+-----------+---------------------+
   ```

   

4. Lista el nombre y los apellidos de todos los empleados.

   ```mysql
   SELECT nombre, apellido1, apellido2
   FROM empleado;
   +--------------+-----------+-----------+
   | nombre       | apellido1 | apellido2 |
   +--------------+-----------+-----------+
   | Aarón        | Rivero    | Gómez     |
   | Adela        | Salas     | Díaz      |
   | Adolfo       | Rubio     | Flores    |
   | Adrián       | Suárez    | NULL      |
   | Marcos       | Loyola    | Méndez    |
   | María        | Santana   | Moreno    |
   | Pilar        | Ruiz      | NULL      |
   | Pepe         | Ruiz      | Santana   |
   | Juan         | Gómez     | López     |
   | Diego        | Flores    | Salas     |
   | Marta        | Herrera   | Gil       |
   | Irene        | Salas     | Flores    |
   | Juan Antonio | Sáez      | Guerrero  |
   +--------------+-----------+-----------+
   ```

   

5. Lista el identificador de los departamentos de los empleados que aparecen en la tabla `empleado`.

   ```mysql
   SELECT codigo_departamento 
   FROM empleado;
   +---------------------+
   | codigo_departamento |
   +---------------------+
   |                NULL |
   |                NULL |
   |                   1 |
   |                   1 |
   |                   1 |
   |                   2 |
   |                   2 |
   |                   2 |
   |                   3 |
   |                   3 |
   |                   4 |
   |                   5 |
   |                   5 |
   +---------------------+
   ```

   

6. Lista el identificador de los departamentos de los empleados que aparecen en la tabla empleado, eliminando los identificadores que aparecen repetidos.

   ```mysql
   SELECT DISTINCT codigo_departamento 
   FROM empleado;
   +---------------------+
   | codigo_departamento |
   +---------------------+
   |                NULL |
   |                   1 |
   |                   2 |
   |                   3 |
   |                   4 |
   |                   5 |
   +---------------------+
   ```

   

7. Lista el nombre y apellidos de los empleados en una única columna.

   ```mysql
   SELECT CONCAT( nombre, ' ', apellido1, ' ', apellido2)
   FROM empleado;
   +-------------------------------------------------+
   | CONCAT( nombre, ' ', apellido1, ' ', apellido2) |
   +-------------------------------------------------+
   | Aarón Rivero Gómez                              |
   | Adela Salas Díaz                                |
   | Adolfo Rubio Flores                             |
   | NULL                                            |
   | Marcos Loyola Méndez                            |
   | María Santana Moreno                            |
   | NULL                                            |
   | Pepe Ruiz Santana                               |
   | Juan Gómez López                                |
   | Diego Flores Salas                              |
   | Marta Herrera Gil                               |
   | Irene Salas Flores                              |
   | Juan Antonio Sáez Guerrero                      |
   +-------------------------------------------------+
   ```

   

8. Lista el nombre y apellidos de los empleados en una única columna, convirtiendo todos los caracteres en mayúscula.

   ```mysql
   SELECT UPPER(CONCAT( nombre, ' ', apellido1, ' ', apellido2))
   FROM empleado;
   +--------------------------------------------------------+
   | UPPER(CONCAT( nombre, ' ', apellido1, ' ', apellido2)) |
   +--------------------------------------------------------+
   | AARÓN RIVERO GÓMEZ                                     |
   | ADELA SALAS DÍAZ                                       |
   | ADOLFO RUBIO FLORES                                    |
   | NULL                                                   |
   | MARCOS LOYOLA MÉNDEZ                                   |
   | MARÍA SANTANA MORENO                                   |
   | NULL                                                   |
   | PEPE RUIZ SANTANA                                      |
   | JUAN GÓMEZ LÓPEZ                                       |
   | DIEGO FLORES SALAS                                     |
   | MARTA HERRERA GIL                                      |
   | IRENE SALAS FLORES                                     |
   | JUAN ANTONIO SÁEZ GUERRERO                             |
   +--------------------------------------------------------+
   ```

   

9. Lista el nombre y apellidos de los empleados en una única columna, convirtiendo todos los caracteres en minúscula.

   ```mysql
   SELECT LOWER(CONCAT( nombre, ' ', apellido1, ' ', apellido2))
   FROM empleado;
   +--------------------------------------------------------+
   | LOWER(CONCAT( nombre, ' ', apellido1, ' ', apellido2)) |
   +--------------------------------------------------------+
   | aarón rivero gómez                                     |
   | adela salas díaz                                       |
   | adolfo rubio flores                                    |
   | NULL                                                   |
   | marcos loyola méndez                                   |
   | maría santana moreno                                   |
   | NULL                                                   |
   | pepe ruiz santana                                      |
   | juan gómez lópez                                       |
   | diego flores salas                                     |
   | marta herrera gil                                      |
   | irene salas flores                                     |
   | juan antonio sáez guerrero                             |
   +--------------------------------------------------------+
   ```

   

10. Lista el identificador de los empleados junto al nif, pero el nif deberá aparecer en dos columnas, una mostrará únicamente los dígitos del nif y la otra la letra.

    

    

11. Lista el nombre de cada departamento y el valor del presupuesto actual del que dispone. Para calcular este dato tendrá que restar al valor del presupuesto inicial (columna presupuesto) los gastos que se han generado (columna gastos). Tenga en cuenta que en algunos casos pueden existir valores negativos. Utilice un alias apropiado para la nueva columna columna que está calculando.

    ```mysql
    SELECT nombre, presupuesto - gastos as presupuesto_actual
    FROM departamento;
    +------------------+--------------------+
    | nombre           | presupuesto_actual |
    +------------------+--------------------+
    | Desarrollo       |             114000 |
    | Sistemas         |             129000 |
    | Recursos Humanos |             255000 |
    | Contabilidad     |             107000 |
    | I+D              |              -5000 |
    | Proyectos        |                  0 |
    | Publicidad       |              -1000 |
    +------------------+--------------------+
    ```

    

12. Lista el nombre de los departamentos y el valor del presupuesto actual ordenado de forma ascendente.

    ```mysql
    SELECT nombre, presupuesto - gastos as presupuesto_actual
    FROM departamento
    ORDER BY presupuesto_actual ASC;
    +------------------+--------------------+
    | nombre           | presupuesto_actual |
    +------------------+--------------------+
    | I+D              |              -5000 |
    | Publicidad       |              -1000 |
    | Proyectos        |                  0 |
    | Contabilidad     |             107000 |
    | Desarrollo       |             114000 |
    | Sistemas         |             129000 |
    | Recursos Humanos |             255000 |
    +------------------+--------------------+
    ```

    

13. Lista el nombre de todos los departamentos ordenados de forma ascendente.

    ```mysql
    SELECT nombre
    FROM departamento
    ORDER BY nombre ASC;
    +------------------+
    | nombre           |
    +------------------+
    | Contabilidad     |
    | Desarrollo       |
    | I+D              |
    | Proyectos        |
    | Publicidad       |
    | Recursos Humanos |
    | Sistemas         |
    +------------------+
    ```

    

14. Lista el nombre de todos los departamentos ordenados de forma descendente.

    ```mysql
    SELECT nombre
    FROM departamento
    ORDER BY nombre DESC;
    +------------------+
    | nombre           |
    +------------------+
    | Sistemas         |
    | Recursos Humanos |
    | Publicidad       |
    | Proyectos        |
    | I+D              |
    | Desarrollo       |
    | Contabilidad     |
    +------------------+
    ```

    

15. Lista los apellidos y el nombre de todos los empleados, ordenados de forma alfabética tendiendo en cuenta en primer lugar sus apellidos y luego su nombre.

    ```mysql
    SELECT apellido1, apellido2, nombre
    FROM empleado
    ORDER BY apellido1 ASC, apellido2 ASC, nombre ASC;
    +-----------+-----------+--------------+
    | apellido1 | apellido2 | nombre       |
    +-----------+-----------+--------------+
    | Flores    | Salas     | Diego        |
    | Gómez     | López     | Juan         |
    | Herrera   | Gil       | Marta        |
    | Loyola    | Méndez    | Marcos       |
    | Rivero    | Gómez     | Aarón        |
    | Rubio     | Flores    | Adolfo       |
    | Ruiz      | NULL      | Pilar        |
    | Ruiz      | Santana   | Pepe         |
    | Sáez      | Guerrero  | Juan Antonio |
    | Salas     | Díaz      | Adela        |
    | Salas     | Flores    | Irene        |
    | Santana   | Moreno    | María        |
    | Suárez    | NULL      | Adrián       |
    +-----------+-----------+--------------+
    ```

    

16. Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos  que tienen mayor presupuesto.

    ```mysql
    SELECT nombre, presupuesto
    FROM departamento 
    ORDER BY presupuesto DESC
    LIMIT 3;
    +------------------+-------------+
    | nombre           | presupuesto |
    +------------------+-------------+
    | I+D              |      375000 |
    | Recursos Humanos |      280000 |
    | Sistemas         |      150000 |
    +------------------+-------------+
    ```

    

17. Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos  que tienen menor presupuesto.

    ```mysql
    SELECT nombre, presupuesto
    FROM departamento
    ORDER BY presupuesto ASC
    LIMIT 3;
    +--------------+-------------+
    | nombre       | presupuesto |
    +--------------+-------------+
    | Proyectos    |           0 |
    | Publicidad   |           0 |
    | Contabilidad |      110000 |
    +--------------+-------------+
    ```

    

18. Devuelve una lista con el nombre y el gasto, de los 2 departamentos que tienen mayor gasto.

    ```mysql
    SELECT nombre, gastos
    FROM departamento
    ORDER BY gastos DESC
    LIMIT 2;
    +------------------+--------+
    | nombre           | gastos |
    +------------------+--------+
    | I+D              | 380000 |
    | Recursos Humanos |  25000 |
    +------------------+--------+
    ```

    

19. Devuelve una lista con el nombre y el gasto, de los 2 departamentos que tienen menor gasto.

    ```mysql
    SELECT nombre, gastos 
    FROM departamento
    ORDER BY gastos ASC
    LIMIT 2;
    +------------+--------+
    | nombre     | gastos |
    +------------+--------+
    | Proyectos  |      0 |
    | Publicidad |   1000 |
    +------------+--------+
    ```

    

20. Devuelve una lista con 5 filas a partir de la tercera fila de la tabla empleado. La tercera fila se debe incluir en la respuesta. La respuesta debe incluir todas las columnas de la tabla `empleado`.

    ```mysql
    SELECT codigo, nif, nombre, apellido1, apellido2, codigo_departamento
    FROM empleado
    LIMIT 5 OFFSET 2;
    +--------+-----------+--------+-----------+-----------+---------------------+
    | codigo | nif       | nombre | apellido1 | apellido2 | codigo_departamento |
    +--------+-----------+--------+-----------+-----------+---------------------+
    |      3 | R6970642B | Adolfo | Rubio     | Flores    |                   3 |
    |      4 | 77705545E | Adrián | Suárez    | NULL      |                   4 |
    |      5 | 17087203C | Marcos | Loyola    | Méndez    |                   5 |
    |      6 | 38382980M | María  | Santana   | Moreno    |                   1 |
    |      7 | 80576669X | Pilar  | Ruiz      | NULL      |                   2 |
    +--------+-----------+--------+-----------+-----------+---------------------+
    ```

    

21. Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que tienen un presupuesto mayor o igual a 150000 euros.

    ```mysql
    SELECT nombre, presupuesto
    FROM departamento
    WHERE presupuesto >= 150000;
    +------------------+-------------+
    | nombre           | presupuesto |
    +------------------+-------------+
    | Sistemas         |      150000 |
    | Recursos Humanos |      280000 |
    | I+D              |      375000 |
    +------------------+-------------+
    ```

    

22. Devuelve una lista con el nombre de los departamentos y el gasto, de aquellos que tienen menos de 5000 euros de gastos.

    ```mysql
    SELECT nombre, gastos
    FROM departamento
    WHERE gastos < 5000;
    +--------------+--------+
    | nombre       | gastos |
    +--------------+--------+
    | Contabilidad |   3000 |
    | Proyectos    |      0 |
    | Publicidad   |   1000 |
    +--------------+--------+
    ```

    

23. Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que tienen un presupuesto entre 100000 y 200000 euros. Sin utilizar el operador `BETWEEN`.

    ```mysql
    SELECT nombre, presupuesto
    FROM departamento
    WHERE presupuesto > 100000 AND presupuesto < 200000;
    +--------------+-------------+
    | nombre       | presupuesto |
    +--------------+-------------+
    | Desarrollo   |      120000 |
    | Sistemas     |      150000 |
    | Contabilidad |      110000 |
    +--------------+-------------+
    ```

    

24. Devuelve una lista con el nombre de los departamentos que **no** tienen un presupuesto entre 100000 y 200000 euros. Sin utilizar el operador `BETWEEN`.

    ```mysql
    SELECT nombre
    FROM departamento
    WHERE PRESUPUESTO < 100000 OR presupuesto > 200000;
    +------------------+
    | nombre           |
    +------------------+
    | Recursos Humanos |
    | I+D              |
    | Proyectos        |
    | Publicidad       |
    +------------------+
    ```

    

25. Devuelve una lista con el nombre de los departamentos que tienen un presupuesto entre 100000 y 200000 euros. Utilizando el operador `BETWEEN`.

    ```mysql
    SELECT nombre
    FROM departamento
    WHERE presupuesto BETWEEN 100000 AND 200000;
    +--------------+
    | nombre       |
    +--------------+
    | Desarrollo   |
    | Sistemas     |
    | Contabilidad |
    +--------------+
    ```

    

26. Devuelve una lista con el nombre de los departamentos que **no** tienen un presupuesto entre 100000 y 200000 euros. Utilizando el operador `BETWEEN`.

    ```mysql
    SELECT nombre
    FROM departamento
    WHERE presupuesto NOT BETWEEN 100000 AND 200000;
    +------------------+
    | nombre           |
    +------------------+
    | Recursos Humanos |
    | I+D              |
    | Proyectos        |
    | Publicidad       |
    +------------------+
    ```

    

27. Devuelve una lista con el nombre de los departamentos, gastos y presupuesto, de aquellos departamentos donde los gastos sean mayores que el presupuesto del que disponen.

    ```mysql
    SELECT nombre, gastos, presupuesto
    FROM departamento
    WHERE gastos > presupuesto;
    +------------+--------+-------------+
    | nombre     | gastos | presupuesto |
    +------------+--------+-------------+
    | I+D        | 380000 |      375000 |
    | Publicidad |   1000 |           0 |
    +------------+--------+-------------+
    ```

    

28. Devuelve una lista con el nombre de los departamentos, gastos y presupuesto, de aquellos departamentos donde los gastos sean menores que el presupuesto del que disponen.

    ```mysql
    SELECT nombre, gastos, presupuesto
    FROM departamento
    WHERE gastos < presupuesto;
    +------------------+--------+-------------+
    | nombre           | gastos | presupuesto |
    +------------------+--------+-------------+
    | Desarrollo       |   6000 |      120000 |
    | Sistemas         |  21000 |      150000 |
    | Recursos Humanos |  25000 |      280000 |
    | Contabilidad     |   3000 |      110000 |
    +------------------+--------+-------------+
    ```

    

29. Devuelve una lista con el nombre de los departamentos, gastos y presupuesto, de aquellos departamentos donde los gastos sean iguales al presupuesto del que disponen.

    ```mysql
    SELECT nombre, gastos, presupuesto
    FROM departamento
    WHERE gastos = presupuesto;
    +-----------+--------+-------------+
    | nombre    | gastos | presupuesto |
    +-----------+--------+-------------+
    | Proyectos |      0 |           0 |
    +-----------+--------+-------------+
    ```

    

30. Lista todos los datos de los empleados cuyo segundo apellido sea NULL.

    ```mysql
    SELECT codigo, nif, nombre, apellido1, apellido2, codigo_departamento 
    FROM empleado
    WHERE apellido2 IS NULL;
    +--------+-----------+--------+-----------+-----------+---------------------+
    | codigo | nif       | nombre | apellido1 | apellido2 | codigo_departamento |
    +--------+-----------+--------+-----------+-----------+---------------------+
    |      4 | 77705545E | Adrián | Suárez    | NULL      |                   4 |
    |      7 | 80576669X | Pilar  | Ruiz      | NULL      |                   2 |
    +--------+-----------+--------+-----------+-----------+---------------------+
    ```

    

31. Lista todos los datos de los empleados cuyo segundo apellido no sea NULL.

    ```mysql
    SELECT codigo, nif, nombre, apellido1, apellido2, codigo_departamento
    FROM empleado
    WHERE apellido2 IS NOT NULL;
    +--------+-----------+--------------+-----------+-----------+---------------------+
    | codigo | nif       | nombre       | apellido1 | apellido2 | codigo_departamento |
    +--------+-----------+--------------+-----------+-----------+---------------------+
    |      1 | 32481596F | Aarón        | Rivero    | Gómez     |                   1 |
    |      2 | Y5575632D | Adela        | Salas     | Díaz      |                   2 |
    |      3 | R6970642B | Adolfo       | Rubio     | Flores    |                   3 |
    |      5 | 17087203C | Marcos       | Loyola    | Méndez    |                   5 |
    |      6 | 38382980M | María        | Santana   | Moreno    |                   1 |
    |      8 | 71651431Z | Pepe         | Ruiz      | Santana   |                   3 |
    |      9 | 56399183D | Juan         | Gómez     | López     |                   2 |
    |     10 | 46384486H | Diego        | Flores    | Salas     |                   5 |
    |     11 | 67389283A | Marta        | Herrera   | Gil       |                   1 |
    |     12 | 41234836R | Irene        | Salas     | Flores    |                NULL |
    |     13 | 82635162B | Juan Antonio | Sáez      | Guerrero  |                NULL |
    +--------+-----------+--------------+-----------+-----------+---------------------+
    ```

    

32. Lista todos los datos de los empleados cuyo segundo apellido sea López.

    ```mysql
    SELECT codigo, nif, nombre, apellido1, apellido2, codigo_departamento
    FROM empleado
    WHERE apellido2 = 'López';
    +--------+-----------+--------+-----------+-----------+---------------------+
    | codigo | nif       | nombre | apellido1 | apellido2 | codigo_departamento |
    +--------+-----------+--------+-----------+-----------+---------------------+
    |      9 | 56399183D | Juan   | Gómez     | López     |                   2 |
    +--------+-----------+--------+-----------+-----------+---------------------+
    ```

    

33. Lista todos los datos de los empleados cuyo segundo apellido sea Díaz o Moreno. **Sin utilizar** el operador `IN`.

    ```mysql
    SELECT codigo, nif, nombre, apellido1, apellido2, codigo_departamento
    FROM empleado
    WHERE apellido2 = 'Díaz' OR apellido2 = 'Moreno';
    +--------+-----------+--------+-----------+-----------+---------------------+
    | codigo | nif       | nombre | apellido1 | apellido2 | codigo_departamento |
    +--------+-----------+--------+-----------+-----------+---------------------+
    |      2 | Y5575632D | Adela  | Salas     | Díaz      |                   2 |
    |      6 | 38382980M | María  | Santana   | Moreno    |                   1 |
    +--------+-----------+--------+-----------+-----------+---------------------+
    ```

    

34. Lista todos los datos de los empleados cuyo segundo apellido sea Díaz o Moreno. Utilizando el operador `IN`.

    ```mysql
    SELECT codigo, nif, nombre, apellido1, apellido2, codigo_departamento
    FROM empleado
    WHERE apellido2 IN('López', 'Moreno');
    +--------+-----------+--------+-----------+-----------+---------------------+
    | codigo | nif       | nombre | apellido1 | apellido2 | codigo_departamento |
    +--------+-----------+--------+-----------+-----------+---------------------+
    |      6 | 38382980M | María  | Santana   | Moreno    |                   1 |
    |      9 | 56399183D | Juan   | Gómez     | López     |                   2 |
    +--------+-----------+--------+-----------+-----------+---------------------+
    ```

    

35. Lista los nombres, apellidos y nif de los empleados que trabajan en el departamento 3.

    ```mysql
    SELECT nombre, apellido1, apellido2, nif
    FROM empleado
    WHERE codigo_departamento = 3;
    +--------+-----------+-----------+-----------+
    | nombre | apellido1 | apellido2 | nif       |
    +--------+-----------+-----------+-----------+
    | Adolfo | Rubio     | Flores    | R6970642B |
    | Pepe   | Ruiz      | Santana   | 71651431Z |
    +--------+-----------+-----------+-----------+
    ```

    

36. Lista los nombres, apellidos y nif de los empleados que trabajan en los departamentos `2, 4 o 5`.

    ```mysql
    SELECT nombre, apellido1, apellido2, nif
    FROM empleado
    WHERE codigo_departamento IN (2, 4, 5);
    +--------+-----------+-----------+-----------+
    | nombre | apellido1 | apellido2 | nif       |
    +--------+-----------+-----------+-----------+
    | Adela  | Salas     | Díaz      | Y5575632D |
    | Pilar  | Ruiz      | NULL      | 80576669X |
    | Juan   | Gómez     | López     | 56399183D |
    | Adrián | Suárez    | NULL      | 77705545E |
    | Marcos | Loyola    | Méndez    | 17087203C |
    | Diego  | Flores    | Salas     | 46384486H |
    +--------+-----------+-----------+-----------+
    ```
    
    

#### Consultas multitabla (composición interna)

1. Devuelve un listado con los empleados y los datos de los departamentos  donde trabaja cada uno.

   ```mysql
   SELECT emp.codigo, emp.nombre, emp.nif, emp.apellido1, emp.apellido2, emp.codigo_departamento, dep.codigo, dep.nombre, dep.presupuesto 
   FROM empleado as emp, departamento as dep
   WHERE emp.codigo_departamento = dep.codigo;
   +--------+--------+-----------+-----------+-----------+---------------------+--------+------------------+-------------+
   | codigo | nombre | nif       | apellido1 | apellido2 | codigo_departamento | codigo | nombre           | presupuesto |
   +--------+--------+-----------+-----------+-----------+---------------------+--------+------------------+-------------+
   |      1 | Aarón  | 32481596F | Rivero    | Gómez     |                   1 |      1 | Desarrollo       |      120000 |
   |      2 | Adela  | Y5575632D | Salas     | Díaz      |                   2 |      2 | Sistemas         |      150000 |
   |      3 | Adolfo | R6970642B | Rubio     | Flores    |                   3 |      3 | Recursos Humanos |      280000 |
   |      4 | Adrián | 77705545E | Suárez    | NULL      |                   4 |      4 | Contabilidad     |      110000 |
   |      5 | Marcos | 17087203C | Loyola    | Méndez    |                   5 |      5 | I+D              |      375000 |
   |      6 | María  | 38382980M | Santana   | Moreno    |                   1 |      1 | Desarrollo       |      120000 |
   |      7 | Pilar  | 80576669X | Ruiz      | NULL      |                   2 |      2 | Sistemas         |      150000 |
   |      8 | Pepe   | 71651431Z | Ruiz      | Santana   |                   3 |      3 | Recursos Humanos |      280000 |
   |      9 | Juan   | 56399183D | Gómez     | López     |                   2 |      2 | Sistemas         |      150000 |
   |     10 | Diego  | 46384486H | Flores    | Salas     |                   5 |      5 | I+D              |      375000 |
   |     11 | Marta  | 67389283A | Herrera   | Gil       |                   1 |      1 | Desarrollo       |      120000 |
   +--------+--------+-----------+-----------+-----------+---------------------+--------+------------------+-------------+
   ```

   

2. Devuelve un listado con los empleados y los datos de los departamentos  donde trabaja cada uno. Ordena el resultado, en primer lugar por el nombre  del departamento (en orden alfabético) y en segundo lugar por los apellidos  y el nombre de los empleados.

   ```mysql
   SELECT CONCAT(emp.apellido1, ' ', emp.apellido2, ' ', emp.nombre) as empleado, dep.codigo, dep.nombre, dep.presupuesto
   FROM empleado as emp, departamento as dep 
   WHERE emp.codigo_departamento = dep.codigo AND emp.apellido2 IS NOT NULL
   ORDER BY dep.nombre ASC, empleado;
   +----------------------+--------+------------------+-------------+
   | empleado             | codigo | nombre           | presupuesto |
   +----------------------+--------+------------------+-------------+
   | Herrera Gil Marta    |      1 | Desarrollo       |      120000 |
   | Rivero Gómez Aarón   |      1 | Desarrollo       |      120000 |
   | Santana Moreno María |      1 | Desarrollo       |      120000 |
   | Flores Salas Diego   |      5 | I+D              |      375000 |
   | Loyola Méndez Marcos |      5 | I+D              |      375000 |
   | Rubio Flores Adolfo  |      3 | Recursos Humanos |      280000 |
   | Ruiz Santana Pepe    |      3 | Recursos Humanos |      280000 |
   | Gómez López Juan     |      2 | Sistemas         |      150000 |
   | Salas Díaz Adela     |      2 | Sistemas         |      150000 |
   +----------------------+--------+------------------+-------------+
   ```

   

3. Devuelve un listado con el identificador y el nombre del departamento,  solamente de aquellos departamentos que tienen empleados.

   ```mysql
   SELECT dep.codigo, dep.nombre
   FROM empleado AS emp, departamento AS dep
   WHERE emp.codigo_departamento = dep.codigo;
   +--------+------------------+
   | codigo | nombre           |
   +--------+------------------+
   |      1 | Desarrollo       |
   |      1 | Desarrollo       |
   |      1 | Desarrollo       |
   |      2 | Sistemas         |
   |      2 | Sistemas         |
   |      2 | Sistemas         |
   |      3 | Recursos Humanos |
   |      3 | Recursos Humanos |
   |      4 | Contabilidad     |
   |      5 | I+D              |
   |      5 | I+D              |
   +--------+------------------+
   ```

   

4. Devuelve un listado con el identificador, el nombre del departamento y el  valor del presupuesto actual del que dispone, solamente de aquellos departamentos que tienen empleados. El valor del presupuesto actual lo  puede calcular restando al valor del presupuesto inicial  (columna presupuesto) el valor de los gastos que ha generado  (columna gastos).

   ```mysql
   SELECT DISTINCT dep.codigo, dep.nombre, dep.presupuesto - dep.gastos AS presupuesto_actual
   FROM empleado AS emp, departamento AS dep
   WHERE emp.codigo_departamento = dep.codigo;
   +--------+------------------+--------------------+
   | codigo | nombre           | presupuesto_actual |
   +--------+------------------+--------------------+
   |      1 | Desarrollo       |             114000 |
   |      2 | Sistemas         |             129000 |
   |      3 | Recursos Humanos |             255000 |
   |      4 | Contabilidad     |             107000 |
   |      5 | I+D              |              -5000 |
   +--------+------------------+--------------------+
   ```

   

5. Devuelve el nombre del departamento donde trabaja el empleado que tiene  el nif 38382980M.

   ```mysql
   SELECT dep.nombre
   FROM empleado as emp, departamento as dep
   WHERE emp.codigo_departamento = dep.codigo AND emp.nif = '38382980M';
   +------------+
   | nombre     |
   +------------+
   | Desarrollo |
   +------------+
   ```

   

6. Devuelve el nombre del departamento donde trabaja el empleado Pepe Ruiz Santana.

   ```mysql
   SELECT dep.nombre
   FROM empleado as emp, departamento as dep
   WHERE emp.codigo_departamento = dep.codigo AND emp.nombre = 'Pepe' AND emp.apellido1 = 'Ruiz' AND emp.apellido2 = 'Santana';
   +------------------+
   | nombre           |
   +------------------+
   | Recursos Humanos |
   +------------------+
   ```

   

7. Devuelve un listado con los datos de los empleados que trabajan en el  departamento de I+D. Ordena el resultado alfabéticamente.

   ```mysql
   SELECT CONCAT(emp.nombre, ' ', emp.apellido1, ' ', emp.apellido2) as 'empleados I+D'
   FROM empleado as emp, departamento as dep
   WHERE emp.codigo_departamento = dep.codigo AND dep.nombre = 'I+D'
   ORDER BY emp.nombre ASC;
   +----------------------+
   | empleados I+D        |
   +----------------------+
   | Diego Flores Salas   |
   | Marcos Loyola Méndez |
   +----------------------+
   ```

   

8. Devuelve un listado con los datos de los empleados que trabajan en el  departamento de Sistemas, Contabilidad o I+D. Ordena el resultado  alfabéticamente.

   ```mysql
   SELECT emp.codigo, emp.nif, emp.nombre, emp.apellido1, emp.apellido2, emp.codigo_departamento
   FROM empleado AS emp, departamento AS dep
   WHERE emp.codigo_departamento = dep.codigo AND dep.nombre IN ('Sistemas', 'Contabilidad', 'I+D')
   ORDER BY emp.nombre ASC;
   +--------+-----------+--------+-----------+-----------+---------------------+
   | codigo | nif       | nombre | apellido1 | apellido2 | codigo_departamento |
   +--------+-----------+--------+-----------+-----------+---------------------+
   |      2 | Y5575632D | Adela  | Salas     | Díaz      |                   2 |
   |      4 | 77705545E | Adrián | Suárez    | NULL      |                   4 |
   |     10 | 46384486H | Diego  | Flores    | Salas     |                   5 |
   |      9 | 56399183D | Juan   | Gómez     | López     |                   2 |
   |      5 | 17087203C | Marcos | Loyola    | Méndez    |                   5 |
   |      7 | 80576669X | Pilar  | Ruiz      | NULL      |                   2 |
   +--------+-----------+--------+-----------+-----------+---------------------+
   ```

   

9. Devuelve una lista con el nombre de los empleados que tienen los  departamentos que no tienen un presupuesto entre 100000 y 200000 euros.

   ```mysql
   SELECT emp.nombre
   FROM empleado AS emp, departamento AS dep
   WHERE emp.codigo_departamento = dep.codigo AND dep.presupuesto NOT BETWEEN 100000 AND 200000;
   +--------+
   | nombre |
   +--------+
   | Adolfo |
   | Pepe   |
   | Marcos |
   | Diego  |
   +--------+
   ```

   

10. Devuelve un listado con el nombre de los departamentos donde existe  algún empleado cuyo segundo apellido sea NULL. Tenga en cuenta que no  debe mostrar nombres de departamentos que estén repetidos.

    ```mysql
    SELECT dep.nombre
    FROM empleado AS emp, departamento AS dep
    WHERE emp.codigo_departamento = dep.codigo AND emp.apellido2 IS NULL;
    +--------------+
    | nombre       |
    +--------------+
    | Contabilidad |
    | Sistemas     |
    +--------------+
    ```
    
    

#### Consultas multitabla (composición externa)

1. Devuelve un listado con todos los empleados junto con los datos de los  departamentos donde trabajan. Este listado también debe incluir los  empleados que no tienen ningún departamento asociado.

   ```mysql
   SELECT emp.codigo, emp.nif, emp.nombre, emp.apellido1, emp.apellido2, emp.codigo_departamento, dep.codigo as 'Código Departamento', dep.nombre AS 'Nombre Departamento', dep.presupuesto, dep.gastos
   FROM empleado AS emp 
   LEFT JOIN departamento AS dep ON emp.codigo_departamento = dep.codigo;
   +--------+-----------+--------------+-----------+-----------+---------------------+---------------------+---------------------+-------------+--------+
   | codigo | nif       | nombre       | apellido1 | apellido2 | codigo_departamento | Código Departamento | Nombre Departamento | presupuesto | gastos |
   +--------+-----------+--------------+-----------+-----------+---------------------+---------------------+---------------------+-------------+--------+
   |      1 | 32481596F | Aarón        | Rivero    | Gómez     |                   1 |                   1 | Desarrollo          |      120000 |   6000 |
   |      2 | Y5575632D | Adela        | Salas     | Díaz      |                   2 |                   2 | Sistemas            |      150000 |  21000 |
   |      3 | R6970642B | Adolfo       | Rubio     | Flores    |                   3 |                   3 | Recursos Humanos    |      280000 |  25000 |
   |      4 | 77705545E | Adrián       | Suárez    | NULL      |                   4 |                   4 | Contabilidad        |      110000 |   3000 |
   |      5 | 17087203C | Marcos       | Loyola    | Méndez    |                   5 |                   5 | I+D                 |      375000 | 380000 |
   |      6 | 38382980M | María        | Santana   | Moreno    |                   1 |                   1 | Desarrollo          |      120000 |   6000 |
   |      7 | 80576669X | Pilar        | Ruiz      | NULL      |                   2 |                   2 | Sistemas            |      150000 |  21000 |
   |      8 | 71651431Z | Pepe         | Ruiz      | Santana   |                   3 |                   3 | Recursos Humanos    |      280000 |  25000 |
   |      9 | 56399183D | Juan         | Gómez     | López     |                   2 |                   2 | Sistemas            |      150000 |  21000 |
   |     10 | 46384486H | Diego        | Flores    | Salas     |                   5 |                   5 | I+D                 |      375000 | 380000 |
   |     11 | 67389283A | Marta        | Herrera   | Gil       |                   1 |                   1 | Desarrollo          |      120000 |   6000 |
   |     12 | 41234836R | Irene        | Salas     | Flores    |                NULL |                NULL | NULL                |        NULL |   NULL |
   |     13 | 82635162B | Juan Antonio | Sáez      | Guerrero  |                NULL |                NULL | NULL                |        NULL |   NULL |
   +--------+-----------+--------------+-----------+-----------+---------------------+---------------------+---------------------+-------------+--------+
   ```

   

2. Devuelve un listado donde sólo aparezcan aquellos empleados que no  tienen ningún departamento asociado.

   ```mysql
   SELECT emp.codigo, emp.nif, emp.nombre, emp.apellido1, emp.apellido2, emp.codigo_departamento
   FROM empleado AS emp
   LEFT JOIN departamento AS dep  ON emp.codigo_departamento = dep.codigo
   WHERE emp.codigo_departamento IS NULL;
   +--------+-----------+--------------+-----------+-----------+---------------------+
   | codigo | nif       | nombre       | apellido1 | apellido2 | codigo_departamento |
   +--------+-----------+--------------+-----------+-----------+---------------------+
   |     12 | 41234836R | Irene        | Salas     | Flores    |                NULL |
   |     13 | 82635162B | Juan Antonio | Sáez      | Guerrero  |                NULL |
   +--------+-----------+--------------+-----------+-----------+---------------------+
   ```

   

3. Devuelve un listado donde sólo aparezcan aquellos departamentos que no  tienen ningún empleado asociado.

   ```mysql
   SELECT dep.codigo, dep.nombre, dep.presupuesto, dep.gastos
   FROM departamento AS dep
   LEFT JOIN empleado AS emp ON emp.codigo_departamento = dep.codigo
   WHERE emp.codigo_departamento IS NULL;
   +--------+------------+-------------+--------+
   | codigo | nombre     | presupuesto | gastos |
   +--------+------------+-------------+--------+
   |      6 | Proyectos  |           0 |      0 |
   |      7 | Publicidad |           0 |   1000 |
   +--------+------------+-------------+--------+
   ```

   

4. Devuelve un listado con todos los empleados junto con los datos de los  departamentos donde trabajan. El listado debe incluir los empleados que no  tienen ningún departamento asociado y los departamentos que no tienen  ningún empleado asociado. Ordene el listado alfabéticamente por el  nombre del departamento.

   ```mysql
   
   ```

   

5. Devuelve un listado con los empleados que no tienen ningún departamento  asociado y los departamentos que no tienen ningún empleado asociado.  Ordene el listado alfabéticamente por el nombre del departamento.

   ```mysql
   
   ```

   

#### Consultas Resumen

1. Calcula la suma del presupuesto de todos los departamentos.

   ```mysql
   SELECT SUM(presupuesto)
   FROM departamento;
   +------------------+
   | SUM(presupuesto) |
   +------------------+
   |          1035000 |
   +------------------+
   ```

   

2. Calcula la media del presupuesto de todos los departamentos.

   ```mysql
   SELECT AVG(presupuesto)
   FROM departamento;
   +--------------------+
   | AVG(presupuesto)   |
   +--------------------+
   | 147857.14285714287 |
   +--------------------+
   ```

   

3. Calcula el valor mínimo del presupuesto de todos los departamentos.

   ```mysql
   SELECT MIN(presupuesto)
   FROM departamento;
   +------------------+
   | MIN(presupuesto) |
   +------------------+
   |                0 |
   +------------------+
   ```

   

4. Calcula el nombre del departamento y el presupuesto que tiene asignado,  del departamento con menor presupuesto.

   ```mysql
   SELECT nombre, presupuesto
   FROM departamento
   WHERE presupuesto = (
       SELECT MIN(presupuesto)
       FROM departamento
   )
   LIMIT 1;
   +-----------+-------------+
   | nombre    | presupuesto |
   +-----------+-------------+
   | Proyectos |           0 |
   +-----------+-------------+
   ```

   

5. Calcula el valor máximo del presupuesto de todos los departamentos.

   ```mysql
   SELECT MAX(presupuesto)
   FROM departamento;
   +------------------+
   | MAX(presupuesto) |
   +------------------+
   |           375000 |
   +------------------+
   ```

   

6. Calcula el nombre del departamento y el presupuesto que tiene asignado,  del departamento con mayor presupuesto.

   ```mysql
   SELECT nombre, presupuesto
   FROM departamento
   WHERE presupuesto = (
       SELECT MAX(presupuesto)
       FROM departamento
   );
   +--------+-------------+
   | nombre | presupuesto |
   +--------+-------------+
   | I+D    |      375000 |
   +--------+-------------+
   ```

   

7. Calcula el número total de empleados que hay en la tabla empleado.

   ```mysql
   SELECT COUNT(nombre)
   FROM empleado;
   +---------------+
   | COUNT(nombre) |
   +---------------+
   |            13 |
   +---------------+
   ```

   

8. Calcula el número de empleados que **no tienen** NULL en su segundo  apellido.

   ```mysql
   SELECT COUNT(nombre)
   FROM empleado
   WHERE apellido2 IS NOT NULL;
   +---------------+
   | COUNT(nombre) |
   +---------------+
   |            11 |
   +---------------+
   ```

   

9. Calcula el número de empleados que hay en cada departamento. Tienes que  devolver dos columnas, una con el nombre del departamento y otra con el  número de empleados que tiene asignados.

   ```mysql
   SELECT dep.nombre, COUNT(emp.nombre) as 'Número empleados'
   FROM departamento as dep
   LEFT JOIN empleado AS emp ON emp.codigo_departamento = dep.codigo
   GROUP BY dep.nombre;
   +------------------+------------------+
   | nombre           | Número empleados |
   +------------------+------------------+
   | Desarrollo       |                3 |
   | Sistemas         |                3 |
   | Recursos Humanos |                2 |
   | Contabilidad     |                1 |
   | I+D              |                2 |
   | Proyectos        |                0 |
   | Publicidad       |                0 |
   +------------------+------------------+
   ```

   

10. Calcula el nombre de los departamentos que tienen más de 2 empleados. El  resultado debe tener dos columnas, una con el nombre del departamento y  otra con el número de empleados que tiene asignados.

    ```mysql
    SELECT dep.nombre, COUNT(emp.codigo)
    FROM departamento as dep
    LEFT JOIN empleado AS emp ON emp.codigo_departamento = dep.codigo
    GROUP BY dep.nombre
    HAVING COUNT(emp.codigo) > 2;
    +------------+-------------------+
    | nombre     | COUNT(emp.codigo) |
    +------------+-------------------+
    | Desarrollo |                 3 |
    | Sistemas   |                 3 |
    +------------+-------------------+
    ```

    

11. Calcula el número de empleados que trabajan en cada uno de los  departamentos. El resultado de esta consulta también tiene que incluir  aquellos departamentos que no tienen ningún empleado asociado.

    ```mysql
    SELECT dep.nombre, COUNT(emp.nombre) as 'Número empleados'
    FROM departamento as dep
    LEFT JOIN empleado AS emp ON emp.codigo_departamento = dep.codigo
    GROUP BY dep.nombre;
    +------------------+------------------+
    | nombre           | Número empleados |
    +------------------+------------------+
    | Desarrollo       |                3 |
    | Sistemas         |                3 |
    | Recursos Humanos |                2 |
    | Contabilidad     |                1 |
    | I+D              |                2 |
    | Proyectos        |                0 |
    | Publicidad       |                0 |
    +------------------+------------------+
    ```

    

12. Calcula el número de empleados que trabajan en cada unos de los  departamentos que tienen un presupuesto mayor a 200000 euros.

    ```mysql
    SELECT dep.nombre, COUNT(emp.codigo) AS 'Número de empleados'
    FROM empleado AS emp, departamento AS dep
    WHERE emp.codigo_departamento = dep.codigo AND dep.presupuesto > 200000
    GROUP BY dep.nombre;
    +------------------+---------------------+
    | nombre           | Número de empleados |
    +------------------+---------------------+
    | Recursos Humanos |                   2 |
    | I+D              |                   2 |
    +------------------+---------------------+
    ```





#### Subconsultas

##### Con operadores básicos de comparación

1. Devuelve un listado con todos los empleados que tiene el departamento de Sistemas. (Sin utilizar `INNER JOIN`).

   ```mysql
   SELECT emp.nombre AS 'Nombre empleado', dep.nombre AS 'Departamento'
   FROM empleado AS emp, departamento AS dep
   WHERE dep.nombre = (
       SELECT nombre
       FROM departamento
       WHERE nombre = 'Sistemas'
   ) AND emp.codigo_departamento = dep.codigo;
   +-----------------+--------------+
   | Nombre empleado | Departamento |
   +-----------------+--------------+
   | Adela           | Sistemas     |
   | Pilar           | Sistemas     |
   | Juan            | Sistemas     |
   +-----------------+--------------+
   ```

   

2. Devuelve el nombre del departamento con mayor presupuesto y la cantidad que tiene asignada.

   ```mysql
   SELECT dep.nombre, dep.presupuesto
   FROM departamento AS dep
   WHERE dep.presupuesto = (
       SELECT MAX(presupuesto)
       FROM departamento
   );
   +--------+-------------+
   | nombre | presupuesto |
   +--------+-------------+
   | I+D    |      375000 |
   +--------+-------------+
   ```

   

3. Devuelve el nombre del departamento con menor presupuesto y la cantidad que tiene asignada.

   ```mysql
   SELECT dep.nombre, dep.presupuesto
   FROM departamento AS dep
   WHERE dep.presupuesto = (
       SELECT MIN(presupuesto)
       FROM departamento
   );
   +------------+-------------+
   | nombre     | presupuesto |
   +------------+-------------+
   | Proyectos  |           0 |
   | Publicidad |           0 |
   +------------+-------------+
   ```
   
   

##### Subconsultas con `ALL` y `ANY`

4. Devuelve el nombre del departamento con mayor presupuesto y la cantidad que tiene asignada. Sin hacer uso de `MAX, ORDER BY ni LIMIT`.

   ```mysql
   SELECT dep.nombre, dep.presupuesto
   FROM departamento AS dep
   WHERE dep.presupuesto > ALL (
       SELECT presupuesto
       FROM departamento 
       WHERE dep.presupuesto != presupuesto
   );
   +--------+-------------+
   | nombre | presupuesto |
   +--------+-------------+
   | I+D    |      375000 |
   +--------+-------------+
   ```

   

5. Devuelve el nombre del departamento con menor presupuesto y la cantidad que tiene asignada. Sin hacer uso de `MIN, ORDER BY ni LIMIT`.

   ```mysql
   SELECT dep.nombre, dep.presupuesto
   FROM departamento AS dep
   WHERE dep.presupuesto < ALL (
       SELECT presupuesto
       FROM departamento 
       WHERE dep.presupuesto != presupuesto
   );
   +------------+-------------+
   | nombre     | presupuesto |
   +------------+-------------+
   | Proyectos  |           0 |
   | Publicidad |           0 |
   +------------+-------------+
   ```

   

6. Devuelve los nombres de los departamentos que tienen empleados asociados. (Utilizando `ALL` o `ANY`).

   ```mysql
   SELECT DISTINCT dep.nombre
   FROM departamento AS dep, empleado AS emp
   WHERE emp.nombre = (
       SELECT nombre
       FROM empleado
       WHERE emp.nombre = nombre
   ) AND emp.codigo_departamento = dep.codigo;
   +------------------+
   | nombre           |
   +------------------+
   | Desarrollo       |
   | Sistemas         |
   | Recursos Humanos |
   | Contabilidad     |
   | I+D              |
   +------------------+
   ```

   

7. Devuelve los nombres de los departamentos que no tienen empleados asociados. (Utilizando `ALL` o `ANY`).

   ```mysql
   SELECT nombre
   FROM departamento
   WHERE codigo = ANY (
       SELECT dep.codigo
       FROM departamento AS dep
       LEFT JOIN empleado AS emp ON emp.codigo_departamento = dep.codigo
       WHERE emp.codigo_departamento IS NULL
   );
   +------------+
   | nombre     |
   +------------+
   | Proyectos  |
   | Publicidad |
   +------------+
   ```
   
   

##### Subconsultas con `IN` y `NOT IN`

8. Devuelve los nombres de los departamentos que tienen empleados asociados. (Utilizando `IN` o `NOT IN`).

   ```mysql
   SELECT nombre
   FROM departamento
   WHERE codigo IN (
       SELECT dep.codigo
       FROM departamento AS dep
       LEFT JOIN empleado AS emp ON emp.codigo_departamento = dep.codigo
       WHERE emp.codigo_departamento IS NOT NULL
   );
   +------------------+
   | nombre           |
   +------------------+
   | Desarrollo       |
   | Sistemas         |
   | Recursos Humanos |
   | Contabilidad     |
   | I+D              |
   +------------------+
   ```

   

9. Devuelve los nombres de los departamentos que no tienen empleados asociados. (Utilizando `IN` o `NOT IN`).

   ```mysql
   SELECT nombre
   FROM departamento
   WHERE codigo NOT IN (
       SELECT dep.codigo
       FROM departamento AS dep
       LEFT JOIN empleado AS emp ON emp.codigo_departamento = dep.codigo
       WHERE emp.codigo_departamento IS NOT NULL
   );
   +------------+
   | nombre     |
   +------------+
   | Proyectos  |
   | Publicidad |
   +------------+
   ```
   
   

##### Subconsultas con `EXISTS` y `NOT EXISTS`

10. Devuelve los nombres de los departamentos que tienen empleados asociados. (Utilizando `EXISTS` o `NOT EXISTS`).

    ```mysql
    SELECT dep.nombre
    FROM departamento AS dep
    WHERE EXISTS (
        SELECT 1
        FROM empleado AS emp
        WHERE emp.codigo_departamento = dep.codigo
    );
    +------------------+
    | nombre           |
    +------------------+
    | Desarrollo       |
    | Sistemas         |
    | Recursos Humanos |
    | Contabilidad     |
    | I+D              |
    +------------------+
    ```

    

11. Devuelve los nombres de los departamentos que no tienen empleados asociados. (Utilizando `EXISTS` o `NOT EXISTS`).

    ```mysql
    SELECT dep.nombre
    FROM departamento AS dep
    WHERE NOT EXISTS (
        SELECT 1
        FROM empleado AS emp
        WHERE emp.codigo_departamento = dep.codigo
    );
    +------------+
    | nombre     |
    +------------+
    | Proyectos  |
    | Publicidad |
    +------------+
    ```
    
    