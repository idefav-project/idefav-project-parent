#!/usr/bin/env bash
source ~/.bash_profile
cd ..
mvn versions:set -DprocessAllModules=true -DremoveSnapshot=true

mvn clean package -DskipTests -U

mvn versions:set -DprocessAllModules=true -DnextSnapshot=true -DallowSnapshots=true

mvn clean install -DskipTests -U

mvn versions:commit