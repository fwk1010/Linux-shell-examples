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

# 获取字符串长度
s4="long string"
echo "the s4's length was "${#s4}

# 提取子字符串
s5="012345"
echo "get substring from char 1 to char 2:"${s5:0:2}

# 取索引，用到反字符串
s6="0123456789"
# expr: syntax error in mac os but linux was ok ,what happen?
i=`expr index "$s6" 3` 
echo "The 8 in s6 was index of" ${i}

```
