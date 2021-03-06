-- 改善性能
-- MySQL是用一系列的默认设置预先配置的，从这些设置开始通常是很好的。但过一段时间你可能需要调整内存分配、缓冲区大小等
-- MySQL一个多用户多线程的DBMS。它经常同时执行多个任务。如果这些任务中的某一个执行缓慢，则所有请求都会执行缓慢。如果你遇到显著的性能不良，可以使用SHOW PROCESSLIST显示所有活动进程。
-- 总是有不止一种方法编写同一条SELECT语句。应该试验联结、并、子查询等，找出最佳方法
-- 使用EXPLAIN语句让MySQL解释它将如何执行一条SELECT语句
-- 一般来说，存储过程执行得比一条一条地执行其中的各条MySQL语句快
-- 必须索引数据库表以改善数据检索的功能。确定索引什么不是一件微不足道的任务，需要分析使用的SELECT语句以找出重复的WHERE和ORDER BY子句
-- 索引改善数据检索的功能，但是损害数据插入、删除和更新的性能。如果你有一些表，它们手机数据且不经常被搜索，则在有必要之前不要索引它们。
-- LIKE很慢。一般来说，最好是使用FULLTEXT而不是LIKE
