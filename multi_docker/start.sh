#!/bin/bash
docker build -t ubu:Dev2 .
docker run -d -p 2222:22 --name u1 ubu:Dev2
docker run -d -p 2223:22 --name u2 ubu:Dev2
docker run -d -p 2224:22 --name u3 ubu:Dev2
docker run -d -p 2225:22 --name u4 ubu:Dev2
