DIR=`dirname "$0"`
. $DIR/def.sh

# run setup script
ssh $CORE "git clone https://github.com/andyz-rafay/operator-demo.git && operator-demo/core/setup.sh"
