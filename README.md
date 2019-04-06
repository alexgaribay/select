This repo demonstrates the symptoms described in [Phoenix LiveView Issue 160](https://github.com/phoenixframework/phoenix_live_view/issues/160).

## Reproducing the Bug

1. Navigate to http://127.0.0.1:4000
2. Observe the select field shows the text for when no option has been selected
3. Open the javascript console
4. Execute `window.liveSocket.connect()`
5. Observe the select has no text
