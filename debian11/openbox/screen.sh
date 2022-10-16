#!/bin/bash
kepernyokepek=$(xdg-user-dir PICTURES)/screenshots
[[ ! -d "$kepernyokepek" ]] && mkdir -p "$kepernyokepek"
maim -s "$kepernyokepek"/$(date +%F_%T).png
