#!/bin/bash

echo "Simple Interest Calculator"

read -p "Enter Principal amount: " p
read -p "Enter Rate of Interest: " r
read -p "Enter Time period: " t

si=$(echo "scale=2; ($p * $r * $t) / 100" | bc)

echo "Simple Interest = $si"
