#!/bin/bash

docker exec -it mp_sistemas_app /opt/lampp/xampp oci8
docker exec -it mp_sistemas_app /opt/lampp/xampp restart
