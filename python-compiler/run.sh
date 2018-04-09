#!/bin/bash

echo "🛠️ Preparing ..."
rm -f src/main/java/JLex/Lexer.java
rm -f src/main/resources/snippets/*/*.out

echo "🚀  Running ..."
javac src/main/java/JLex/Main.java
java -cp src/main/java/JLex Main src/main/java/JLex/Lexer
javac src/main/java/JLex/Lexer.java
java -cp src/main/java/JLex Lexer

echo "💥 Cleaning up ..."
rm -f src/main/java/JLex/*.class

echo "✅  Done!"
