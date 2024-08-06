# K8S Debug Toolbox
A Docker image and practices for debugging applications and clusters in Kubernetes.

# HOWTO

Pull image, or build your own.
```
docker pull --platform linux/amd64 methanal/k8s_debug_toolbox:0.3

docker build --platform linux/amd64 -f Dockerfile -t k8s_debug_toolbox:0.3 .
```

Run on K8S.
```
kubectl run toolbox-pod -n fntyn --image=k8s_debug_toolbox:0.3 --restart=Never --command -- /bin/sh -c "tail -f /dev/null"
```

Debug on K8S.
```
kubectl exec -it toolbox-pod -- /bin/bash
```

## FAQ

TBD

## Maintainers

[@methanal](https://github.com/methanal)

## Contributing

Feel free to dive in! [Open an issue](https://github.com/methanal/k8s_debug_toolbox/issues/new) or submit PRs.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/methanal/k8s_debug_toolbox/blob/main/LICENSE) file for details.
