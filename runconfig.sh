#!/bin/bash

postconf -e "inet_interfaces=all"
postconf -e "mynetworks=0.0.0.0/0"
postfix start

exec "/bin/bash"