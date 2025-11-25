### Registration

Si l'information ci-dessous est vide, vous n'avez pas besoin de saisir un token pour l'enregistrement. Dans ce cas, laissez ce champ vide dans l'application android.

Le TOKEN pour s'enregistrer dans l'application Android est : __TOKEN__

(vous pouvez changer cette valeur sur la page de configuration de l'application dans le webadmin)

### Metrics

Le serveur FMD expose des métriques qui peuvent être collectées par [Prometheus](https://prometheus.io/).
Il y a aussi un [template Grafana](https://gitlab.com/fmd-foss/fmd-server/-/blob/master/grafana-template.json).
L'utilisation de localhost est intentionel pour des raisons de sécurité.
Vous avez juste besoin d'insérer dans votre fichier de configuration prometheus :
```
  # FMD - findmydevice
  - job_name: "findmydevice"
    static_configs:
      - targets: ["localhost:__PORT_PROMETHEUS__"]
        labels:
          app: "findmydevice"
```
