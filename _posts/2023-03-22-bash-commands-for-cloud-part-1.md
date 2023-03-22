---
layout: post
# comments: true
use_math: false
title: "Bash Commands to Get Started on Linux Clouds"
subtitle: "Part 1: Basic"
author: "Koushik"
date: 2023-03-22
# categories: [statistics]
show_sidebar: false
image: "/img/posts/commands-for-cloud/cloud.jpg"
hero_image: "/img/posts/commands-for-cloud/cloud.jpg"
hero_height: is-medium
hero_darken: true
tags: computing
---

- <a href="#what-is-linux" id="toc-what-is-linux"><span
  class="toc-section-number">1</span> What is Linux?</a>
- <a href="#tools-to-communicate-with-linux-based-systems"
  id="toc-tools-to-communicate-with-linux-based-systems"><span
  class="toc-section-number">2</span> Tools to communicate with linux
  based systems</a>
- <a href="#task-specific-commands" id="toc-task-specific-commands"><span
  class="toc-section-number">3</span> Task specific commands</a>
  - <a href="#getting-the-basic-information"
    id="toc-getting-the-basic-information"><span
    class="toc-section-number">3.1</span> Getting the basic information</a>
    - <a href="#point_right-the-whoami-command"
      id="toc-point_right-the-whoami-command"><span
      class="toc-section-number">3.1.0.1</span> :point_right: The
      <code>whoami</code> command</a>
    - <a href="#point_right-the-date-command"
      id="toc-point_right-the-date-command"><span
      class="toc-section-number">3.1.0.2</span> :point_right: The
      <code>date</code> command</a>
    - <a href="#point_right-the-pwd-command"
      id="toc-point_right-the-pwd-command"><span
      class="toc-section-number">3.1.0.3</span> :point_right: The
      <code>pwd</code> command</a>
    - <a href="#point_right-the-ls-command"
      id="toc-point_right-the-ls-command"><span
      class="toc-section-number">3.1.0.4</span> :point_right: The
      <code>ls</code> command</a>
    - <a href="#point_right-the-echo-command"
      id="toc-point_right-the-echo-command"><span
      class="toc-section-number">3.1.0.5</span> :point_right: The
      <code>echo</code> command</a>
  - <a href="#working-with-files-and-directories"
    id="toc-working-with-files-and-directories"><span
    class="toc-section-number">3.2</span> Working with files and
    directories</a>
    - <a href="#point_right-creating-a-file-with-touch"
      id="toc-point_right-creating-a-file-with-touch"><span
      class="toc-section-number">3.2.0.1</span> :point_right: Creating a file
      with <code>touch</code></a>
    - <a href="#point_right-writing-data-to-a-file-using-tee"
      id="toc-point_right-writing-data-to-a-file-using-tee"><span
      class="toc-section-number">3.2.0.2</span> :point_right: Writing data to
      a file using <code>tee</code></a>
    - <a href="#point_right-working-with-directory-folder"
      id="toc-point_right-working-with-directory-folder"><span
      class="toc-section-number">3.2.0.3</span> :point_right: Working with
      directory (folder)</a>
    - <a
      href="#point_right-copying-files-and-directories-from-source-to-destination"
      id="toc-point_right-copying-files-and-directories-from-source-to-destination"><span
      class="toc-section-number">3.2.0.4</span> :point_right: Copying files
      and directories from source to destination</a>
    - <a href="#point_right-searching-for-files-and-directories-using-grep"
      id="toc-point_right-searching-for-files-and-directories-using-grep"><span
      class="toc-section-number">3.2.0.5</span> :point_right: Searching for
      files and directories using <code>grep</code></a>
    - <a href="#point_right-editing-a-file-with-nano"
      id="toc-point_right-editing-a-file-with-nano"><span
      class="toc-section-number">3.2.0.6</span> :point_right: Editing a file
      with <strong>nano</strong></a>
    - <a href="#point_right-viewing-the-content-of-a-file-using-cat"
      id="toc-point_right-viewing-the-content-of-a-file-using-cat"><span
      class="toc-section-number">3.2.0.7</span> :point_right: Viewing the
      content of a file using <code>cat</code></a>

# What is Linux?

The era of computing has come a long way, starting from the punched card
to today’s cloud platforms, a significant progress has been made. We are
now habituated in using such cloud platforms. The most popular example
can be Google’s [Colab](https://colab.research.google.com/), which has
made cloud computing available publicly. If you have ever used Google’s
Colab, you are probably familiar with Linux.

Linux is the community driven operating system based on something called
*Linux Kernel* which empowers devices starting from smart phones to
large cloud servers. So, the fact is knowingly or unknowingly we are
using devices in our daily lives which are powered by Linux Kernel.

The linux kernel was first developed by Linus Torvald in 1991 as a
personal hobby project and later it was made available publicly. You can
refer to this [article](https://en.wikipedia.org/wiki/Linux_kernel) to
know more on this.

In this post, I will be sharing some basic to intermediate linux
commands which will help you to start your journey with linux based
systems, may be on your personal computer or on a cloud platform.

**disclaimer:** I will be using a rendering engine called
[Quarto](https://quarto.org/) to develop this post as a GitHub flavored
markdown and it needs Python to run bash commands, this is why there is
`!` right before the actual bash command everywhere. `!` should not be
considered as a part of any of the bash commands that will be used here
unless I explicitly mention.

# Tools to communicate with linux based systems

In any form of linux based systems, the most basic tool to interact with
is the command line application a.k.a *Terminal*s or *Console*, which is
nothing but an application equivalent to *cmd* on Windows, but much more
powerful than it. It is the application which accepts commands from the
user and performs the instructions accordingly.

Now, there is one more thing working behind the scene that is called
shell. Shell is the engine which parses or interprets the commands given
by the user. There are different types of shell. Typically, it is the
bash shell where bash stands for *Bourne Again SHell*. Other shell
applications available are ZShell or Fish (*Friendly Interactive
Shell*).

I will be runnning the commands using bash shell.

# Task specific commands

If you open the terminal anytime, typically you would see a prompt
ending with `:~$` and the cursor blinking next to it. It is now ready
for accepting commands from the user. The terminal usually points to a
directory on the system which, by default, is the user’s home directory
(i.e. the path `/home/<user>/`), which can be reconfigured to point to a
different location based on our need.

## Getting the basic information

#### :point_right: The `whoami` command

`whoami` is a command that returns the user name currently logged in.

``` python
!whoami
```

    koushik

#### :point_right: The `date` command

`date` gives you the current date and time.

``` python
!date
```

    Wed Mar 22 17:23:23 IST 2023

#### :point_right: The `pwd` command

`pwd` stands for the *present working directory* which is pointed out by
the terminal. For me the pwd is `/home/koushik/`

``` python
!pwd
```

    /home/koushik/quarto-docs

#### :point_right: The `ls` command

`ls` stands for listing, which returns names of all the files and directories
(folders) availble inside the `pwd`.

``` python
!ls
```

    bash-commands-for-cloud.ipynb  koushik.txt     records.txt
    bash-commands-for-cloud.md     my_first_file.txt   test_dir
    bash-commands-for-cloud.qmd    my_second_file.txt

Note that `ls` only returns the names of files and directories which are not
hidden, this is the default behavior of `ls`, if you want to see
something more you need some other options while using it, which are
often called flags.

I will use some flags below and try to explain what they mean.

**different flags of `ls`**

``` python
!ls -a
```

    .                  bash-commands-for-cloud.qmd  records.txt
    ..                 koushik.txt          test_dir
    bash-commands-for-cloud.ipynb  my_first_file.txt
    bash-commands-for-cloud.md     my_second_file.txt

`-a` flag is used for showing all the files and directories within `pwd`
including hidden ones. In linux hidden files are directories have `.` in
their names at the the very beginning.

``` python
!ls -h
```

    bash-commands-for-cloud.ipynb  koushik.txt     records.txt
    bash-commands-for-cloud.md     my_first_file.txt   test_dir
    bash-commands-for-cloud.qmd    my_second_file.txt

`-h` flag is used for better representation for the users (human being,
that’s why `h`)

``` python
!ls -l
```

    total 68
    -rw-r--r-- 1 koushik koushik 16787 Mar 22 17:23 bash-commands-for-cloud.ipynb
    -rw-r--r-- 1 koushik koushik 17507 Mar 22 17:13 bash-commands-for-cloud.md
    -rw-r--r-- 1 koushik koushik  9697 Mar 22 17:23 bash-commands-for-cloud.qmd
    -rw-r--r-- 1 koushik koushik    58 Mar 22 12:58 koushik.txt
    -rw-r--r-- 1 koushik koushik     0 Mar 22 17:13 my_first_file.txt
    -rw-r--r-- 1 koushik koushik    58 Mar 22 12:49 my_second_file.txt
    -rw-r--r-- 1 koushik koushik    87 Mar 22 17:13 records.txt
    drwxr-xr-x 2 koushik koushik  4096 Mar 22 17:12 test_dir

`-l` flag is used for showing entries in a long format

``` python
!ls -t
```

    bash-commands-for-cloud.ipynb  records.txt    koushik.txt
    bash-commands-for-cloud.qmd    my_first_file.txt  my_second_file.txt
    bash-commands-for-cloud.md     test_dir

`-t` flag is used for showing entries sorted based on when they are
created

``` python
!ls -s
```

    total 68
    20 bash-commands-for-cloud.ipynb   4 koushik.txt      4 records.txt
    20 bash-commands-for-cloud.md      0 my_first_file.txt    4 test_dir
    12 bash-commands-for-cloud.qmd     4 my_second_file.txt

`-s` flag is used for showing the allocated sizes of the files

You can definitely combine multiple flags together just by putting them
next to each other like below and obviously you will get the combined
effect of them

``` python
!ls -lahts
```

    total 76K
     20K -rw-r--r--  1 koushik koushik  17K Mar 22 17:23 bash-commands-for-cloud.ipynb
    4.0K drwxr-xr-x  3 koushik koushik 4.0K Mar 22 17:23 .
     12K -rw-r--r--  1 koushik koushik 9.5K Mar 22 17:23 bash-commands-for-cloud.qmd
     20K -rw-r--r--  1 koushik koushik  18K Mar 22 17:13 bash-commands-for-cloud.md
    4.0K -rw-r--r--  1 koushik koushik   87 Mar 22 17:13 records.txt
       0 -rw-r--r--  1 koushik koushik    0 Mar 22 17:13 my_first_file.txt
    4.0K drwxr-xr-x  2 koushik koushik 4.0K Mar 22 17:12 test_dir
    4.0K -rw-r--r--  1 koushik koushik   58 Mar 22 12:58 koushik.txt
    4.0K -rw-r--r--  1 koushik koushik   58 Mar 22 12:49 my_second_file.txt
    4.0K drwxr-xr-x 14 koushik koushik 4.0K Mar 22 12:39 ..

One more thing to note here is that, you can use `ls` to see the
contents of any directory just by putting the path next to `ls` call
followed by a space character like below

``` python
!ls -lahts /
```

    total 2.0M
    4.0K drwxrwxrwt   8 root root 4.0K Mar 22 17:23 tmp
    4.0K drwxr-xr-x  80 root root 4.0K Mar 22 10:44 etc
    4.0K drwxr-xr-x   4 root root 4.0K Mar 22 10:44 opt
    4.0K drwx------   3 root root 4.0K Mar 22 10:44 root
       0 drwxr-xr-x   7 root root  140 Mar 22 08:52 run
    4.0K drwxr-xr-x  19 root root 4.0K Mar 22 08:50 .
    4.0K drwxr-xr-x  19 root root 4.0K Mar 22 08:50 ..
       0 drwxr-xr-x  11 root root 3.0K Mar 22 08:50 dev
       0 dr-xr-xr-x 202 root root    0 Mar 22 08:50 proc
       0 dr-xr-xr-x  11 root root    0 Mar 22 08:50 sys
    4.0K drwxr-xr-x   3 root root 4.0K Mar 20 19:58 home
    4.0K drwxr-xr-x   5 root root 4.0K Mar 20 19:57 mnt
     16K drwx------   2 root root  16K Mar 20 19:57 lost+found
    4.0K drwxr-xr-x   8 root root 4.0K Feb 11 03:06 snap
    4.0K drwxr-xr-x  13 root root 4.0K Feb 11 03:06 var
    4.0K drwxr-xr-x  14 root root 4.0K Feb 11 03:05 usr
    4.0K drwxr-xr-x   2 root root 4.0K Feb 11 03:05 media
    4.0K drwxr-xr-x   2 root root 4.0K Feb 11 03:05 srv
       0 lrwxrwxrwx   1 root root    7 Feb 11 03:05 lib -> usr/lib
       0 lrwxrwxrwx   1 root root    9 Feb 11 03:05 lib32 -> usr/lib32
       0 lrwxrwxrwx   1 root root    9 Feb 11 03:05 lib64 -> usr/lib64
       0 lrwxrwxrwx   1 root root   10 Feb 11 03:05 libx32 -> usr/libx32
       0 lrwxrwxrwx   1 root root    8 Feb 11 03:05 sbin -> usr/sbin
       0 lrwxrwxrwx   1 root root    7 Feb 11 03:05 bin -> usr/bin
    4.0K drwxr-xr-x   2 root root 4.0K Apr 18  2022 boot
    1.9M -rwxrwxrwx   1 root root 1.9M Jan  1  1970 init

Here `ls` is showing the contents of a special directory a.k.a `root`,
this is equivalent to the `C:\` drive on Windows.

#### :point_right: The `echo` command

`echo` evaluates an expression and prints that on the terminal.

``` python
!echo $(date)
```

    Wed Mar 22 17:23:24 IST 2023

here `date` is evaluated by echo and the output of echo is printed on
the terminal (or console).

Here is another example of `echo`.

``` python
!name="Julia" && \
echo "$name claims to be faster that Python"
```

    Julia claims to be faster that Python

there are two things to note here:

- we are creating a shell variable called `name` with the value `Julia`
  and this variable is referred in the `echo` call to print a formatted
  string on the console
- creation of `name` and calling `echo` are two separate commands which
  are being executed in a sequence by using `&&` operator. The `\` is
  used for breaking the lines to make the command flow through multiple
  lines.

## Working with files and directories

Now, you know the basics of running commands and getting some simple yet
useful information, it is the time to see a bit more interesting
commands.

#### :point_right: Creating a file with `touch`

``` python
!touch my_first_file.txt
```

`touch` creates a file with the name given by the user right next to it
followed by a space character.

#### :point_right: Writing data to a file using `tee`

``` python
# writing date to file, the file will be created if it does not exist
!date | tee records.txt

# writing data in append mode with flag '-a'
!date | tee -a records.txt

# evaluate and then write in append mode
!echo $(date) | tee -a records.txt
```

    Wed Mar 22 17:23:25 IST 2023

    Wed Mar 22 17:23:25 IST 2023

    Wed Mar 22 17:23:25 IST 2023

By default, `tee` overwrites the data to the file, `-a` is used to avoid
this.

We have one more operator (`|`) here, it is called pipe operator. It
takes the output of the previous command and passes to the next command.

Writing same data to multiple files is also very intuitive as in
`date | tee -a file1.txt file2.txt file3.txt`

The same operations can also be performed using redirect operator `>`.
`date > record.txt` will write the system date time by overrwriting the
file and `date >> record.txt` will write the data to the file in append mode.

A file can be removed using the `rm` command, e.g. `rm record.txt`

#### :point_right: Working with directory (folder)

``` python
# create directory with 'mkdir'
!mkdir test_dir_1
!mkdir test_dir_2

# create directory recussively along a path with flag '-p'
!mkdir -p test_dir_1/sub_dir/sub_sub_dir

# remove directories with 'rm'
!rm -d test_dir_2 # '-d' flag (directory) is used to remove an empty directory
!rm -r test_dir_1 # '-r' flag (recurive) is used to remove a directory and all of its contents
# rm -rf test_dir_1 '-f' flag (force) is used to remove a directory and all of its contents forcefully
```

multiple directories can also be removed just by specifying their paths
one by one. One very useful flag for `rm` command is `-i`, which makes
the removal process interactive.

**Note:** In linux, if you add a `.` before the file and diretory name,
then it will be hidden which means simple `ls` command cannot show you
these, you must to use `ls -a` to locate them :wink: .

#### :point_right: Copying files and directories from source to destination

To copy a file or directory from source to destination, we have the
command `cp`. See the examples below to understand how it works,

- copy a file: `cp source_path/file.txt destination_path/`
- copy a directory: `cp -r source_path/test_dir/ destination_path/`

#### :point_right: Searching for files and directories using `grep`

Sometimes you may need a search for a file or directory inside the
terminal. This can be done using the command called `grep`. It is used
with `ls` through a pipe operator as if we are telling bash to filter
the `ls` output by the pattern. See the examples below,

``` python
# will only show files and directories with the word 'first' in their names 
!ls -lahts | grep first
```

       0 -rw-r--r--  1 koushik koushik    0 Mar 22 17:23 my_first_file.txt

#### :point_right: Editing a file with **nano**

**nano** is a text editor which typically available in almost all linux
based systems. It is very useful if you quickly want to edit a file
without leaving the terminal.

`nano <your_file_name>` is the command to open a file with nano. Once
you are done with the editing, you can use `Ctrl+S` (`Cmd+S` in case
you’re using clound from a Mac) to save the file and `Ctrl+X` (or
`Cmd+X` in Mac) to close the editor.

#### :point_right: Viewing the content of a file using `cat`

In case you want to see the content of a file, you have a command called
`cat`. It has several flags to use based on your requirements. Be
careful, when using `cat` for a large file, by default it will show you
everything that is there in the file.

``` python
cat records.txt
```

    Wed Mar 22 17:23:25 IST 2023
    Wed Mar 22 17:23:25 IST 2023
    Wed Mar 22 17:23:25 IST 2023

You can use the flag `-n` to see the line numbers right before the
lines.

``` python
cat -n records.txt
```

         1  Wed Mar 22 17:23:25 IST 2023
         2  Wed Mar 22 17:23:25 IST 2023
         3  Wed Mar 22 17:23:25 IST 2023


That's all for the part 1. I hope you have enjoyed reading the post, stay tuned for the next part.