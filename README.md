# CiviCRM Release Management

This project supports meta-activities for release-management, such as the
index of release-plans and the release invitations.

## Release Plans

| Name            | Invitations     | Review Week    | Test Week      | Release       | Planning Document |
| --------------- | --------------- | -------------- |----------------| ------------- |-------------------|
| April-May Cycle (4.7.7) | Apr 5 - 8       | Apr 9 - 18     | Apr 22 - May 1 | May 4, 2016   | [Google Doc](https://docs.google.com/spreadsheets/d/14j8YgFTeMneuLI7iKOBhZYu1i1oksvKLG47W7hYUwU0/edit?usp=sharing)
| May-June Cycle (4.7.8) | May 5 - 10       | May 10 - 18    | May 21 - 29    | June 1, 2016   | [Google Doc](https://docs.google.com/spreadsheets/d/10EyNqm3-CbAwUjYzckrwSE7VjpZCfatzh-bES59XqA8/edit?usp=sharing)
| June-July Cycle (4.7.9) | TBD             | TBD            | TBD            | July 6, 2016   | [Google Doc](https://docs.google.com/spreadsheets/d/10EyNqm3-CbAwUjYzckrwSE7VjpZCfatzh-bES59XqA8/edit?usp=sharing)

 * **Invitations**: The release-manager curates the list of pending PRs and invites developers to partner-up based on related topics (such as a "CiviMail" group or a "CiviContribute" group). All members of the core developer team will participate.
 * **Review Week**: Participants review each other's PRs. This may involve some discussion, code-review, testing, merging, or closing PRs.
 * **Test Week**: Participants install the release-candidate with realistic configurations (eg staging sites) and check that their major customizations still work. Emergency issues (regressions) may be fixed.

(Note: This is a new process and may change for future releases.)

## Philosophy

Reviewing and testing are natural, important, on-going parts of software-development, but they generally cannot be done by the original developer. All developers have a shared interest in having their changes reviewed by a neutral and competent party. The goal of the release-cycle is to match-up developers who are willing to check each other's work.
