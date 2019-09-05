TB=andy-testbed1
CORE=$TB-core-dev-noc0

# run setup script
ssh $CORE "git clone git@github.com:andyz-rafay/operator-demo.git && operator-demo/core/setup.sh"
