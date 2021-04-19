#!/bin/bash
#
# Installs PLINK using the R code in the 'regenier' package
#
# Because the R code in the package uses 'regenier::' in calling
# its functions, this script removes these prefixes.
#
# Usage:
#
#  ./scripts/install_regenier.sh
#
#
cat R/*.R > tempscript.R

echo "install_regenie()" >> tempscript.R
sed -i'.orginal' "s/regenier:://g" tempscript.R
cat tempscript.R
Rscript tempscript.R
rm tempscript.R
rm tempscript.R.orginal
