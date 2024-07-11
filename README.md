### Installation

Simply clone the repository:

```bash
nix-shell -p git --run "sudo git clone https://github.com/lokasku/nix-configs.git /etc/nixos"
```

### Usage

To switch NixOS configuration, fill the hostname after the pound sign and run the following command:

```bash
sudo nixos-rebuild switch --flake /etc/nixos
# or on the next boot
sudo nixos-rebuild boot --flake /etc/nixos
```