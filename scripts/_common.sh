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

		## Define nodejs options
			ynh_print_info "here1"
			ram_G=$((($(ynh_get_ram --free) - (1024/2))/1024))
			ynh_print_info "here2"
			ram_G=$(($ram_G > 1 ? $ram_G : 1))
			ynh_print_info "here3"
			ram_G=$(($ram_G > 8 ? 8 : $ram_G))
			ynh_print_info "here4"
			ram_G=$(($ram_G*1024))
			ynh_print_info "here5"
			export NODE_OPTIONS="${NODE_OPTIONS:-} --max_old_space_size=$ram_G"
			ynh_print_info "here6"
			export NODE_ENV=production

		## Install pnpm
			ynh_print_info "here7"
			ynh_hide_warnings npm install --global corepack@latest
			export COREPACK_ENABLE_DOWNLOAD_PROMPT=0
			export CI=1
			pnpm_version=$(cat "$install_dir/source/web/package.json" \
				| jq -r '.packageManager | split("@")[1] | split(".")[0]') #10
			ynh_hide_warnings corepack enable pnpm
			ynh_hide_warnings corepack use pnpm@latest-$pnpm_version

		## Print versions
			ynh_print_info "here8"
			echo "node version: $(node -v)"
			echo "npm version: $(npm -v)"
			echo "pnpm version: $(pnpm -v)"

		## Builing with pnpm
			ynh_print_info "here9"
			pushd "$install_dir/source/web"
				ynh_hide_warnings ynh_exec_as_app pnpm install
				ynh_hide_warnings ynh_exec_as_app pnpm build
			popd
			ynh_print_info "here10"

	# Compile the Go code into a static Go binary
		ynh_print_info "Compiling the Go code into a static Go binary..."
		pushd "$install_dir/source"
			ynh_hide_warnings ynh_exec_as_app CGO_ENABLED=1 go build -o "$install_dir/findmydevice"
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

	chmod +x "$install_dir/findmydevice"

	chown -R $app: "$data_dir"
	chmod u=rwX,g=rX,o= "$data_dir"
	chmod -R o-rwx "$data_dir"

	chown -R $app: "/var/log/$app"
	chmod u=rw,g=r,o= "/var/log/$app"
}
