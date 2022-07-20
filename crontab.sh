#!/usr/bin/env bash

# sync every 5 mins  mail, contacts and calendars
if [[ "$os" == "osx" ]]; then
 # (crontab -l; echo '*/1 * * * * /usr/local/bin/mbsync posteo && /usr/local/bin/vdirsyncer discover my_contacts && /usr/local/bin/vdirsyncer discover my_calendar  && /usr/local/bin/vdirsyncer sync >/dev/null 2>&1') | sort -u | crontab -
elif [[ "$os" == "linux" ]]; then
 # (crontab -l; echo '*/1 * * * * /usr/bin/mbsync posteo && /usr/bin/vdirsyncer discover my_contacts && /usr/bin/vdirsyncer discover my_calendar  && /usr/bin/vdirsyncer sync >/dev/null 2>&1') | sort -u | crontab - &&
 # systemctl enable --now cronie.service
fi
