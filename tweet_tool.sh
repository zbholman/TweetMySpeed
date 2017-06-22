#!/bin/bash
upload_bits_exact=$(awk -F "\"*,\"*" '{print $9}' /volume1/homes/Brian/Software/Scripts/speedtest/speeds.csv |tail -1)
download_bits_exact=$(awk -F "\"*,\"*" '{print $8}' /volume1/homes/Brian/Software/Scripts/speedtest/speeds.csv |tail -1)
upload_bits_rounded=$(printf %.0f $upload_bits_exact)
download_bits_rounded=$(printf %.0f $download_bits_exact)
upload_mbps=$(echo $upload_bits_rounded | awk '{ foo = $1 / 1024 / 1024 ; print foo " Mbps" }')
download_mbps=$(echo $download_bits_rounded | awk '{ foo = $1 / 1024 / 1024 ; print foo " Mbps" }')
twitter set Hey @verizonfios I pay for 150/150 and Im getting $download_mbps down and $upload_mbps up, Thanks Verizon!
