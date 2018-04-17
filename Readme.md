# Ranger / Emacs integration

You'll need to install the `xdotool`.

Copy `rangerCd.sh` to some location, make sure it is executable.

Add this within your `(defun dotspacemacs/user-config ()` within your spacemacs / emacs config (`~/.spacemacs`), (make sure you modify the `path/to/rangerCd.sh` to the correct location:

```
    (spacemacs/set-leader-keys "ft" (lambda () (interactive)
                                      (shell-command (concat (concat "path/to/rangerCd.sh \"" (file-name-directory buffer-file-name )) "\""))
```

Add the ranger IPC plugin:

```
wget https://raw.githubusercontent.com/ranger/ranger/master/examples/plugin_ipc.py -O ~/.config/ranger/plugins/plugin_ipc.py
```

Add a keybinding for ranger (`~/.config/ranger/rc.conf`):

```
map e shell emacsclient -n -c %s
```

Don't forget to run emacs as a daemon.
