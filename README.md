# Raster files publication

**Install Postgresql**

```console

docker run --name postgres --restart=always -p 5432:5432 -v /data/postgres:/var/lib/postgresql/data -e    POSTGRES_PASSWORD=secretpass -d mdillon/postgis:9.4
```

**Create database**


```console

docker exec -it postgres psql -U postgres -c 'CREATE DATABASE raster_django_demo;' && docker exec -it postgres psql -d raster_django_demo -U postgres -c 'CREATE EXTENSION postgis;'
```


**Build and run**

```console

./build.sh
./run.sh
```
