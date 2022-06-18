# Basic Docker Compose for Mozilla Hubs
This repository is specifically for solving [this issue](https://github.com/mozilla/hubs/issues/5471). The discussion resulted in a solution that strangely doesn't work for me, on two separate machines.

However, I figured a Docker container would prove to be a sufficient "clean room" to remove any idiosyncrasies present in my own environments; this hunch turned out to be the case. If you have the same oddball problem as myself, hopefully this repository will save you some time.

## How to Use
Follow the steps below to start a development server in your shell:
```sh
git clone https://github.com/mozilla/hubs.git
cd hubs
git checkout hubs-cloud
git apply ../fix-5471.patch
cd -
docker-compose up
```

### Adding `hubs.local` host
You may add `hubs.local as a host in `/etc/hosts`:
```
127.0.0.1   hubs.local
```
Or via a DNS record for your local network.
