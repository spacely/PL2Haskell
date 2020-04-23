Programming Language HW1: Java.
Programming Language HW2: Haskell.

###############
The program was run using Haskell version 8.8.3 running on Mac OS Catalina 10.15.4
##################

##################
To install Haskell on a Mac:
brew install Haskell

####################
Downloading Code from Git
####################

git clone https://github.com/spacely/PL2Haskell
cd PL2Haskell

##############
Running Code
#############
To run Makefile:
type: "make"
To clean up and delete compiled files.
type: "make clean"

###################
To run tests:
./tests.sh
###################



### ERRORS####
The code hangs on Error Hard-3. There was no time to debug the error.

Removing this Test will allow continuation of tests. The output of the running program skips
this test.

Some output from the code were correct even though the test cases showed it was inaccurate.
These are for tests: Medium 1, Medium 2, Medium 3,Medium 4, Medium 5, medium 6,medium 11,medium 12, Medium 13.
It fails all others.



#####

###
Extra Features:
No extra features implemented.
###




#####################
Commit Log for Haskell
#########################
commit 1bb2fda24ff855db6d7dfb25d0d31c763716ca57
Author: Saheed Adepoju <adepoju@gmail.com>
Date:   Wed Apr 22 01:14:17 2020 -0700

    Updated with README.txt, makefile and all the test suites

commit 23fdcc7e25fbae37b39b3f7cfb242db85f454346
Author: Saheed Adepoju <adepoju@gmail.com>
Date:   Tue Apr 21 17:56:27 2020 -0700

    Using some online resources on building interpreters, built some functions and features from various website to cobble together the parser

commit 72babf069aaf808d281db2021e246586c6b01c42
Author: Saheed Adepoju <adepoju@gmail.com>
Date:   Tue Apr 21 00:11:51 2020 -0700

    Added a structure for the grammar using the slides provided as well as online resources

commit e7a2bb2cb63653b60833a5675b96e80b99942377
Author: Saheed Adepoju <adepoju@gmail.com>
Date:   Mon Apr 20 23:27:05 2020 -0700

    A first commit. Switching to Haskell for PL Assignment 2 since it has an inbuilt parsing library which makes parsing slightly easier and grammar definition easier

##############################################################################################




##############
PS
#################
I started out writing my assignment in Java. I spent quite considerable about of time (see Commit Logs) to get the Java version to work but it failed.
I switched over to Haskell Monday night in order to try and meet the requirements and deadline.

The repo for the Java version that failed is:
https://github.com/spacely/PLAssignmentTwo


The Commit Log for the Java related work is:
commit 475b61910ad816c908b4cb2961f0f348c306abcf
Author: Saheed Adepoju <adepoju@gmail.com>
Date:   Mon Apr 20 01:18:07 2020 -0700

    Updated some code to run initial tests but fails

commit 16f25c4b3891560a35d329955d0bf52f45d73825
Author: Saheed Adepoju <adepoju@gmail.com>
Date:   Mon Apr 20 00:50:21 2020 -0700

    Added a main to start evaluating the parser and to fix errors

commit c39530dc6557a4739821c0c7e54d5e7af9724a98
Author: Saheed Adepoju <adepoju@gmail.com>
Date:   Sun Apr 19 16:30:07 2020 -0700

    Added a visitor pattern class which will help direct traffic to invoke the best class based on statements being parsed

commit cc87d55a190d5ac6c5bb9ea870620e3e5186d670
Author: Saheed Adepoju <adepoju@gmail.com>
Date:   Sun Apr 19 14:36:34 2020 -0700

    Added an earlier framework for loop which i forgot to add to git. updated the parser to handle combination of statements.

commit 60f408c5dafe3f298aeab5f71857dc475b484ffd
Author: Saheed Adepoju <adepoju@gmail.com>
Date:   Sun Apr 19 01:27:17 2020 -0700

    Building a tokenizer that breaks into tokens and goes through the entire tokens seeking conditional statements etc to build objects of them and combine them into commands

commit 5504f82ad64087321ca63f5ddbb2453dab327671
Author: Saheed Adepoju <adepoju@gmail.com>
Date:   Sat Apr 18 19:04:19 2020 -0700

    Added some helper abstract class to aid with combination of commands to make a program. Each statement of the while PL will be made up of subcomponents such as conditions, loops and assignments that end up forming the syntax of the language. This helper classes will then be called within the parser to create a semantic structure of the inputted program. With this classes, the parser will now be completed since it calls these helper classes just added and created

commit ebe371f44da1324a828621541aa639bb7c428c97
Author: Saheed Adepoju <adepoju@gmail.com>
Date:   Sat Apr 18 16:10:24 2020 -0700

    Added helper classes to help with modules to help with parsing a while program.

commit 8add635a1e76e8ac536e07bd4f400ed7d70f3bea
Author: Saheed Adepoju <adepoju@gmail.com>
Date:   Sat Apr 18 16:00:57 2020 -0700

    Updated parser

commit e00948d7d02b8c1a1119f741c0d46cfe43578a96
Author: Saheed Adepoju <adepoju@gmail.com>
Date:   Sat Apr 18 15:29:59 2020 -0700

    Parser can now handle parsing arithmetic expressions although yet to test. Fix compilation errros which showed errors in some overrriden methods.

commit 6754fb05ae6e25c274e4695aaedb1c8240dd0275
Author: Saheed Adepoju <adepoju@gmail.com>
Date:   Thu Apr 16 01:25:56 2020 -0700

    Trying to build expression objects following tokenization with some errors.

commit 40ddafd53f38fbf0be26b1ac37791a22d522882e
Author: Saheed Adepoju <adepoju@gmail.com>
Date:   Wed Apr 15 22:42:23 2020 -0700

    Added some helper methods to parse variables and the most basic unit of the program. Compilation passes

commit d601c1f26df46bf4c97811419ff2d35ec138abf3
Author: Saheed Adepoju <adepoju@gmail.com>
Date:   Tue Apr 14 23:40:53 2020 -0700

    Adding some helper files to aid with building expressions. Added helper files for addition, multiplication and substraction

commit e5e2533efb09fc97c9303074fdf4fd058f18f1a8
Author: Saheed Adepoju <adepoju@gmail.com>
Date:   Tue Apr 14 21:38:45 2020 -0700

    Initial commit. AParser can consume a token and do a simple look ahead.
