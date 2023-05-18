#!/bin/bash

################################################################################
# Script Name: compile_report.sh
# Description: This script compiles the Report in LaTEX.
# Version: 1.0
# Author: Bruno Axel Kamere
# Created Date: 2023-05-15
# Last Modified: 2023-05-16
# License: [Specify the license under which this script is distributed]
#
# Usage:
#   - Provide examples of how to use the script.
#   - Include any necessary command-line options or arguments.
#   - Specify any prerequisites or dependencies.
#
# Dependencies:
#   - List any external dependencies required by the script (e.g., software packages).
#   - Include specific versions if necessary.
#
# Notes:
#   - Add any additional notes or important information about the script.
#   - Mention any known issues or limitations.
#   - Include any troubleshooting tips, if applicable.
#
# References:
#   - List any references or resources that were used to develop the script.
#   - Include links or citations for easy access.
# ===============================================
# Changelog:
# ===============================================
# Version 1.0 [2023-05-15] [Bruno Axel Kamere]
# - Initial file.
#
####################################################################

############ Code starts here... ############

compile="compile";
clean="clean";

if test -z "$2"
then
    if [ $1 = $clean ]; then
        echo "Cleaning please wait ..."
        rm -f *~
        rm -rf *.aux
        rm -rf *.bbl
        rm -rf *.blg
        rm -rf *.d
        rm -rf *.fls
        rm -rf *.ilg
        rm -rf *.ind
        rm -rf *.toc*
        rm -rf *.lot*
        rm -rf *.lof*
        rm -rf *.log
        rm -rf *.idx
        rm -rf *.out*
        rm -rf *.nlo
        rm -rf *.nls
        rm -rf $filename.pdf
        rm -rf $filename.ps
        rm -rf $filename.dvi
        rm -rf *#*
        echo "Cleaning complete!"
        exit
    else
        echo "Shell script for compiling the Report"
        echo "Usage: sh ./compile_report.sh [OPTIONS] [filename]"
        echo "[option]  compile: Compiles the Report"
        echo "[option]  clean: removes temporary files no filename required"
        exit
    fi
fi

filename=$2;

if [ $1 = $clean ]; then
    echo "Cleaning please wait ..."
    rm -f *~
    rm -rf *.aux
    rm -rf *.bbl
    rm -rf *.blg
    rm -rf *.d
    rm -rf *.fls
    rm -rf *.ilg
    rm -rf *.ind
    rm -rf *.toc*
    rm -rf *.lot*
    rm -rf *.lof*
    rm -rf *.log
    rm -rf *.idx
    rm -rf *.out*
    rm -rf *.nlo
    rm -rf *.nls
    rm -rf $filename.pdf
    rm -rf $filename.ps
    rm -rf $filename.dvi
    rm -rf *#*
    echo "Cleaning complete!"
    exit
    elif [ $1 = $compile ]; then
    echo "Compiling the Report...please wait...!"
    pdflatex -shell-escape -interaction=nonstopmode $filename.tex
    bibtex $filename.aux
    makeindex $filename.aux
    makeindex $filename.idx
    makeindex $filename.nlo -s nomencl.ist -o $filename.nls
    pdflatex -shell-escape -interaction=nonstopmode $filename.tex
    makeindex $filename.nlo -s nomencl.ist -o $filename.nls
    pdflatex -shell-escape -interaction=nonstopmode $filename.tex
    echo "Success!"
    exit
fi


if test -z "$3"
then
    exit
fi

############ Code ends here... ############