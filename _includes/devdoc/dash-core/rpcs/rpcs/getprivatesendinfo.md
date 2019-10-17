{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/dash-core/rpcs/rpcs/getprivatesendinfo.md" %}

<!--__-->

##### GetPrivateSendInfo
{% include helpers/subhead-links.md %}

{% assign summary_getPrivateSendInfo="returns an object containing an information about PrivateSend settings and state." %}

{% autocrossref %}

The `getprivatesendinfo` RPC {{summary_getPrivateSendInfo}}

*Parameters: none*

*Result---(for regular nodes) information about the mixing pool*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "Information about the mixing pool"

- n: "→<br>`enabled`"
  t: "bool"
  p: "Required<br>(exactly 1)"
  d: "Whether mixing functionality is enabled"

- n: "→<br>`running`"
  t: "bool"
  p: "Required<br>(exactly 1)"
  d: "Whether mixing is currently running"

- n: "→<br>`multisession`"
  t: "bool"
  p: "Required<br>(exactly 1)"
  d: "Whether PrivateSend Multisession option is enabled"

- n: "→<br>`max_sessions`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "How many parallel mixing sessions can there be at once"

- n: "→<br>`max_rounds`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "How many rounds to mix"

- n: "→<br>`max_amount`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "How many DASH to keep anonymized"

- n: "→<br>`max_denoms`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "How many inputs of each denominated amount to create"

- n: "→<br>`queue_size`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "How many queues there are currently on the network"

- n: "→<br>`sessions`"
  t: "array of json objects"
  p: "Required<br>(exactly 1)"
  d: "Information about session(s)"

- n: "→ →<br>Session"
  t: "object"
  p: "Optional<br>(1 or more)"
  d: "Information for a session"

- n: "→ → →<br>`protxhash`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The ProTxHash of the masternode"

- n: "→ → →<br>`outpoint`"
  t: "string (txid-index)"
  p: "Required<br>(exactly 1)"
  d: "The outpoint of the masternode"

- n: "→ → →<br>`service`"
  t: "string (host:port)"
  p: "Required<br>(exactly 1)"
  d: "The IP address and port of the masternode"

- n: "→ → →<br>`denomination`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The denomination of the mixing session in DASH"

- n: "→ → →<br>`state`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Current state of the mixing session"

- n: "→ → →<br>`entries_count`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The number of entries in the mixing session"

- n: "→<br>`keys_left`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "How many new keys are left since last automatic backup"

- n: "→<br>`warnings`"
  t: "string"
  p: "Optional<br>(exactly 1)"
  d: "Any warnings"
{% enditemplate %}

*Result---(for masternodes) information about the mixing pool*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "Information about the mixing pool"

- n: "→<br>`queue_size`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "How many queues there are currently on the network"

- n: "→<br>`denomination`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The denomination of the mixing session in DASH"

- n: "→<br>`state`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Current state of the mixing session"

- n: "→<br>`entries_count`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The number of entries in the mixing session"

{% enditemplate %}


*Example from Dash Core 0.14.1 (regular node)*

{% highlight bash %}
dash-cli -testnet getprivatesendinfo
{% endhighlight %}

Result:
{% highlight json %}
{
  "enabled": true,
  "running": true,
  "multisession": true,
  "max_sessions": 4,
  "max_rounds": 4,
  "max_amount": 2000,
  "max_denoms": 300,
  "queue_size": 2,
  "sessions": [
    {
      "denomination": 0.00000000,
      "state": "ERROR",
      "entries_count": 0
    },
    {
      "protxhash": "7d336336b7e8910f518b2b270c6d72a2d7fc05aec3c6720108da80805ffc3aab",
      "outpoint": "7d336336b7e8910f518b2b270c6d72a2d7fc05aec3c6720108da80805ffc3aab-1",
      "service": "34.241.93.160:26039",
      "denomination": 0.10000100,
      "state": "QUEUE",
      "entries_count": 0
    },
    {
      "protxhash": "11eabc1e72394af02bbe86815975d054816fe69006fdc64c6d7a06b585e5c311",
      "outpoint": "ee7741bac62cb468c09c00e7a78148064db9da781d183a8f23c7beef9ed569d6-0",
      "service": "95.183.53.17:10004",
      "denomination": 10.00010000,
      "state": "QUEUE",
      "entries_count": 0
    }
  ],
  "keys_left": 996,
  "warnings": ""
}
{% endhighlight %}

*See also: none*

{% endautocrossref %}
