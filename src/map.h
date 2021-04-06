/*******************************************************************************
/*                     O P E N  S O U R C E  --  T S + +                      **
/*******************************************************************************
 *
 *  @project       TS++
 *
 *  @file          MAP.H
 *
 *  @authors       CCHyper, tomsons26
 *
 *  @brief         Class for the game map interface.
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

#include "gscreen.h"
#include "vector.h"
#include "cell.h"
#include "crate.h"
#include "tibsun_inline.h"


class NoInitClass;
class AbstractClass;


class MapClass : public GScreenClass
{
    public:
        /**
         *  IGameMap
         */
        IFACEMETHOD_(BOOL, Is_Visible)(CellStruct cell);

    public:
        MapClass();
        MapClass(const NoInitClass &x);
        virtual ~MapClass();

        /**
         *  GScreenClass
         */
        virtual void One_Time() override;
        virtual void Init_Clear() override;

        /**
         *  MapClass
         */
        virtual void Alloc_Cells();
        virtual void Free_Cells();
        virtual void Init_Cells();
        virtual void Detach(TARGET target, bool all = true);
        virtual bool entry_64() const;
        virtual void Logic();
        virtual void Set_Map_Dimensions(Rect &rect, bool a2 = true, int level = 1, bool a4 = false);
        virtual void entry_70();

        CellClass & operator [] (const CellStruct &cell);
        const CellClass & operator [] (const CellStruct &cell) const;
        CellClass & operator [] (const CoordStruct &coord);
        const CellClass & operator [] (const CoordStruct &coord) const;

        int ID(CellClass *ptr) { return Array.ID(ptr); }
        int ID(CellClass &ptr) { return Array.ID(&ptr); }

        // 0050EF50
        // 0050EF80
        // 0050EFC0
        // 0050F000
        // 0050F060
        // 0050F0A0
        // 0050F0F0
        // 0050F140
        // 0050F1B0
        // 0050F210
        // 0050F280
        // 0050F2C0
        // 00510900
        // 00510A20
        void Sight_From(CellStruct &cell, int sight_range, HouseClass *house, bool incremental = false, bool a5 = false, bool a6 = false, bool a7 = true);
        // 00510FB0
        // 00511000
        void Place_Down(CellStruct &cell, ObjectClass *object);
        void Pick_Up(CellStruct &cell, ObjectClass *object);
        long Overpass();
        // 00511570
        // 00511E80
        // 005127A0
        // 00512BE0
        // 005130A0
        // 00513560
        // 00513660
        // 00513810
        // 00513970
        // 00513B10
        // 00513CC0
        // 00513EA0
        // 00513FC0
        // 005140C0
        // 005141E0
        int Cell_Region(CellStruct &cell);
        int Cell_Threat(CellStruct &cell, HouseClass *house);
        bool Place_Random_Crate();
        bool Remove_Crate(CellStruct &cell);
        int Validate();
        ObjectClass *Close_Object(CoordStruct &coord) const;
        // 00514AF0
        // 00514B00
        // 00515160
        // 00515170
        // 005156E0
        // 00515810
        // 00515970
        // 005159A0
        // 005159D0
        // 00515A00
        // 00515B30
        // 00515C60
        // 00515F90
        // 00516060
        // 005160F0
        CellStruct Nearby_Location(CellStruct &cell, SpeedType speed, int zone, MZoneType check, bool check_flagged, int a6 = 0, int a7 = 1, bool a8 = false, bool a9 = false, bool a10 = false, bool a11 = true, CellStruct a12 = CellStruct(0,0)) const;
        // 00516BE0
        bool Base_Region(CellStruct &cell, HousesType &house, ZoneType &zone) const;
        // 00516DA0
        // 00516F90
        // 00517150
        // 00517260
        // 00517370
        // 00517710
        // 00517AB0
        // 00517BC0
        // 00517CD0
        // 005180A0
        // 00518470
        // 00518F00
        // 00519470
        // 005198C0
        // 0051A660
        // 0051A770
        // 0051A880
        // 0051AC20
        // 0051AFC0
        // 0051B0D0
        // 0051B1E0
        // 0051B5B0
        // 0051B980
        // 0051C440
        // 0051C760
        // 0051CCD0
        // 0051D100
        // 0051DE80
        const CellStruct Pick_Random_Location();
        void Shroud_The_Map();
        void Reveal_The_Map();
        // 0051E130
        // 0051E1B0
        // 0051E270
        // 0051E2B0
        bool In_Radar(CellStruct &cell, bool a2 = true) const;
        bool In_Radar(CellClass &cell, bool a2 = true) const;
        bool In_Radar(CoordStruct &coord) const;
        // 0051E560
        // 0051E630
        // 0051E770
        // 0051E7A0
        // 0051E9E0
        // 0051EAE0
        // 0051EB20
        // 0051EB30
        // 0051EBD0
        // 0051F020
        // 0051F5B0
        // 0051FBC0
        // 00520700
        // 005208D0
        // 00520900
        // 00520DA0
        // 00520DB0
        // 00520F40
        // 005212C0
        // 005213A0
        // 005214B0
        // 005214D0
        // 005215B0
        // 00521760
        // 00521D70
        // 00522350
        // 005228A0
        // 00522AE0
        // 00522BE0
        // 00523090
        // 00523480
        // 00523990
        // 00523B50
        // 00523EA0
        // 00523F80
        // 005240A0
        // 005241B0
        // 00524400
        // 00524920
        // 00524E40
        // 00524F60
        // 00525080
        // 005255B0
        // 00525A90
        // 00525CD0
        // 005261B0
        // 00526690
        // 005266E0
        // 00526BB0
        // 00526C50
        // 00527AC0
        // 00527B00
        // 00528010
        // 005288A0
        // 005288E0
        // 00528D10
        // 00528F80
        // 00529160
        // 005293A0
        // 00529640
        // 00529AC0
        // 0052A380
        // 0052A6E0
        // 0052AAD0
        // 0052ABE0
        // 0052AE50
        // 0052B220
        // 0052B460
        // 0052B7E0
        // 0052B870
        // 0052B9B0
        // 0052BB10
        // 0052BBE0
        // 0052BC40
        // 0052BCA0
        // 0052BD50
        // 0052BE40
        // 0052BF50
        // 0052C080
        // 0052C2E0
        // 0052C450
        // 0052C610
        // 0052C690
        // 0052C900
        // 0052CE90
        // 0052D2E0
        // 0052D7B0
        // 0052D990
        // 0052DBC0

    public:
        void *field_10;
        void *field_14;
        int field_18[MZONE_COUNT];
        DynamicVectorClass<ZoneConnectionClass> ZoneConnections;
        void *field_58;
        int field_5C;
        void *field_60;
        int field_64;
        int field_68;
        int field_6C;
        int field_70[3];
        DynamicVectorClass<SubzoneTrackingStruct> SubzoneTracking[3];
        DynamicVectorClass<CellStruct> field_C4;
        DynamicVectorClass<CellStruct> field_DC;
        Rect MapSize;
        Rect MapLocalSize;
        int NextX;                  // Iterator next x
        int NextY;                  // Iterator next y
        int NextColumn;             // Iterator remaining row cells
        CellClass *NextCell;        // Iterator next cell
        int field_124;
        int field_128;
        int MapCellX;
        int MapCellY;
        int MapCellWidth;
        int MapCellHeight;
        long TotalValue;
        int field_140;
        CellStruct field_144;
        int field_148;
        DynamicVectorClass<CrackedIceStruct> field_14C;
        VectorClass<CellClass *> Array;
        int	XSize;
        int	YSize;
        int	Size;
        CrateClass Crates[256];
        char Redraws;
        DynamicVectorClass<CellStruct> CellTags;

    private:
        // copy and assignment not implemented; prevent their use by declaring as private.
        MapClass(const MapClass &) = delete;
        MapClass &operator=(const MapClass &) = delete;
};