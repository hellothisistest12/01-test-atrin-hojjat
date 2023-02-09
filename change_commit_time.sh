#!/bin/sh

git filter-branch --env-filter \
    'if [ $GIT_COMMIT = 902344e183a03f80316a8e28d0f5d2d89e216c9a ]
     then
         export GIT_AUTHOR_DATE="Sun Feb 5 12:00:00 2023 -0700"
         export GIT_COMMITTER_DATE="Sun Feb 5 12:00:00 2023 -0700"
     fi'