TB=andy-testbed1
CORE=$TB-core-dev-node-0

# run setup script
ssh $CORE "git clone git@github.com:andyz-rafay/operator-demo.git && operator-demo/core/setup.sh"
