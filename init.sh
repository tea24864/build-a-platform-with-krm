#!/usr/bin/env bash

export PROJECT_ID="my-krm" 

export GITHUB_USERNAME="tea24864"

gcloud config set project ${PROJECT_ID}

# The following is only needed at the beginning of the project setup
gcloud services enable \
  cloudresourcemanager.googleapis.com \
  container.googleapis.com \
  cloudbuild.googleapis.com \
  sqladmin.googleapis.com \
  secretmanager.googleapis.com \
  cloudasset.googleapis.com \
  storage.googleapis.com  
export PROJECT=$(gcloud config get-value project)
export PROJECT_NUM=$(gcloud projects list --filter="${PROJECT}" --format="value(PROJECT_NUMBER)")
echo $PROJECT_NUM
