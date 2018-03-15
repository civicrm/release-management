# CiviCRM (Any Version): Announce a final release

## Security announcements

Consult the "Security and Release Planning" spreadsheet and check the security items which are marked for this release:

* Verify that each advisory is published. Ensure that the advisory's date matches the current date. (Tip: To ensure pleasant order, set the time as `12:00:{advisorynumber}`.) Ensure that the author is `dev-team`.  Browse https://civicrm.org/advisory
* Verify that each JIRA issue is closed (Done/Fixed) with appropriate version#. Leave the security level as "Security: Unpublished". 

Next, prepare a mail blast in CiviMail. The message should:

* Use the template below
* Link to each security advisory (Tip: Double-check these links. During the writing/editing process, the URL may change whenever someone fixes text in the advisory title.)
* Send the blast to members of the group "Security Notifications" ([more information](https://civicrm.org/security))

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

[Post to the blog](http://civicrm.org/blog). A few things to ensure:
 * The author of the blog should be Drupal user `dev-team`. (If you don't have rights to specify the blog's author, and if you don't have a password for `dev-team`, then PM `totten` for the credentials.)
 * Check "Promote to Front Page" so blog appears on home page banner (below gallery). 
 * Blog should include release highlights.  
 * List of CONTRIBUTORS should be reviewed and updated (process TBD). (*Is this still relevant now that we have better relase notes?*)


## Twitter

Post to Twitter as "@civicrm" (or ping the `marketing` channel on Mattermost). Indicate whether there are security fixes and/or bug fixes.

## JIRA

Update Versions in JIRA (http://issues.civicrm.org/jira/plugins/servlet/project-config/CRM/versions) (TODO: does JIRA have an api we could tap into to add this step to the releaser script?)

 * Mark this version as released
 * Add 'next' versions (should be two future versions present on active branch - e.g. when 4.7.1 is released, should be 4.7.2 and 4.7.3)
