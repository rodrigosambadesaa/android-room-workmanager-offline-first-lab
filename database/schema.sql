-- Esquema SQLite equivalente al modelo Room de la aplicación.
-- El fichero de base de datos real se crea en tiempo de ejecución.

CREATE TABLE IF NOT EXISTS notes (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    text TEXT,
    synced INTEGER NOT NULL DEFAULT 0,
    createdAt INTEGER NOT NULL
);
