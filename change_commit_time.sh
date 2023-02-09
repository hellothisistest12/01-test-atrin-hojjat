#!/bin/sh

git filter-branch --env-filter \
    'if [ $GIT_COMMIT = $CMT_ID ]
     then
         export GIT_AUTHOR_DATE="Fri Jan 2 21:38:53 2009 -0800"
         export GIT_COMMITTER_DATE="Sat May 19 01:01:01 2007 -0700"
     fi'