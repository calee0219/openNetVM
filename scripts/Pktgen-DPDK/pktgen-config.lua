-- BSD LICENSE

-- Copyright(c) 2015 George Washington University
-- All rights reserved.

-- Redistribution and use in source and binary forms, with or without
-- modification, are permitted provided that the following conditions
-- are met:

-- Redistributions of source code must retain the above copyright
-- notice, this list of conditions and the following disclaimer.
-- Redistributions in binary form must reproduce the above copyright
-- notice, this list of conditions and the following disclaimer in
-- the documentation and/or other materials provided with the
-- distribution.
-- Neither the name of Intel Corporation nor the names of its
-- contributors may be used to endorse or promote products derived
-- from this software without specific prior written permission.

-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
-- OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
-- LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
-- DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
-- THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
-- (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
-- OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

-- Change any of the settings below to configure Pktgen-DPDK

pktgen.set_mac("0", "68:05:ca:30:52:f4"); -- set_mac is destination mac
pktgen.set_ipaddr("0", "dst", "11.10.1.33"); -- set_ipaddr is destination ip
pktgen.set_ipaddr("0", "src", "11.10.1.1/24"); -- set_ipaddr is source ip range

-- applied to all configurations
pktgen.set_proto("all", "tcp");
pktgen.set_type("all", "ipv4");

pktgen.set("all", "size", 1000);
pktgen.set("all", "sport", 5678);
pktgen.set("all", "dport", 1234);

pktgen.set("all", "rate",100);

pktgen.vlan_id("all", 5);
