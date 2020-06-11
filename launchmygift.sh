#!/bin/bash
#/*************************************************************************************************************
#*       Author       : Team Neruppu
#*       Purpose      : To wish our nerd programmer friend on his birthday
#*       Version      : 29.0
#***************************************************************************************************************

##Launch Birthday Gift
launch_gift(){
  #set -x
  echo  "Pulling your gift from the repository......";
  if docker pull jaikumar3012/wishkoundinya:29; then
    echo  "Gift Pulled Successfully!! Launching your gift....";
  else
    echo  "You need Docker to get your gift. Its simple - https://docs.docker.com/docker-for-mac/install/";
  fi

  if docker run -d -p 80:80 jaikumar3012/wishkoundinya:29; then
    echo  "Pirandha Naal Nalvazhthukal!!! Open browser and type http://localhost to access your gift";
  else
    echo  "You need Docker to get your gift. Its simple - https://docs.docker.com/docker-for-mac/install/";
  fi
}
launch_gift
