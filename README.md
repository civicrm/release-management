# CiviCRM Release Management

This project supports meta-activities for release-management, such as the
index of release-plans and the release invitations.

## Release Plans

| Release       | Invitation Week | Review Week    | Test Week      | Planning Document |
| ------------- | --------------- | -------------- |----------------|-------------------|
| May 4, 2016   | Apr 5 - 8       | Apr 9 - 18     | Apr 22 - May 1 | [Google Doc](https://docs.google.com/spreadsheets/d/14j8YgFTeMneuLI7iKOBhZYu1i1oksvKLG47W7hYUwU0/edit?usp=sharing)
| Jun 1, 2016   | May 3 - 6       | May 7 - 16     | May 20 - 29    | (prepare in late April)

 * **Invitation Week**: The release-manager curates the list of pending PRs and invites developers to organize topical working-groups (such as a "CiviMail" group or a "CiviContribute" group). All members of the core team participate in working-groups.
 * **Review Week**: Participants review each other's PRs. This may involve some discussion, code-review, testing, merging, or closing PRs.
 * **Test Week**: Participants install the release-candidate with realistic configurations (eg staging sites) and check that their major customizations still work. Emergency issues (regressions) may be fixed.

(Note: This is a new process and may change for future releases.)

## Philosophy

Reviewing and testing are natural, important, on-going parts of software-development, but they generally cannot be done by the original developer. All developers have a shared interest in having their changes reviewed by a neutral and competent party. The goal of the release-cycle is to match-up developers who are willing to check each other's work.
