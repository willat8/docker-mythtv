Run mariadb via

    helm install mariadb bitnami/mariadb --set image.tag=10.3.31-debian-10-r49 --set primary.persistence.existingClaim=example-pvc --set auth.rootPassword=root

> &#x26a0;&#xfe0f; **The included `docker-compose.yml` is intended for use with RancherOS only**

Run `mythtv-setup` in an `ssh -X` session with

    docker run --rm \
               --entrypoint=mythtv-setup \
               -v mythtvconfig:/etc/mythtv \
               -v mythtvhome:/root/.mythtv \
               --name mythtv \
               --volumes-from mariadb \
               --volumes-from shepherd:ro \
               --net=host \
               -v /tmp/.X11-unix:/tmp/.X11-unix \
               -v /home/will/.Xauthority:/root/.Xauthority \
               -v /mnt/mythtvdisk:/mnt/storage \
               -e DISPLAY=$DISPLAY \
      willat8/mythtv:20210829

Run `mythbackend` with

    docker run -d \
               --restart=always \
               -v mythtvconfig:/etc/mythtv \
               -v mythtvhome:/root/.mythtv \
               --name mythtv \
               --volumes-from mariadb \
               --volumes-from shepherd:ro \
               --net=host \
               -v /mnt/mythtvdisk:/mnt/storage \
      willat8/mythtv:20210829

