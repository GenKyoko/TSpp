/*******************************************************************************
/*                     O P E N  S O U R C E  --  T S + +                      **
/*******************************************************************************
 *
 *  @project       TS++
 *
 *  @file          SENDFILE.H
 *
 *  @authors       CCHyper, tomsons26
 *
 *  @brief         Functions for scenario file transfer between machines.
 *
 *  @license       TS++ is free software: you can redistribute it and/or
 *                 modify it under the terms of the GNU General Public License
 *                 as published by the Free Software Foundation, either version
 *                 3 of the License, or (at your option) any later version.
 *
 *                 TS++ is distributed in the hope that it will be
 *                 useful, but WITHOUT ANY WARRANTY; without even the implied
 *                 warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
 *                 PURPOSE. See the GNU General Public License for more details.
 *
 *                 You should have received a copy of the GNU General Public
 *                 License along with this program.
 *                 If not, see <http://www.gnu.org/licenses/>.
 *
 ******************************************************************************/
#pragma once

#include "always.h"


bool Get_Scenario_File_From_Host(char *return_name, int gametype, bool show_progress);
bool Receive_Remote_File(const char *file_name, unsigned int file_length, int gametype, bool show_progress);
bool Send_Remote_File(const char *file_name, int gametype, bool a3, bool show_progress);
bool Find_Local_Scenario(const char *file_name, unsigned int file_length, char *digest, bool official, bool a5);
