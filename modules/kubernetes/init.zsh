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
