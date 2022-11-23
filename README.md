### vpn-proxy-docker
Use nginx as proxy to access restricted network area which should connect by vpn

1. Copy & Set your [vpn-config](https://github.com/adrienverge/openfortivpn)
```
cp ./example/vpn-config.example ./config/vpn-config
```
2. Copy & Set your [nginx proxy config](https://docs.nginx.com/nginx/admin-guide/web-server/reverse-proxy/)
```
cp ./example/proxy.conf.example ./config/proxy.conf
```
3. Run Container
```
docker-compose up -d
```