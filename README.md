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
               -v /mnt:/mnt/storage \
               -e DISPLAY=$DISPLAY \
      willat8/mythtv:20190424

Run `mythbackend` with

    docker run -d \
               --restart=always \
               -v mythtvconfig:/etc/mythtv \
               -v mythtvhome:/root/.mythtv \
               --name mythtv \
               --volumes-from mariadb \
               --volumes-from shepherd:ro \
               --net=host \
               -v /mnt:/mnt/storage \
      willat8/mythtv:20190424

