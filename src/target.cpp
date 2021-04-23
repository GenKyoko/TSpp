/*******************************************************************************
/*                     O P E N  S O U R C E  --  T S + +                      **
/*******************************************************************************
 *
 *  @project       TS++
 *
 *  @file          TARGET.CPP
 *
 *  @authors       CCHyper
 *
 *  @brief         Type handling object targets.
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
#include "target.h"
#include "abstract.h"
#include "abstracttype.h"
#include "team.h"
#include "teamtype.h"
//#include "trigger.h"
//#include "triggertype.h"
//#include "infantry.h"
//#include "bullet.h"
//#include "terrain.h"
#include "cell.h"
//#include "unit.h"
#include "building.h"
//#include "aircraft.h"
//#include "anim.h"
#include "object.h"


bool Target_Legal(TARGET target, bool check_active)
{
	if (target == nullptr) {
		return false;
	}
	if (check_active) {
		return dynamic_cast<ObjectClass *>(target)->IsActive;
	}
	return true;
}


bool Is_Target_Team(TARGET a)
{
	return dynamic_cast<TeamClass *>(a);
}


bool Is_Target_TeamType(TARGET a)
{
	return dynamic_cast<TeamTypeClass *>(a);
}


/*bool Is_Target_Trigger(TARGET a)
{
	return dynamic_cast<TriggerClass *>(a);
}*/


/*bool Is_Target_TriggerType(TARGET a)
{
	return dynamic_cast<TriggerTypeClass *>(a);
}*/


/*bool Is_Target_Infantry(TARGET a)
{
	return dynamic_cast<InfantryClass *>(a);
}*/


/*bool Is_Target_Bullet(TARGET a)
{
	return dynamic_cast<BulletClass *>(a);
}*/


/*bool Is_Target_Terrain(TARGET a)
{
	return dynamic_cast<TerrainClass *>(a);
}*/


bool Is_Target_Cell(TARGET a)
{
	return dynamic_cast<CellClass *>(a);
}


/*bool Is_Target_Unit(TARGET a)
{
	return dynamic_cast<UnitClass *>(a);
}*/


bool Is_Target_Building(TARGET a)
{
	return dynamic_cast<BuildingClass *>(a);
}


/*bool Is_Target_Aircraft(TARGET a)
{
	return dynamic_cast<AircraftClass *>(a);
}*/


/*bool Is_Target_Animation(TARGET a)
{
	return dynamic_cast<AnimClass *>(a);
}*/


bool Is_Target_Object(TARGET a)
{
	return dynamic_cast<ObjectClass *>(a);
}


bool xTargetClass::Is_Legal(bool check_active)
{
	if (RTTI == RTTI_NONE) {
		return false;
	}
	ObjectClass *obj = As_Object();
	if (obj == nullptr) {
		return false;
	}
	if (check_active) {
		return obj->IsActive;
	}
	return true;
}