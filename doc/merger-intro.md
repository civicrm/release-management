# Merger Guide

So you've been invited to be a merger.  Huzzah!  This means that you've been active in the CiviCRM development process
for quite a while -- participating in discussions, preparing patches, reviewing proposals, etc.  If you're reading
this, then you probably know 2/3 of the content already -- but the missing bits are hard to predict, and it'd look bad
for all of us if you somehow didn't know this stuff, so let's give it a quick whirl. It should take 5-10 minutes.

## Role of a merger

Mergers are (first and foremost) project-contributors; like all other contributors, we write proposals; we review
proposals; we test things; we give feedback/suggestions; we have topics that interest us (or don't interest us); we
have finite time; and we must take care of ourselves.

The difference is that mergers have an extra level of *access* and *experience*.  Accepting this access brings a
responsibility to act as a *facilitator* and as a *final check*.

* *Facilitation*: Other contributors don't have access to merge, so we merge for them. Sometimes, you may meet a
  contributor who is extremely experienced and thoughtful.  Sometimes, you may meet a new contributor who doesn't know
  how the process works or can't anticipate how the patch affects other subsystems.  We try to give pointers and
  pull-in other folks who can be helpful.  In facilitating, we want to encourage a culture that is productive,
  technically excellent, and cordial.

* *Final check*: The CiviCRM [Review Standards](https://docs.civicrm.org/dev/en/latest/standards/review/) lay out
  a number of questions/tasks to consider for each pull-request. You can do these reviews yourself, but it's not
  required. Any contributor can review a proposal. Your responsibility is to ensure that *the review* is up-to-snuff.

Some responsibilities are explicitly *omitted* from here.  *You're not responsible for every submitted proposal.*  By
all means, please help us keep the number of open proposals under control.  But, fundamentally, the quantity, quality,
and scope of submitted proposals is determined by third-party submitters and the community as a whole.  Take on the
things that you can handle, but leave some time for walking in the park or playing kickball.

## Scope of authority

When we grant rights to a new merger, there are usually some provisions associated.  The details are figured on
case-by-case.  As an example -- an expert in CiviMail would be given authority to merge patches in `civicrm-core` as
long as they're related to CiviMail.  Github may or may not enforce this precisely.  We're trusting you to follow this
because, frankly, it's good for everyone.  You get a better product if the mergers looking at CiviMail understand the
CiviMail use-cases and codes -- and if the folks looking at Drupal integration understand Drupal use-cases and codes
(and so on).

## Meta-Review

Suppose you're looking at a PR -- you haven't personally reviewed it, but another contributor has.  How do you know if
a review is up-to-snuff?  This must be based primarily in your own experience/judgment.  However, it can be tricky to
decide if you trust someone else's review.  Here are a few things to consider:

* On a gut level, if you consider the range of users out there, does the change seem reasonable?  Does the review seem
  reasonable?  How persusasive is the discussion?
* Did they discuss the issues or edge-cases that you would have checked (if you'd been doing the review)?
* Did the review/discussion touch on all the review criteria?  For example: a quick-and-easy way to create a regression
  is skipping `r-run`.  Don't let the reviews skip out on `r-run`.  There are some exceptions, but as a new merger you
  should be persnickity about only merging after thorough review.

## What if I'm not sure?

Sometimes, you'll look into a proposal (either as reviewer or merger/meta-reviewer) -- but you're just not sure about
it.  For example:

* What should you do if a proposal would significantly impact the user's experience/understanding/training (`r-user`)?
  Should you push harder to minimize the change -- or embrace it and communicate it?  The Review Standard for `r-user` is open-ended.
* What to do if the proposal would significantly impact technical compatibility with APIs/extensions/customizations (`r-tech`)?
  The Review Standard for `r-tech` is as open-ended as `r-user`.
* What if the proposal changes the conceptual scope/boundaries of the product?
* What to do if there's a disagreement -- e.g.  the proposal forces a trade-off (performance-vs-correctness;
  usability-vs-configurability; practicality-vs-perfection) where reasonable people disagree, and no one can figure out
  a compromise/resolution?

Of course, you should consult the Gitlab issue.  If the concept was pre-approved, there may be some discussion and
notes explaining the pre-approval.

Or... there may not.

The most general approach is to ping a more senior merger (`@colemanw`, `@eileenmcnaughton`, `@totten`) and briefly
describe the situation.  These folks have final authority over releases, and they have experience managing tricky
issues/transitions/discussions.  They might weigh-in substantively, give process ideas, or refer the question to a
specific person.

Similarly, you can build a consensus on your own -- find a couple other people who know the topic but have no
particular bias/pre-commitment on this question.  This is high-risk/high-reward play.  Risk: the new participants may
add *more* issues without resolving the old issues.  Reward: if the new participants agree, then it can tilt the
balance more clearly.

## (Perceived) Conflicts of Interest

Historically there have been concerns that some PRs might be too easily accepted if a merger had some conflict of interest. 
For example, if they worked for a company that had a client contract that would benefit from a core change, and a 
colleague on the project submitted the PR. Would the merger potentially go easy on not requiring a unit test in order to 
avoid the cost if their project was over budget? Would they merge a PR involving some controversial change 
without ensuring the normal consultation it merits? 

In such cases the practice has been for the merger with a potential conflict to mark the PR as 'merge-ready' and solicit a 
different merger to do the merge. This provides a formal way to ensure impartiality and the perception of impartiality in 
the merge process.

## Master, RC, and Stable

Each version passes through phases of development/alpha, RC/freeze/beta, and stable/maintenance.  As a rule of
thumb:

* You can accept a PR in `master`... if it passes the general standards.
* You can accept a PR in the current RC/beta branch... if it passes the general standards and fixes a recent regression.
* You can accept a PR in the current stable branch... if it passes the general standards, fixes a recent regression, and is backport.

The stages are discussed in more detail in the primary [README.md](../README.md).

## Communication media

Three channels are generally important for anyone who merges:

* `product-maintenance` (public) - Planning/coordination around criticals and regressions
* `dev-post-release` (public) - Special escalation for new problems that are distinct to the most recent release
* `mergers` (private) - Admin chatter

## History: Upgrades, customizations, 2.x - 5.x eras

CiviCRM began as singular product and grew into a diverse community/ecosystem. This diversity works in
multiple levels.

Firstly, there's the permutations of functionality in the project itself -- Contacts, Activities, Contributions, etc;
Drupal, WordPress, etc; Paypal, Authorize.net, etc; web-UI, CLI, REST, etc.

Secondly, there's the permutations of how CiviCRM users build on the software:

* Run one site -- or run a hundred sites -- or run one site with a hundred subsites.
* Use the unmodified, stock software -- or maintain forks with a dozen patches on top.
* Publish extensions for the general public -- or develop in-house extensions for quirky use-cases.
* Choose among one or two extremely common themes -- or write totally bespoke themes to fine-tune the front-end and/or back-end appearance.
* Specialize in Drupal development or WordPress development -- and maintain deep integrations.
* Specialize in data migration/ETL or mobile apps or Python or NodeJS -- and rely heavily on REST integration.

Our current practices are shaped by experiences in previous eras.  Generally, there has been a lot of feedback that
upgrading can be difficult, and the processes have matured in response.  I look at this as a gradual transition among
three eras:

1. *First Era (SVN)*: A large number of developers had direct commit access.  Changes were committed continuously to the trunk.
   Review/QA was asynchronous and post-commit. We had some very good QA'ers, but we also had a structural problem: once
   something was committed, we lost a lot of leverage for getting QA done -- which led to a long stabilization
   period (several months of alpha/beta plus several months of post-release fixup).

2. *Second Era (Early Github)*: A small number of developers had merge rights. There were reviews, but they varied widely depending
   on the reviewer.  Reviews were always performed by the merger.  Some mergers would give a light skim
   (because they'd expect a subsequent period of alpha/beta testing) while other mergers were meticulous about testing
   related use-cases.

3. *Third Era (Later Github)*: A small number of developers had merge rights. Reviews become more distributed among a broader
   set of contributors -- mergers act as facilitators and seek to enforce more particular norms.

We're currently in the third era -- where mergers are facilitators who provide a final check.
