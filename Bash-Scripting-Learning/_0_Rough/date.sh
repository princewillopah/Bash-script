#!/bin/bash


Usage: date [OPTION]... [+FORMAT]
  or:  date [-u|--utc|--universal] [MMDDhhmm[[CC]YY][.ss]]
Display date and time in the given FORMAT.
With -s, or with [MMDDhhmm[[CC]YY][.ss]], set the date and time.

Mandatory arguments to long options are mandatory for short options too.
  -d, --date=STRING          display time described by STRING, not 'now'
      --debug                annotate the parsed date,
                              and warn about questionable usage to stderr
  -f, --file=DATEFILE        like --date; once for each line of DATEFILE
  -I[FMT], --iso-8601[=FMT]  output date/time in ISO 8601 format.
                               FMT='date' for date only (the default),
                               'hours', 'minutes', 'seconds', or 'ns'
                               for date and time to the indicated precision.
                               Example: 2006-08-14T02:34:56-06:00
  --resolution               output the available resolution of timestamps
                               Example: 0.000000001
  -R, --rfc-email            output date and time in RFC 5322 format.
                               Example: Mon, 14 Aug 2006 02:34:56 -0600
      --rfc-3339=FMT         output date/time in RFC 3339 format.
                               FMT='date', 'seconds', or 'ns'
                               for date and time to the indicated precision.
                               Example: 2006-08-14 02:34:56-06:00
  -r, --reference=FILE       display the last modification time of FILE
  -s, --set=STRING           set time described by STRING
  -u, --utc, --universal     print or set Coordinated Universal Time (UTC)
      --help        display this help and exit
      --version     output version information and exit

All options that specify the date to display are mutually exclusive.
I.e.: --date, --file, --reference, --resolution.

FORMAT controls the output.  Interpreted sequences are:

  %%   a literal %
  %a   locale's abbreviated weekday name (e.g., Sun)
  %A   locale's full weekday name (e.g., Sunday)
  %b   locale's abbreviated month name (e.g., Jan)
  %B   locale's full month name (e.g., January)
  %c   locale's date and time (e.g., Thu Mar  3 23:05:25 2005)
  %C   century; like %Y, except omit last two digits (e.g., 20)
  %d   day of month (e.g., 01)
  %D   date; same as %m/%d/%y
  %e   day of month, space padded; same as %_d
  %F   full date; like %+4Y-%m-%d
  %g   last two digits of year of ISO week number (see %G)
  %G   year of ISO week number (see %V); normally useful only with %V
  %h   same as %b
  %H   hour (00..23)
  %I   hour (01..12)
  %j   day of year (001..366)
  %k   hour, space padded ( 0..23); same as %_H
  %l   hour, space padded ( 1..12); same as %_I
  %m   month (01..12)
  %M   minute (00..59)
  %n   a newline
  %N   nanoseconds (000000000..999999999)
  %p   locale's equivalent of either AM or PM; blank if not known
  %P   like %p, but lower case
  %q   quarter of year (1..4)
  %r   locale's 12-hour clock time (e.g., 11:11:04 PM)
  %R   24-hour hour and minute; same as %H:%M
  %s   seconds since the Epoch (1970-01-01 00:00 UTC)
  %S   second (00..60)
  %t   a tab
  %T   time; same as %H:%M:%S
  %u   day of week (1..7); 1 is Monday
  %U   week number of year, with Sunday as first day of week (00..53)
  %V   ISO week number, with Monday as first day of week (01..53)
  %w   day of week (0..6); 0 is Sunday
  %W   week number of year, with Monday as first day of week (00..53)
  %x   locale's date representation (e.g., 12/31/99)
  %X   locale's time representation (e.g., 23:13:48)
  %y   last two digits of year (00..99)
  %Y   year
  %z   +hhmm numeric time zone (e.g., -0400)
  %:z  +hh:mm numeric time zone (e.g., -04:00)
  %::z  +hh:mm:ss numeric time zone (e.g., -04:00:00)
  %:::z  numeric time zone with : to necessary precision (e.g., -04, +05:30)
  %Z   alphabetic time zone abbreviation (e.g., EDT)

By default, date pads numeric fields with zeroes.
The following optional flags may follow '%':

  -  (hyphen) do not pad the field
  _  (underscore) pad with spaces
  0  (zero) pad with zeros
  +  pad with zeros, and put '+' before future years with >4 digits
  ^  use upper case if possible
  #  use opposite case if possible

After any flags comes an optional field width, as a decimal number;
then an optional modifier, which is either
E to use the locale's alternate representations if available, or
O to use the locale's alternate numeric symbols if available.

Examples:
Convert seconds since the Epoch (1970-01-01 UTC) to a date
  $ date --date='@2147483647'

Show the time on the west coast of the US (use tzselect(1) to find TZ)
  $ TZ='America/Los_Angeles' date

Show the local time for 9AM next Friday on the west coast of the US
  $ date --date='TZ="America/Los_Angeles" 09:00 next Fri'

GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
Report any translation bugs to <https://translationproject.org/team/>
Full documentation <https://www.gnu.org/software/coreutils/date>
or available locally via: info '(coreutils) date invocation'


echo "Current Year: $(date +%Y)"
echo "Current Month: $(date +%m)"
echo "Current Day: $(date +%d)"
echo "Current Time: $(date +%H:%M:%S)"
echo "Current Day of the Week: $(date +%A)"
echo "Current Month Name: $(date +%B)"
echo "Current Year (4 digits): $(date +%Y)"
echo "Current Year (2 digits): $(date +%y)"
echo "Current Timezone: $(date +%Z)"
echo "Current Unix Timestamp: $(date +%s)"
echo "Current Date and Time: $(date +%Y-%m-%d\ %H:%M:%S)"
echo "Current Date and Time (ISO 8601): $(date +%Y-%m-%dT%H:%M:%S%z)"
echo "Current Date and Time (RFC 3339): $(date +%Y-%m-%dT%H:%M:%S%z)"





# Check if the date of birth is in the correct format (YYYY-MM-DD)
if ! [[ $dob =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
    echo "Error: Date of birth must be in the format YYYY-MM-DD."
    exit 1
fi
# Check if the date of birth is valid
if ! date -d "$dob" &>/dev/null; then
    echo "Error: Invalid date of birth."
    exit 1
fi
# Check if the date of birth is in the future
if [[ "$dob" > "$(date +%Y-%m-%d)" ]]; then
    echo "Error: Date of birth cannot be in the future."
    exit 1
fi
# Check if the date of birth is in the past
if [[ "$dob" < "$(date -d '1900-01-01' +%Y-%m-%d)" ]]; then
    echo "Error: Date of birth cannot be before 1900."
    exit 1
fi
# Check if the date of birth is in the current year
if [[ "$dob" > "$(date +%Y-01-01)" ]]; then
    echo "Error: Date of birth cannot be in the current year."
    exit 1
fi
# Check if the date of birth is in the current month
if [[ "$dob" > "$(date +%Y-%m-01)" ]]; then
    echo "Error: Date of birth cannot be in the current month."
    exit 1
fi
# Check if the date of birth is in the current day
if [[ "$dob" > "$(date +%Y-%m-%d)" ]]; then
    echo "Error: Date of birth cannot be in the current day."
    exit 1
fi
# Check if the date of birth is in the current hour
if [[ "$dob" > "$(date +%Y-%m-%dT%H:00:00)" ]]; then
    echo "Error: Date of birth cannot be in the current hour."
    exit 1
fi
# Check if the date of birth is in the current minute
if [[ "$dob" > "$(date +%Y-%m-%dT%H:%M:00)" ]]; then
    echo "Error: Date of birth cannot be in the current minute."
    exit 1
fi
# Check if the date of birth is in the current second
if [[ "$dob" > "$(date +%Y-%m-%dT%H:%M:%S)" ]]; then
    echo "Error: Date of birth cannot be in the current second."
    exit 1
fi
# Check if the date of birth is in the current millisecond
if [[ "$dob" > "$(date +%Y-%m-%dT%H:%M:%S.%3N)" ]]; then
    echo "Error: Date of birth cannot be in the current millisecond."
    exit 1
fi
# Check if the date of birth is in the current microsecond
if [[ "$dob" > "$(date +%Y-%m-%dT%H:%M:%S.%6N)" ]]; then
    echo "Error: Date of birth cannot be in the current microsecond."
    exit 1
fi
# Check if the date of birth is in the current nanosecond
if [[ "$dob" > "$(date +%Y-%m-%dT%H:%M:%S.%9N)" ]]; then
    echo "Error: Date of birth cannot be in the current nanosecond."
    exit 1
fi
# Check if the date of birth is in the current picosecond
if [[ "$dob" > "$(date +%Y-%m-%dT%H:%M:%S.%12N)" ]]; then
    echo "Error: Date of birth cannot be in the current picosecond."
    exit 1
fi


