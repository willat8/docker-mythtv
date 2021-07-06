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
               -v /mnt/mythtvzpool:/mnt/storage \
               -e DISPLAY=$DISPLAY \
      willat8/mythtv:20210706

Run `mythbackend` with

    docker run -d \
               --restart=always \
               -v mythtvconfig:/etc/mythtv \
               -v mythtvhome:/root/.mythtv \
               --name mythtv \
               --volumes-from mariadb \
               --volumes-from shepherd:ro \
               --net=host \
               -v /mnt/mythtvzpool:/mnt/storage \
      willat8/mythtv:20210706

