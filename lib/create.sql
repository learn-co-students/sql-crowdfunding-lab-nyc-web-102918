CREATE TABLE projects (
  id INTEGER PRIMARY KEY,
  title TEXT,
  category TEXT,
  funding_goal REAL,
  start_date TEXT,
  end_date TEXT
);

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT,
  age INTEGER
);

CREATE TABLE pledges (
  id INTEGER PRIMARY KEY,
  project_id INTEGER,
  user_id INTEGER,
  amount REAL
);




-- def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
-- "Write your SQL query Here"
-- end
--
-- SELECT projects.title, SUM(pledges.amount)
-- FROM projects
-- INNER JOIN pledges
-- ON projects.id = pledges.project_id
-- GROUP BY projects.title
-- ORDER BY projects.title
--
-- def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
-- end
--
-- SELECT users.name, users.age, SUM(pledges.amount)
-- FROM users
-- INNER JOIN pledges
-- ON users.id = pledges.user_id
-- GROUP BY users.name
-- ORDER BY users.name
--
-- def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
-- "Write your SQL query Here"
-- end
--
-- SELECT projects.title, SUM(pledges.amount) - projects.funding_goal
-- FROM projects
-- INNER JOIN pledges
-- ON projects.id = pledges.project_id
-- GROUP BY projects.title
-- HAVING SUM(pledges.amount) >= projects.funding_goal
-- ORDER BY projects.title
--
-- def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
-- "Write your SQL query Here"
-- end
--
-- selects_user_names_and_amounts_of_all_pledges_
-- grouped_by_name_then_
-- orders_them_by_the_amount_and_users_name
--
-- SELECT users.name, SUM(pledges.amount)
-- FROM users
-- INNER JOIN pledges
-- ON users.id = pledges.user_id
-- GROUP BY users.name
-- HAVING SUM(pledges.amount)
-- ORDER BY users.name
-- --
--
-- def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
-- "Write your SQL query Here"
-- end
--
-- SELECT projects.category, SUM(pledges.amount)
-- FROM projects
-- INNER JOIN pledges
-- ON projects.id = pledges.project_id
-- WHERE projects.category = "music"
-- GROUP BY projects.category
--
--
-- def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
-- "Write your SQL query Here"
-- end
