Backend
==============

- NodeJs
- Postgres

### Установка

.env.example переименовать в .env

Прописать в `dotenv` конфигурацию базы данных

Создать базу данных `klika`

Выполнить скрипт default.sql в `pgsql`

````
npm install
````

````
node app.js
````

### Ендпойнты

````
/musics
/filters
/musics?{params}
````

GET Параметры
````
singer={singer.id}
genre={genre.id}
year={year}
column={column name}
order={asc/desc}
````