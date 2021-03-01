# Pacman Tips and Tricks

## Resources

- [Luke Smith's Tips][luke_smith]


[luke_smith]: https://www.youtube.com/watch?v=-dEuXTMzRKs

## Tips and Tricks

- `pacman -Ss <regex>` for searching for a package
- `pacman -Rs <program>` for getting rid of a program and also getting rid of its dependencies.
    - `pacman -Rns` will also remove system files that the program might have created.
- `pacman -Q` will list every single package you have installed on your computer.
    - `pacman -Q | wc -l` counts all the programs you have installed. `pacman -Qe | wc -l` will show how many programs have been explicitly installed by you.
    - `pacman -Qdt` lists dependencies that aren't needed anymore.
- On your `etc/pacman.conf`:
    - You can add `Color` to add syntax highlighting to your pacman commands.
    - `VerbosePkgLists` shows a table row for each package on queries.
    - `ILoveCandy` changes the loading bar to a pacman.
- `pacman -Su` checks your system to see if there's enough space on it.
- You can also edit the mirrors pacman uses through: `/etc/pacman.d/mirrorlist`.
- `pacman -Sc` will get rid of all of the old packages you've accumulated through updates that are now useless.
    - Use then `df -h` to check your `/` for the space you've just freed.
