# Creating and deleting objects via different roles
## Do some roleplaying. If you open 2 windows in Snowflake and go through this step by step you will see the story developing. 

Step 1: set up 2 users and roles

	use role securityadmin;
	
	create user etl
	password='abc123' default_role = etl;
	
	grant role etl to user etl;
	
	create user db
	password='abc123' default_role = db;
	
	grant role db to user db;
	
Step 2: create a database

	use role sysadmin;
	create database artefacts;
	grant usage on database artefacts to role etl;
	grant usage on database artefacts to role db;
	
Step 3: create a table in the database
