#!/bin/bash

set -e

js="src/elm.js"

elm make --optimize --output=$js $@

# change the cmpiled elm file to not immediately call the compiled function
perl -i -pe 's/\(function\(scope/function init\(scope/g' $js
perl -i -pe 's/}\(this\)\);/}/g' $js

# export the compiled function as the default export
echo "const scope = {};init(scope);const def = scope.Elm" >> $js
echo "export default def;" >> $js

while read -r line ; do
  # extract the name of the module
  if [[ $line =~ \$author\$project\$(.+)\$main ]]
  then
      name="${BASH_REMATCH[1]}"
      # add the module as a named export
      echo "export const ${name} = def.${name};" >> $js
  else
      echo "$line doesn't match" >&2
  fi
# find modules being exported with a 'main' function
done < <(egrep -o 'var \$author\$project\$(.+)\$main' $js)
