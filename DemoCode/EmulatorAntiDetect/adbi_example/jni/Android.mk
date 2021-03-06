# Copyright (C) 2009 The Android Open Source Project
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
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := libexample
LOCAL_SRC_FILES := ../property_get.c  ../property_get_arm.c
LOCAL_LDLIBS    := -L./libs -ldl -ldvm -lbase
LOCAL_LDLIBS := -Wl,--start-group ../../base/obj/local/armeabi/libbase.a  -Wl,--end-group
LOCAL_CFLAGS := -g

include $(BUILD_SHARED_LIBRARY)
