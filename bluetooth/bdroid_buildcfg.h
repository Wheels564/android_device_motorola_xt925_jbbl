/*
 * Copyright (C) 2015 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _BDROID_BUILDCFG_H
#define _BDROID_BUILDCFG_H

#define BTM_DEF_LOCAL_NAME   "Motorola Razr HD"
#define BTA_DISABLE_DELAY 1000 /* in milliseconds */
#define BLUETOOTH_QTI_SW TRUE
#define BLUETOOTH_QCOM_LE_INTL_SCAN TRUE
#define BTC_INCLUDED TRUE


#define BTA_GATT_INCLUDED TRUE
#define BLE_INCLUDED TRUE
#define ATT_INCLUDED TRUE
#define GATT_CLIENT_ENABLED
#define SMP_INCLUDED TRUE
#define GAP_INCLUDED TRUE

/* Defined if the kernel does not have support for CLOCK_BOOTTIME_ALARM */
#define KERNEL_MISSING_CLOCK_BOOTTIME_ALARM TRUE
#endif
