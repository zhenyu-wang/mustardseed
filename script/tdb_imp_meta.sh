#! /bin/bash

source ~/.bash_profile

impdp \'/ as sysdba\' parfile=/oradata/dmp/imp_meta.par
