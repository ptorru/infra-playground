#!/bin/bash
docker stop u1 && docker rm u1
docker stop u2 && docker rm u2
docker stop u3 && docker rm u3
docker stop u4 && docker rm u4
ssh-keygen -R '[localhost]':2222
ssh-keygen -R '[localhost]':2223
ssh-keygen -R '[localhost]':2224
ssh-keygen -R '[localhost]':2225
ssh-keygen -R localhost
