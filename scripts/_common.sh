#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

go_version="1.22"

# Fail2ban
failregex='^.*"remoteIp":"<ADDR>:?\d*".*"message":"(?:failed|blocked) login attempt".*$'

# Set permissions
myynh_set_permissions() {
	chown -R $app: "$install_dir"
	chmod u=rwX,g=rX,o= "$install_dir"
	chmod -R o-rwx "$install_dir"

	chmod +x "$install_dir/findmydevice"

	chown -R $app: "$data_dir"
	chmod u=rwX,g=rX,o= "$data_dir"
	chmod -R o-rwx "$data_dir"

	chown -R $app: "/var/log/$app"
	chmod u=rw,g=r,o= "/var/log/$app"
}
