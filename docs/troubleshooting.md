## Troubleshooting all the things!

### NPM installation

> Don't install NPM with sudo

If you do install it using sudo, have a look at the following resources:

- https://docs.npmjs.com/getting-started/fixing-npm-permissions

One more thing – you might need to change the permissions on npm's cache (`~/.npm`) too:

```sh
chmod -R +x ~/.npm
```

`ls -la` should say:

```
$ ls -la ~ | grep .npm
drwxr-xr-x  1736 thibaud  staff   59024 Sep  3 09:55 .npm/
-rw-------     1 thibaud  staff      70 Aug  3 22:15 .npmrc
```
