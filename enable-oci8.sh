#!/bin/bash

docker exec -it dockermpdev2_app_1 /opt/lampp/xampp oci8
docker exec -it dockermpdev2_app_1 /opt/lampp/xampp restart
