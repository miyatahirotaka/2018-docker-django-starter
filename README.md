This repository is for building **Docker + Python3.7.1 + Django + PostgreSQL10.6** environment.

### Clone this repository and your django project
```
git clone https://github.com/miyatahirotaka/2018-docker-django-starter my_django_project
cd src
git clone https://github.com/your-django-project
```
### Make settings for your project
Open **Dockerfile** and rewrite the part of `your-django-project` for your project.
```
ADD ./src/your-django-project/requirements.txt /code/
```

Next, open **docker-compose.yml** and rewrite these part for your project.
```
      - POSTGRES_USER=your-name
      - POSTGRES_PASSWORD=your-password
```
```
      - ./src/your-django-project:/code
```

### Build

```
cd ../
docker-compose up -d
```
