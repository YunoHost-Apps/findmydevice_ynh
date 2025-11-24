#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

# Fail2ban
failregex="(?:failed|blocked) login attempt remoteIp=<HOST> userid=.*$"

# build
myynh_build() {
	pushd "$install_dir/source"
		ynh_hide_warnings ynh_exec_as_app CGO_ENABLED=1 go build -o "$install_dir/"
	popd
	mv "$install_dir/source/web" "$install_dir"
	mv "$install_dir/source/LICENSE" "$install_dir"
	ynh_safe_rm "$install_dir/source"
}

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
