If this is a major release (e.g. 4.7.0):

* check that wiki doc header and versions widget are updated.
* Check Downloads page and links in CiviCRM.org. (this appears to be invalid?)
* Check https://civicrm.org/download/list
* ~~update download links which appear on CiviCRM.org home page Download tab~~
    * ~~search for content of type Download and update the links for each release with corresponding download link~~
    * (I don't see these links, and the content in the nodes looks ancient – 4.4)
* Update the links in the demo and sandbox pages so that they reflect the latest version: https://civicrm.org/go/demo and http://civicrm.org/sandboxes
* Update the Jenkins jobs https://test.civicrm.org/view/Sites/job/demo.civicrm.org/
* Check latest.civicrm.org/versions.json to make sure this version has changed from "testing" to "stable" and previous stable version is either "lts" or "eol"
* Increment this section title (wink)
