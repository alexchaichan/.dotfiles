#!/usr/bin/env bash

# sync every min mail, contacts and calendars
if [[ "$os" == "osx" ]]; then
 (crontab -l; echo '*/1 * * * * export PATH=$PATH:/usr/local/bin >/dev/null 2>&1;   /usr/local/bin/sync >/dev/null 2>&1') | sort -u | crontab -
elif [[ "$os" == "linux" ]]; then
 # (crontab -l; echo '*/1 * * * * /usr/bin/mbsync posteo && /usr/bin/vdirsyncer discover my_contacts && /usr/bin/vdirsyncer discover my_calendar  && /usr/bin/vdirsyncer sync >/dev/null 2>&1') | sort -u | crontab - &&
fi
