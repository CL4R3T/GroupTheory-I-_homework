该repo为2024秋季学期起进行的开源作业project之一。欢迎各位核对纠错，也欢迎未来选课的学弟参考。

本课程为《量子场论》，2024秋季，谭时纳老师授课。

> 该repo仅作学习用途。This repo is ONLY FOR STUDY USE.

> 请不要直接抄袭。Direct copying is NOT allowed.

> 你在考试中无法抄袭。There's NO CHEATING in real exams.

# 一些想说的话

最好不要向其他同学推荐这个以及同类repo（因为你永远不知道信不信得过同学，尤其是在PKU），**千万别向TA/老师直接跳脸输出**。物院神人确实多，我希望各位不是。这个repo就不用star了，自己偷偷看吧。


每个学期作业的题目都有可能微调，所以极其不建议直接copy然后交了。

个人建议先看一遍所有题目，试着花一点时间把难题做了，做不出再来看我有没有一些良好的思路。

# 快速开始

答案pdf文件通常会在作业完成当天同步发布至packages，并不会包含在源码内。如果你只需要pdf的话，直接下载就好了，并忽略以下内容。

如果你没有接触过typst，但你仍想重新编译生成pdf，你有这些选择：


+ （推荐）使用Tinymist：使用VS Code打开typ文件，并安装Tinymist Typst扩展，即可在VS Code中预览并编译该文档。

+ （不是很推荐）安装Typst CLI：根据[Typst CLI安装指引](https://github.com/typst/typst?tab=readme-ov-file#installation)进行安装，并安装必要的包：
  ```
  typst init @preview/problemst:0.1.0
  typst init @preview/physica:0.9.3
  ```
  然后进行编译
  ```
  typst compile <typ_file_path>
  ```

+ （不推荐）直接打开[typst网页端](https://typst.app/)，进行注册后新建一个文档，将源码复制进文档中，即可在网页上直接进行预览，也可以下载pdf文件。

+ （十分推荐）直接DM我，然后我进行一个快速的update（还能水一个commit数）.
