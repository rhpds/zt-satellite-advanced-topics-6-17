#!/bin/sh
# echo "Starting module called 02-image-mode" >> /tmp/progress.log

# ## Disable partial images.  Fixes the zstd:chunkedcd / bugzilla that will brick the box if run on this lab
# ## Related to https://github.com/bootc-dev/bootc/issues/1204
# sed -ie 's/enable_partial_images = "true"/enable_partial_images = "false"/' /etc/containers/storage.conf

# ## Convert the system to Image Mode
# podman run --rm --privileged -v /dev:/dev -v /var/lib/containers:/var/lib/containers -v /:/target --pid=host --security-opt label=type:unconfined_t quay.io/toharris/rhel-bootc:summit-2025 bootc install to-existing-root --root-ssh-authorized-keys /target/root/.ssh/authorized_keys --acknowledge-destructive

# ## Reboot system
# reboot