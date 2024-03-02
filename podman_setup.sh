git init
git switch -c devel
systemctl enable --now podman.socket --user
export DEV_DOCKER_OWNER=mutl3y
export RECEPTOR_IMAGE=quay.io/mutl3y/receptor:devel
export DOCKER_HOST=unix:///run/user/1000/podman/podman.sock
make docker-clean
make podman-compose-build && make podman-compose


