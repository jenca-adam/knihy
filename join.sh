#!/bin/bash
pdfjam chapter?/*.pdf 
mv worksheet-pdfjam.pdf book.pdf
qpdf --rotate=-90 book.pdf --replace-input

