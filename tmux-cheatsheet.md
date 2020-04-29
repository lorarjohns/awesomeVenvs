# TMUX for managing VMs 

A solution to keep multiple processes running on a VM for several hours over a single SSH session.

## Managing sessions

start a new session
```
tmux
```

start a new named session
```
tmux new -s [name]
```

start a session in detached mode
```
tmux new -s [name] -d
```

attach to a session

```
tmux attach -t [name]
tmux a -t [name]
```

switch to a session
```
tmux switch -t [name]
```

detach from a session
```
tmux detach
```

list sessions
```
tmux list-sessions
tmux ls
```
rename a session
```
tmux rename-session -t [old-name] "new-name"
```

kill a session (when detached)
```
tmux kill-session -t [name]
```

kill server (and all sessions + running jobs)
```
tmux kill-server
```

## Bind key commands

To invoke these commands, first hit the bind key. The default is `CTRL + b`.
If you use the [config file in this repo](https://github.com/lorarjohns/awesomeVenvs/blob/master/.tmux.conf), it is `CTRL + a`.

Press `CTRL+a`, **release it**, and then press the desired command key.

kill a session (when attached)
```
CTRL+a x -y
exit + ENTER
```

split pane horizontally (one pane on top of the other)
```
CTRL+a "
```

split pane vertically (two panes side by side)
```
CTRL+a %
```
**note**: Splitting a _pane_ does not create a new _session_.

move to a pane
```
CTRL+a [arrow keys]
```

send command to all panes simultaneously
```
CTRL+a :setw synchronize-panes
```

swap panes
```
CTRL+a o
```
