
abcdef -- A Better CD Encoder Fabricated
========================================

The purpose of this is to collect together a bunch of
patches that can be applied to
[abcde](https://abcde.einval.com/wiki/).
Some of them are experimental,
some fixes,
some are only useful to myself.

The patch series is maintained using
[quilt](https://savannah.nongnu.org/projects/quilt).

These patches are licensed under the GPLv2
to match the upstream project.
They may be freely used by both that project
and third parties.

Note that this is unrelated to the
[abcdef](https://github.com/scy/abcdef)
project that hasn't seen action since 2008.

Usage
-----

To build a fully-patched version from a fresh checkout:

    $ make applied

To update to the latest upstream

    $ quilt pop -a
    $ make latest-upstream
    $ rm -r src
    $ make src
    $ while quilt push; do quilt refresh; done
    $ rm patches/*.diff~

