# A dockerized osc/quilt experience
FROM opensuse:leap

# TODO prune the following package list, I tried to install everything that
# *might* be helpful.
RUN zypper refresh                                                                              \
 && zypper in --no-question osc osc-plugin-collab quilt                                         \
              build gnome-patch-translation translation-update-upstream                         \
              rpm-build systemd-rpm-macros                                                      \
              obs-service-extract_file obs-service-download_files obs-service-recompress        \
              obs-service-format_spec_file obs-service-download_url obs-service-refresh_patches \
              obs-service-set_version obs-service-verify_file obs-service-source_validator

RUN zypper clean --all

CMD ["/bin/bash"]
