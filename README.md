# home_configs
nix configs

## build the thing

```
nix build .#darwinConfigurations.jb-mba.system --extra-experimental-features "nix-command flakes" --show-trace --impure 
```

## deploy the thing
```
./result/sw/bin/darwin-rebuild switch --flake . --impure
```
