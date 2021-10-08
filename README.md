Run mythbackend via

    kubectl apply -f https://bitbucket.org/willat8/docker-mythtv/raw/master/manifest.yaml

Then run mariadb via

    helm repo add bitnami https://charts.bitnami.com/bitnami
    helm install mariadb bitnami/mariadb --set image.tag=10.3.31-debian-10-r49 --set primary.persistence.existingClaim=mariadb-pv-claim --set auth.rootPassword=root

