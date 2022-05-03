#!/usr/bin/env bash

# sync every 5 mins  mail, contacts and calendars
(crontab -l; echo '*/5 * * * * /usr/local/bin/mbsync icloud && /usr/local/bin/vdirsyncer discover my_contacts && /usr/local/bin/vdirsyncer discover my_calendar  && /usr/local/bin/vdirsyncer sync >/dev/null 2>&1') | sort -u | crontab -


