#! /bin/bash
oldprice=$'0'
while true; do
    newprice=$(curl -s -X GET https://api.coinmarketcap.com/v1/ticker/ethereum/ | sed -n 7p | sed -r 's/^.{22}//;s/.{3}$//')
    if [[ "$oldprice" > "$newprice" ]];
    then
        echo -e "ˬ$newpriceˬ"
    fi
    if [[ "$oldprice" < "$newprice" ]];
    then
        echo -e "˄$newprice˄"
    fi
    if [[ "$oldprice" = "$newprice" ]];
    then
        echo -e "$newprice"
    fi
    oldprice=$(curl -s -X GET https://api.coinmarketcap.com/v1/ticker/ethereum/ | sed -n 7p | sed -r 's/^.{22}//;s/.{3}$//')
    sleep 300
done
