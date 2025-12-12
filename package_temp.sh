#!/bin/bash

#Extract temperature of Package
package_temp=$(sensors | grep 'Package id 0' | awk '{print int($4)}')

#Output of the result
echo "$package_temp"
