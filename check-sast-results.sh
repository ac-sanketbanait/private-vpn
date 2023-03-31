#!/bin/sh

if [ -s results.txt ]; then
        echo ""
        echo ""
        cat results.txt
        echo ""
        echo "ERROR: SAST SCAN FOUND VULNERABILITIES - FIX ALL VULNERABILITIES TO CONTINUE"
        echo ""
        exit 1
fi
