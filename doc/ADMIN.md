### Registration

If the info below is empty, you don't need to fill the registration token. Leave the field blank in the android app.

The TOKEN to register in the android app is: __TOKEN__

(you can change that value in the webadmin app config view)

### Metrics

FMD Server exposes metrics that can be scraped by [Prometheus](https://prometheus.io/).
There is also a [Grafana template](https://gitlab.com/fmd-foss/fmd-server/-/blob/master/grafana-template.json).
Using localhost is intentional, for security reasons.
You just need to insert that in your prometheus config file:
```
  # FMD - findmydevice
  - job_name: "findmydevice"
    static_configs:
      - targets: ["localhost:__PORT_PROMETHEUS__"]
        labels:
          app: "findmydevice"
```
