
#!/bin/bash
echo -n "请输入动物名称："
read ANIMAL
echo -n "$ANIMAL 有 "
case $ANIMAL in
  马 | 狗 | 猫) echo -n "四";;
  人 | 袋鼠 ) echo -n "两";;
  *) echo -n "不知道多少";;
esac
echo " 只脚."