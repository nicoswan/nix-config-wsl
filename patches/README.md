
Since I use =nixpkgs-unstable= there are some cases where certain packages will break or fail to build .

With Nix, I /could/ just rollback everything and wait to update until an upstream patch fixes things, but if it's a quick fix, I'd rather just patch it in immediately so that everything else can stay up to date.

# List of Patches
Here is a list of patches in this directory, along with a more detailed description of why it's necessary:

|Patch| Reason|
|:---------|:-------|
[./emacs-no-version-check.patch](emacs-no-version-check.patch) | [https://github.com/NixOS/nixpkgs/commit/35ccb9db3f4f0872f05d175cf53d0e1f87ff09ea](35ccb9d) breaks my nix-doom-emacs install by preventing home-manager from building. This patches undoes this commit. |
