/*******************************************************************************
/*                     O P E N  S O U R C E  --  T S + +                      **
/*******************************************************************************
 *
 *  @project       TS++
 *
 *  @file          INLINE.H
 *
 *  @authors       CCHyper, tomsons26
 *
 *  @brief         Various inlines and C&C utility functions.
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

#include "tibsun_globals.h"
#include "tibsun_defines.h"
#include "scenario.h"
#include "wwmath.h"
#include <algorithm>


extern const CellStruct AdjacentCell[FACING_COUNT];
extern const CoordStruct AdjacentCoord[FACING_COUNT];


inline DirType Desired_Facing8(int x1, int y1, int x2, int y2)
{
	return (DirType)(int)((WWMath::Atan2(y1 - y2, x2 - x1) - WWMATH_PI/2) * -10430.06004058427);
}


inline DirType Desired_Facing8(const Point2D &point1, const Point2D &point2)
{
	return Desired_Facing8(point1.X, point1.Y, point2.X, point2.Y);
}


inline DirType Desired_Facing256(int x1, int y1, int x2, int y2)
{
	return (DirType)(int)((WWMath::Atan2(y1 - y2, x2 - x1) - WWMATH_PI/2) * -10430.06004058427);
}


inline DirType Desired_Facing256(const Point2D &point1, const Point2D &point2)
{
	return Desired_Facing256(point1.X, point1.Y, point2.X, point2.Y);
}


inline DirType Direction256(const CoordStruct &coord1, const CoordStruct &coord2)
{
	return Desired_Facing256(coord1.X, coord1.Y, coord2.X, coord2.Y);
}


inline DirType Direction(const CoordStruct &coord1, const CoordStruct &coord2)
{
	return Desired_Facing256(coord1.X, coord1.Y, coord2.X, coord2.Y);
}


inline DirType Direction8(const CoordStruct &coord1, const CoordStruct &coord2)
{
	return Desired_Facing8(coord1.X, coord1.Y, coord2.X, coord2.Y);
}


inline DirType Direction(const CellStruct &cell1, const CellStruct &cell2)
{
	return Desired_Facing8(cell1.X, cell1.Y, cell2.X, cell2.Y);
}


inline FacingType Dir_Facing(DirType facing)
{
    return (FacingType)(((unsigned char)((int)facing + 0x10) & 0xFF) >> 5);
}


inline DirType Facing_Dir(FacingType facing)
{
    return (DirType)((int)facing << 5);
}


inline int Lepton_To_Pixel(LEPTON lepton)
{
    return (((int)(signed short)lepton * CELL_PIXEL_W) + (CELL_LEPTON_W / 2) - ((lepton < 0) ? (CELL_LEPTON_W - 1) : 0)) / CELL_LEPTON_W;
}


inline LEPTON Pixel_To_Lepton(int pixel)
{
    return (LEPTON)(((pixel * CELL_LEPTON_W) + (CELL_PIXEL_W / 2) - ((pixel < 0) ? (CELL_PIXEL_W - 1) : 0)) / CELL_PIXEL_W);
}


inline CoordStruct Coord_Add(const CoordStruct &coord1, const CoordStruct &coord2)
{
    CoordStruct coord;
    coord.X = coord1.X + coord2.X;
    coord.Y = coord1.Y + coord2.Y;
    return coord;
}


inline CoordStruct Coord_Sub(const CoordStruct &coord1, const CoordStruct &coord2)
{
    CoordStruct coord;
    coord.X = coord1.X - coord2.X;
    coord.Y = coord1.Y - coord2.Y;
    return coord;
}


inline CoordStruct Coord_Mid(const CoordStruct &coord1, const CoordStruct &coord2)
{
    CoordStruct coord;
    coord.X = (coord1.X - coord2.X) / 2;
    coord.Y = (coord1.Y - coord2.Y) / 2;
    return coord;
}


inline CoordStruct Coord_Snap(const CoordStruct &coord)
{
    // Convert coord to cell, and back again to get the absolute position.
    CellStruct cell;
    cell.X = coord.X / 256;
    cell.Y = coord.Y / 256;

    CoordStruct tmp;
    tmp.X = cell.X * 256;
    tmp.Y = cell.Y * 256;

    // Snap coord to cell center.
    tmp.X += CELL_LEPTON_W / 2;
    tmp.Y += CELL_LEPTON_W / 2;

    // Restore input coord Z value.
    tmp.Z = coord.Z;

    return tmp;
}


inline CoordStruct Coord_Fraction(const CoordStruct &coord)
{
    CoordStruct tmp;
    tmp.X = coord.X % CELL_LEPTON_W;
    tmp.Y = coord.Y % CELL_LEPTON_H;
    return tmp;
}


inline CoordStruct Coord_Whole(const CoordStruct &coord)
{
    // Convert coord to cell, and back again to get the absolute position.
    CellStruct cell;
    cell.X = coord.X / CELL_LEPTON_W;
    cell.Y = coord.Y / CELL_LEPTON_H;

    CoordStruct tmp;
    tmp.X = cell.X * CELL_LEPTON_W;
    tmp.Y = cell.Y * CELL_LEPTON_H;

    return tmp;
}


inline CellStruct Coord_Cell(const CoordStruct &coord)
{
    CellStruct tmp;
    tmp.X = coord.X / CELL_LEPTON_W;
    tmp.Y = coord.Y / CELL_LEPTON_H;
    return tmp;
}


inline CoordStruct XY_Coord(LEPTON x, LEPTON y)
{
    CoordStruct coord;
    coord.X = x;
    coord.Y = y;
    return coord;
}


inline CoordStruct XYP_Coord(int x, int y)
{
    CoordStruct coord;
    coord.X = Pixel_To_Lepton(x);
    coord.Y = Pixel_To_Lepton(y);
    return coord;
}


inline CellStruct XY_Cell(int x, int y)
{
    CellStruct cell;
    cell.X = x;
    cell.Y = y;
    return cell;
}


inline CellStruct Coord_XCell(const CoordStruct &coord)
{
    return coord.X / 256;
}


inline CellStruct Coord_YCell(const CoordStruct &coord)
{
    return coord.Y / 256;
}


inline LEPTON Cell_To_Lepton(int cell_distance)
{
    LEPTON lepton = cell_distance * CELL_LEPTON_W;
    return lepton;
}


inline int Lepton_To_Cell(LEPTON lepton_distance)
{
    if (lepton_distance >= (CELL_LEPTON_W / 2)) {
        return (lepton_distance / 256) + 1;
    }
    return (lepton_distance / 256);
}


inline CoordStruct Cell_Coord(const CellStruct &cell, bool snap = false, int z_value = 0)
{
    CoordStruct tmp;
    tmp.X = cell.X * 256;
    tmp.Y = cell.Y * 256;
    tmp.Z = z_value;
    if (snap) {
        tmp.X += CELL_LEPTON_W / 2;
        tmp.Y += CELL_LEPTON_W / 2;
    }
    return tmp;
}


inline CoordStruct Adjacent_Cell(const CoordStruct &coord, FacingType dir)
{
	return (Coord_Snap(Coord_Add(AdjacentCoord[(int)dir & 0x07], coord)));
}


inline CoordStruct Adjacent_Cell(const CoordStruct &coord, DirType dir)
{
	return Adjacent_Cell(coord, Dir_Facing(dir));
}


inline CellStruct Adjacent_Cell(const CellStruct &cell, FacingType dir)
{
	return (CellStruct)(cell + AdjacentCell[(int)dir & 0x07]);
}


inline CellStruct Adjacent_Cell(const CellStruct &cell, DirType dir)
{
	return Adjacent_Cell(cell, Dir_Facing(dir));
}


template<typename T>
inline T Random_Pick(T a, T b)
{
    return Scen->RandomNumber(a, b);
};


inline bool Percent_Chance(int percent)
{
    return Scen->RandomNumber(0, 99) < percent;
}


template<typename T>
inline T Sim_Random_Pick(T a, T b)
{
    return NonCriticalRandomNumber(a, b);
};


inline bool Sim_Percent_Chance(int percent)
{
    return NonCriticalRandomNumber(0, 99) < percent;
}
