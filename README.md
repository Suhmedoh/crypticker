# crypticker
a statusbar-usable ticker for cryptocurrencies

# current state
pulls in data for eth price based on gdax current price every minute and displays on single line

# goals
have a small, lightweight CLI tool which will pull prices of cryptocurrencies

integrate easily with lemonbar/pybar/ whatever's the current cool bar in the rice world

track up and down movements(green if price is higher than past hour average, red if worse, something like that)

give option to take multiple currencies

make output scroll across predefined horizontal size (like an actual stock ticker)

currently using cryptocheck(https://github.com/kaplanmaxe/cryptocheck) to pull in the data

`git clone
npm install
node index.js
`
