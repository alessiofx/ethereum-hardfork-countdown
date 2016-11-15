#!/bin/sh

foo=$(curl -Ss 'https://etherchain.org/api/blocks/count' | jq '.data[0].count')
block= expr 2675000 - $foo
echo $block


#expr 2675000 - $(curl -Ss 'https://etherchain.org/api/blocks/count' | jq '.data[0].count')



#expr 2675000 - $(curl -Ss 'https://etherchain.org/api/blocks/count' | /usr/local/Cellar/jq/1.5_2/bin/jq '.data[0].count')

