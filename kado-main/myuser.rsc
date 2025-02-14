# jan/02/1970 07:48:12 by RouterOS 6.49.11
# software id = 535T-E7KI
#
# model = RB750Gr3
# serial number = HGB09TS3CJX
/ip hotspot user profile
set [ find default=yes ] address-pool=hs-pool-8 on-login=":put (\",,0,,,noexp,\
    Enable,\"); [:local mac \$\"mac-address\"; /ip hotspot user set mac-addres\
    s=\$mac [find where name=\$user]]" parent-queue=none shared-users=5
add address-list=test name=TEST on-login=":put (\",remc,1,100w,1,,Disable,\");\
    \_{:local date [ /system clock get date ];:local year [ :pick \$date 7 11 \
    ];:local month [ :pick \$date 0 3 ];:local comment [ /ip hotspot user get \
    [/ip hotspot user find where name=\"\$user\"] comment]; :local ucode [:pic\
    \_\$comment 0 2]; :if (\$ucode = \"vc\" or \$ucode = \"up\" or \$comment =\
    \_\"\") do={ /sys sch add name=\"\$user\" disable=no start-date=\$date int\
    erval=\"100w\"; :delay 2s; :local exp [ /sys sch get [ /sys sch find where\
    \_name=\"\$user\" ] next-run]; :local getxp [len \$exp]; :if (\$getxp = 15\
    ) do={ :local d [:pic \$exp 0 6]; :local t [:pic \$exp 7 16]; :local s (\"\
    /\"); :local exp (\"\$d\$s\$year \$t\"); /ip hotspot user set comment=\$ex\
    p [find where name=\"\$user\"];}; :if (\$getxp = 8) do={ /ip hotspot user \
    set comment=\"\$date \$exp\" [find where name=\"\$user\"];}; :if (\$getxp \
    > 15) do={ /ip hotspot user set comment=\$exp [find where name=\"\$user\"]\
    ;}; /sys sch remove [find where name=\"\$user\"]; :local mac \$\"mac-addre\
    ss\"; :local time [/system clock get time ]; /system script add name=\"\$d\
    ate-|-\$time-|-\$user-|-1-|-\$address-|-\$mac-|-100w-|-TEST-|-\$comment\" \
    owner=\"\$month\$year\" source=\$date comment=mikhmon}}" parent-queue=\
    none rate-limit="1m/2000k 2m/4000k 400k/780k 40/40 8 512k/850k" \
    shared-users=200 transparent-proxy=yes
add address-pool=hs-pool-8 name=IT on-login=":put (\",remc,1,100w,1,,Disable,\
    \"); {:local date [ /system clock get date ];:local year [ :pick \$date 7 \
    11 ];:local month [ :pick \$date 0 3 ];:local comment [ /ip hotspot user g\
    et [/ip hotspot user find where name=\"\$user\"] comment]; :local ucode [:\
    pic \$comment 0 2]; :if (\$ucode = \"vc\" or \$ucode = \"up\" or \$comment\
    \_= \"\") do={ /sys sch add name=\"\$user\" disable=no start-date=\$date i\
    nterval=\"100w\"; :delay 2s; :local exp [ /sys sch get [ /sys sch find whe\
    re name=\"\$user\" ] next-run]; :local getxp [len \$exp]; :if (\$getxp = 1\
    5) do={ :local d [:pic \$exp 0 6]; :local t [:pic \$exp 7 16]; :local s (\
    \"/\"); :local exp (\"\$d\$s\$year \$t\"); /ip hotspot user set comment=\$\
    exp [find where name=\"\$user\"];}; :if (\$getxp = 8) do={ /ip hotspot use\
    r set comment=\"\$date \$exp\" [find where name=\"\$user\"];}; :if (\$getx\
    p > 15) do={ /ip hotspot user set comment=\$exp [find where name=\"\$user\
    \"];}; /sys sch remove [find where name=\"\$user\"]; :local mac \$\"mac-ad\
    dress\"; :local time [/system clock get time ]; /system script add name=\"\
    \$date-|-\$time-|-\$user-|-1-|-\$address-|-\$mac-|-100w-|-IT-|-\$comment\"\
    \_owner=\"\$month\$year\" source=\$date comment=mikhmon}}" parent-queue=\
    none rate-limit="1m/10000k 2m/15000k 400k/780k 40/40 8 512k/850k"
add address-pool=hs-pool-8 name=MEDIA on-login=":put (\",remc,1,100w,1,,Disabl\
    e,\"); {:local date [ /system clock get date ];:local year [ :pick \$date \
    7 11 ];:local month [ :pick \$date 0 3 ];:local comment [ /ip hotspot user\
    \_get [/ip hotspot user find where name=\"\$user\"] comment]; :local ucode\
    \_[:pic \$comment 0 2]; :if (\$ucode = \"vc\" or \$ucode = \"up\" or \$com\
    ment = \"\") do={ /sys sch add name=\"\$user\" disable=no start-date=\$dat\
    e interval=\"100w\"; :delay 2s; :local exp [ /sys sch get [ /sys sch find \
    where name=\"\$user\" ] next-run]; :local getxp [len \$exp]; :if (\$getxp \
    = 15) do={ :local d [:pic \$exp 0 6]; :local t [:pic \$exp 7 16]; :local s\
    \_(\"/\"); :local exp (\"\$d\$s\$year \$t\"); /ip hotspot user set comment\
    =\$exp [find where name=\"\$user\"];}; :if (\$getxp = 8) do={ /ip hotspot \
    user set comment=\"\$date \$exp\" [find where name=\"\$user\"];}; :if (\$g\
    etxp > 15) do={ /ip hotspot user set comment=\$exp [find where name=\"\$us\
    er\"];}; /sys sch remove [find where name=\"\$user\"]; :local mac \$\"mac-\
    address\"; :local time [/system clock get time ]; /system script add name=\
    \"\$date-|-\$time-|-\$user-|-1-|-\$address-|-\$mac-|-100w-|-MEDIA-|-\$comm\
    ent\" owner=\"\$month\$year\" source=\$date comment=mikhmon}}" \
    parent-queue=none rate-limit=\
    "20m/3000k 20m/7000k 400k/780k 40/40 8 512k/850k" shared-users=50
add address-pool=hs-pool-8 name=PONDOKU1 on-login=":put (\",remc,1,100w,1,,Dis\
    able,\"); {:local date [ /system clock get date ];:local year [ :pick \$da\
    te 7 11 ];:local month [ :pick \$date 0 3 ];:local comment [ /ip hotspot u\
    ser get [/ip hotspot user find where name=\"\$user\"] comment]; :local uco\
    de [:pic \$comment 0 2]; :if (\$ucode = \"vc\" or \$ucode = \"up\" or \$co\
    mment = \"\") do={ /sys sch add name=\"\$user\" disable=no start-date=\$da\
    te interval=\"100w\"; :delay 2s; :local exp [ /sys sch get [ /sys sch find\
    \_where name=\"\$user\" ] next-run]; :local getxp [len \$exp]; :if (\$getx\
    p = 15) do={ :local d [:pic \$exp 0 6]; :local t [:pic \$exp 7 16]; :local\
    \_s (\"/\"); :local exp (\"\$d\$s\$year \$t\"); /ip hotspot user set comme\
    nt=\$exp [find where name=\"\$user\"];}; :if (\$getxp = 8) do={ /ip hotspo\
    t user set comment=\"\$date \$exp\" [find where name=\"\$user\"];}; :if (\
    \$getxp > 15) do={ /ip hotspot user set comment=\$exp [find where name=\"\
    \$user\"];}; /sys sch remove [find where name=\"\$user\"]; :local mac \$\"\
    mac-address\"; :local time [/system clock get time ]; /system script add n\
    ame=\"\$date-|-\$time-|-\$user-|-1-|-\$address-|-\$mac-|-100w-|-PONDOKU1-|\
    -\$comment\" owner=\"\$month\$year\" source=\$date comment=mikhmon}}" \
    parent-queue=none rate-limit=\
    "1m/2000k 2m/4000k 400k/780k 40/40 8 512k/850k" transparent-proxy=yes
add address-pool=hs-pool-8 name=PONDOKU2 on-login=":put (\",remc,1,100w,1,,Dis\
    able,\"); {:local date [ /system clock get date ];:local year [ :pick \$da\
    te 7 11 ];:local month [ :pick \$date 0 3 ];:local comment [ /ip hotspot u\
    ser get [/ip hotspot user find where name=\"\$user\"] comment]; :local uco\
    de [:pic \$comment 0 2]; :if (\$ucode = \"vc\" or \$ucode = \"up\" or \$co\
    mment = \"\") do={ /sys sch add name=\"\$user\" disable=no start-date=\$da\
    te interval=\"100w\"; :delay 2s; :local exp [ /sys sch get [ /sys sch find\
    \_where name=\"\$user\" ] next-run]; :local getxp [len \$exp]; :if (\$getx\
    p = 15) do={ :local d [:pic \$exp 0 6]; :local t [:pic \$exp 7 16]; :local\
    \_s (\"/\"); :local exp (\"\$d\$s\$year \$t\"); /ip hotspot user set comme\
    nt=\$exp [find where name=\"\$user\"];}; :if (\$getxp = 8) do={ /ip hotspo\
    t user set comment=\"\$date \$exp\" [find where name=\"\$user\"];}; :if (\
    \$getxp > 15) do={ /ip hotspot user set comment=\$exp [find where name=\"\
    \$user\"];}; /sys sch remove [find where name=\"\$user\"]; :local mac \$\"\
    mac-address\"; :local time [/system clock get time ]; /system script add n\
    ame=\"\$date-|-\$time-|-\$user-|-1-|-\$address-|-\$mac-|-100w-|-PONDOKU2-|\
    -\$comment\" owner=\"\$month\$year\" source=\$date comment=mikhmon}}" \
    parent-queue=none rate-limit=\
    "1m/2000k 2m/4000k 400k/780k 40/40 8 512k/850k" transparent-proxy=yes
add address-pool=hs-pool-8 name=GURUSMK on-login=":put (\",remc,1,100w,1,,Disa\
    ble,\"); {:local date [ /system clock get date ];:local year [ :pick \$dat\
    e 7 11 ];:local month [ :pick \$date 0 3 ];:local comment [ /ip hotspot us\
    er get [/ip hotspot user find where name=\"\$user\"] comment]; :local ucod\
    e [:pic \$comment 0 2]; :if (\$ucode = \"vc\" or \$ucode = \"up\" or \$com\
    ment = \"\") do={ /sys sch add name=\"\$user\" disable=no start-date=\$dat\
    e interval=\"100w\"; :delay 2s; :local exp [ /sys sch get [ /sys sch find \
    where name=\"\$user\" ] next-run]; :local getxp [len \$exp]; :if (\$getxp \
    = 15) do={ :local d [:pic \$exp 0 6]; :local t [:pic \$exp 7 16]; :local s\
    \_(\"/\"); :local exp (\"\$d\$s\$year \$t\"); /ip hotspot user set comment\
    =\$exp [find where name=\"\$user\"];}; :if (\$getxp = 8) do={ /ip hotspot \
    user set comment=\"\$date \$exp\" [find where name=\"\$user\"];}; :if (\$g\
    etxp > 15) do={ /ip hotspot user set comment=\$exp [find where name=\"\$us\
    er\"];}; /sys sch remove [find where name=\"\$user\"]; :local mac \$\"mac-\
    address\"; :local time [/system clock get time ]; /system script add name=\
    \"\$date-|-\$time-|-\$user-|-1-|-\$address-|-\$mac-|-100w-|-SEKOLAH1-|-\$c\
    omment\" owner=\"\$month\$year\" source=\$date comment=mikhmon}}" \
    parent-queue=none rate-limit=\
    "1m/2000k 2m/4000k 400k/780k 40/40 8 512k/850k" shared-users=2 \
    transparent-proxy=yes
add address-pool=hs-pool-8 name=GURUMTS on-login=":put (\",remc,1,100w,1,,Disa\
    ble,\"); {:local date [ /system clock get date ];:local year [ :pick \$dat\
    e 7 11 ];:local month [ :pick \$date 0 3 ];:local comment [ /ip hotspot us\
    er get [/ip hotspot user find where name=\"\$user\"] comment]; :local ucod\
    e [:pic \$comment 0 2]; :if (\$ucode = \"vc\" or \$ucode = \"up\" or \$com\
    ment = \"\") do={ /sys sch add name=\"\$user\" disable=no start-date=\$dat\
    e interval=\"100w\"; :delay 2s; :local exp [ /sys sch get [ /sys sch find \
    where name=\"\$user\" ] next-run]; :local getxp [len \$exp]; :if (\$getxp \
    = 15) do={ :local d [:pic \$exp 0 6]; :local t [:pic \$exp 7 16]; :local s\
    \_(\"/\"); :local exp (\"\$d\$s\$year \$t\"); /ip hotspot user set comment\
    =\$exp [find where name=\"\$user\"];}; :if (\$getxp = 8) do={ /ip hotspot \
    user set comment=\"\$date \$exp\" [find where name=\"\$user\"];}; :if (\$g\
    etxp > 15) do={ /ip hotspot user set comment=\$exp [find where name=\"\$us\
    er\"];}; /sys sch remove [find where name=\"\$user\"]; :local mac \$\"mac-\
    address\"; :local time [/system clock get time ]; /system script add name=\
    \"\$date-|-\$time-|-\$user-|-1-|-\$address-|-\$mac-|-100w-|-SEKOLAHU2-|-\$\
    comment\" owner=\"\$month\$year\" source=\$date comment=mikhmon}}" \
    parent-queue=none rate-limit=\
    "1m/2000k 2m/4000k 400k/780k 40/40 8 512k/850k" shared-users=2 \
    transparent-proxy=yes
add address-pool=hs-pool-8 name=KHUSUS on-login=":put (\",remc,1,100w,1,,Disab\
    le,\"); {:local date [ /system clock get date ];:local year [ :pick \$date\
    \_7 11 ];:local month [ :pick \$date 0 3 ];:local comment [ /ip hotspot us\
    er get [/ip hotspot user find where name=\"\$user\"] comment]; :local ucod\
    e [:pic \$comment 0 2]; :if (\$ucode = \"vc\" or \$ucode = \"up\" or \$com\
    ment = \"\") do={ /sys sch add name=\"\$user\" disable=no start-date=\$dat\
    e interval=\"100w\"; :delay 2s; :local exp [ /sys sch get [ /sys sch find \
    where name=\"\$user\" ] next-run]; :local getxp [len \$exp]; :if (\$getxp \
    = 15) do={ :local d [:pic \$exp 0 6]; :local t [:pic \$exp 7 16]; :local s\
    \_(\"/\"); :local exp (\"\$d\$s\$year \$t\"); /ip hotspot user set comment\
    =\$exp [find where name=\"\$user\"];}; :if (\$getxp = 8) do={ /ip hotspot \
    user set comment=\"\$date \$exp\" [find where name=\"\$user\"];}; :if (\$g\
    etxp > 15) do={ /ip hotspot user set comment=\$exp [find where name=\"\$us\
    er\"];}; /sys sch remove [find where name=\"\$user\"]; :local mac \$\"mac-\
    address\"; :local time [/system clock get time ]; /system script add name=\
    \"\$date-|-\$time-|-\$user-|-1-|-\$address-|-\$mac-|-100w-|-KHUSUS-|-\$com\
    ment\" owner=\"\$month\$year\" source=\$date comment=mikhmon}}" \
    parent-queue=none rate-limit=\
    "1m/2000k 2m/3000k 400k/780k 40/40 8 512k/850k" shared-users=4 \
    transparent-proxy=yes
add address-pool=hs-pool-8 name=PEGAWAI on-login=":put (\",remc,1,100w,1,,Disa\
    ble,\"); {:local date [ /system clock get date ];:local year [ :pick \$dat\
    e 7 11 ];:local month [ :pick \$date 0 3 ];:local comment [ /ip hotspot us\
    er get [/ip hotspot user find where name=\"\$user\"] comment]; :local ucod\
    e [:pic \$comment 0 2]; :if (\$ucode = \"vc\" or \$ucode = \"up\" or \$com\
    ment = \"\") do={ /sys sch add name=\"\$user\" disable=no start-date=\$dat\
    e interval=\"100w\"; :delay 2s; :local exp [ /sys sch get [ /sys sch find \
    where name=\"\$user\" ] next-run]; :local getxp [len \$exp]; :if (\$getxp \
    = 15) do={ :local d [:pic \$exp 0 6]; :local t [:pic \$exp 7 16]; :local s\
    \_(\"/\"); :local exp (\"\$d\$s\$year \$t\"); /ip hotspot user set comment\
    =\$exp [find where name=\"\$user\"];}; :if (\$getxp = 8) do={ /ip hotspot \
    user set comment=\"\$date \$exp\" [find where name=\"\$user\"];}; :if (\$g\
    etxp > 15) do={ /ip hotspot user set comment=\$exp [find where name=\"\$us\
    er\"];}; /sys sch remove [find where name=\"\$user\"]; :local mac \$\"mac-\
    address\"; :local time [/system clock get time ]; /system script add name=\
    \"\$date-|-\$time-|-\$user-|-1-|-\$address-|-\$mac-|-100w-|-PEGAWAI-|-\$co\
    mment\" owner=\"\$month\$year\" source=\$date comment=mikhmon}}" \
    parent-queue=none rate-limit=1m/1000k shared-users=2 transparent-proxy=\
    yes
add address-pool=hs-pool-8 name=GURUMI on-login=":put (\",remc,1,100w,1,,Disab\
    le,\"); {:local date [ /system clock get date ];:local year [ :pick \$date\
    \_7 11 ];:local month [ :pick \$date 0 3 ];:local comment [ /ip hotspot us\
    er get [/ip hotspot user find where name=\"\$user\"] comment]; :local ucod\
    e [:pic \$comment 0 2]; :if (\$ucode = \"vc\" or \$ucode = \"up\" or \$com\
    ment = \"\") do={ /sys sch add name=\"\$user\" disable=no start-date=\$dat\
    e interval=\"100w\"; :delay 2s; :local exp [ /sys sch get [ /sys sch find \
    where name=\"\$user\" ] next-run]; :local getxp [len \$exp]; :if (\$getxp \
    = 15) do={ :local d [:pic \$exp 0 6]; :local t [:pic \$exp 7 16]; :local s\
    \_(\"/\"); :local exp (\"\$d\$s\$year \$t\"); /ip hotspot user set comment\
    =\$exp [find where name=\"\$user\"];}; :if (\$getxp = 8) do={ /ip hotspot \
    user set comment=\"\$date \$exp\" [find where name=\"\$user\"];}; :if (\$g\
    etxp > 15) do={ /ip hotspot user set comment=\$exp [find where name=\"\$us\
    er\"];}; /sys sch remove [find where name=\"\$user\"]; :local mac \$\"mac-\
    address\"; :local time [/system clock get time ]; /system script add name=\
    \"\$date-|-\$time-|-\$user-|-1-|-\$address-|-\$mac-|-100w-|-SEKOLAH1-|-\$c\
    omment\" owner=\"\$month\$year\" source=\$date comment=mikhmon}}" \
    parent-queue=none rate-limit=\
    "1m/2000k 2m/4000k 400k/780k 40/40 8 512k/850k" shared-users=2 \
    transparent-proxy=yes
add address-pool=hs-pool-8 name=PONDOKU3 on-login=":put (\",remc,1,100w,1,,Dis\
    able,\"); {:local date [ /system clock get date ];:local year [ :pick \$da\
    te 7 11 ];:local month [ :pick \$date 0 3 ];:local comment [ /ip hotspot u\
    ser get [/ip hotspot user find where name=\"\$user\"] comment]; :local uco\
    de [:pic \$comment 0 2]; :if (\$ucode = \"vc\" or \$ucode = \"up\" or \$co\
    mment = \"\") do={ /sys sch add name=\"\$user\" disable=no start-date=\$da\
    te interval=\"100w\"; :delay 2s; :local exp [ /sys sch get [ /sys sch find\
    \_where name=\"\$user\" ] next-run]; :local getxp [len \$exp]; :if (\$getx\
    p = 15) do={ :local d [:pic \$exp 0 6]; :local t [:pic \$exp 7 16]; :local\
    \_s (\"/\"); :local exp (\"\$d\$s\$year \$t\"); /ip hotspot user set comme\
    nt=\$exp [find where name=\"\$user\"];}; :if (\$getxp = 8) do={ /ip hotspo\
    t user set comment=\"\$date \$exp\" [find where name=\"\$user\"];}; :if (\
    \$getxp > 15) do={ /ip hotspot user set comment=\$exp [find where name=\"\
    \$user\"];}; /sys sch remove [find where name=\"\$user\"]; :local mac \$\"\
    mac-address\"; :local time [/system clock get time ]; /system script add n\
    ame=\"\$date-|-\$time-|-\$user-|-1-|-\$address-|-\$mac-|-100w-|-PONDOKU2-|\
    -\$comment\" owner=\"\$month\$year\" source=\$date comment=mikhmon}}" \
    parent-queue=none rate-limit=\
    "1m/2000k 2m/4000k 400k/780k 40/40 8 512k/850k" transparent-proxy=yes
add address-pool=hs-pool-8 name=BOS on-login=":put (\",remc,1,100w,1,,Disable,\
    \"); {:local date [ /system clock get date ];:local year [ :pick \$date 7 \
    11 ];:local month [ :pick \$date 0 3 ];:local comment [ /ip hotspot user g\
    et [/ip hotspot user find where name=\"\$user\"] comment]; :local ucode [:\
    pic \$comment 0 2]; :if (\$ucode = \"vc\" or \$ucode = \"up\" or \$comment\
    \_= \"\") do={ /sys sch add name=\"\$user\" disable=no start-date=\$date i\
    nterval=\"100w\"; :delay 2s; :local exp [ /sys sch get [ /sys sch find whe\
    re name=\"\$user\" ] next-run]; :local getxp [len \$exp]; :if (\$getxp = 1\
    5) do={ :local d [:pic \$exp 0 6]; :local t [:pic \$exp 7 16]; :local s (\
    \"/\"); :local exp (\"\$d\$s\$year \$t\"); /ip hotspot user set comment=\$\
    exp [find where name=\"\$user\"];}; :if (\$getxp = 8) do={ /ip hotspot use\
    r set comment=\"\$date \$exp\" [find where name=\"\$user\"];}; :if (\$getx\
    p > 15) do={ /ip hotspot user set comment=\$exp [find where name=\"\$user\
    \"];}; /sys sch remove [find where name=\"\$user\"]; :local mac \$\"mac-ad\
    dress\"; :local time [/system clock get time ]; /system script add name=\"\
    \$date-|-\$time-|-\$user-|-1-|-\$address-|-\$mac-|-100w-|-KHUSUS-|-\$comme\
    nt\" owner=\"\$month\$year\" source=\$date comment=mikhmon}}" \
    parent-queue=none rate-limit=\
    "1m/2000k 2m/4000k 400k/780k 40/40 8 512k/850k" shared-users=2 \
    transparent-proxy=yes
add address-pool=hs-pool-8 name=BOSPONDOK on-login=":put (\",remc,1,100w,1,,Di\
    sable,\"); {:local date [ /system clock get date ];:local year [ :pick \$d\
    ate 7 11 ];:local month [ :pick \$date 0 3 ];:local comment [ /ip hotspot \
    user get [/ip hotspot user find where name=\"\$user\"] comment]; :local uc\
    ode [:pic \$comment 0 2]; :if (\$ucode = \"vc\" or \$ucode = \"up\" or \$c\
    omment = \"\") do={ /sys sch add name=\"\$user\" disable=no start-date=\$d\
    ate interval=\"100w\"; :delay 2s; :local exp [ /sys sch get [ /sys sch fin\
    d where name=\"\$user\" ] next-run]; :local getxp [len \$exp]; :if (\$getx\
    p = 15) do={ :local d [:pic \$exp 0 6]; :local t [:pic \$exp 7 16]; :local\
    \_s (\"/\"); :local exp (\"\$d\$s\$year \$t\"); /ip hotspot user set comme\
    nt=\$exp [find where name=\"\$user\"];}; :if (\$getxp = 8) do={ /ip hotspo\
    t user set comment=\"\$date \$exp\" [find where name=\"\$user\"];}; :if (\
    \$getxp > 15) do={ /ip hotspot user set comment=\$exp [find where name=\"\
    \$user\"];}; /sys sch remove [find where name=\"\$user\"]; :local mac \$\"\
    mac-address\"; :local time [/system clock get time ]; /system script add n\
    ame=\"\$date-|-\$time-|-\$user-|-1-|-\$address-|-\$mac-|-100w-|-KHUSUS-|-\
    \$comment\" owner=\"\$month\$year\" source=\$date comment=mikhmon}}" \
    parent-queue=none rate-limit=\
    "1m/2000k 2m/4000k 400k/780k 40/40 8 512k/850k" shared-users=2 \
    transparent-proxy=yes
add address-pool=hs-pool-8 name=SPECIAL on-login=":put (\",remc,1,100w,1,,Disa\
    ble,\"); {:local date [ /system clock get date ];:local year [ :pick \$dat\
    e 7 11 ];:local month [ :pick \$date 0 3 ];:local comment [ /ip hotspot us\
    er get [/ip hotspot user find where name=\"\$user\"] comment]; :local ucod\
    e [:pic \$comment 0 2]; :if (\$ucode = \"vc\" or \$ucode = \"up\" or \$com\
    ment = \"\") do={ /sys sch add name=\"\$user\" disable=no start-date=\$dat\
    e interval=\"100w\"; :delay 2s; :local exp [ /sys sch get [ /sys sch find \
    where name=\"\$user\" ] next-run]; :local getxp [len \$exp]; :if (\$getxp \
    = 15) do={ :local d [:pic \$exp 0 6]; :local t [:pic \$exp 7 16]; :local s\
    \_(\"/\"); :local exp (\"\$d\$s\$year \$t\"); /ip hotspot user set comment\
    =\$exp [find where name=\"\$user\"];}; :if (\$getxp = 8) do={ /ip hotspot \
    user set comment=\"\$date \$exp\" [find where name=\"\$user\"];}; :if (\$g\
    etxp > 15) do={ /ip hotspot user set comment=\$exp [find where name=\"\$us\
    er\"];}; /sys sch remove [find where name=\"\$user\"]; :local mac \$\"mac-\
    address\"; :local time [/system clock get time ]; /system script add name=\
    \"\$date-|-\$time-|-\$user-|-1-|-\$address-|-\$mac-|-100w-|-SPECIAL-|-\$co\
    mment\" owner=\"\$month\$year\" source=\$date comment=mikhmon}}" \
    parent-queue=none shared-users=2 transparent-proxy=yes
/ip hotspot user
add mac-address=8C:7A:3D:D7:D4:25 name=bis password=bis
add name=bis1 password=bis1
add mac-address=84:FD:D1:EE:E2:6A name=IT2 password=IT2
add mac-address=8C:7A:3D:D7:D4:25 name=IT1 password=IT1
add comment=WARJINEM limit-uptime=200w name=WARJINEM password=8649855 \
    profile=BOS
add comment=Wegig limit-uptime=200w name=Wegig password=9640501 profile=BOS
add comment=Suswati limit-uptime=200w name=Suswati password=3979405 profile=\
    GURUSMK
add comment=NovitaIrawan limit-uptime=200w name=NovitaIrawan password=6032039 \
    profile=GURUSMK
add comment=Sartini limit-uptime=200w name=Sartini password=3208278 profile=\
    GURUSMK
add comment=Irvan limit-uptime=200w name=Irvan password=9268068 profile=\
    GURUSMK
add comment=MARDIYAH limit-uptime=200w name=MARDIYAH password=723715778 \
    profile=GURUSMK
add comment=MarlinaSafitri limit-uptime=200w name=MarlinaSafitri password=\
    6536184 profile=GURUSMK
add comment=Hidayatul limit-uptime=200w name=Hidayatul password=2874056 \
    profile=GURUSMK
add comment=Sani limit-uptime=200w name=Sani password=1776746 profile=GURUSMK
add comment=Iswanti limit-uptime=200w name=Iswanti password=4664849 profile=\
    GURUSMK
add comment=MFackturrohim limit-uptime=200w name=MFackturrohim password=\
    7682821 profile=GURUSMK
add comment=NURULSETYA limit-uptime=200w name=NURULSETYA password=1770106 \
    profile=GURUSMK
add comment=NORAKURNIAWATI limit-uptime=200w name=NORAKURNIAWATI password=\
    1528457 profile=GURUSMK
add comment=ANIKAROMAH limit-uptime=200w name=ANIKAROMAH password=1739497 \
    profile=GURUSMK
add comment=KandaJuanfda limit-uptime=200w name=KandaJuanfda password=6144835 \
    profile=GURUSMK
add comment=ALPIAN limit-uptime=200w name=ALPIAN password=3799409 profile=BOS
add comment=DESYPEBRIANTI limit-uptime=200w name=DESYPEBRIANTI password=\
    4861311 profile=GURUSMK
add comment=EVIYUNITA limit-uptime=200w name=EVIYUNITA password=9511119 \
    profile=GURUSMK
add comment=ARIVATUN limit-uptime=200w name=ARIVATUN password=9355891 \
    profile=GURUSMK
add comment=RUMIASTUTI limit-uptime=200w name=RUMIASTUTI password=7473943 \
    profile=GURUSMK
add comment=SUDARMANTO limit-uptime=200w name=SUDARMANTO password=9083215 \
    profile=GURUSMK
add comment=RONIALIB limit-uptime=200w name=RONIALIB password=9146804 \
    profile=GURUSMK
add comment=ALIIKHWAN limit-uptime=200w name=ALIIKHWAN password=1031993 \
    profile=GURUSMK
add comment=ELYPRATIWI limit-uptime=200w name=ELYPRATIWI password=1173339 \
    profile=GURUSMK
add comment=FAIZULHANIF limit-uptime=200w name=FAIZULHANIF password=5598182 \
    profile=GURUSMK
add comment=MIQBAL limit-uptime=200w name=MIQBAL password=6251045 profile=BOS
add comment=ADITYAAFRIANSAH limit-uptime=200w name=ADITYAAFRIANSAH password=\
    4416228 profile=GURUSMK
add comment=DEDYTRINANTO limit-uptime=200w name=DEDYTRINANTO password=5363299 \
    profile=BOS
add comment=DYAHISNAENI limit-uptime=200w name=DYAHISNAENI password=1446798 \
    profile=GURUMI
add comment=ELIRAHMAWATI limit-uptime=200w name=ELIRAHMAWATI password=8642892 \
    profile=GURUMI
add comment=RINISETYANINGS limit-uptime=200w name=RINISETYANINGS password=\
    5151905 profile=GURUMI
add comment=RIZKIFAUZI limit-uptime=200w name=RIZKIFAUZI password=9034819 \
    profile=GURUMI
add comment=ROPIATUN limit-uptime=200w name=ROPIATUN password=9808520 \
    profile=BOS
add comment=SITIZUHRIYAH limit-uptime=200w name=SITIZUHRIYAH password=1812063 \
    profile=BOS
add comment=SUGIHARTONO limit-uptime=200w name=SUGIHARTONO password=5039259 \
    profile=GURUMI
add comment=AGUSROHENDI limit-uptime=200w name=AGUSROHENDI password=1234623 \
    profile=GURUMTS
add comment="aug/20/2025 08:52:47" limit-uptime=200w name=AGUSSUTRISNO \
    password=8482272 profile=BOS
add comment=ANISAFBRIYANTI limit-uptime=200w name=ANISAFBRIYANTI password=\
    7759878 profile=GURUMTS
add comment=ANNISAFITRI limit-uptime=200w name=ANNISAFITRI password=7935793 \
    profile=GURUMTS
add comment=ASNAWI limit-uptime=200w name=ASNAWI password=8002977 profile=BOS
add comment=ENDANGPURWATI limit-uptime=200w name=ENDANGPURWATI password=\
    9646929 profile=GURUMTS
add comment=INDAHPOERWANTI limit-uptime=200w name=INDAHPOERWANTI password=\
    7776270 profile=GURUMTS
add comment=KHOIRULUMAM limit-uptime=200w name=KHOIRULUMAM password=7322589 \
    profile=BOS
add comment=MARPUATUN limit-uptime=200w name=MARPUATUN password=6470101 \
    profile=BOS
add comment=MARZUKI limit-uptime=200w name=MARZUKI password=6475153 profile=\
    GURUMTS
add comment=Minah limit-uptime=200w name=Minah password=9246085 profile=\
    GURUMTS
add comment=NurAzizah limit-uptime=200w name=NurAzizah password=6650182 \
    profile=GURUMTS
add comment=RAPINAH limit-uptime=200w name=RAPINAH password=6456640 profile=\
    GURUMTS
add comment=RIKOADITRISNA limit-uptime=200w name=RIKOADITRISNA password=\
    9148974 profile=GURUMTS
add comment=ROSYIDSIDIKS limit-uptime=200w name=ROSYIDSIDIKS password=3147525 \
    profile=GURUMTS
add comment=Rozaepriani limit-uptime=200w name=Rozaepriani password=6409438 \
    profile=GURUMTS
add comment=SITIRAMADHONA limit-uptime=200w name=SITIRAMADHONA password=\
    4188914 profile=GURUMTS
add comment=ukhti limit-uptime=200w name=ukhti password=ukhti12 profile=\
    GURUMTS
add comment=TEDIYANTO limit-uptime=200w name=TEDIYANTO password=1993475 \
    profile=GURUMTS
add comment=TUMIYATI limit-uptime=200w name=TUMIYATI password=3608801 \
    profile=GURUMTS
add comment=UMIROSSAR limit-uptime=200w name=UMIROSSAR password=6366075 \
    profile=GURUMTS
add comment=AndreNurArif limit-uptime=200w name=AndreNurArif password=6197503 \
    profile=PONDOKU1
add comment=aryawijaya disabled=yes limit-uptime=200w name=aryawijaya \
    password=7453653 profile=PONDOKU1
add comment=ASEPJUWAHIR limit-uptime=200w name=ASEPJUWAHIR password=3325922 \
    profile=PONDOKU1
add comment=ATIKFATONAH limit-uptime=200w name=ATIKFATONAH password=2348847 \
    profile=PONDOKU1
add comment=BUDIMAN limit-uptime=200w name=BUDIMAN password=1933943 profile=\
    PONDOKU1
add comment=DESSYRIZKY limit-uptime=200w name=DESSYRIZKY password=8209986 \
    profile=PONDOKU1
add comment=EKAANDRIYANI limit-uptime=200w name=EKAANDRIYANI password=2450467 \
    profile=PONDOKU1
add comment=EKAMUJAYANTI limit-uptime=200w name=EKAMUJAYANTI password=9196129 \
    profile=PONDOKU1
add comment=ELDISETIAWAN limit-uptime=200w name=ELDISETIAWAN password=5704205 \
    profile=PONDOKU1
add comment=IRMADESVITA limit-uptime=200w name=IRMADESVITA password=5793093 \
    profile=PONDOKU1
add comment=KRISMUNAWATI limit-uptime=200w name=KRISMUNAWATI password=9888393 \
    profile=PONDOKU1
add comment=LINANURJANAH limit-uptime=200w name=LINANURJANAH password=3634356 \
    profile=BOS
add comment=MARHATUS limit-uptime=200w name=MARHATUS password=7609928 \
    profile=PONDOKU1
add comment=MASTUR limit-uptime=200w name=MASTUR password=4330130 profile=BOS
add comment=NAILAYULIANTI limit-uptime=200w name=NAILAYULIANTI password=\
    6987414 profile=PONDOKU1
add comment=RAGILEDI limit-uptime=200w name=RAGILEDI password=9274041 \
    profile=PONDOKU1
add comment=RAHMAWATI limit-uptime=200w name=RAHMAWATI password=6873427 \
    profile=PONDOKU1
add comment=Ritasuryanti limit-uptime=200w name=Ritasuryanti password=2558369 \
    profile=PONDOKU1
add comment="aug/20/2025 08:52:47" limit-uptime=200w name=SUBANDI password=\
    1733334 profile=BOS
add comment=SYAMSIATUN limit-uptime=200w name=SYAMSIATUN password=7210160 \
    profile=PONDOKU1
add comment=WAHYUGISTOGUM limit-uptime=200w name=WAHYUGISTOGUM password=\
    8300957 profile=PONDOKU1
add comment=windapujiastut limit-uptime=200w name=windapujiastut password=\
    3499645 profile=PONDOKU1
add comment=Roainimy limit-uptime=200w name=Roainimy password=81201 profile=\
    PONDOKU1
add comment=Ifatimahsiti limit-uptime=200w name=Ifatimahsiti password=31092 \
    profile=PONDOKU1
add comment=Wasila02 limit-uptime=200w name=Wasila02 password=wasila2028 \
    profile=PONDOKU1
add comment=EVIW limit-uptime=200w name=EVIW password=763549 profile=PONDOKU1
add comment=AHLA limit-uptime=200w name=AHLA password=pamekasan profile=\
    PONDOKU1
add comment=annafistah limit-uptime=200w name=annafistah password=123 \
    profile=PONDOKU1
add comment=akmujtaba limit-uptime=200w name=akmujtaba password=123 profile=\
    PONDOKU1
add comment=Endah limit-uptime=200w name=Endah password=2351992 profile=\
    PONDOKU1
add comment=Isrofika limit-uptime=200w name=Isrofika password=3031810 \
    profile=PONDOKU1
add comment=KhairulUmam limit-uptime=200w name=KhairulUmam password=taq1yya19 \
    profile=BOS
add comment=Jihan986 limit-uptime=200w name=Jihan986 password=20998 profile=\
    PONDOKU1
add comment=Rohim limit-uptime=200w name=Rohim password=291080 profile=\
    PONDOKU1
add comment=Khory limit-uptime=200w name=Khory password=250310 profile=\
    PONDOKU3
add comment=Syarief limit-uptime=200w name=Syarief password=250700 profile=\
    PONDOKU3
add comment=zulizar0798 limit-uptime=200w name=zulizar0798 password=zulpeb579 \
    profile=PONDOKU3
add comment=ALBAB limit-uptime=200w name=ALBAB password=250999 profile=\
    PONDOKU3
add comment=arif limit-uptime=200w name=arif password=949586 profile=PONDOKU3
add comment="2025-01-16 17:32:56" limit-uptime=200w name=Arioaji1 password=\
    ARJIPMKS2303 profile=PONDOKU3
add comment=Zayn limit-uptime=200w name=Zayn password=161123 profile=PONDOKU3
add comment=Armila limit-uptime=200w name=Armila password=221096 profile=\
    PONDOKU3
add comment=Lutfi limit-uptime=200w name=Lutfi password=50100 profile=\
    PONDOKU3
add comment=Wijay1810 limit-uptime=200w name=aryaw password=aryaw profile=\
    PONDOKU3
add comment="2025-01-30 19:14:13" limit-uptime=200w name=melita password=\
    kayaraya profile=PONDOKU2
add comment=sugik limit-uptime=200w name=sugik password=himu profile=PONDOKU2
add comment=kia45 limit-uptime=200w name=kia45 password=X@zqinengkia45 \
    profile=PONDOKU2
add comment=Rossarosidah limit-uptime=200w name=Rossarosidah password=\
    rossarosidah profile=PONDOKU2
add comment=Ochacacamaricha limit-uptime=200w name=Ochacacamaricha password=\
    ochacacamaricha profile=PONDOKU2
add comment=Jannah limit-uptime=200w name=Jannah password=45256 profile=\
    PONDOKU2
add comment=FAIZ limit-uptime=200w name=FAIZ password=Mojosari/2 profile=\
    PONDOKU2
add comment=cinta limit-uptime=200w name=cinta password=dzaki profile=\
    PONDOKU2
add comment=yaimastur limit-uptime=200w name=yaimastur password=purworejo \
    profile=PONDOKU2
add comment=Noviutami limit-uptime=200w name=Noviutami password=kafabihi \
    profile=PONDOKU2
add comment=novip2 limit-uptime=200w name=novip2 password=Fadhil123 profile=\
    PONDOKU2
add comment=santoso limit-uptime=200w name=santoso password=Santoso1 profile=\
    PONDOKU2
add comment=wnabski disabled=yes limit-uptime=200w name=wnabski password=\
    140705 profile=PONDOKU1
add comment=BUKMUN1 limit-uptime=200w name=BUKMUN1 password=5678910 profile=\
    PONDOKU2
add comment=TAQIYYA019 limit-uptime=200w name=TAQIYYA019 password=TAQIYYA019 \
    profile=KHUSUS
add comment=umayah limit-uptime=200w name=umayah156 password=157461 profile=\
    PEGAWAI
add comment=UKHTINIA93 limit-uptime=200w name=UKHTINIA93 password=UKHTINIA93 \
    profile=PONDOKU1
add comment=Rizki0804 limit-uptime=200w name=Rizki0804 password=Shanum02 \
    profile=PONDOKU3
add comment=ulirizki limit-uptime=200w name=Uli0410 password=Shanum02 \
    profile=PONDOKU3
add comment="aug/20/2025 08:52:47" limit-uptime=200w name=Sugik password=\
    kang12 profile=PONDOKU1
add comment=JULIKATI limit-uptime=200w name=JULIKATI password=JULIKATI \
    profile=PEGAWAI
add comment=NOVITA limit-uptime=200w name=NOVITA password=NOVITA profile=\
    PEGAWAI
add comment=ALIIKHWAN limit-uptime=200w name=LASBOS password=1040391 profile=\
    GURUSMK
add comment=ALIIKHWANTV limit-uptime=200w name=TVCOK password=545445 profile=\
    KHUSUS
add comment=reyhan limit-uptime=200w name=reyhan password=44551 profile=\
    PONDOKU1
add comment=SETIO limit-uptime=200w name=SETIO password=PR4S profile=PEGAWAI
add comment=Metviaaprilia limit-uptime=200w name=Metviaaprilia password=\
    290401 profile=PONDOKU2
add comment=AGUSHARI limit-uptime=200w name=AGUSHARI password=141414 profile=\
    PONDOKU2
add comment=febri limit-uptime=200w name=KOM3 password=4875 profile=PONDOKU3
add comment=IIN limit-uptime=200w name=IINICS password=458412 profile=PEGAWAI
add comment="2024-12-13 02:15:42" limit-bytes-total=1000000000000 name=aku- \
    password=rojotego_22 profile=PONDOKU1
add comment="2024-12-07 03:38:09" name=MOEHAJ7 password=MOEHAJ7 profile=\
    SPECIAL
add comment="2024-12-07 03:38:06" name=mistur1 password=mistur2024 profile=\
    PONDOKU2
add name=mistur2 password=123456 profile=PONDOKU2
add comment="2024-12-07 10:53:00" limit-uptime=50w name=BOSBENGKEL password=\
    1040391 profile=GURUSMK
add comment="2024-12-12 19:19:46" limit-uptime=50w name=Devi password=87969 \
    profile=PEGAWAI
add comment="2024-12-08 07:43:47" limit-uptime=50w name=ULIN password=87945 \
    profile=PEGAWAI
add comment=up-David limit-uptime=50w name=Davit password=5432 profile=\
    PEGAWAI
add comment="aug/20/2025 08:52:47" limit-uptime=50w name=Saman password=99780 \
    profile=PEGAWAI
add comment="2024-12-23 18:22:55" limit-uptime=50w name=Yakop password=56734 \
    profile=PEGAWAI
add comment="2024-12-07 15:30:26" limit-uptime=50w name=Tompel password=74658 \
    profile=PEGAWAI
add comment="2025-01-10 07:39:41" limit-uptime=50w name=NAMA password=NAMA \
    profile=SPECIAL
add comment="2025-01-07 16:59:15" limit-uptime=50w name=Piul password=7765 \
    profile=PEGAWAI
add comment="2024-12-07 03:38:06" name=neng2 password=neng2 profile=KHUSUS
add comment="2024-12-23 14:32:32" limit-uptime=50w name=YAKIN password=YAKIN \
    profile=SPECIAL
add comment="2024-12-07 10:53:21" limit-uptime=50w name=Azkia password=4435 \
    profile=PEGAWAI
add comment="2024-12-19 13:33:25" limit-uptime=100w name=OPTIMIS password=\
    OPTIMIS profile=SPECIAL
add comment="2024-12-08 05:43:44" name=pipitjasaq password=pipitjasaq \
    profile=KHUSUS
add comment="mar/09/2025 06:04:46" name=neng2nafi password=neng2nafi profile=\
    KHUSUS
add comment="2024-12-07 11:08:52" name=givan2 password=givan2 profile=\
    PONDOKU1
add comment="aug/20/2025 08:52:47" limit-uptime=50w name=Fadil password=1234 \
    profile=TEST
add comment="2024-12-07 10:40:49" limit-uptime=50w name=Santoso password=Trw \
    profile=TEST
add comment="2024-12-07 14:42:35" limit-uptime=50w name=Supra password=4321 \
    profile=PEGAWAI
add comment="2024-12-07 03:38:08" limit-uptime=200w name=mugik password=67555 \
    profile=PEGAWAI
add comment="2025-01-11 16:13:47" limit-uptime=200w name=mbahwarti password=\
    565643 profile=PONDOKU2
add comment=up-syakirmie limit-uptime=200w name=syakirmie password=tvhsd87 \
    profile=PEGAWAI
add comment="2024-12-07 20:21:08" limit-uptime=100w name=MARHALAH31 password=\
    MARHALAH31 profile=PONDOKU2
add comment=up-sigitsawit limit-uptime=100w name=sigit2 password=5646 \
    profile=PEGAWAI
add comment="2024-12-22 09:20:24" disabled=yes name=upup password=upup \
    profile=TEST
add comment="2024-12-07 10:58:20" name=ahmadisp3 password=998877 profile=\
    PONDOKU3
add comment="2024-12-07 12:14:50" name=tutip1 password=tutip1 profile=\
    PONDOKU1
add comment="aug/20/2025 08:52:47" name=mbah password=mbah profile=SPECIAL
add comment="2024-12-08 06:05:58" limit-uptime=100w name=MNUR password=MNUR \
    profile=GURUSMK
add comment="2024-12-07 03:38:05" limit-uptime=100w name=alfip2 password=\
    mndskd profile=PONDOKU2
add comment="2024-12-07 03:38:06" limit-uptime=100w name=yusufsatu password=\
    123567 profile=BOSPONDOK
add comment="2024-12-07 10:39:53" limit-uptime=100w name=sitisatu password=\
    765321 profile=PONDOKU1
add comment="2024-12-24 04:03:54" limit-uptime=100w name=Rajni07 password=\
    Husnan7777 profile=PONDOKU3
add comment="2024-12-07 03:38:07" limit-uptime=100w name=Asihmt08 password=\
    Husnan7708 profile=PONDOKU3
add comment="2024-12-07 16:22:05" limit-uptime=100w name=Ikhlasul12 password=\
    Rusiamom12 profile=PONDOKU3
add comment="2024-12-07 14:33:02" limit-uptime=100w name=aseh27 password=\
    aseh27 profile=PEGAWAI
add comment="2024-12-08 06:48:18" limit-uptime=100w name=Sukses24 password=\
    Santri123 profile=PONDOKU3
add comment="2024-12-09 17:47:00" limit-uptime=100w name=pakfaiz01 password=\
    pakfaiz01 profile=SPECIAL
add comment="2024-12-13 08:12:04" limit-uptime=100w name=bunita22 password=\
    bunita22 profile=KHUSUS
add comment="2024-12-10 13:50:19" limit-uptime=100w name=iimjuragan password=\
    iimjuragan profile=PONDOKU2
add comment="2024-12-31 08:35:26" name=IN password=IN profile=SPECIAL
add comment="2025-01-06 19:28:23" limit-uptime=100w name=bosratini01 \
    password=bosratini01 profile=PONDOKU2
add comment=up-bosratini02 limit-uptime=100w name=bosratini02 password=\
    bosratini01 profile=PONDOKU2
add comment="2025-01-07 10:50:14" limit-uptime=100w name=Mahendrap3 password=\
    14643198 profile=PONDOKU3
add comment="2025-01-09 20:36:27" limit-uptime=100w name=Riskiabdip3 \
    password=1479149687968 profile=PONDOKU3
add comment="2025-01-18 06:51:52" limit-uptime=100w name=dona01 password=\
    5564698 profile=GURUMTS
add comment="2025-01-18 12:55:47" limit-uptime=100w name=nolap1 password=\
    5564698 profile=PONDOKU1
add comment="2025-01-16 19:10:51" limit-uptime=100w name=cholil01 password=\
    082174759188 profile=PONDOKU1
add comment="2025-01-16 20:27:46" limit-uptime=100w name=meli02 password=\
    dibutuhkan profile=PONDOKU2
add comment="mar/04/2025 16:57:56" limit-uptime=100w name=septianakbar03 \
    password=allahuakbar profile=PONDOKU3
add comment="2025-01-20 18:34:21" limit-uptime=100w name=anto33 password=\
    anto33 profile=PONDOKU1
add comment="2025-01-26 05:14:00" limit-uptime=100w name=rosidah1 password=\
    184545 profile=PONDOKU1
add comment="2025-01-21 05:23:42" limit-uptime=100w name=Mukhlison password=\
    230502 profile=PONDOKU1
add comment="2025-01-21 03:04:46" limit-uptime=100w name=Ulinnuha2309 \
    password=Ulinnuha23 profile=PONDOKU1
add comment=vc-JULI24 limit-uptime=100w name=JULI24 password=JULI24 profile=\
    TEST
add comment="2025-01-20 18:34:10" limit-uptime=100w name=Nani24 password=\
    6464984 profile=PONDOKU1
add comment=up-Pingkan24 limit-uptime=100w name=Pingkan24 password=1654984 \
    profile=PONDOKU1
add comment="2025-01-24 19:29:21" limit-uptime=100w name=Nia24 password=\
    12674981 profile=PONDOKU1
add comment=up-Nola24 limit-uptime=100w name=Nola24 password=4564648 profile=\
    PONDOKU1
add comment="2025-01-23 20:19:09" limit-uptime=100w name=Widia24 password=\
    164964 profile=PONDOKU1
add comment="2025-01-25 07:35:42" limit-uptime=100w name=TVENDAH79 password=\
    TVENDAH79 profile=MEDIA
add comment="2025-01-22 17:06:25" limit-uptime=100w name=NeisaP24 password=\
    1465474 profile=PONDOKU2
add comment="2025-01-21 05:59:08" limit-uptime=100w name=ReniSP24 password=\
    1546561 profile=PONDOKU2
add comment=up-WahidatunP24 limit-uptime=100w name=WahidatunP24 password=\
    15646456497 profile=PONDOKU2
add comment="2025-01-21 06:52:28" limit-uptime=100w name=tamuvip1 password=\
    tamuvip1 profile=TEST
add comment="2025-01-23 00:53:26" limit-uptime=100w name=yetno24 password=\
    yetno24 profile=PEGAWAI
add comment="2025-02-03 06:33:18" limit-uptime=100w name=rufan02 password=\
    282828 profile=MEDIA
add comment=MUSLIMAH01 name=MUSLIMAH01 password=MUSLIMAH01 profile=PONDOKU1
add comment=NANDA02 name=NANDA02 password=NANDA02 profile=PONDOKU1
add comment=DEVIRIALITA03 name=DEVIRIALITA03 password=DEVIRIALITA03 profile=\
    PONDOKU1
add comment=HIMATUL04 name=HIMATUL04 password=HIMATUL04 profile=PONDOKU1
add comment=DEVINAFADLIN05 name=DEVINAFADLIN05 password=DEVINAFADLIN05 \
    profile=PONDOKU1
add comment=FAUZIYAH06 name=FAUZIYAH06 password=FAUZIYAH06 profile=PONDOKU1
add comment=MUNAWAROH07 name=MUNAWAROH07 password=MUNAWAROH07 profile=\
    PONDOKU1
add comment=TAQIYYA010 name=TAQIYYA010 password=TAQIYYA010 profile=PONDOKU1
add comment=candra48 name=candra48 password=candra48 profile=PEGAWAI
add comment=deni88 name=deni88 password=deni88 profile=PEGAWAI
add comment="feb/26/2025 07:08:25" name=yainafi password=yainafi profile=\
    BOSPONDOK
add comment="mar/20/2025 07:33:07" name=akm password=akm profile=TEST
add comment="mar/20/2025 17:25:00" name=paktur1 password=paktur1 profile=TEST
add comment="mar/28/2025 18:41:06" limit-uptime=100w name=yudi01 password=\
    4894644 profile=PEGAWAI
add comment="mar/26/2025 07:15:58" limit-uptime=100w name=Meijuni password=\
    juliya profile=SPECIAL
add comment="apr/16/2025 18:11:22" limit-uptime=100w name=liya password=\
    mieayam profile=PEGAWAI
add comment="apr/05/2025 09:43:46" name=agusagus password=agusagus profile=\
    TEST
add comment="apr/03/2025 16:17:39" name=verel password=verel profile=TEST
add comment="apr/11/2025 11:17:17" name=whd password=whd profile=MEDIA
add comment="apr/10/2025 16:15:15" limit-uptime=100w name=Athika09 password=\
    Athika09 profile=PONDOKU1
add comment="apr/10/2025 16:17:47" limit-uptime=100w name=NENGULFA24 \
    password=NENGULFA24 profile=MEDIA
add comment="apr/10/2025 19:53:40" limit-uptime=100w name=FAHRIIII password=\
    FAHRIIII profile=PEGAWAI
add comment="apr/12/2025 08:28:08" limit-uptime=100w name=alfirA1 password=\
    alfirA1 profile=PONDOKU3
add comment="apr/17/2025 17:33:53" name=dinda09 password=dinda09 profile=\
    BOSPONDOK
add comment="apr/17/2025 17:35:05" name=syafaah password=032004 profile=\
    PONDOKU2
add comment="may/02/2025 04:51:02" name=bosmastur2 password=bosmastur2 \
    profile=PONDOKU2
add comment="may/07/2025 08:25:26" name=pakim16 password=pakim16 profile=\
    PONDOKU3
add comment="may/07/2025 09:01:41" name=rizki09satpam password=rizki09satpam \
    profile=PEGAWAI
add comment="may/09/2025 07:53:12" name=citraP1R password=citraP1R profile=\
    PONDOKU1
add comment="may/11/2025 06:36:25" name=S102024 password=S102024 profile=TEST
add comment="jun/02/2025 07:39:33" name=rofi password=MI1234567 profile=\
    KHUSUS
add comment="jul/20/2025 10:41:51" name=KANGMAS password=260721 profile=\
    PONDOKU3
add mac-address=E4:C7:67:1B:8C:6C name=DOWN password=DOWN
add comment="aug/23/2025 05:36:37" name=ahmadabdullah25 password=\
    ahmadabdullah25 profile=GURUMI
add comment="aug/03/2025 08:44:28" name=denisatpam password=denisatpam2025 \
    profile=PEGAWAI
add comment="aug/05/2025 11:26:48" name=alfianaspri25 password=alfianaspri25 \
    profile=KHUSUS
add comment="aug/08/2025 06:11:34" limit-uptime=2h name=EBDSHEMR password=\
    EBDSHEMR profile=MEDIA
add comment="aug/08/2025 07:12:20" limit-uptime=2h name=CRX3GLVL password=\
    CRX3GLVL profile=MEDIA
add comment="aug/08/2025 07:39:38" limit-uptime=2h name=KAFRYS2G password=\
    KAFRYS2G profile=MEDIA
add comment="aug/08/2025 12:30:17" limit-uptime=2h name=92C3LF24 password=\
    92C3LF24 profile=MEDIA
add comment="aug/08/2025 09:50:30" limit-uptime=2h name=2FHUKP9R password=\
    2FHUKP9R profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=4MCBH2M8 password=\
    4MCBH2M8 profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=34TCLGLS password=\
    34TCLGLS profile=MEDIA
add comment="aug/08/2025 08:26:42" limit-uptime=2h name=4V95GJ28 password=\
    4V95GJ28 profile=MEDIA
add comment="aug/08/2025 08:32:46" limit-uptime=2h name=VFLGBBBU password=\
    VFLGBBBU profile=MEDIA
add comment="aug/08/2025 14:59:55" limit-uptime=2h name=JW9PSAEE password=\
    JW9PSAEE profile=MEDIA
add comment="aug/08/2025 08:07:39" limit-uptime=2h name=SR6JYHN7 password=\
    SR6JYHN7 profile=MEDIA
add comment="aug/08/2025 07:07:13" limit-uptime=2h name=N2MALG2Y password=\
    N2MALG2Y profile=MEDIA
add comment="aug/08/2025 08:43:04" limit-uptime=2h name=XANRTAV3 password=\
    XANRTAV3 profile=MEDIA
add comment="aug/08/2025 13:07:55" limit-uptime=2h name=RHM69E57 password=\
    RHM69E57 profile=MEDIA
add comment="aug/08/2025 14:01:52" limit-uptime=2h name=N9FC3W7N password=\
    N9FC3W7N profile=MEDIA
add comment="aug/08/2025 08:10:19" limit-uptime=2h name=YJHKXAZB password=\
    YJHKXAZB profile=MEDIA
add comment="aug/08/2025 08:41:08" limit-uptime=2h name=8XPLZKWC password=\
    8XPLZKWC profile=MEDIA
add comment="aug/08/2025 11:41:00" limit-uptime=2h name=MFGRXCUK password=\
    MFGRXCUK profile=MEDIA
add comment="aug/08/2025 08:01:35" limit-uptime=2h name=ULPRVL7A password=\
    ULPRVL7A profile=MEDIA
add comment="aug/08/2025 10:04:08" limit-uptime=2h name=YEUXGWW8 password=\
    YEUXGWW8 profile=MEDIA
add comment="aug/08/2025 08:35:31" limit-uptime=2h name=RFP2X8DR password=\
    RFP2X8DR profile=MEDIA
add comment="aug/08/2025 11:54:35" limit-uptime=2h name=9RTDU6GJ password=\
    9RTDU6GJ profile=MEDIA
add comment="aug/08/2025 08:12:44" limit-uptime=2h name=7SYRDNNY password=\
    7SYRDNNY profile=MEDIA
add comment="aug/08/2025 09:52:10" limit-uptime=2h name=PMLD9DTR password=\
    PMLD9DTR profile=MEDIA
add comment="aug/08/2025 13:48:18" limit-uptime=2h name=FUP3J8B8 password=\
    FUP3J8B8 profile=MEDIA
add comment="aug/08/2025 08:37:43" limit-uptime=2h name=KDK5YT54 password=\
    KDK5YT54 profile=MEDIA
add comment="aug/08/2025 09:44:34" limit-uptime=2h name=ST6BM4LR password=\
    ST6BM4LR profile=MEDIA
add comment="aug/08/2025 10:33:52" limit-uptime=2h name=67WW8NNV password=\
    67WW8NNV profile=MEDIA
add comment="aug/08/2025 10:06:02" limit-uptime=2h name=D2MPWKRS password=\
    D2MPWKRS profile=MEDIA
add comment="aug/08/2025 12:59:58" limit-uptime=2h name=MCUYBAR9 password=\
    MCUYBAR9 profile=MEDIA
add comment="aug/08/2025 09:32:30" limit-uptime=2h name=KPCGLVZL password=\
    KPCGLVZL profile=MEDIA
add comment="aug/08/2025 09:30:40" limit-uptime=2h name=B4LJFUHK password=\
    B4LJFUHK profile=MEDIA
add comment="aug/08/2025 08:25:53" limit-uptime=2h name=J3JXZ9MF password=\
    J3JXZ9MF profile=MEDIA
add comment="aug/08/2025 12:11:27" limit-uptime=2h name=ENJWVLA2 password=\
    ENJWVLA2 profile=MEDIA
add comment="aug/08/2025 09:59:32" limit-uptime=2h name=KEG9AYVK password=\
    KEG9AYVK profile=MEDIA
add comment="aug/08/2025 09:00:34" limit-uptime=2h name=8BUAVUBV password=\
    8BUAVUBV profile=MEDIA
add comment="aug/08/2025 09:54:19" limit-uptime=2h name=XYFRS9Z8 password=\
    XYFRS9Z8 profile=MEDIA
add comment="aug/08/2025 10:31:50" limit-uptime=2h name=XBRXNSUD password=\
    XBRXNSUD profile=MEDIA
add comment="aug/08/2025 08:49:51" limit-uptime=2h name=UYLMNE8M password=\
    UYLMNE8M profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=TXG4HN4S password=\
    TXG4HN4S profile=MEDIA
add comment="aug/08/2025 10:46:18" limit-uptime=2h name=HPA6AMU3 password=\
    HPA6AMU3 profile=MEDIA
add comment="aug/08/2025 08:26:47" limit-uptime=2h name=5CD3NTCB password=\
    5CD3NTCB profile=MEDIA
add comment="aug/08/2025 08:30:57" limit-uptime=2h name=ADPKT72S password=\
    ADPKT72S profile=MEDIA
add comment="aug/08/2025 09:50:18" limit-uptime=2h name=5UM2DDU9 password=\
    5UM2DDU9 profile=MEDIA
add comment="aug/08/2025 07:45:35" limit-uptime=2h name=CA46HC52 password=\
    CA46HC52 profile=MEDIA
add comment="aug/08/2025 11:46:24" limit-uptime=2h name=3PH9WMTU password=\
    3PH9WMTU profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=YMR5MBB2 password=\
    YMR5MBB2 profile=MEDIA
add comment="aug/08/2025 09:05:11" limit-uptime=2h name=7592FWJC password=\
    7592FWJC profile=MEDIA
add comment="aug/08/2025 08:38:02" limit-uptime=2h name=DPWSFEV3 password=\
    DPWSFEV3 profile=MEDIA
add comment="aug/08/2025 06:57:34" limit-uptime=2h name=PD4KBC9Y password=\
    PD4KBC9Y profile=MEDIA
add comment="aug/08/2025 08:14:57" limit-uptime=2h name=URSA7T3D password=\
    URSA7T3D profile=MEDIA
add comment="aug/08/2025 13:47:51" limit-uptime=2h name=XRB6RA82 password=\
    XRB6RA82 profile=MEDIA
add comment="aug/08/2025 07:25:36" limit-uptime=2h name=MYMY5T57 password=\
    MYMY5T57 profile=MEDIA
add comment="aug/08/2025 07:24:01" limit-uptime=2h name=4E6ZZWNP password=\
    4E6ZZWNP profile=MEDIA
add comment="aug/08/2025 05:55:51" limit-uptime=2h name=YNS2GMAT password=\
    YNS2GMAT profile=MEDIA
add comment="aug/08/2025 08:41:56" limit-uptime=2h name=EPVC9HVA password=\
    EPVC9HVA profile=MEDIA
add comment="aug/08/2025 09:16:51" limit-uptime=2h name=43DRHJTE password=\
    43DRHJTE profile=MEDIA
add comment="aug/08/2025 11:33:58" limit-uptime=2h name=6TNGVA32 password=\
    6TNGVA32 profile=MEDIA
add comment="aug/08/2025 09:35:50" limit-uptime=2h name=AFPCGTYB password=\
    AFPCGTYB profile=MEDIA
add comment="aug/08/2025 09:57:47" limit-uptime=2h name=LZVMZJG6 password=\
    LZVMZJG6 profile=MEDIA
add comment="aug/08/2025 12:53:23" limit-uptime=2h name=T235LMZS password=\
    T235LMZS profile=MEDIA
add comment="aug/08/2025 12:30:53" limit-uptime=2h name=YJN3YJDX password=\
    YJN3YJDX profile=MEDIA
add comment="aug/08/2025 11:29:30" limit-uptime=2h name=U3MA7A5Y password=\
    U3MA7A5Y profile=MEDIA
add comment="aug/08/2025 11:00:14" limit-uptime=2h name=HMC2YG3L password=\
    HMC2YG3L profile=MEDIA
add comment="aug/08/2025 10:43:34" limit-uptime=2h name=PUR4F3M6 password=\
    PUR4F3M6 profile=MEDIA
add comment="aug/08/2025 13:35:26" limit-uptime=2h name=HL6RALPF password=\
    HL6RALPF profile=MEDIA
add comment="aug/08/2025 13:54:04" limit-uptime=2h name=LJJTL6RN password=\
    LJJTL6RN profile=MEDIA
add comment="aug/08/2025 13:10:57" limit-uptime=2h name=6MBH58LN password=\
    6MBH58LN profile=MEDIA
add comment="aug/08/2025 12:42:04" limit-uptime=2h name=UGCMYURN password=\
    UGCMYURN profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=R24JTJZJ password=\
    R24JTJZJ profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=LVEWSCUG password=\
    LVEWSCUG profile=MEDIA
add comment="aug/08/2025 15:26:25" limit-uptime=2h name=HZR4JT5B password=\
    HZR4JT5B profile=MEDIA
add comment="aug/08/2025 14:55:23" limit-uptime=2h name=6YYT9YBA password=\
    6YYT9YBA profile=MEDIA
add comment="aug/08/2025 14:08:26" limit-uptime=2h name=PSGEJA98 password=\
    PSGEJA98 profile=MEDIA
add comment="aug/08/2025 13:59:25" limit-uptime=2h name=TZ9LMWDD password=\
    TZ9LMWDD profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=KNLR59MJ password=\
    KNLR59MJ profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=RAHK8ECZ password=\
    RAHK8ECZ profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=DWCCJWGH password=\
    DWCCJWGH profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=8Z3X8SED password=\
    8Z3X8SED profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=DNYHYJ4D password=\
    DNYHYJ4D profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=HF3XX8VS password=\
    HF3XX8VS profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=TBPEPCND password=\
    TBPEPCND profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=VVUTJZXG password=\
    VVUTJZXG profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=W3TC2MHT password=\
    W3TC2MHT profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=HGKVBCVN password=\
    HGKVBCVN profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=X5HK5NUV password=\
    X5HK5NUV profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=RJKBJKWM password=\
    RJKBJKWM profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=5S4BAMWU password=\
    5S4BAMWU profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=RB3DGVBM password=\
    RB3DGVBM profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=S9TUSTYX password=\
    S9TUSTYX profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=T3ADBGBX password=\
    T3ADBGBX profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=3UVCSFAF password=\
    3UVCSFAF profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=72GHBP8R password=\
    72GHBP8R profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=BRJ6LT3K password=\
    BRJ6LT3K profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=5FY3SR8A password=\
    5FY3SR8A profile=MEDIA
add comment="aug/08/2025 14:17:58" limit-uptime=2h name=R84GG4LM password=\
    R84GG4LM profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=UKW9WVLW password=\
    UKW9WVLW profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=KJSLNL6U password=\
    KJSLNL6U profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=MNLBYCLS password=\
    MNLBYCLS profile=MEDIA
add comment=vc-571-01.17.25-USTFAIZ limit-uptime=2h name=5YTRELXF password=\
    5YTRELXF profile=MEDIA
add comment="aug/11/2025 04:36:58" name=Shanum02 password=Rizki0804 profile=\
    PONDOKU3
add comment="aug/21/2025 18:35:44" limit-uptime=50w name=TAHU password=TAHU \
    profile=SPECIAL
add comment="aug/22/2025 19:52:26" name=septian password=akbar25 profile=\
    PONDOKU3
add comment="aug/23/2025 10:33:48" name=adminp33 password=adminp33 profile=\
    KHUSUS
