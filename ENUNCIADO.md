# Enunciado — Room + WorkManager offline-first

Construir una aplicación Android de notas con una arquitectura **offline-first**:

1. toda nota creada por el usuario se guarda primero en una base de datos local Room, que actúa como fuente de verdad;
2. las filas recién creadas quedan marcadas como pendientes de sincronización;
3. un trabajo diferido de WorkManager, condicionado a disponer de red, procesa posteriormente las notas pendientes;
4. tras una sincronización correcta, las filas quedan marcadas como sincronizadas.

El servidor se simula deliberadamente para que el ejercicio sea autocontenido; el objetivo es practicar la frontera entre persistencia local y sincronización diferida.

## Base de datos

Room crea el fichero SQLite en ejecución. No se versiona un `.db` binario generado por un dispositivo. Para que el modelo sea visible y reproducible, el esquema equivalente se incluye en [`database/schema.sql`](database/schema.sql).
