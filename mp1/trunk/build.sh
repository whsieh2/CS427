#!/bin/bash

clear
echo "Starting..."

echo " "

echo "Creating the JUNIT directory"

mkdir -p  $HOME/.m2/repository/junit/junit/4.12/

echo " "

echo "Downloading JUNIT 4.12"

wget -P $HOME/.m2/repository/junit/junit/4.12/ "http://central.maven.org/maven2/junit/junit/4.12/junit-4.12.jar"

echo " "

echo "Creating the Hamcrest directory"

mkdir -p $HOME/.m2/repository/org/hamcrest/hamcrest-core/1.3/

echo " "

echo "Downloading Hamcrest Core 1.3"

wget -P $HOME/.m2/repository/org/hamcrest/hamcrest-core/1.3/ "http://central.maven.org/maven2/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar"

echo " "

echo "Creating target/classes/ directory in mp1/trunk"

mkdir -p $HOME/cs427/mp1/trunk/target/classes/

echo " "

echo "Compiling Java codes (Sequence, SequenceUtil, MySequence)"

cd $HOME/cs427/mp1/trunk/src/main/java/pkg/

javac -d $HOME/cs427/mp1/trunk/target/classes/ MySequence.java Sequence.java SequenceUtil.java

echo " "

echo "Creating target/test-classes/ directory in mp1/trunk"

mkdir -p ~/cs427/mp1/trunk/target/test-classes/

echo " "

echo "Compiling test codes"

cd $HOME/cs427/mp1/trunk/src/test/java/pkg

javac -cp $HOME/.m2/repository/junit/junit/4.12/junit-4.12.jar -d $HOME/cs427/mp1/trunk/target/test-classes SequenceUtilTest.java

java -cp $HOME/.m2/repository/junit/junit/4.12/junit-4.12.jar:$HOME/cs427/mp1/trunk/target/test-classes/:$HOME/.m2/repository/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar org.junit.runner.JUnitCore pkg.SequenceUtilTest
