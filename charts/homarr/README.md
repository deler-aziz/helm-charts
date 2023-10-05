

# 🦞 Homarr

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.13.4](https://img.shields.io/badge/AppVersion-0.13.4-informational?style=flat-square)

![Banner](https://github.com/ajnart/homarr/raw/dev/docs/banner.png)

Simplify the management of your server with Homarr - a sleek, modern dashboard that puts all of your apps and services at your fingertips. With Homarr, you can access and control everything in one convenient location. Homarr seamlessly integrates with the apps you've added, providing you with valuable information and giving you complete control. Installation is a breeze, and Homarr supports a wide range of deployment methods.

*The above banner image and text are copied from [ajnart/homarr](https://github.com/ajnart/homarr)*

## 🚀 Usage
1. Add my Helm repository
```
helm repo add deler https://helm.deler.dev
```
2. update information of available charts
```
helm repo update
```
3. Install the chart
```
helm install my-release deler/homarr
```

## 📄 Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
  |[homarr.affinity](./values.yaml#L41)| object |`{}`| affinity config. |
  |[homarr.annotations](./values.yaml#L13)| object |`{}`| Pod annotations config. |
  |[homarr.extraEnv](./values.yaml#L29)| list |`[]`| Extra environment variables for homarr. |
  |[homarr.image](./values.yaml#L16)| object |See [values.yaml](https://github.com/deler-aziz/helm-charts/blob/main/charts/homarr/values.yaml#L16)| Homarr image config. |
  |[homarr.image.imagePullPolicy](./values.yaml#L24)| string |`"IfNotPresent"`| Image pull policy. |
  |[homarr.image.imagePullSecrets](./values.yaml#L22)| string |`nil`| Image pull secrets. |
  |[homarr.image.port](./values.yaml#L26)| int |`7575`| Container port. It must be higher than 1042.  |
  |[homarr.image.repository](./values.yaml#L18)| string |`"ghcr.io/ajnart/homarr"`| Image repo. |
  |[homarr.image.tag](./values.yaml#L20)| string |`nil`| Image tag. If not set the value will be chart appVersion value. |
  |[homarr.nodeSelector](./values.yaml#L37)| object |`{}`| nodeSelector config. |
  |[homarr.persistence](./values.yaml#L59)| object |See [values.yaml](https://github.com/deler-aziz/helm-charts/blob/main/charts/homarr/values.yaml#L59)| Configs data persistence config. |
  |[homarr.persistence.accessMode](./values.yaml#L63)| string |`"ReadWriteMany"`| PVC access mode. |
  |[homarr.persistence.enabled](./values.yaml#L61)| bool |`false`| If enabled create pvc volume to the pod. Otherwise attach emptyDir. |
  |[homarr.persistence.size](./values.yaml#L65)| string |`"1Gi"`| PVC size. |
  |[homarr.persistence.storageClass](./values.yaml#L67)| string |`""`| PVC storage class. |
  |[homarr.replicas](./values.yaml#L11)| int |`1`| Number of replicas. |
  |[homarr.resources](./values.yaml#L35)| object |`{}`| The resource settings for homarr pod. |
  |[homarr.securityContext](./values.yaml#L45)| object |See [values.yaml](https://github.com/deler-aziz/helm-charts/blob/main/charts/homarr/values.yaml#L45)| Container Security Context. |
  |[homarr.tolerations](./values.yaml#L39)| list |`[]`| tolerations config. |
  |[ingress](./values.yaml#L85)| object |See [values.yaml](https://github.com/deler-aziz/helm-charts/blob/main/charts/homarr/values.yaml#L85)| Homarr ingress config. |
  |[ingress.annotations](./values.yaml#L89)| object |`{}`| Ingress annotations. |
  |[ingress.className](./values.yaml#L91)| string |`nil`| Ingress class name. |
  |[ingress.enabled](./values.yaml#L87)| bool |`false`| If enabled create k8s ingress for homarr. |
  |[ingress.host](./values.yaml#L93)| string |`"homarr.home.local"`| Ingress host. |
  |[ingress.path](./values.yaml#L95)| string |`"/"`| Ingress path. |
  |[ingress.pathType](./values.yaml#L97)| string |`"Prefix"`| Ingress path type. |
  |[ingress.tls](./values.yaml#L99)| object |`{}`| Ingress tls config. |
  |[securityContext](./values.yaml#L3)| object |See [values.yaml](https://github.com/deler-aziz/helm-charts/blob/main/charts/homarr/values.yaml#L3)| Pod Security Context. |
  |[service](./values.yaml#L71)| object |See [values.yaml](https://github.com/deler-aziz/helm-charts/blob/main/charts/homarr/values.yaml#L71)| Homarr service config. |
  |[service.annotations](./values.yaml#L75)| object |`{}`| Service annotations. |
  |[service.enabled](./values.yaml#L73)| bool |`true`| If enabled create k8s service for homarr. |
  |[service.nodePort](./values.yaml#L81)| string |`nil`| Service node port (Used if service type is NodePort). |
  |[service.port](./values.yaml#L79)| int |`80`| Service port. |
  |[service.type](./values.yaml#L77)| string |`"ClusterIP"`| Service type. |

