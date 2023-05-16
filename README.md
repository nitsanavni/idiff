I like Git's interactive diff utilities!

Sometimes it's useful with any two files, not necessarily under Git.

One common example for me is to use it as a diff tool with Approval Tests.

# Example

any two files

```shell
$ echo "file 1" > file1; echo "file 2" > file2

$ idiff file1 file2
diff --git a/temp b/temp
index 366f17f..fac580e 100644
--- a/temp
+++ b/temp
@@ -1 +1 @@
-file 1
+file 2
(1/1) Stage this hunk [y,n,q,a,d,e,?]? y

$ cat file1
file 2
```
