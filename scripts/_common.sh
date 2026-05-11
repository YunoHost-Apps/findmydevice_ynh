#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

# Fail2ban
failregex="(?:failed|blocked) login attempt remoteIp=<HOST> userid=.*$"

# build
myynh_build() {
	# Prepare install_dir
		chown -R $app: "$install_dir"

	# Compile the React app as a static site
		ynh_print_info "Compiling the React app as a static site..."
		pushd "$install_dir/source/web"
			ynh_hide_warnings corepack enable && corepack prepare pnpm@latest --activate
			ynh_hide_warnings ynh_exec_as_app pnpm install
			ynh_exec_as_app pnpm build 2>&1 | col -b
		popd

	# Compile the Go code of fmd-server into a static Go binary located in install_dir
		ynh_print_info "Compiling the fmd-server binary..."
		pushd "$install_dir/source"
			ynh_hide_warnings ynh_exec_as_app CGO_ENABLED=1 go build -o "$install_dir/fmd-server"
		popd

	# Compile the Go code of fmd-server-ctl into a static Go binary located in data_dir
		ynh_print_info "Compiling the fmd-server-ctl binary to help FMD Server administrators..."
		pushd "$install_dir/source/ctl"
			ynh_hide_warnings ynh_exec_as_app CGO_ENABLED=1 go build -o "$data_dir/fmd-server-ctl"
		popd

	# Move necessary files
		ynh_print_info "Setting up built files..."
		mv "$install_dir/source/web/dist" "$install_dir/web"
		mv "$install_dir/source/LICENSE" "$install_dir"

	# Cleaning
		ynh_print_info "Cleaning up..."
		ynh_safe_rm "$install_dir/.cache"
		ynh_safe_rm "$install_dir/.config"
		ynh_safe_rm "$install_dir/go"
		ynh_safe_rm "$install_dir/.go-version"
		ynh_safe_rm "$install_dir/.local"
		ynh_safe_rm "$install_dir/source"
}

# Set permissions
myynh_set_permissions() {
	chmod u=rwX,g=rX,o= "$install_dir"
	chmod -R o-rwx "$install_dir"

	chmod +x "$install_dir/fmd-server"

	chown -R $app: "$data_dir"
	chmod u=rwX,g=rX,o= "$data_dir"
	chmod -R o-rwx "$data_dir"

	chmod +x "$data_dir/fmd-server-ctl"

	chown -R $app: "/var/log/$app"
	chmod u=rw,g=r,o= "/var/log/$app"
}

# Set the system user home dir to data_dir
mynh_set_home_to_datadir() {
	usermod --home "$data_dir" "$app"
}
