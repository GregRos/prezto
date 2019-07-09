# kubernetes-info

> Exposes Kubernetes context related information for inclusion in the shell prompt

## Functions

- `kubernetes-info` exposes information about the Kubernetes context that one is
operating in inside of an associative array. The available keys:
  - `context`
  - `namespace`

## Adding it to your prompt

All the keys in the associative array can be formatted.

```sh
# %C => current context
zstyle ':prezto:module:kubernetes:info:context' format ' k8s:%C'
# %N => current namespace
zstyle ':prezto:module:kubernetes:info:namespace' format ' k8s:%N'
```

You can now add `$kubernetes_info[context]` (and other supported keys) to
`$PROMPT`.

**Note:** You _must_ call the `kubernetes-info` function in the
`prompt_name_precmd` hook function

### Authors

- [Siddharth Kannan](https://github.com/icyflame)
