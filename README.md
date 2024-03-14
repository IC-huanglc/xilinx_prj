There are AMBA codes for learning.

Uses Vivado, and VCS to compile and simulate.

在vivado中导入design代码以及simulate代码，只是为了看是否能够正确运行。

如果vivado能够正确运行，则导出仿真，直接进入vcs的仿真，并用verdi查看。

top.v中，在vivado中注释掉了波形生成的语句，在vcs文件的top.v中取消了注释，原因是vivado无法识别dump波形的语句。

其它文件的改动以`xilinx_prj/<prj_name>/vcs/srcs/`文件夹下的文件为主。
