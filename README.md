# devops-course 02-git

Simple telegram bot implementation based on go.

* Bot name: https://t.me/DevOps_Course_Telebot
* Supported commands:
    * `/start hello` reply with a bot handler in the format `Hello I'm kbot $KBOT_VERSION!`

## Usage

* Clone repo
* Run `go get`
* Set variable `TELE_TOKEN` with the bot API token
* Compile: `go build -ldflags "-X="github.com/ksorokin/02-git/cmd.appVersion=v$KBOT_VERSION`
* Start bot `./02-git start`

# K8s

## Yaml prompts

| NAME                    | PROMPT                                                                               | DESCRIPTION                                                                     | EXAMPLE                              |
|-------------------------|--------------------------------------------------------------------------------------|---------------------------------------------------------------------------------|--------------------------------------|
| app-cronjob.yaml        | Create a YAML file defining a scheduled task using Kubernetes CronJob.               | Defines a Kubernetes CronJob that runs a scheduled task at specified intervals. | [Link](yaml/app-cronjob.yaml)        |
| app-job.yaml            | Compose a YAML file describing a one-time execution job in Kubernetes.               | Describes a Kubernetes Job for executing a task once and then terminating.      | [Link](yaml/app-job.yaml)            |
| app-livenessProbe.yaml  | Generate a YAML file for a Kubernetes Pod with a liveness probe configured.          | Creates a Kubernetes Pod with a liveness probe checking the health of the app.  | [Link](yaml/app-livenessProbe.yaml)  |
| app-multicontainer.yaml | Craft a YAML file for a Kubernetes Pod featuring multiple containers.                | Defines a Kubernetes Pod with more than one container running within the pod.   | [Link](yaml/app-multicontainer.yaml) |
| app-readinessProbe.yaml | Produce a YAML file for a Kubernetes Pod with a readiness probe defined.             | Defines a Kubernetes Pod with a readiness probe to indicate when it's ready.    | [Link](yaml/app-readinessProbe.yaml) |
| app-resources.yaml      | Develop a YAML file for a Kubernetes Pod specifying resource requests and limits.    | Specifies resource requests and limits for a Kubernetes Pod.                    | [Link](yaml/app-resources.yaml)      |
| app-secret-env.yaml     | Generate a YAML file for a Kubernetes Pod using environment variables from a secret. | Configures a Kubernetes Pod to use environment variables from a secret.         | [Link](yaml/app-secret-env.yaml)     |
| app-volumeMounts.yaml   | Create a YAML file for a Kubernetes Pod incorporating volume mounts.                 | Defines a Kubernetes Pod with volume mounts to share data between containers.   | [Link](yaml/app-volumeMounts.yaml)   |
| app.yaml                | Generate a basic YAML file for a Kubernetes Pod.                                     | Creates a simple Kubernetes Pod without any specific features or probes.        | [Link](yaml/app.yaml)                |

