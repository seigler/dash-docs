#!/usr/bin/env bash

# To use this script, pipe the contents of a MD file into it.
# It will output that content reformatted for Readme.

# Examples:
# Reformat the contents of the clipboard
# xclip -o | ./pipe-convert-for-readme | xclip -selection clipboard
#
# Reformat a file and write it to a new file
# cat ../_includes/devdoc/guide_block_chain.md | ./pipe-convert-for-readme > ../_readme/guide_block_chain.md

perl -0 \
-pe "s/<!--.+?-->//gs;" \
-pe "s/\{% comment %\}.+?{% endcomment %\}//gs;" \
-pe "s/\{% include helpers\/subhead-links\.md %\}//g;" \
-pe "s/\{% (end)?autocrossref %\}//gs;" \
-pe "s/\{% assign .+? %\}//g;" \
-pe "s/\{:\.no_toc\}//g;" \
-pe "s/\[([^\]]+)\]\[.+?\.term\}/<<glossary:\1>>/g;" \
-pe "s/\{% highlight ([^%]+) %\}(.+?\n){% endhighlight %\}/\`\`\` \1\2\`\`\`/gs;" \
-pe "s/<<([^>]+)\n([^>]+)>>/<<\1 \2>>/gs;" \
-pe "s!\(/img!(https://dash-docs.github.io/img!g;" \
-pe "s/{% itemplate ntpd1 %}/Name | Type | Presence | Description\n--- | --- | --- | ---/g;" \
-pe "s/\n+- n: \"(.*?)\"\s+t: \"(.*?)\"\s+p: \"(.*?)\"\s+d: \"(.*?)\"/\n\1 | \2 | \3 | \4/g;" \
-pe "s/{% enditemplate %}/\n\n/g;" \
-pe "s/~~~/\`\`\`/g;" \
-pe "s/^([^\|]*[0-9a-zA-Z\(\)\[\],\.\-\`])\n *([0-9a-zA-Z\(\)\[\],\.\-\`<])(?=([^\`]|\`(?!\`))*((\`\`\`[^\`]+\`\`\`)([^\`]|\`(?!\`))*)*$)/\1 \2/g;" \
-pe "s/(\n\n\|[^\|\n]+\|[^\|\n]+\|[^\|\n]+\|[^\|\n]+\|[^\|\n]+\|[^\|\n]+\|[^\|\n]+\|?)\n(?!\| *-+ *\|)/\n\n\1\n|---|---|---|---|---|---|---|\n/g;" \
-pe "s/(\n\n\|[^\|\n]+\|[^\|\n]+\|[^\|\n]+\|[^\|\n]+\|[^\|\n]+\|[^\|\n]+\|?)\n(?!\| *-+ *\|)/\n\n\1\n|---|---|---|---|---|---|\n/g;" \
-pe "s/(\n\n\|[^\|\n]+\|[^\|\n]+\|[^\|\n]+\|[^\|\n]+\|[^\|\n]+\|?)\n(?!\| *-+ *\|)/\n\n\1\n|---|---|---|---|---|\n/g;" \
-pe "s/(\n\n\|[^\|\n]+\|[^\|\n]+\|[^\|\n]+\|[^\|\n]+\|?)\n(?!\| *-+ *\|)/\n\n\1\n|---|---|---|---|\n/g;" \
-pe "s/(\n\n\|[^\|\n]+\|[^\|\n]+\|[^\|\n]+\|?)\n(?!\| *-+ *\|)/\n\n\1\n|---|---|---|\n/g;" \
-pe "s/(\n\n\|[^\|\n]+\|[^\|\n]+\|?)\n(?!\| *-+ *\|)/\n\n\1\n|---|---|\n/g;" \
-pe "s/\|[-]+(?=[\|\n])/| --- /g;" \
-pe "s/\n\n+/\n\n/g;"
