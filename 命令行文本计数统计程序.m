function[x]=statistics(Filename,parameter)   %�����������ı�����ͳ�Ƴ���statistics
fidin=fopen(Filename);                       %�򿪵���Ĵ�Ӣ��txt�ļ�
t=fread(fidin);                              %��txt�ļ��ж�ȡ����������
c=length(t);                                 %ͳ�Ƶ���Ĵ�Ӣ��txt�ı��е��ַ���
w=1;                                         %����ͳ�Ƶ�������ʼֵ
s=0;                                         %����ͳ�ƾ�������ʼֵ
for i=1:c                                    %i��ֵ��1ѭ����c
    if t(i)==32 && i~=c                      %��������ո��Ҳ����ı����һ��
        w=w+1;                               %������w��ֵ��1
    end                                      %�����ж�
    if t(i)==33||t(i)==46||t(i)==63          %���������!����.���͡�?��
        s=s+1;                               %������s��1
    end                                      %�����ж�
end                                          %����ѭ��
switch parameter                             %��������ִ�����Զ��ѡ���һ����� 
    case 'c'                                 %��parameter��ֵΪ'c'ʱ
        x=c;                                 %����x��ֵΪc�����ַ���
        
    case 'w'                                 %��parameter��ֵΪ'w'ʱ
        x=w;                                 %����x��ֵΪw����������
       
    case 's'                                 %��parameter��ֵΪ's'ʱ
        x=s;                                 %����x��ֵΪs����������
       
end                                          %����switch����

        