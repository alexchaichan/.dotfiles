#!/usr/bin/env bash

# sync every 5 mins  mail, contacts and calendars
if [[ "$os" == "osx" ]]; then
  (crontab -l; echo '*/5 * * * * /usr/local/bin/mbsync icloud && /usr/local/bin/vdirsyncer discover my_contacts && /usr/local/bin/vdirsyncer discover my_calendar  && /usr/local/bin/vdirsyncer sync >/dev/null 2>&1') | sort -u | crontab -
elif [[ "$os" == "linux" ]]; then
  (crontab -l; echo '*/5 * * * * /usr/bin/mbsync icloud && /usr/bin/vdirsyncer discover my_contacts && /usr/bin/vdirsyncer discover my_calendar  && /usr/bin/vdirsyncer sync >/dev/null 2>&1') | sort -u | crontab -
fi
