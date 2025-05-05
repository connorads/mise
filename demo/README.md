# `mise` demo/presentation

This lightning talk is a celebration of [mise](https://github.com/jdx/mise) - a powerful tool for managing development environments and tooling. This presentation aims to share the love for Mise and showcase its capabilities.


```sh
# Set timer for 5 minutes
for ((i=300;i>=0;i--)); do echo -ne "\033]0;Timer: $((i/60))m $((i%60))s\007"; sleep 1; done

# Run the presentation
mise run presentation

# Create VHS recordings of the demo
mise run demo
```

## Acknowledgements

This demo presentation is adapted from `mise` docs, including their VHS tape demo. Credit goes to the amazing `mise` developers and contributors who have created this wonderful tool.
