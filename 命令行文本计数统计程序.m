function[x]=statistics(Filename,parameter)   %构建命令行文本计数统计程序statistics
fidin=fopen(Filename);                       %打开导入的纯英文txt文件
t=fread(fidin);                              %从txt文件中读取二进制数据
c=length(t);                                 %统计导入的纯英文txt文本中的字符数
w=1;                                         %设置统计单词数初始值
s=0;                                         %设置统计句子数初始值
a=0;                                         %设置统计注释行初始值
for i=1:c                                    %i的值从1循环到c
    if t(i)==32 && i~=c                      %如果遇到空格且不是文本最后一项
        w=w+1;                               %单词数w的值加1
    end                                      %结束判断
    if t(i)==33||t(i)==46||t(i)==63          %如果遇到“!”“.”和“?”
        s=s+1;                               %句子数s加1
    end                                      %结束判断
    if t(i)==37                              %如果遇到“%”
        a=a+1;                               %注释行a的值加1
    end                                      %结束判断
end                                          %结束循环
switch parameter                             %有条件地执行来自多个选择的一组语句 
    case 'c'                                 %当parameter的值为'c'时
        x=c;                                 %返回x的值为c，即字符数
        
    case 'w'                                 %当parameter的值为'w'时
        x=w;                                 %返回x的值为w，即单词数
       
    case 's'                                 %当parameter的值为's'时
        x=s;                                 %返回x的值为s，即句子数
 
    case 'a'                                 %当parameter的值为'a'时
        x=a;                                 %返回x的值为a，即注释行数
end                                          %结束switch函数

        
