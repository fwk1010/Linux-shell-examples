# Linux-shell-examples
Linux bash shell learnning.  

## 1.hello world  
Step1:  
Create a new file and give it permission,like   
<code>
  touch hi.sh & chmod 744 hi.sh
</code>  
Step2:   
Write some codes into hi.sh,like  
<code>
 #!/bin/sh  
 echo 'hello,world!'
</code>  
Step3:  
Run your shell script on terminal,like  
<code>
./hi.sh
</code>  


Demos see :point_right: [here](./demos/hi.sh)  

## 2.variable / 变量
Bash was not declaring variable type explicitly.  
```bash 
a="I am a variable"  
# print variable a  
echo $a  
# or  
echo ${a}
```  
Demos see :point_right: [here](./demos/variable.sh)  

## 3.readonly variable / 只读变量  
```bash 
readonly a="I am a readonly variable"  
# try to reset the value,but it was not work and the terminal said line 4: a: readonly variable
 a='new value'
```  
Demos see :point_right: [here](./demos/readonly_variable.sh)  

## 4.comments / 注释
Bash has only one way to add comments that adds # to comment single line.  
If you want to add to multiple lines,please put those codes into a useless function.
```bash
# I am a comment :)

```

## 5.string / 字符串  
```bash
# 1) 双引号里可以有变量
# 2) 双引号里可以出现转义字符
s1="I am a string."
# 1) 单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的
# 2) 单引号字串中不能出现单引号（对单引号使用转义符后也不行）
s2='I am a string too.'
echo $s1
echo $s2

# 字符串拼接
s3=$s1"hhh,I was appended to the end."
echo $s3

# 获取字符串的长度
s4="long string"
echo "the s4's length was "${#s4}

# 提取子字符串
s5="012345"
echo "get substring from char 1 to char 2:"${s5:0:2}

# 取索引，用到反字符串
s6="0123456789"
# expr: syntax error in mac os but linux was ok ,what happen?
i=`expr index "$s6" 8` 
echo "The 8 in s6 was index of" ${i}

```

Question: expr: syntax error in mac os but linux was ok ,what happen?  
Answer: mac ox default bash version was GNU bash version 3.2.57(1) but linux centos6.9 was GNU bash version 4.1.2(2).

Demos see :point_right: [here](./demos/string.sh)  

## 6.Array / 数组  
bash支持一维数组（不支持多维数组），并且没有限定数组的大小。数组下标从0开始。它用括号来表示数组，数组元素用"空格"符号分割开。如  
```bash
# define one array
array1=(1 3 4)
# get first element
echo ${array1[0]}
# get all elements
echo ${array1[*]}
# get length
echo ${#array1[*]}
```

Demos see :point_right: [here](./demos/array.sh)  

## 7.Conditional Constructs / 条件结构体
- if  
**The syntax of the if command is:**  
if test-commands; then  
  consequent-commands;  
[elif more-test-commands; then  
  more-consequents;]  
[else alternate-consequents;]  
fi   
-- References from [GNU bash manual doc online](https://www.gnu.org/software/bash/manual/bash.html#What-is-Bash_003f)
```bash
a=1
b=1
c=23
# if
if [ ${a} == ${b} ] 
then
  echo "a equals b"
fi

#if else
if [ $a == $c ]
then 
  echo "a equals c"
else
  echo "a not equals c"
fi

#if elseif else
if [ ${a} == ${c} ]
then
  echo "a equals c"
elif [ ${b} == ${c} ]
then 
  echo "b equals c"
else 
 echo "c not equals a and b"
fi
```
Demos see :point_right: [here](./demos/if.sh)  
- case  
**The syntax of the case command is:**

case word in [ [(] pattern [| pattern]…) command-list ;;]… esac  
```bash
echo -n "Enter the name of an animal: "
read ANIMAL
echo -n "The $ANIMAL has "
case $ANIMAL in
  horse | dog | cat) echo -n "four";;
  man | kangaroo ) echo -n "two";;
  *) echo -n "an unknown number of";;
# end of case
esac
echo " legs."
```
Demos see :point_right: [here](./demos/case.sh)  

- select  
**The select construct allows the easy generation of menus. It has almost the same syntax as the for command:**  
select name [in words …]; do commands; done  
```bash
echo "What is your favourite programing language?"
select var in "Java" "PHP" "Python" "Go" "Other"; 
do
  break;
done
echo "You have selected $var"
```

Demos see :point_right: [here](./demos/select.sh)   

## 8.Looping Constructs / 循环结构体  
- until  
The syntax of the until command is:  

**until test-commands; do consequent-commands; done**  
Execute consequent-commands as long as test-commands has an exit status which is not zero. The return status is the exit status of the last command executed in consequent-commands, or zero if none was executed.  
只要test-commands的退出状态不为零(false)，就执行consequent-commands。  
与<b>while</b>的条件真值刚好相反。
```bash
i=0
until [[ "$i" -gt 4 ]]    #大于4
do
    let "square=i*i"
    echo "$i * $i = $square"
    let "i++"
done
```

Demos see :point_right: [here](./demos/until.sh)   


- while

- for

