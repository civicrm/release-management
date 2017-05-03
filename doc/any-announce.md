# CiviCRM v4.x.x: Announce a final release

## Security announcements

Liaise with security team, and with a JIRA search for any issues in this release which are Security: Unpublished. If there are matches,

 * A security advisory node for each security fix must be ready to be published on https://civicrm.org
 * A security advisory CiviMail must be ready to be sent to members of group Security Notifications ([more information](https://civicrm.org/security))
   The release must be made within the security release window.

Example announcement template:


> __Subject__: CiviCRM Security Releases (4.7.3, 4.6.9-LTS) - CIVI-SA-2015-004, CIVI-SA-2015-005
>
> There has been a security advisory for CiviCRM. We recommend you immediately upgrade to one of the following versions:
>
>        (list of fixed versions)
>
> The security advisories resolved in these releases address issues with FOO and BAR. Read the security advisories for details:
>
>        (links to security advisories, posted as nodes of type Security Advisory to [https://civicrm.org/advisory](https://civicrm.org/advisory))
>
> A number of other issues have been fixed in these releases. Upgrade now for the most stable CiviCRM experience.
>
> CiviCRM security announcements are available from [https://civicrm.org/advisory](https://civicrm.org/advisory) and via the [CiviCRM Security Notifications](https://civicrm.org/sites/all/modules/civicrm/extern/url.php?u=5441&qid=) email list.

## Blog

[Post to the blog](http://civicrm.org/blog) - and check "Promote to Front
Page" so blog appears on home page banner (below gallery).  Blog should
include release highlights.  List of CONTRIBUTORS should be reviewed and
updated (process TBD).

## Twitter

Post to Twitter as "@civicrm" (or ping the `marketing` channel on Mattermost). Indicate whether there are security fixes and/or bug fixes.

## JIRA

Update Versions in JIRA (http://issues.civicrm.org/jira/plugins/servlet/project-config/CRM/versions) (TODO: does JIRA have an api we could tap into to add this step to the releaser script?)

 * Mark this version as released
 * Add 'next' versions (should be two future versions present on active branch - e.g. when 4.7.1 is released, should be 4.7.2 and 4.7.3)
