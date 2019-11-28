# CiviCRM (Any Version): Prerequisites

* Install+configure [Google Cloud SDK](https://cloud.google.com/sdk/downloads). (Run `gcloud init`, `gcloud auth activate-service-account --key-file ...`, or similar.)
* Write access to all main CiviCRM GitHub repos (`civicrm-{core,packages,backdrop,drupal,joomla,wordpress}`)
* Write access to Google Cloud Storage (`civicrm` and `civicrm-build` buckets)
* Write access to SourceForge account (`civicrm`) as well as an [sf.net API key](https://sourceforge.net/auth/preferences/)
* Admin access to CiviCRM Jenkins (https://test.civicrm.org)
* Import the CiviCRM GPG keypair (`7A1E75CB`)
* Local copy of [buildkit](https://github.com/civicrm/civicrm-buildkit/)
* Local clones of all main CiviCRM git repos (e.g. `mkdir src; cd src; gitify all --skip-gencode` or `cividist create dist`)

The user `releaser` on `latest.civicrm.org` has a suitable configuration in `~/src/4.6`, `~/src/4.7`, and `~/src/master`.
To start a session, login to that account and run:

```
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
```
