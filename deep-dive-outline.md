CoreDNS is a DNS server

What is Envoy?

What is Envoy's Discovery protcols?
called xDS
involved, LDS, RDS, CDS, EDS
LRS and HRS

ADS - bi-directional streaming

Why do you care?

Sketch problem? Two cluster, 1 service split between the two (independent deploys - dont really
care).

Now 2 things I want to focus on:

* Service breaks unintentially in (cluster A)
* Cluster break intentially (maintenance) (cluster B)

First case you want not to steer traffic to A, so healthchecking should spot this and allow for
traffic to be steered away.

FOr the second use case I (SRE) wants to upgrade the cluster (of course this always works fine but
Im cautious here). So want to DRAIN ALL Services from cluster B.

Why Envoy xDS

* it's a sane protocol - gRPC based.
* other are moving to it as well (gRPC)
* would be nice to have legacy client support (HTTP resolved via DNS) (CoreDNS)

Envoy xDS helps, having that data in DNS helps legacy clients (no GRPC)

Components needed - sketch this out

xds coredns
healthcheckers, admin server

Show flow of data

DEMO

1. start xds
2. show cluster with xdsctl
3. show endpoints with xdsctl
4. set drain/unddrain with listing in between
