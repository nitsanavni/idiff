I like [Git's interactive/patch diff](https://git-scm.com/book/en/v2/Git-Tools-Interactive-Staging) utilities!

Sometimes it's useful with any two files, not necessarily under Git.

One common example for me is to use it as a diff tool with Approval Tests.

# Example

any two files

```shell
$ echo src > src; echo dst > dst

$ ./idiff.sh src dst
diff --git a/temp b/temp
index c419571..85de9cf 100644
--- a/temp
+++ b/temp
@@ -1 +1 @@
-dst
+src
(1/1) Stage this hunk [y,n,q,a,d,e,?]? y

$ cat dst
src
```
