# TMUX for managing VMs 

A solution to keep multiple processes running on a VM for several hours over a single SSH session.

start a new session
```
tmux
```
start a new named session
```
tmux new -s [name]
```
attach to a new session

```
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
```

kill a session
```
ctrl - b - x
```

split pane horizontally
```
ctrl - b - "
```

split pane vertically
```
ctrl - b - %
```

move to a pane
```
ctrl - b - [arrow key]
```
