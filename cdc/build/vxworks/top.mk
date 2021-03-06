#
# Copyright  1990-2008 Sun Microsystems, Inc. All Rights Reserved.  
# DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER  
#   
# This program is free software; you can redistribute it and/or  
# modify it under the terms of the GNU General Public License version  
# 2 only, as published by the Free Software Foundation.   
#   
# This program is distributed in the hope that it will be useful, but  
# WITHOUT ANY WARRANTY; without even the implied warranty of  
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU  
# General Public License version 2 for more details (a copy is  
# included at /legal/license.txt).   
#   
# You should have received a copy of the GNU General Public License  
# version 2 along with this work; if not, write to the Free Software  
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  
# 02110-1301 USA   
#   
# Please contact Sun Microsystems, Inc., 4150 Network Circle, Santa  
# Clara, CA 95054 or visit www.sun.com if you need additional  
# information or have any questions. 
#
# @(#)top.mk	1.55 06/10/10
#
# Topmost makefile shared by all VxWorks platforms
#
######################################################
# Definitions of supported VxWorks specific options.
# Shared options are described in build/share/top.mk
######################################################
#
# VXWORKS_CPU: The cpu of the target device as defined by WindRiver. Use 
#     VXWORKS_CPU=SIMSPARCSOLARIS for the simulator. Use VXWORKS_CPU=PENTIUM
#     for a pentium based target. Other values are also valid.
#     NOTE: CPU defaults to TARGET_DEVICE, which is derived from the build
#     directory name.

exe : all

# vxworks doesn't support profil()
override CVM_JIT_PROFILE = false
