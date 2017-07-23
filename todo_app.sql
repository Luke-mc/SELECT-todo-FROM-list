
DROP DATABASE IF EXISTS todo_app;

DROP USER IF EXISTS michael;
CREATE USER michael WITH ENCRYPTED PASSWORD 'stonebreaker';

CREATE DATABASE todo_app WITH OWNER michael;

\c todo_app;

CREATE TABLE tasks (
  id SERIAL NOT NULL,
  title varchar(255) NOT NULL,
  description text,
  created_at timestamp without time zone NOT NULL DEFAULT NOW(),
  updated_at timestamp without time zone,
  completed bool NOT NULL DEFAULT false,
  PRIMARY KEY(id)
);

\d tasks;

ALTER TABLE tasks
DROP IF EXISTS completed;

\d tasks;

ALTER TABLE tasks
ADD COLUMN completed_at timestamp without time zone DEFAULT NULL;

\d tasks;


UPDATE tasks
SET updated_at =  NOT NULL DEFAULT NOW() ;

\d tasks;


\c apple;
