
#!/bin/bash
i=0
until [[ "$i" -gt 4 ]]    #大于4
do
    let "square=i*i"
    echo "$i * $i = $square"
    let "i++"
done