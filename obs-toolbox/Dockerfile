# A dockerized osc/quilt experience
FROM opensuse:leap

# TODO prune the following package list, I tried to install everything that
# *might* be helpful.
RUN zypper refresh \
 && zypper in --no-question osc osc-plugin-collab quilt \
              build gnome-patch-translation translation-update-upstream \
              rpm-build systemd-rpm-macros

RUN zypper clean --all

CMD ["/bin/bash"]
