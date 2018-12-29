#! /bin/bash

source ~/.bash_profile

expdp \'/ as sysdba\' parfile=/oradata/dmp/exp.meta.par

scp -P 22 /oradata/dmp/meta.dmp 22.22.22.22:/oradata/dmp
