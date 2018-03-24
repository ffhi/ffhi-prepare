TODO
====

[ ] rsc: find out if we want to have qcow2 or raw format for the images

[ ] rsc: bla says there is no good reason for a separate /boot
    partition, so we want to remove it from the debian preseed.

[ ] rsc: review best-practise directory structure:
    http://docs.ansible.com/ansible/latest/playbooks_best_practices.html#directory-layout

[ ] rsc: discuss usage of sysgit

DONE
====

[x] rsc: do we need debops-playbooks at all? Without any confiuration,
    it requires packages which are in jessie but not in stretch any more,
    and it sucks in a load of dependend packages including mysql-client and
    ruby without being configured for anything. If we need it, should we
    stay with debops-playbooks from debian or use a defined version in a
    submodule?
    20171117 rsc: discussed with motp, we remove it for now and can
    re-add it later.

[ ] rsc: review /etc/hosts with bbu

