cd /home/`whoami`/TPM/apps/examplewallet
clear
echo "=============";
echo "Welcome to TheProfitMachine Wallet Manager tool." 
echo "=============";
echo "What would you like to do?";
echo " (1) Check balance";
echo " (2) Deposit";
echo " (3) Withdraw";
read cho
if [ "$cho" == "1" ]; then
    echo "=============";
    echo "Your balance: `dogecoin-cli getbalance` DOGE" 
    echo "=============";
    echo "[CLICK ENTER]";
    read hmm
    bash start.sh
    exit
fi
if [ "$cho" == "2" ]; then
    echo "=============";
    echo "Deposit address: `dogecoin-cli getnewaddress`" 
    echo "=============";
    echo "[CLICK ENTER]";
    read hmm
    bash start.sh
    exit
fi
if [ "$cho" == "3" ]; then
    echo "=============";
    echo "Withdraw";
    echo "Address:";
    read address;
    echo "Amount:";
    read amount;
    tx=`dogecoin-cli sendtoaddress "$address" "$amount"`;
    echo "TXID: $tx";
    echo "TXID link: https://dogechain.info/tx/$tx"
    echo "=============";
    echo "[CLICK ENTER]";
    read hmm
    bash start.sh
fi
if [ "$cho" == "4" ]; then
    echo "=============";
    echo "Bye bye!";
    echo "=============";
    echo "[CLICK ENTER]";
    read hmm
    exit
fi
