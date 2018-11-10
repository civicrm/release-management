# CiviCRM Release Management

This project supports meta-activities for release-management, such as the
index of release-plans and the release invitations.

## Release Plans

| Name   | Development/Alpha Period | RC/Beta Period  | Release Date   | Stable Period |
| ------ | ------------------------ | --------------- |----------------| ------------- |
| 5.9.x  | Nov 2018                 | Dec 2018        | Jan 2, 2019    | Jan 2019      |
| 5.8.x  | Oct 2018                 | Nov 2018        | Dec 5, 2018    | Dec 2018      |
| 5.7.x  | Sep 2018                 | Oct 2018        | Nov 7, 2018    | Nov 2018      |
| 5.6.x  | Aug 2018                 | Sep 2018        | Oct 3, 2018    | Oct 2018      |
| 5.5.x  | Jul 2018                 | Aug 2018        | Sep 5, 2018    | Sep 2018      |
| 5.4.x  | Jun 2018                 | Jul 2018        | Aug 1, 2018    | Aug 2018      |
| 5.3.x  | May 2018                 | Jun 2018        | Jul 3, 2018    | Jul 2018      |
| 5.2.x  | Apr 2018                 | May 2018        | Jun 6, 2018    | Jun 2018      |
| 5.1.x  | Mar 2018                 | Apr 2018        | May 2, 2018    | May 2018      |
| 5.0.x  | Feb 2018                 | Mar 2018        | Apr 4, 2018    | Apr 2018      |

Unless stated otherwise, months are generally bounded by the first Wed. Thus, development in May 2018 actually lasts from 2-May-18 to 6-Jun-18.

Each period has a different policy on accepting changes:

* During the *Development/Alpha* period, changes are accepted on the `master` branch.  These should generally be bugfixes, API improvements,
  or small features -- but anything that passes the [review process](https://docs.civicrm.org/dev/en/latest/standards/review/) may be accepted.
  The branch is internally numbered as `5.x.alpha1`.
* During the *RC/Beta* period, a new branch (e.g. `5.0` or `5.1` or `5.2`) is created. There is a general freeze on scope.
  However, fixes for recent regressions may still be accepted. The branch is internally numbered as `5.x.beta1`. (In some
  unusual circumstances, it could be incremented to `5.x.beta2`, etc.)
* On the *Release Date*, the first `5.x.0` version is released.
* During the *Stable* period, patches are not generally accepted. However, there may be patches in the following cases:
    * If a recent regression is fixed and approved for the concurrent RC/beta, then it may be back-ported to the stable.
      These fixes are generally released ASAP, but this is left to the discretion the maintenance/release teams.
    * The security team may approve patches for a security release. Security releases may only be published on the
      first or third Wednesday of the month (US/Pacific time).
    * If there are any subsequent updates, they will increment the third digit (`5.x.1`, `5.x.2`, etc).

(*For historical planning information from 4.7.x cycles, see [4.7-release-history.md](doc/4.7-release-history.md).*)

## Philosophy

Reviewing and testing are natural, important, on-going parts of software-development, but they generally cannot be done by the original developer. All developers have a shared interest in having their changes reviewed by a neutral and competent party. The goal of the release-cycle is to match-up developers who are willing to check each other's work, and to bring in feedback from non-developers to improve quality assurance.
