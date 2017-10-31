#!/bin/sh

# Install Java dependencies

echo 'Java install'
(
   cd bionitio
   mvn --quiet compile
   mvn --quiet package

)
