# CiviCRM Release Management

This project supports meta-activities for release-management, such as the
index of release-plans and the release invitations.

## Release Plans

| Name            | Invitations     | Review Week    | Test Week      | Release       | Post Mortem | Planning Document |
| --------------- | --------------- | -------------- |----------------| ------------- | ----------- |-------------------|
| October-November Cycle (4.7.13)| Sep 19 - Oct 13 | Sep 19 - Oct 13 | Oct 14 - 29 | Nov 2, 2016 | Nov 9 - 10 | [Google Doc](https://docs.google.com/spreadsheets/d/1Kr4OuyMqKBCo5TOSf5CCIKv4vP5X0oT7K3jB7gDLQxg/edit?usp=sharing)
| September-October Cycle (4.7.12)| Sep 8 - 18 | Sep 8 - 18 | Sep 20 - Oct 1 | Oct 5, 2016 | | 
| August-September Cycle (4.7.11) | --| Aug 16 - 27 | Aug 29 - Sep 4 | Sep 7, 2016 | | [Google Doc](https://docs.google.com/spreadsheets/d/1XSLoTNr6RKUvaydGPhdsQMT6orimub1AO1ZEbEe_Mp8/edit?usp=sharing), [JIRA Board](https://issues.civicrm.org/jira/secure/RapidBoard.jspa?rapidView=32&view=planning)
| July-August Cycle (4.7.10) | Jul 5 - 10 | Jul 11 - 19 | Jul 20 - Jul 29 | Jul 3, 2016 | | [Google Doc](https://docs.google.com/document/d/1UAFOy0gXar_ouzWgOpCdbMA2r6_sIyO_KPiZey9jVDE/edit), [JIRA Board](https://issues.civicrm.org/jira/secure/RapidBoard.jspa?rapidView=28&view=planning), [Calendar](https://calendar.google.com/calendar/embed?src=91qib0v17nu4oom8cv8vss9jp0%40group.calendar.google.com&ctz=US/Pacific)
| June-July Cycle (4.7.9) | Jun 9 - 14  | Jun 14 - 25  | Jun 27 - Jul 3    | Jul 6, 2016   | | [Google Doc](https://docs.google.com/spreadsheets/d/1fmHFOZ83ectSPCMWvXwCeJgrw4KpYi8JEV2ZDkd6XDU/edit?usp=sharing)
| May-June Cycle (4.7.8) | May 5 - 10 | May 10 - 18    | May 21 - 29    | Jun 1, 2016   | | [Google Doc](https://docs.google.com/spreadsheets/d/10EyNqm3-CbAwUjYzckrwSE7VjpZCfatzh-bES59XqA8/edit?usp=sharing)
| April-May Cycle (4.7.7) | Apr 5 - 8 | Apr 9 - 18     | Apr 22 - May 1 | May 4, 2016   | | [Google Doc](https://docs.google.com/spreadsheets/d/14j8YgFTeMneuLI7iKOBhZYu1i1oksvKLG47W7hYUwU0/edit?usp=sharing)

 * **Invitations**: The release-manager curates the list of pending PRs and invites developers to partner-up based on related topics (such as a "CiviMail" group or a "CiviContribute" group). All members of the core developer team will participate.
 * **Review Week**: Participants review each other's PRs. This may involve some discussion, code-review, testing, merging, or closing PRs.
 * **Test Week**: Participants install the release-candidate with realistic configurations (eg staging sites) and check that their major customizations still work. Emergency issues (regressions) may be fixed.

(Note: This is a new process and may change for future releases.)

## Philosophy

Reviewing and testing are natural, important, on-going parts of software-development, but they generally cannot be done by the original developer. All developers have a shared interest in having their changes reviewed by a neutral and competent party. The goal of the release-cycle is to match-up developers who are willing to check each other's work, and to bring in feedback from non-developers to improve quality assurance.
