#!/bin/bash

# Name of the output jar file
JAR_NAME="pps.jar"

# Paths to the src and lib directories
SRC_DIR="src"
LIB_DIR="lib"
OUT_DIR="out"
MANIFEST_FILE="manifest.txt"

# Specify the main class (replace with your actual main class)
MAIN_CLASS="Jpddlsim"

# Create the output directory
mkdir -p $OUT_DIR

# Compile the .java files in the src directory, using the libraries in lib
echo "Compiling Java files..."
javac -d $OUT_DIR -cp "$LIB_DIR/*" $(find $SRC_DIR -name "*.java")

# Check if the compilation was successful
if [ $? -eq 0 ]; then
    echo "Compilation successful."
else
    echo "Compilation failed."
    exit 1
fi

# Create the manifest file
echo "Creating manifest file..."

# Create the Class-Path entry with all .jar files in the lib directory
CLASS_PATH=$(echo $LIB_DIR/*.jar | sed 's/ / /g')

# Write the manifest with both Main-Class and Class-Path
echo "Main-Class: $MAIN_CLASS" > $MANIFEST_FILE
echo "Class-Path: $CLASS_PATH" >> $MANIFEST_FILE

# Create the JAR file with the manifest
echo "Creating JAR file..."
jar cmfv $MANIFEST_FILE $JAR_NAME -C $OUT_DIR .

# Check if the JAR was created successfully
if [ $? -eq 0 ]; then
    echo "JAR file created successfully: $JAR_NAME"
else
    echo "Error creating the JAR file."
    exit 1
fi

# Clean up the manifest file
rm $MANIFEST_FILE
