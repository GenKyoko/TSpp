/*******************************************************************************
/*                     O P E N  S O U R C E  --  T S + +                      **
/*******************************************************************************
 *
 *  @project       TS++
 *
 *  @file          TIBSUN_UTIL.H
 *
 *  @authors       CCHyper
 *
 *  @brief         Game world utility functions.
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
#include "tibsun_util.h"
#include "tibsun_globals.h"
#include "tibsun_inline.h"
#include "tactical.h"
#include "wwmouse.h"


/**
 *  Fetch the cell position from the current mouse pixel position.
 * 
 *  @author: CCHyper
 */
Cell Get_Cell_Under_Mouse()
{
    Cell screen_cell(-1, -1);

    /**
     *  Fetch the mouse position.
     */
    Point2D mouse = WWMouse->Get_Mouse_XY();

    /**
     *  If mouse position is valid, convert to world coordinates and return.
     */
    if (mouse.Is_Valid()) {
        screen_cell = TacticalMap->Click_Cell_Calc(mouse);
    }

    return screen_cell;
}


/**
 *  Fetch the coord position from the current mouse pixel position.
 * 
 *  @author: CCHyper
 */
Coordinate Get_Coord_Under_Mouse()
{
    Coordinate mouse_coord(-1, -1, -1);

    /**
     *  Fetch the mouse position.
     */
    Point2D mouse = WWMouse->Get_Mouse_XY();

    /**
     *  If mouse position is valid, convert to world coordinates and return.
     */
    if (mouse.Is_Valid()) {
        mouse_coord = Cell_Coord(TacticalMap->Click_Cell_Calc(mouse));
    }

    return mouse_coord;
}
