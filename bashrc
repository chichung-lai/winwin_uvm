#!/bin/csh

setenv VCS_HOME /opt/vcs/E-2011.03 
setenv UVM_HOME ~/uvm/uvm-1.1d
setenv WORK_HOME `pwd`
setenv SIM_TOOL VCS 
set path = (/opt/vcs/E-2011.03/bin ${WORK_HOME}/bin $path)

or


export UVM_HOME=/home/user/uvm/uvm-1.1d
export WORK_HOME=/home/user/uvm/puvm
export SIM_TOOL=VCS 
#set path = (/opt/vcs/E-2011.03/bin ${WORK_HOME}/bin $path)
export PATH="${WORK_HOME}/bin:"$PATH

