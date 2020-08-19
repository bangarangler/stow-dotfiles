#!/usr/bin/env python3


import webbrowser
import subprocess
import sys

work_urls = [
    "https://calendar.google.com/calendar/b/1/r?tab=wc",
    "https://www.notion.so/Jon-P-Dashboard-ffdcc3f4ac684dbaaa1980de167a7cd9",
    "https://www.notion.so/79994e14bcd445ce8790b2fa96432567?v=c219f61e988e4baba3212d544db0ffb7",
    "https://www.notion.so/0d62615de49044ed81fbdf3ec49de07e?v=3376dca4ecf44edcb11ed02716ec88f1",
    "https://www.notion.so/Leadership-Meeting-Notes-2019-2020-c5c4971eed944a8d8f538a3faf9786a9",
    "https://www.notion.so"
]


def are_you_ready():
    while True:
        # print("Are you ready to begin?")
        cmd = input(str('Are you ready to begin?')).lower()
        # cmd = str(cmd).lower()
        print(cmd)
        print(type(cmd))

        if cmd == '' or cmd != str:
            print(f"please enter y or n you entered {cmd}")
        if cmd == 'n':
            sys.exit()
        if cmd == "y":
            for url in work_urls[1:]:
                webbrowser.open_new_tab(url)
            subprocess.Popen(['slack', '&'])
            subprocess.Popen(['mailspring', '&'])
            break


webbrowser.open(work_urls[0])
are_you_ready()

# why does this not work?
# for idx, url in enumerate(work_urls):
# if (idx == 0):
#     print(f"in if -> {url}")
#     time.sleep(1)
#     webbrowser.open(url)
# else:
#     print(f"in else -> {url}")
#     webbrowser.open_new_tab(url)

print("Oh Frabjous Day! \n Get some coffee jon...")
