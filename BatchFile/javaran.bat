echo %~n1 %2 %3
javac %~n1.java
java %~n1 %2 %3
del *.class
