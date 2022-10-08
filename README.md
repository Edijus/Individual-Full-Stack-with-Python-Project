# Projektas turi turėti dokumentacija ir paleidimo instrukcijas. (1)

# Individual-Full-Stack-with-Python-Project

# Introduction
Who Wants to Be a Millionaire quiz game. The objective is to score more than my girlfriend.


# Getting Started
1. Installation process
  pip install -r requirements.txt
  
  Initial questions are located in SQL\DDL.sql. The file can be executed using DB Browser for SQLite https://sqlitebrowser.org/
2. Software dependencies
  None
3. Latest releases
4. API references



# Build
To run migrations.
python manage.py makemigrations
python manage.py migrate
To create super user run.
python manage.py createsuperuser
After running this command it will ask for username, password. You can access admin panel from localhost:8000/admin/
execute SQL\DDL.sql
python manage.py runserver
