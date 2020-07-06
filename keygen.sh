wet -ex
openssl genrsa -des3 -out domani.key 4096
openssl req   -newkey rsa:4096 -nodes -sha256 -keyout domain.key   -x509 -days 365 -out domain.crt
openssl req -new -x509 -text -key domain.key -out domain.cert
mkdir -p /etc/docker/certs.d/<server-ip od domain-name>/
cp domain.* /etc/docker/certs.d/<server-ip od domain-name>/		#replace server name or ip


