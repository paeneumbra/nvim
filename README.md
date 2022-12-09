# My neovim config

'cause I had nothing better to do...

## Inspiration

This configuration is heavily inspired by

- https://github.com/LunarVim/nvim-basic-ide

A good video resource for understanding usage

- https://odysee.com/@chrisatmachine

## Issues

Error for spell files not found:

```shell
$ nvim -u NORC -c 'set spelllang=pt_pt spell'
$ nvim -u NORC -c 'set spelllang=de_de spell'
```

AFAIK can happen that file is not downloaded because of wrong url event if triggered.
