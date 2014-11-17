# Copyright (C) 2012 The Android Open Source Project
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

""" Custom OTA commands for expressatt devices """

import os

def FullOTA_InstallEnd(info):
  info.output_zip.write(os.path.join(os.getenv('OUT'), "wifimac.sh"), "wifimac.sh")
  info.script.AppendExtra(
        ('package_extract_file("wifimac.sh", "/tmp/wifimac.sh");\n'
         'set_metadata("/tmp/wifimac.sh", "uid", 0, "gid", 0, "mode", 0755);\n'
         'run_program("/tmp/wifimac.sh");'))
