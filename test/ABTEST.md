# Test 1
**App Starting Screen**
Metrics:

Happiness: User satisfaction ratings post-experience (via in-app survey)
Engagement: Average time spent on the app during the session
Adoption: Number of playlists created per user session
Retention: Return rate of users after the first visit
Task Success Rate: Percentage of users successfully generating a playlist within the first session
Hypothesis: We believe that displaying saved playlists as the starting screen will lead to higher user engagement and satisfaction compared to showing the generate playlist page. Users may prefer immediate access to their saved playlists, which could encourage more frequent use of the app.

What problem are we trying to solve? Its impact? Currently, users are directed to the generate playlist page upon launching the app. While this page allows users to create playlists, it may not effectively engage users who already have saved playlists. We suspect this approach may lead to a disconnect for returning users, causing a drop-off in engagement and retention. By testing the saved playlists as the starting screen, we aim to determine if providing immediate access to personal content will enhance user experience and encourage continued app usage.

Experiment: The experiment will be set up using Firebase's A/B testing framework. We will randomly allocate 50% of users to see the saved playlists screen (Variant A) and the other 50% to the generate playlist page (Variant B). All users will be included in the experiment to ensure a comprehensive understanding of preferences across our entire user base.

We will track user interactions through Firebase Analytics, specifically monitoring the following:

Click-through rates on the "Generate Playlist" button from the saved playlists screen
User ratings via in-app surveys after interacting with either screen
Session duration and number of playlists created
Variations:

Variant A: Saved Playlists Screen

Design includes a prominent section displaying the user’s saved playlists with an option to create a new playlist easily.
Visual mockup will show playlists in a grid format, highlighting user engagement.
Variant B: Generate Playlist Page

This page will feature prompts for creating a playlist based on user preferences.
Visual mockup will illustrate a simplified interface focusing on playlist generation without personal content.
Both variants will be accompanied by a user-friendly interface ensuring easy navigation. The success of the test will be determined based on the analysis of the HEART metrics outlined above.


# Test 2
