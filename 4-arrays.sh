#!/bin/bash

movies=("hyderabad" "delhi" "Bangalore")

echo "first city in india: ${movies[0]}"
echo "second city in india: ${movies[1]}"
echo "third city in india: ${movies[2]}"

echo "All cities in india: ${movies[@]}"