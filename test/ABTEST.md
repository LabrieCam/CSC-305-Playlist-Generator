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

**App Bar Positioning**

### Objectives
- **Happiness**: Collect user satisfaction ratings post-interaction (via in-app survey) related to the app's usability and app bar placement.
- **Engagement**: Measure average time spent navigating the app during sessions.
- **Adoption**: Track the number of playlist requests made per session based on app bar position.
- **Retention**: Monitor return rates post-first visit to gauge which position fosters repeat usage.
- **Task Success Rate**: Observe the percentage of users successfully completing playlist generation within their first session.

---

### Hypothesis
Positioning the app bar at the bottom of the screen will increase engagement and satisfaction by providing easier navigation, particularly for one-handed use. Users may find it more intuitive, which could lead to higher satisfaction and task success rates.

---

### Problem Statement
Currently, the app bar is positioned at the top, requiring users to reach for the navigation controls, which may affect their engagement and retention. Given the app's main function of playlist generation, a more accessible navigation might improve user experience, especially for quick playlist creation and exploration. By testing the app bar's position, we aim to determine whether repositioning will enhance user experience, engagement, and retention.

---

### Experiment
The experiment will use Firebase's A/B testing framework to randomly assign 50% of users to:

- **Variant A**: App bar positioned at the top of the screen (current design).
- **Variant B**: App bar positioned at the bottom of the screen.

All users will be part of the experiment to capture a complete view of preferences.

#### Metrics to Track via Firebase Analytics:
- **Navigation click-through rate**: Frequency of user interactions with the app bar in each position.
- **Session duration**: Average time spent per session.
- **User satisfaction**: Collected through in-app surveys post-experience.
- **Playlist generation count**: Number of playlists generated per session.
- **Task success rate**: Percentage of users generating a playlist within the first session.

---

### Variations
**Variant A: Top Position App Bar**

- App bar located at the top, with icons for creating and viewing playlists.


**Variant B: Bottom Position App Bar**

- App bar located at the bottom, improving accessibility for quick navigation.


*Mockups*: Both variations will maintain a user-friendly design, with clear icons and intuitive navigation options.

---

### Success Criteria
The test will be considered successful if the app bar at the bottom yields higher engagement and satisfaction according to the HEART metrics. A successful result would indicate the advantage of a more accessible app bar, potentially becoming a permanent design update to optimize user experience.
---
# Test 3

**Genre Selection Method**

### Objectives
- **Happiness**: Gather feedback through post-session surveys on user satisfaction regarding genre selection experience.
- **Engagement**: Track the number of playlists generated per session to see if more frequent genre selection encourages exploration.
- **Adoption**: Count how many users create multiple playlists within a single session under each genre-selection method.
- **Retention**: Measure return rates to assess if either genre-selection approach impacts long-term usage.
- **Task Success Rate**: Observe the percentage of users who successfully create a playlist with their desired genre during their first session.

### Hypothesis
Allowing users to select a genre for each playlist will increase engagement and satisfaction by promoting greater personalization. By giving users more control over the genre selection, we expect users to generate more playlists tailored to specific moods or activities, which could improve their overall experience and satisfaction.

### Problem Statement
Currently, users select a single genre at login, which applies to all playlists they create in that session. While this may simplify the process, it may limit users’ ability to create varied playlists for different preferences. By experimenting with the genre selection method, we aim to understand if greater flexibility in genre choice can improve engagement, satisfaction, and retention.

### Experiment
The experiment will utilize Firebase's A/B testing framework to split users into two groups:

- **Variant A**: Single genre selection at login (current design).
- **Variant B**: Genre selection available for each playlist generated, allowing users to pick a different genre each time.

All users will be included in the experiment to capture a comprehensive view of preferences and behaviors.

**Metrics to Track via Firebase Analytics**:

- **Playlist creation frequency**: Number of playlists generated per session under each genre-selection method.
- **User satisfaction**: Collected through in-app surveys post-experience.
- **Average playlists per session**: Measures playlist generation activity and any increase due to variant B.
- **Task success rate**: Percentage of users successfully creating a playlist with their preferred genre in the first session.

### Variations
**Variant A**: Single Genre Selection at Login
- Users choose one genre at the start of the session, which applies to all playlists created during that session.
**Variant B**: Genre Selection for Each Playlist
- Users can select a genre for each new playlist they create, enhancing customization for specific moods or activities.
**Mockups**: Both variations will use a clear, streamlined interface, with intuitive options for selecting genres and creating playlists.


### Success Criteria
The test will be considered successful if allowing users to select a genre per playlist (Variant B) results in higher engagement and satisfaction according to the HEART metrics. A successful outcome would suggest that offering more customization options for each playlist improves the user experience and could justify implementing this as a permanent feature.
