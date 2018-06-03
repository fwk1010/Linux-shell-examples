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
#print variable a  
echo $a  
#or  
echo ${a}
```


Demos see :point_right: [here](./demos/variable.sh)  
