The `icons-configmap` configmap can be generated from an `icons` directory of pngs with

    kubectl create configmap icons-configmap --dry-run=client --from-file=icons -o yaml >> icons.yaml

Run mythbackend via

    kubectl apply -f https://raw.githubusercontent.com/willat8/docker-mythtv/master/icons.yaml
    kubectl apply -f https://raw.githubusercontent.com/willat8/docker-mythtv/master/manifest.yaml

