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
Bash has only one way to add comments that add # to comment single line.  
If you want to add to multiple lines,please put those codes into a useless function.
```bash
# I am a comment :)

```

