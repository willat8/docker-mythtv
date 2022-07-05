The `icons-configmap` configmap can be generated from an `icons` directory of pngs with

    kubectl create configmap icons-configmap --dry-run=client --from-file=icons -o yaml >> icons.yaml

Run mythbackend via

    kubectl apply -f https://raw.githubusercontent.com/willat8/docker-mythtv/master/icons.yaml
    kubectl apply -f https://raw.githubusercontent.com/willat8/docker-mythtv/master/manifest.yaml

Then run mariadb via

    helm repo add bitnami https://charts.bitnami.com/bitnami
    helm install mariadb bitnami/mariadb --set image.tag=10.3.31-debian-10-r49 --set primary.persistence.existingClaim=mariadb-pv-claim --set auth.rootPassword=root

