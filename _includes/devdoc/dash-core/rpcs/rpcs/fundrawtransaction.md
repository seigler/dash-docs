﻿{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/dash-core/rpcs/rpcs/fundrawtransaction.md" %}

##### FundRawTransaction
{% include helpers/subhead-links.md %}

<!-- __ -->

{% assign summary_fundRawTransaction="adds inputs to a transaction until it has enough in value to meet its out value." %}

{% autocrossref %}

*Requires wallet support.*

The `fundrawtransaction` RPC {{summary_fundRawTransaction}}  This will not modify existing inputs, and will add one change output to the outputs.
Note that inputs which were signed may need to be resigned after completion since in/outputs have been added.  The inputs added will not be signed, use signrawtransaction for that.
All existing inputs must have their previous output transaction be in the wallet.

*Parameter #1---The hex string of the raw transaction*

{% itemplate ntpd1 %}
- n: "Hexstring"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The hex string of the raw transaction"

{% enditemplate %}

*Parameter #2---Additional options*

Note: For backwards compatibility, passing in a `true` instead of an object will result in {\"includeWatching\":true}\n"

{% itemplate ntpd1 %}
- n: "Options"
  t: "Object"
  p: "Optional<br>(0 or 1)"
  d: "*Added in Bitcoin Core 0.13.0*<br><br>Additional options"

- n: "→ <br>`changeAddress`"
  t: "string"
  p: "Optional<br>(0 or 1)"
  d: "The bitcoin address to receive the change. If not set, the address is chosen from address pool"

- n: "→ <br>`changePosition`"
  t: "nummeric (int)"
  p: "Optional<br>(0 or 1)"
  d: "The index of the change output. If not set, the change position is randomly chosen"

- n: "`includeWatching`"
  t: "bool"
  p: "Optional<br>(0 or 1)"
  d: "Inputs from watch-only addresses are also considered. The default is `false`"

- n: "→ <br>`lockUnspent`"
  t: "bool"
  p: "Optional<br>(0 or 1)"
  d: "The selected outputs are locked after running the rpc call. The default is `false`"

- n: "→ <br>`reserveChangeKey`"
  t: "bool"
  p: "Optional<br>(0 or 1)"
  d: "*Deprecated and ignored in Dash Core 0.14.1*<br><br>Reserves the change output key from the keypool. The default is `true`. Before Bitcoin Core 0.14.0, the used keypool key was never marked as change-address key and directly returned to the keypool (leading to address reuse)."  

- n: "→ <br>`feeRate`"
  t: "numeric (bitcoins)"
  p: "Optional<br>(0 or 1)"
  d: "The specific feerate  you are willing to pay(BTC per KB). If not set, the wallet determines the fee"

- n: "→ <br>`subtractFeeFromOutputs`"
  t: "array"
  p: "Optional<br>(0 or 1)"
  d: "A json array of integers. The fee will be equally deducted from the amount of each specified output. The outputs are specified by their zero-based index, before any change output is added."

- n: "→ →<br>Output index"
  t: numeric (int)
  p: Optional<br>(0 or more)
  d: "A output index number (vout) from which the fee should be subtracted.
  If multiple vouts are provided, the total fee will be divided by the
  numer of vouts listed and each vout will have that amount subtracted
  from it"

{% enditemplate %}

*Result---information about the created transaction*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "An object including information about the created transaction"

- n: "→ <br>hex"
  t: "string (hex)"
  p: "Required<br>(Exactly 1)"
  d: "The resulting unsigned raw transaction in serialized transaction format encoded as hex"

- n: "→ <br>fee"
  t: "numeric (bitcoins)"
  p: "Required<br>(Exactly 1)"
  d: "Fee in BTC the resulting transaction pays"

- n: "→ <br>changepos"
  t: "numeric (int)"
  p: "Required<br>(Exactly 1)"
  d: "The position of the added change output, or `-1` if no change output was added"

{% enditemplate %}

*Example from Dash Core 0.12.2*

{% highlight bash %}
dash-cli -testnet fundrawtransaction 01000000000100205fa012000000\
1976a914485485425fa99504ec1638ac4213f3cfc9f32ef388ac00000000

{% comment %}
KEPT IN CASE DASH IMPLEMENTS ADDITIONAL OPTIONS

  bitcoin-cli -testnet fundrawtransaction 01000000011da9283b4ddf8d\
  89eb996988b89ead56cecdc44041ab38bf787f1206cd90b51e0000000000ffff\
  ffff01405dc600000000001976a9140dfc8bafc8419853b34d5e072ad37d1a51\
  59f58488ac00000000
  '{
      "changeAddress": "15gJiApWFGTN2iTteQwQbqasdT6dwGWwv6",
      "changePosition" : 1,
      "includeWatching" : false,
      "lockUnspents" : true,
      "feeRate" : 0.0001
  }'
{% endcomment %}
{% endhighlight %}

Result:

{% highlight text %}
{
  "hex": "01000000016b490886c0198b028c6c5cb145c4eb3b1055a224a7a105aadeff41b69ec91e060100000000feffffff023e1207bf010000001976a914bd652a167e7ad674f7815dc549bea9c57a7f919b88ac00205fa0120000001976a914485485425fa99504ec1638ac4213f3cfc9f32ef388ac00000000",
  "changepos": 0,
  "fee": 0.00000226
}
{% endhighlight %}

*See also*

* [CreateRawTransaction][rpc createrawtransaction]: {{summary_createRawTransaction}}
* [DecodeRawTransaction][rpc decoderawtransaction]: {{summary_decodeRawTransaction}}
* [SignRawTransaction][rpc signrawtransaction]: {{summary_signRawTransaction}}
* [SendRawTransaction][rpc sendrawtransaction]: {{summary_sendRawTransaction}}
* [Serialized Transaction Format][raw transaction format]

{% endautocrossref %}
