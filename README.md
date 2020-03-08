# firefox-docker

[![Support with PayPal](https://img.shields.io/badge/paypal-donate-yellow.png)](https://paypal.me/zacanger) [![Patreon](https://img.shields.io/badge/patreon-donate-yellow.svg)](https://www.patreon.com/zacanger) [![ko-fi](https://img.shields.io/badge/donate-KoFi-yellow.svg)](https://ko-fi.com/U7U2110VB)

--------

## Usage:

```shell
docker run --env="DISPLAY" -v /tmp/.X11-unix:/tmp/.x11-unix net=host zacanger/firefox
```

You may need to run `xhost +` if you get a message like `Cannot open display: :0`

[LICENSE](./LICENSE.md)
