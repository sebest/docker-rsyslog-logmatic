# rsyslog-logmatic

This Docker image acts as a syslog relay to send your logs to `logmatic.io`.

## Usage

The `rsyslog-logmatic` image takes all of its configuration from environment variables.

| Name              | Description                                                                     | Requried |
|-------------------|---------------------------------------------------------------------------------|----------|
| LOGMATIC_TOKEN    | Your logmatic.io TOKEN                                                          | Yes      |
| LOGMATIC_TAGS     | Some tags to send with every message the (eg: role="web" env="prod")            | No       |
| LOGMATIC_HOSTNAME | The hostname that will be part of the syslog message, defaults to container ID. | No       |

Make sure to use double quotes around the value of the tags in LOGMATIC_TAGS.

    $ docker run -e LOGMATIC_TOKEN=XXXXX -e LOGMATIC_TAGS='role="web" env="prod"' sebest/rsyslog-logmatic
