#!/bin/bash

#a
cp passwd passwd_new
#b
awk 'BEGIN{OFS=FS=":"}$1=="saned"{$7="/usr/bash"}{print}' passwd_new > tmp && mv tmp passwd_new
#c
sed -i '/avahi/s/\/usr\/sbin\/nologin/\/bin\/bash/' passwd_new
#d
awk 'BEGIN{FS=":"; OFS=":"} {print $1,$3,$5,$7}' passwd_new > tmp && mv tmp passwd_new
#e
sed -i '/daemon/d' passwd_new


# Put you code here
