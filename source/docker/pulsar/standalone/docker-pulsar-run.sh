# docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
docker run \
  --name standalone.pulsar.codepasser.io \
  --network codepasser_overlay \
  --restart=always \
  -p 6650:6650 \
  -p 8080:8080 \
  -e PULSAR_PREFIX_advertisedAddress=standalone.pulsar.codepasser.io \
  -e PULSAR_PREFIX_authenticationEnabled=true \
  -e PULSAR_PREFIX_authenticationProviders=org.apache.pulsar.broker.authentication.AuthenticationProviderToken \
  -e PULSAR_PREFIX_authorizationEnabled=true \
  -e PULSAR_PREFIX_superUserRoles=admin \
  -e PULSAR_PREFIX_brokerClientAuthenticationPlugin=org.apache.pulsar.client.impl.auth.AuthenticationToken \
  -e PULSAR_PREFIX_brokerClientAuthenticationParameters={"token":"eyJhbGciOiJSUzI1NiJ9.eyJzdWIiOiJhZG1pbiJ9.kT1Jf6R_OBPvVE4chKa4wnN8vURQ9pVT2SIHBBVYmnQMfVUOntRq0eT2DqXtHhh6PKvtQ1v_35Hoo1yiN-Y-i8U3ZFyrlbcQvqIIfI7IDKa58IP-eti3gE2sK6J__qeZFz5Khl8-Dc6MJj6NIC3fcFJZguRa7fPwcdkJ2i6X0hZOmp93QV6WnveuhJrJrBMopHsgG9VCOPGXSzPawfYbzfYcaKTQkD_fL0bKS760Lb_rBPDvyS7jhuE3AS3BhkyPiOfANjleQKG5yautwR4OfGqrXFZvNP0IxF5HrSmrtqJ2UN67jSiZL-n_Yyz0cECsnxKp-6QZI59ox4sST-gMVg"} \
  -e PULSAR_PREFIX_tokenPublicKey=/pulsar/conf/jwt-public.key \
  -v standalone.pulsar.codepasser.io:/pulsar/conf \
  -v standalone.pulsar.codepasser.io:/pulsar/data \
  -d codepasser/pulsar sh -c "bin/apply-config-from-env.py conf/standalone.conf && bin/pulsar standalone"
