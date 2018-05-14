=======
rst语法
=======

标题
=====

::

 一级标题
 ========
 二级标题
 --------

段落
=====

段落是被空行分割的文字片段，左侧必须对齐（没有空格，或者有相同多的空格）。

缩进的段落被视为引文。

列表
=====

符号列表
--------

::

 - 符号列表1
 - 符号列表2
 
   + 二级符号列表1
 
   - 二级符号列表2
 
   * 二级符号列表3
 
 * 符号列表3
 
 + 符号列表4

- 符号列表1
- 符号列表2

  + 二级符号列表1

  - 二级符号列表2

  * 二级符号列表3

* 符号列表3

+ 符号列表4

编号列表
--------
::

 1. 枚举列表1
 #. 枚举列表2
 #. 枚举列表3
 
 (I) 枚举列表1
 (#) 枚举列表2
 (#) 枚举列表3
 
 A) 枚举列表1
 #) 枚举列表2
 #) 枚举列表3

1. 枚举列表1
#. 枚举列表2
#. 枚举列表3

(I) 枚举列表1
(#) 枚举列表2
(#) 枚举列表3

A) 枚举列表1
#) 枚举列表2
#) 枚举列表3


定义列表
--------

::

 定义1
  这是定义1的内容
 
 定义2
  这是定义2的内容

定义1
 这是定义1的内容

定义2
 这是定义2的内容

字段列表
--------

::

 :标题: reStructuredText语法说明
 
 :作者:
  - Seay
  - Seay1
  - Seay2
 
 :时间: 2016年06月21日
 
 :概述: 这是一篇
  关于reStructuredText
 
  语法说明。

选项列表
--------

选项列表是一个类似两列的表格，左边是参数，右边是描述信息。当参数选项过长时，参数选项和描述信息各占一行。

选项与参数之间有一个空格，参数选项与描述信息之间至少有两个空格。

::

 -a            command-line option "a"
 -b file       options can have arguments
               and long descriptions
 --long        options can be long also
 --input=file  long options can also have
               arguments
 /V            DOS/VMS-style options too

-a            command-line option "a"
-b file       options can have arguments
              and long descriptions
--long        options can be long also
--input=file  long options can also have
              arguments
/V            DOS/VMS-style options too

块
====

文字块
------
文字块就是一段文字信息，在需要插入文本块的段落后面加上 ::，接着一个空行，然后就是文字块了。

文字块不能定顶头写，要有缩进，结束标志是，新的一段文本贴开头，即没有缩进。

::

 下面是文字块内容：
 ::
 
    这是一段文字块
    同样也是文字块
    还是文字块
 
 这是新的一段。

下面是文字块内容：
::

   这是一段文字块
   同样也是文字块
   还是文字块

这是新的一段。

行块
----

行块对于地址、诗句以及无装饰列表是非常有用的。行块是以 | 开头，每一个行块可以是多段文本。

**|**  前后各有一个空格。
::

 下面是行块内容：
  | 这是一段行块内容
  | 这同样也是行块内容
    还是行块内容
 
 这是新的一段。

下面是行块内容：
 | 这是一段行块内容
 | 这同样也是行块内容
   还是行块内容

这是新的一段。

块引用
------

块引用是通过缩进来实现的，引用块要在前面的段落基础上缩进。

通常引用结尾会加上出处(attribution)，出处的文字块开头是 --、--- 、—，后面加上出处信息。

块引用可以使用空的注释 .. 分隔上下的块引用。

注意在新的块和出处都要添加一个空行。


::

 下面是引用的内容：
 
     “真的猛士，敢于直面惨淡的人生，敢于正视淋漓的鲜血。”
 
     --- 鲁迅
 
 ..
 
       “人生的意志和劳动将创造奇迹般的奇迹。”
 
       — 涅克拉索

下面是引用的内容：

    “真的猛士，敢于直面惨淡的人生，敢于正视淋漓的鲜血。”

    --- 鲁迅

..

      “人生的意志和劳动将创造奇迹般的奇迹。”

      — 涅克拉索

文档测试块
----------
文档测试块是交互式的Python会话，以 **>>>** 开始，一个空行结束。
::

 >>> print "This is a doctest block."
 This is a doctest block.

>>> print "This is a doctest block."
This is a doctest block.

注解
------


::

 .. note::

    注解部分

.. note::

   注解部分

警告
-----

::

 .. warning::

表格
====

reStructuredText提供两种表格：网格表（Grid Tables），简单表（Simple Tables）。

网格表
------

网格表中使用的符号有：*-*、*=*、*|*、*+*。

"-"用来分隔行， = 用来分隔表头和表体行，| 用来分隔列，+ 用来表示行和列相交的节点。

::

 Grid table:
 
 +------------+------------+-----------+
 | Header 1   | Header 2   | Header 3  |
 +============+============+===========+
 | body row 1 | column 2   | column 3  |
 +------------+------------+-----------+
 | body row 2 | Cells may span columns.|
 +------------+------------+-----------+
 | body row 3 | Cells may  | - Cells   |
 +------------+ span rows. | - contain |
 | body row 4 |            | - blocks. |
 +------------+------------+-----------+

Grid table:

+------------+------------+-----------+
| Header 1   | Header 2   | Header 3  |
+============+============+===========+
| body row 1 | column 2   | column 3  |
+------------+------------+-----------+
| body row 2 | Cells may span columns.|
+------------+------------+-----------+
| body row 3 | Cells may  | - Cells   |
+------------+ span rows. | - contain |
| body row 4 |            | - blocks. |
+------------+------------+-----------+

简单表
------
简单表相对于网格表，少了 *|* 和 *+* 两个符号，只用 *-* 和 *=* 表示。
::

 Simple table:
 
 =====  =====  ======
    Inputs     Output
 ------------  ------
   A      B    A or B
 =====  =====  ======
 False  False  False
 True   False  True
 False  True   True
 True   True   True
 =====  =====  ======

Simple table:

=====  =====  ======
   Inputs     Output
------------  ------
  A      B    A or B
=====  =====  ======
False  False  False
True   False  True
False  True   True
True   True   True
=====  =====  ======

分隔符
======

分隔符就是一条水平的横线，是由 4 个 *-* 或者更多组成，需要添加换行。

::

 上面部分
 
 ------------
 
 下面部分

上面部分

------------

下面部分

超链接
======

介绍各类带有链接性质的超链接

自动超链接
----------

reStructuredText会自动将网址生成超链接。

::

 https://github.com/SeayXu/

https://github.com/SeayXu/

外部超链接
----------

引用/参考(reference)，是简单的形式，只能是一个词语，引用的文字不能带有空格。

::

 这篇文章来自我的Github,请参考 reference_。

 .. _reference: https://github.com/SeayXu/

这篇文章来自我的Github,请参考 reference_。

.. _reference: https://github.com/SeayXu/

引用/参考(reference)，行内形式，引用的文字可以带有空格或者符号。

::
 
 这篇文章来自我的Github,请参考 `SeayXu <https://github.com/SeayXu/>`_。

这篇文章来自我的Github,请参考 `SeayXu <https://github.com/SeayXu/>`_。



