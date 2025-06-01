cat > openwrt/package/feeds/packages/rust/patches/001-fix-ci-llvm-config.patch << EOF
diff --git a/config.toml.in b/config.toml.in
index 5a3c6e7..c6e9d5b 100644
--- a/config.toml.in
+++ b/config.toml.in
@@ -10,7 +10,7 @@ llvm.download-ci-llvm = true
 # LLVM should be reused between builds if possible
 # llvm.reuse-install = true
 
-llvm.download-ci-llvm = true
+llvm.download-ci-llvm = "if-unchanged"
 
 # Download and use pre-built Clang for bootstrapping.
 # This is required on platforms where the host Clang is too old
EOF