# Angular with Docker 
v.11.2.7.
Run `ng serve` 
Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for a production build.

## components
-desde carpeta front
$ ng g m shared/components/header
$ ng g c shared/components/header
$ ng g m components/pages/home/home -m=app --route home --flat
$ ng g m components/pages/notFound -m=app --route notFound
$ ng add @angular/material
$ ng generate module material

## docker
$ docker network create angular-db-mn-networks
$ docker-compose up
http://localhost:4000/
