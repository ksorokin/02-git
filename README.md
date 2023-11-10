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
