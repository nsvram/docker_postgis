#!/bin/bash
psql postgres -c "CREATE DATABASE sample_postgis;"
psql postgres -c "\connect sample_postgis"
psql postgres -c " CREATE EXTENSION postgis;"

