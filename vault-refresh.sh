#!/bin/bash
gpg2 --batch --use-agent --decrypt vault.gpg | \
  gpg2 --batch --use-agent \
  -r 957BC452CE953D7EA60CF4FC0BE9E3157A1E2C64 \
  --encrypt > vault.gpg.new && mv vault.gpg.new vault.gpg
