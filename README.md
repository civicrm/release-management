# CiviCRM Release Management

This project supports documentation and meta-activities for release-management.

## Release Plans

| Name   | Development/Alpha Period | RC/Beta Period  | Release Date   | Stable Period |
| ------ | ------------------------ | --------------- |----------------| ------------- |
| 5.49.x | Mar 2022                 | Apr 2022        | May 4, 2022    | May 2022      |
| 5.48.x | Feb 2022                 | Mar 2022        | Apr 6, 2022    | Apr 2022      |
| 5.47.x | Jan 2022                 | Feb 2022        | Mar 2, 2022    | Mar 2022      |
| 5.46.x | Dec 2021                 | Jan 2022        | Feb 2, 2022    | Feb 2022      |
| 5.45.x | Nov 2021                 | Dec 2021        | Jan 5, 2022    | Jan 2022 (tentative ESR) |
| 5.44.x | Oct 2021                 | Nov 2021        | Dec 1, 2021    | Dec 2021      |
| 5.43.x | Sep 2021                 | Oct 2021        | Nov 3, 2021    | Nov 2021      |
| 5.42.x | Aug 2021                 | Sep 2021        | Oct 6, 2021    | Oct 2021      |
| 5.41.x | Jul 2021                 | Aug 2021        | Sep 1, 2021    | Sep 2021      |
| 5.40.x | Jun 2021                 | Jul 2021        | Aug 4, 2021    | Aug 2021      |
| 5.39.x | May 2021                 | Jun 2021        | Jul 7, 2021    | Jul 2021 (tentative ESR) |
| 5.38.x | Apr 2021                 | May 2021        | Jun 2, 2021    | Jun 2021      |
| 5.37.x | Mar 2021                 | Apr 2021        | May 5, 2021    | May 2021      |
| 5.36.x | Feb 2021                 | Mar 2021        | Apr 7, 2021    | Apr 2021      |
| 5.35.x | Jan 2021                 | Feb 2021        | Mar 3, 2021    | Mar 2021      |
| 5.34.x | Dec 2020                 | Jan 2021        | Feb 3, 2021    | Feb 2021      |
| 5.33.x | Nov 2020                 | Dec 2020        | Jan 6, 2021    | Jan 2021 plus [ESR](https://civicrm.org/esr) |
| 5.32.x | Oct 2020                 | Nov 2020        | Dec 2, 2020    | Dec 2020      |
| 5.31.x | Sep 2020                 | Oct 2020        | Nov 4, 2020    | Nov 2020      |
| 5.30.x | Aug 2020                 | Sep 2020        | Oct 7, 2020    | Oct 2020      |
| 5.29.x | Jul 2020                 | Aug 2020        | Sep 2, 2020    | Sep 2020      |
| 5.28.x | Jun 2020                 | Jul 2020        | Aug 5, 2020    | Aug 2020      |
| 5.27.x | May 2020                 | Jun 2020        | Jul 1, 2020    | Jul 2020 plus [ESR](https://civicrm.org/esr)  |
| 5.26.x | Apr 2020                 | May 2020        | Jun 3, 2020    | Jun 2020      |
| 5.25.x | Mar 2020                 | Apr 2020        | May 6, 2020    | May 2020      |
| 5.24.x | Feb 2020                 | Mar 2020        | Apr 1, 2020    | Apr 2020      |
| 5.23.x | Jan 2020                 | Feb 2020        | Mar 4, 2020    | Mar 2020      |
| 5.22.x | Dec 2019                 | Jan 2020        | Feb 5, 2020    | Feb 2020      |
| 5.21.x | Nov 2019                 | Dec 2019        | Jan 1, 2020    | Jan 2020 plus [ESR](https://civicrm.org/esr) |
| 5.20.x | Oct 2019                 | Nov 2019        | Dec 4, 2019    | Dec 2019      |
| 5.19.x | Sep 2019                 | Oct 2019        | Nov 6, 2019    | Nov 2019      |
| 5.18.x | Aug 2019                 | Sep 2019        | Oct 2, 2019    | Oct 2019      |
| 5.17.x | Jul 2019                 | Aug 2019        | Sep 4, 2019    | Sep 2019      |
| 5.16.x | Jun 2019                 | Jul 2019        | Aug 7, 2019    | Aug 2019      |
| 5.15.x | May 2019                 | Jun 2019        | Jul 3, 2019    | Jul 2019      |
| 5.14.x | Apr 2019                 | May 2019        | Jun 5, 2019    | Jun 2019      |
| 5.13.x | Mar 2019                 | Apr 2019        | May 1, 2019    | May 2019 plus [ESR](https://civicrm.org/esr) |
| 5.12.x | Feb 2019                 | Mar 2019        | Apr 3, 2019    | Apr 2019      |
| 5.11.x | Jan 2019                 | Feb 2019        | Mar 6, 2019    | Mar 2019      |
| 5.10.x | Dec 2018                 | Jan 2019        | Feb 7, 2019    | Feb 2019      |
| 5.9.x  | Nov 2018                 | Dec 2018        | Jan 2, 2019    | Jan 2019      |
| 5.8.x  | Oct 2018                 | Nov 2018        | Dec 5, 2018    | Dec 2018      |
| 5.7.x  | Sep 2018                 | Oct 2018        | Nov 7, 2018    | Nov 2018 plus [ESR](https://civicrm.org/esr) |
| 5.6.x  | Aug 2018                 | Sep 2018        | Oct 3, 2018    | Oct 2018      |
| 5.5.x  | Jul 2018                 | Aug 2018        | Sep 5, 2018    | Sep 2018      |
| 5.4.x  | Jun 2018                 | Jul 2018        | Aug 1, 2018    | Aug 2018      |
| 5.3.x  | May 2018                 | Jun 2018        | Jul 3, 2018    | Jul 2018      |
| 5.2.x  | Apr 2018                 | May 2018        | Jun 6, 2018    | Jun 2018      |
| 5.1.x  | Mar 2018                 | Apr 2018        | May 2, 2018    | May 2018      |
| 5.0.x  | Feb 2018                 | Mar 2018        | Apr 4, 2018    | Apr 2018      |

## Release Lifecycle

Each period has a different policy on accepting changes:

* During the *Development/Alpha* period, changes are accepted on the `master` branch.  These should generally be bugfixes, API improvements,
  or small features -- but anything that passes the [review process](https://docs.civicrm.org/dev/en/latest/standards/review/) may be accepted.
  The branch is internally numbered as `5.x.alpha1`.
* During the *RC/Beta* period, a new branch (e.g.  `5.0` or `5.1` or `5.2`) is created.  There is a general freeze on scope.  However, fixes for
  recent regressions may still be accepted, and they will merge-forward to `master`.  The branch is internally numbered as `5.x.beta1`.  (In some
  unusual circumstances, it could be incremented to `5.x.beta2`, etc.)
* On the *Release Date*, the `5.x.0` version is tagged and released.
* During the *Stable* period, patches are not generally accepted, and there is no automatic merging. There may be patches in the following cases:
    * If a recent regression is fixed and approved for the concurrent RC/beta, then it may be back-ported to the stable.
      These fixes are generally released ASAP, but this is left to the discretion the maintenance/release teams.
    * The security team may approve patches for a security release. Security releases may only be published on the
      first or third Wednesday of the month (US/Pacific time).
    * If there are any subsequent updates, they will increment the third digit (`5.x.1`, `5.x.2`, etc).

(*For historical planning information from 4.7.x cycles, see [4.7-release-history.md](doc/4.7-release-history.md).*)

## Timing

General rules:

* Months are bounded by the first Wed. Thus, development in May 2018 actually lasts from 2-May-18 to 6-Jun-18.
* Release dates are usually construed in US/Pacific time. Thus, a release on 7-Apr-21 in US/Pacific time may
  be 8-Apr-21 in AU/Eastern time.
* On a designated *Release Date*, all three main branches (development, RC, stable) will usually be updated on the same day.

Those are not absolute rules -- exceptions may arise a couple times a year. For example:

* If the first Wed of a month coincides with major holiday (e.g. New Years Day), then it could be moved.
* If there is an important patch near completion, the new RC could be delayed an extra day.

## Philosophy

Reviewing and testing are natural, important, on-going parts of software-development, but they generally cannot be done by the original developer. All developers have a shared interest in having their changes reviewed by a neutral and competent party. The goal of the release-cycle is to match-up developers who are willing to check each other's work, and to bring in feedback from non-developers to improve quality assurance.
