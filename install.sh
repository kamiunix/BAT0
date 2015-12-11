#!/bin/bash

git=`pwd`

echo "looking for ${USER}/bin"
echo "..."
cd;
if [ -d bin ]; then
  echo "${USER}/bin found"
  cd bin
  cp ${git}/bchrg ./
else
  echo "creating ${USER}/bin"
  mkdir bin
  cd !\$
  cp ${git}/bchrg ./
fi

echo "looking for path"
echo "..."
if [ `echo $PATH | grep "${USER}/bin"` == "" ]; then
  echo "adding path to .bashrc"
  echo 'PATH=$HOME/bin:$PATH' >> ~/.bashrc
else
  echo "path found"
fi

echo "script installed!" 
echo "try   bchrg"
echo "-------------------------------------------"
echo "|    check README if an error occurs      | "
echo "| submit the error if it is undocumented  | "
echo "------------Have a good day!---------------"
