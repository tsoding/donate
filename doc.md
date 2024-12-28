# Technical Documentation

The sole purpose of all these files and scripts is to generate [donate.png](./donate.png) that we embed at the top of [README.md](./README.md).

## Rebuilding

To regenerate the image just call run `./build.sh` script. It uses some external program that you will have to install manually:

- [qrencode](https://fukuchi.org/works/qrencode/)
- [inkscape](https://inkscape.org/)

## TODO

- [ ] [donate.svg](./donate.svg) uses [Iosevka](https://github.com/be5invis/Iosevka) font, but it assumes that it's installed system-wide. We need to commit the font file to this repo and make [donate.svg](./donate.svg) use that file specifically, so the rebuilding is reproducible on any system
