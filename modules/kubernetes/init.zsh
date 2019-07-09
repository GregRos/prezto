#
# Kubernetes module with an info function for usage in prompts
#
# Authors:
#   Siddharth Kannan <mail@siddharthkannan.in>
#

# Return if requirements are not found.
if (( ! $+commands[kubectl] )); then
  return 1
fi

if (( ! $+commands[jq] )); then
  return 1
fi

if (( ! $+commands[awk] )); then
  return 1
fi
