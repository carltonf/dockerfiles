# Current Version

20170710: solving the caveats found in the 20160808.

**NOTE:** This version is created with `docker commit` for convenience.

# Caveats
## ver 20160808

Most discovered issues with this version comes with startup script
`/usr/local/bin/startup`.

Overall, this script doesn't feel like a native with mystical use case and wrong
understanding of its base. Newer version (20170710) has already dropped it.

### uid:gid

The `jekyll` (3.2.1) runs only in unprivilaged environment. So in the `startup`
script, it would `chspt` to `jekyll:jekyll` if the current `uid` and `euid` is
`root`. `jekyll` has `uid` 1000 in the image.

To work around this issue, the official way is to pass the `uid` and `gid` of
the current user into the container. However this encounters another problem
(see below).

In my box, I usually has only one normal user `vagrant` which happens to be 1000
as well. However, I switched to [terry/wang][terry/wang]'s box, which happens to
have `vagrant` as 998, `terry` as 1000 and thus breaks my workflow.

[terry/wang]: https://github.com/terrywang/vagrantboxes/blob/master/archlinux-x86_64.md
 
### `/etc/user_context`

`startup` has a mystery file called `/etc/user_context`, though not clear about
its use yet. The requirement of `touch` it breaks the `--user` option of `docker
run`, as this would require root privilage.

I commented the `touch` line out.

### `sleep infinity`

The `startup` script also uses `sleep infinity` as pointed out in [SO][SO]:

>alpine is busybox-based, and doesn't provide the full array of options and
>extensions available in GNU tools; infinity as an option to sleep is an example
>of something that's unavailable.

[SO]: https://stackoverflow.com/a/39729598
