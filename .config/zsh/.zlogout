 #!/bin/sh
#      _                         _
#  ___| | ___   __ _  ___  _   _| |_
# |_  / |/ _ \ / _` |/ _ \| | | | __|
#  / /| | (_) | (_| | (_) | |_| | |_
# /___|_|\___/ \__, |\___/ \__,_|\__|
#              |___/
#btdcon
uniq -u "$HOME"/.cache/zshhistory | tee "$HOME"/.cache/zshhistory
