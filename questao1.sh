#!/bin/bash

echo "Digite seu peso (kg): "
read PESO

echo "Digite sua altura (m): "
read ALTURA

IMC=$((PESO/$((ALTURA*ALTURA))))

echo "IMC = {$IMC}"
