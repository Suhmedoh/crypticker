#!/bin/bash
oldprice=$'0'
while true; do
    price=($(curl -s -X GET https://api.coinmarketcap.com/v1/ticker/ethereum/ | jq -r '.[] | .price_usd, .percent_change_1h'))
    newprice=${price[0]}
    newchange=${price[1]}
    echo -e "$newprice $newchange"
    if [ $(( $(bc <<< "${newchange} < 0") )) == 1 ]; then echo -e " %{F#b30000} ░▒▓█${newprice}█▓▒░ %{F-} "; fi
    if [ $(( $(bc <<< "${newchange} > 0") )) == 1 ]; then echo -e " %{F#248f24} ░▒▓█${newprice}█▓▒░%{F-} "; fi
    oldprice=$newprice
    oldchange=$newchange
    sleep 360
done
