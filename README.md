本程序为命令行文本计数统计程序statistics，能正确统计导入的纯英文txt文本中的字符数，单词数，句子数和注释行数。
本例中，文本名为：article.txt  程序名为：statistics
在命令行窗口输入此代码statistics('article.txt', 'c')为统计字符数
输入此代码statistics('article.txt', 'w')为统计单词数
输入此代码statistics('article.txt', 's')为统计句子数
输入此代码statistics('article.txt', 'a')为统计注释行数 （annotation）
本次我一共上传了四个文件，分别为：article.txt article.docx 命令行文本计数统计程序.m word文档统计截图
下面为运行结果：
>> statistics('article.txt', 'c')

ans =

        1043
>> statistics('article.txt', 'w')

ans =

        155
>> statistics('article.txt', 's')

ans =

        10
>> statistics('article.txt', 'a')

ans =

        0
