# Terrible blog assignment for Code Fellows Ruby on Rails Development Accelerator: a lesson in preformance evaluation.

Original blog loads in in 48526.3ms.
Added goldiloads for eager loading... now loads in 14376.1ms.
Added will_paginate... now loads in 1551.7ms (however, comments are advancing by 10s on every post, not just the designated one).

Blog is deployed at: (http://salty-coast-4259.herokuapp.com/)

# My Approach

After playing with Active Record eager loading options to combine blog posts and comments, I choose Goldiloader since the blog is a good fit for what the gem automatically provides. I had trouble implementing pagination because of the partials -- as is, my solution is advancing comments for *all posts*, not just the one selected. Adding pagination to posts in addition to comments made the problem worse (comments AND posts were advancing when only one was selected), so I've left that fix as a "todo."

As seen in the load impact results below, the goldiloader fix alone still resulted in more failed page loads than successes. The paginated approach resulted in no page failures.

Given more time and resources to work on this, I would paginate the posts, add a button to each post to toggle show / hide comments, and add a button to each comment to toggle show / hide replies.

# Load Impact Results

* First load impact results (after goldiloader): (https://app.loadimpact.com/load-test/5671e7c7-613a-49f1-b07d-565dd7f8cd67)
180.2 MB DATA RECEIVED
85 reqs

URL Load zone User scenario Successful  Failed  Last avg

salty-coast-4259.herokuapp.com
Portland, US (Amazon) Auto generated scenario 18  67  30.33s


* Second load impact results (after pagination): (https://app.loadimpact.com/load-test/cc24c1f8-2dd6-4cae-9e58-adf3ccae6e74)

URL Load zone User scenario Successful  Failed  Last avg

salty-coast-4259.herokuapp.com
Ashburn, US (Amazon)  Auto generated from salty-coast-4259.herokuapp.com  259 0 11.49s

salty-coast-4259.herokuapp.com/../application-8df6b7292a3f6da0e7a6ac975d90603f.css
Ashburn, US (Amazon)  Auto generated from salty-coast-4259.herokuapp.com  247 0 73.57ms

salty-coast-4259.herokuapp.com/../application-ac707f27befbf24c535bc6c17b1f3bc5.js
Ashburn, US (Amazon)  Auto generated from salty-coast-4259.herokuapp.com  247 0 18.28ms


Original Assignment:

## My New Blog!

I've got a lot to say, and now I have a place to say it!!!!!

Read all my amazing posts!!!!! You can load them into the app with: `rake load:blog`

Since I know you want to read them all, I designed my page to show EVERYTHING on the front page of the site!!!!!

I know it is a little slow (but totes worth it!!!!)... _Do you know how I can make it faster?_
