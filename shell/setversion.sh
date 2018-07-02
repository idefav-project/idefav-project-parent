#!/usr/bin/env bash
cd ..
source ~/.bash_profile
mvn versions:set -DnewVersion=1.0.0-SNAPSHOT -DprocessAllModules=true -DallowSnapshots=true