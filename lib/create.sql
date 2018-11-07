CREATE TABLE projects (
  id INTEGER PRIMARY KEY,
  title TEXT,
  funding_goal  INTEGER,
  category TEXT,
  start_date TEXT,
  end_date TEXT
);
CREATE TABLE pledges (
  id INTEGER PRIMARY KEY,
  user_id INTEGER,
  project_id INTEGER,
  amount INTEGER
);
CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT,
  age INTEGER
);
