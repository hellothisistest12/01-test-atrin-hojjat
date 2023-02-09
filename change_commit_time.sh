#!/bin/sh

git filter-branch -f --env-filter \
    'if [ $GIT_COMMIT = fc2b8e0ac6e9eb1c9d58f67593485bfe4f02271a ]
     then
         export GIT_AUTHOR_DATE="Mon Feb 6 12:00:00 2023 -0700"
         export GIT_COMMITTER_DATE="Mon Feb 6 12:00:00 2023 -0700"
     fi'