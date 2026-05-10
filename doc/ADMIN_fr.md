### Enregistrement

Si l'information ci-dessous est vide, vous n'avez pas besoin de saisir un token pour l'enregistrement. Dans ce cas, laissez ce champ vide dans l'application android.

Le TOKEN pour s'enregistrer dans l'application Android est : __TOKEN__

(vous pouvez changer cette valeur sur la page de configuration de l'application dans le webadmin)

### Indicateurs

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

### Utilisation du binaire fmd-server-ctl pour aider les administrateurs du serveur FMD

Le binaire `fmd-server-ctl` a pour but d'aider les admins à identifier d'anciens comptes ou comptes inutilisés et d'enventuellement les supprimer.
Pour l'utiliser, il suffit d'exécuter dans un terminal :
```
yunohost app shell __APP__
./fmd-server-ctl --help
```
