<%@ page contentType="text/html; charset=utf-8" pageEncoding="gb2312"%>
    <h1>C 环境设置</h1>
    <hr />
    <h2>本地环境设置</h2>
    <p>如果您想要设置 C 语言环境，您需要确保电脑上有以下两款可用的软件，文本编辑器和 C 编译器。</p>
    <hr />
    <h2>文本编辑器</h2>
    <p>这将用于输入您的程序。文本编辑器包括 Windows Notepad、OS Edit command、Brief、Epsilon、EMACS 和 vim/vi。</p>
    <p>文本编辑器的名称和版本在不同的操作系统上可能会有所不同。例如，Notepad 通常用于 Windows 操作系统上，vim/vi 可用于 Windows 和 Linux/UNIX 操作系统上。</p>
    <p>通过编辑器创建的文件通常称为源文件，源文件包含程序源代码。C 程序的源文件通常使用扩展名 &quot;<strong>.c</strong>&quot;。</p>
    <p>在开始编程之前，请确保您有一个文本编辑器，且有足够的经验来编写一个计算机程序，然后把它保存在一个文件中，编译并执行它。</p>
    <hr />
    <h2>C 编译器</h2>
    <p>写在源文件中的源代码是人类可读的源。它需要&quot;编译&quot;，转为机器语言，这样 CPU 可以按给定指令执行程序。</p>
    <p>C 语言编译器用于把源代码编译成最终的可执行程序。这里假设您已经对编程语言编译器有基本的了解了。</p>
    <p>最常用的免费可用的编译器是 GNU 的 C/C++ 编译器，如果您使用的是 HP 或 Solaris，则可以使用各自操作系统上的编译器。</p>
    <p>以下部分将指导您如何在不同的操作系统上安装 GNU 的 C/C++ 编译器。这里同时提到 C/C++，主要是因为 GNU 的 gcc 编译器适合于 C 和 C++ 编程语言。</p>
    <h3>UNIX/Linux 上的安装</h3>
    <p>如果您使用的是 <strong>Linux 或 UNIX</strong>，请在命令行使用下面的命令来检查您的系统上是否安装了 GCC：</p>
    <pre>&nbsp;&nbsp;$ gcc -v</pre>
    <p>如果您的计算机上已经安装了 GNU 编译器，则会显示如下消息：</p>
    <pre>&nbsp;&nbsp;Using built-in specs.<br>
    Target: i386-redhat-linux<br>
    Configured with: ../configure --prefix=/usr .......<br>
    Thread model: posix<br>
    gcc version 4.1.2 20080704 (Red Hat 4.1.2-46)</pre>
    <p>如果未安装 GCC，那么请按照 <a href="http://gcc.gnu.org/install/" rel="nofollow" target="_blank">http://gcc.gnu.org/install/</a> 上的详细说明安装 GCC。</p>
    <p>本教程是基于 Linux 编写的，所有给定的实例都已在 Cent OS Linux 系统上编译过。</p>
    <h3>Mac OS 上的安装</h3>
    <p>如果您使用的是 Mac OS X，最快捷的获取 GCC 的方法是从苹果的网站上下载 Xcode 开发环境，并按照安装说明进行安装。一旦安装上 Xcode，您就能使用 GNU 编译器。</p>
    <p>Xcode 目前可从 <a href="http://developer.apple.com/technologies/tools/" rel="nofollow" target="_blank">developer.apple.com/technologies/tools/</a> 上下载。</p>
    <h3>Windows 上的安装</h3>
    <p>为了在 Windows 上安装 GCC，您需要安装 MinGW。为了安装 MinGW，请访问 MinGW 的主页 <a href="http://www.mingw.org/" rel="nofollow" target="_blank">www.mingw.org</a>，进入 MinGW 下载页面，下载最新版本的 MinGW 安装程序，命名格式为 MinGW-&lt;version&gt;.exe。</p>
    <p>当安装 MinWG 时，您至少要安装 gcc-core、gcc-g++、binutils 和 MinGW runtime，但是一般情况下都会安装更多其他的项。</p>
    <p>添加您安装的 MinGW 的 bin 子目录到您的 <strong>PATH</strong> 环境变量中，这样您就可以在命令行中通过简单的名称来指定这些工具。</p>
    <p>当完成安装时，您可以从 Windows 命令行上运行 gcc、g++、ar、ranlib、dlltool 和其他一些 GNU 工具。</p>
