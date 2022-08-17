<h2 align="center">
<img src="https://github.com/GLEF1X/glQiwiApi/blob/dev-2.x/docs/_static/logo.png?raw=true" width="200"/>

Simple and performant proxy server to enrich request with `Referer` header.
</h2>

### Usage

You can
use [already deployed on `AWS Beanstalk` service](http://referrerproxy-env.eba-cxcmwwm7.us-east-1.elasticbeanstalk.com/proxy/p2p/)
or deploy it manually using docker. It can handle more than 50k+ requests per second.

#### Endpoints

| Path                  |        Params        |                                  Response |
|-------------------------|:--------------------:|------------------------------------------:|
| /proxy/p2p/{identifier} | identifier: bill uid | Redirect to  https://oplata.qiwi.com/form |
| /healthcheck            |          -           |            HTTP 200 json {"status": "ok"} |



### Deploy manually using docker

Pull image:

```bash
docker pull ghcr.io/glef1x/glqiwiapi-proxy:latest
```

Run docker container:

```bash
docker run -p 80:80 -e NGINX_ENVSUBST_OUTPUT_DIR=/etc/nginx -e DOMAIN_NAME=yourdomain.com ghcr.io/glef1x/glqiwiapi-proxy:latest
```
