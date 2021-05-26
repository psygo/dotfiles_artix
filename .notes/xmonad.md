# XMonad

## When it doesn't compile

After certain updates to Haskell dependencies, XMonad might not compile anymore. In that case, this might help:

```sh
cabal install --lib xmonad-contrib
```

## On Using Only Stack to Compile

Stack will lead to a cleaner management system. For more information, check out [this question on StackOverflow](https://stackoverflow.com/q/67710115/4756173).

## Current Errors I'm Getting

When using the compiled version of XMonad, everything looks great, however, using it directly, i.e. recompiling it every time I log in under `.xinitrc`, gives me:

```error
XMonad is recompiling and replacing itself another XMonad process because the current process is called "xmonad" but the compiled configuration should be called "xmonad-x86_64-linux"
XMonad will use build script at "/home/philippe/.xmonad/build" to recompile.
XMonad recompilation process exited with success!
X Error of failed request:  BadAccess (attempt to access private resource denied)
  Major opcode of failed request:  2 (X_ChangeWindowAttributes)
  Serial number of failed request:  7
  Current serial number in output stream:  8
```
