# These are the answers for Section 2 

DB name is carshop

* To run, cd to this folder first 

~~~
sudo docker build -t custom_psql .
sudo docker run -d --name custom_psql_running -p 5432:5432 custom_psql
~~~ 

*Enter psql interactive cli with 

~~~
sudo docker exec -it custom_psql_running psql -U postgres 
~~~

*In psql mode, run

~~~
\c carshop 
~~~

