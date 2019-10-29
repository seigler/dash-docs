#!/usr/bin/env bash

echo "# Addressindex RPCs" >> combinedRPCs.md
echo >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getaddressbalance.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getaddressdeltas.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getaddressmempool.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getaddresstxids.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getaddressutxos.md >> combinedRPCs.md
echo >> combinedRPCs.md
echo "# Block Chain RPCs" >> combinedRPCs.md
echo >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getbestblockhash.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getbestchainlock.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getblock.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getblockchaininfo.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getblockcount.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getblockhash.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getblockhashes.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getblockheader.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getblockheaders.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getblockstats.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getchaintips.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getchaintxstats.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getdifficulty.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getmempoolancestors.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getmempooldescendants.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getmempoolentry.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getmempoolinfo.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getrawmempool.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getmerkleblocks.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getspecialtxes.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getspentinfo.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/gettxout.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/gettxoutproof.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/gettxoutsetinfo.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/preciousblock.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/pruneblockchain.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/verifychain.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/verifytxoutproof.md >> combinedRPCs.md
echo >> combinedRPCs.md
echo "# Control RPCs" >> combinedRPCs.md
echo >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/debug.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getinfo.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getmemoryinfo.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/help.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/logging.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/stop.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/uptime.md >> combinedRPCs.md
echo >> combinedRPCs.md
echo "# Dash RPCs" >> combinedRPCs.md
echo >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getgovernanceinfo.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getpoolinfo.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getsuperblockbudget.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/gobject.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/masternode.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/masternodelist.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/mnsync.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/privatesend.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/spork.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/voteraw.md >> combinedRPCs.md
echo >> combinedRPCs.md
echo "# Evolution RPCs" >> combinedRPCs.md
echo >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/bls.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/protx.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/quorum.md >> combinedRPCs.md
echo >> combinedRPCs.md
echo "# Generating RPCs" >> combinedRPCs.md
echo >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/generate.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/generatetoaddress.md >> combinedRPCs.md
echo >> combinedRPCs.md
echo "# Mining RPCs" >> combinedRPCs.md
echo >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getblocktemplate.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getmininginfo.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getnetworkhashps.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/prioritisetransaction.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/submitblock.md >> combinedRPCs.md
echo >> combinedRPCs.md
echo "# Network RPCs" >> combinedRPCs.md
echo >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/addnode.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/clearbanned.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/disconnectnode.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getaddednodeinfo.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getconnectioncount.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getnettotals.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getnetworkinfo.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getpeerinfo.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/listbanned.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/ping.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/setban.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/setnetworkactive.md >> combinedRPCs.md
echo >> combinedRPCs.md
echo "# Raw Transaction RPCs" >> combinedRPCs.md
echo >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/combinerawtransaction.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/createrawtransaction.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/decoderawtransaction.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/decodescript.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/fundrawtransaction.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getrawtransaction.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/sendrawtransaction.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/signrawtransaction.md >> combinedRPCs.md
echo >> combinedRPCs.md
echo "# Utility RPCs" >> combinedRPCs.md
echo >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/createmultisig.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/estimatefee.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/estimatesmartfee.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/signmessagewithprivkey.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/validateaddress.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/verifymessage.md >> combinedRPCs.md
echo >> combinedRPCs.md
echo "# Wallet RPCs" >> combinedRPCs.md
echo >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/abandontransaction.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/abortrescan.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/addmultisigaddress.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/backupwallet.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/dumphdinfo.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/dumpprivkey.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/dumpwallet.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/encryptwallet.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getaccount.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getaccountaddress.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getaddressesbyaccount.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getbalance.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getnewaddress.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getrawchangeaddress.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getreceivedbyaccount.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getreceivedbyaddress.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/gettransaction.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getunconfirmedbalance.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getwalletinfo.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/importaddress.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/importelectrumwallet.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/importmulti.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/importprivkey.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/importprunedfunds.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/importpubkey.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/importwallet.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/keepass.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/keypoolrefill.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/listaccounts.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/listaddressbalances.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/listaddressgroupings.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/listlockunspent.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/listreceivedbyaccount.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/listreceivedbyaddress.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/listsinceblock.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/listtransactions.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/listunspent.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/listwallets.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/lockunspent.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/move.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/removeprunedfunds.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/sendfrom.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/sendmany.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/sendtoaddress.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/setaccount.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/setprivatesendamount.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/setprivatesendrounds.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/settxfee.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/signmessage.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/walletlock.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/walletpassphrase.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/walletpassphrasechange.md >> combinedRPCs.md
echo >> combinedRPCs.md
echo "# Removed RPCs" >> combinedRPCs.md
echo >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/estimatepriority.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/estimatesmartpriority.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/gethashespersec.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getwork.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/getgenerate.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/masternodebroadcast.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/sentinelping.md >> combinedRPCs.md
cat ./_includes/devdoc/dash-core/rpcs/rpcs/setgenerate.md >> combinedRPCs.md
