
#!/bin/bash
echo "What is your favourite programing language?"
select var in "Java" "PHP" "Python" "Go" "Other"; 
do
  break;
done
echo "You have selected $var"