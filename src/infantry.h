/*******************************************************************************
/*                     O P E N  S O U R C E  --  T S + +                      **
/*******************************************************************************
 *
 *  @project       TS++
 *
 *  @file          INFANTRY.H
 *
 *  @authors       CCHyper, tomsons26
 *
 *  @brief         Infantry objects class.
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

#include "foot.h"
#include "ttimer.h"
#include "ftimer.h"


class InfantryTypeClass;


class DECLSPEC_UUID("0E272DC4-9C0F-11D1-B709-00A024DDAFD1")
InfantryClass : public FootClass
{
    public:
        /**
         *  IPersist
         */
        IFACEMETHOD(GetClassID)(CLSID *pClassID);

        /**
         *  IPersistStream
         */
        IFACEMETHOD(Load)(IStream *pStm);
        IFACEMETHOD(Save)(IStream *pStm, BOOL fClearDirty);

    public:
        InfantryClass(InfantryTypeClass *classof = nullptr, HouseClass *house = nullptr);
        InfantryClass(const NoInitClass &noinit);
        virtual ~InfantryClass();
        
        /**
         *  AbstractClass
         */
        virtual void Init() override;
        virtual void Detach(TARGET target, bool all = true) override;
        virtual RTTIType Kind_Of() const override;
        virtual int Size_Of(bool firestorm = false) const override;
        virtual void Compute_CRC(WWCRCEngine &crc) const override;
        virtual void AI() override;

        /**
         *  ObjectClass
         */
        virtual void *const Get_Image_Data() const override;
        virtual ActionType What_Action(const ObjectClass *object, bool disallow_force = false) override;
        virtual ActionType What_Action(CellStruct &cell, bool check_fog = false, bool disallow_force = false) const override;
        virtual ObjectTypeClass *const Class_Of() const override;
        virtual const char *Full_Name() const override;
        virtual bool Limbo() override;
        virtual bool Unlimbo(CoordStruct &coord, DirType dir = DIR_N) override;
        virtual bool Paradrop(CoordStruct &coord) override;
        virtual void Set_Occupy_Bit(CoordStruct &coord) override;
        virtual void Clear_Occupy_Bit(CoordStruct &coord) override;
        virtual void Draw_It(Point2D &point, Rect &bounds) const override;
        virtual bool Active_Click_With(ActionType action, ObjectClass *target, bool a3) override;
        virtual bool Active_Click_With(ActionType action, CellStruct &cell, ObjectClass *target) override;
        virtual ResultType Take_Damage(int &damage, int distance, const WarheadTypeClass *warhead, const ObjectClass *source, bool forced = false, bool a6 = false) override;
        virtual void Scatter(CoordStruct &coord = CoordStruct{-1, -1, -1}, bool forced = false, bool nokidding = false) override;
        virtual void Per_Cell_Process(PCPType why) override;
        virtual MoveType Can_Enter_Cell(const CellClass *cell, FacingType facing = FACING_NONE, int cell_level = -1, const CellClass *a4 = nullptr, bool a5 = false) override;

        /**
         *  MissionClass
         */
        virtual bool Ready_To_Commence() const override;
        virtual int Mission_Attack() override;
        virtual int Mission_Guard() override;

        /**
         *  TechnoClass
         */
        virtual CoordStruct entry_28C(WeaponSlotType weapon = WEAPON_SLOT_PRIMARY) const override;
        virtual bool entry_2A4() const override;
        virtual bool Is_Renovator() const override;
        virtual FireErrorType Can_Fire(const TechnoClass *object, WeaponSlotType weapon = WEAPON_SLOT_PRIMARY) const override;
        virtual int Greatest_Threat(ThreatType method, CoordStruct &coord, bool a3 = false) const override;
        virtual void Assign_Target(TARGET target) const override;
        virtual const BulletClass *Fire_At(TARGET target, WeaponSlotType weapon = WEAPON_SLOT_PRIMARY) const override;
        virtual bool Is_Ready_To_Random_Animate() const override;
        virtual bool Random_Animate() override;
        virtual void Assign_Destination(const TARGET target, bool a2 = true) const override;
        virtual bool Enter_Idle_Mode(bool inital = false, bool a2 = false) const override;

        /**
         *  FootClass
         */
        virtual void entry_378() override;
        virtual bool entry_37C() override;
        virtual bool Start_Driver(CoordStruct &headto) override;
        virtual bool Stop_Driver() override;
        virtual void entry_390() override;
        virtual void entry_394() override;
        virtual void entry_398() override;
        virtual void entry_39C(int a1) override;
        virtual int Current_Speed() override;
        virtual void Approach_Target() override;
        virtual void entry_3B8() override;

        /**
         *  InfantryClass
         */
        virtual bool Do_Action(DoType todo, bool force = false, bool randomise = false);

        int Shape_Number() const;
        void Tunnel_AI();
        void Fear_AI();
        bool Edge_Of_World_AI();
        bool Theft_AI();
        void Firing_AI();
        void Doing_AI();
        void Movement_AI();
        // 004D9AA0
        // 004D9B70

        static void Read_INI(CCINIClass &ini);
        static void Write_INI(CCINIClass &ini);

    public:
        InfantryTypeClass *Class;
        DoType Doing;
        CDTimerClass<FrameTimerClass> Comment;
        FearType Fear;
        bool IsBerzerk;
        bool IsTechnician;
        bool IsStoked;
        bool IsProne;
        bool IsZoneCheat;
        bool WasSelected;
        CDTimerClass<FrameTimerClass> field_370;
        CDTimerClass<FrameTimerClass> SightTimer;
};
