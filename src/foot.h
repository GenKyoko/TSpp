/*******************************************************************************
/*                     O P E N  S O U R C E  --  T S + +                      **
/*******************************************************************************
 *
 *  @project       TS++
 *
 *  @file          FOOT.H
 *
 *  @authors       CCHyper, tomsons26
 *
 *  @brief         Movable game object class.
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

#include "techno.h"
#include "ttimer.h"
#include "ftimer.h"
#include "ilocomotion.h"
#include "vector.h"


class TeamClass;


typedef struct PathType {
	CellStruct Start;           // Starting cell number.
	int Cost;                   // Accumulated terrain cost.
	int Length;                 // Command string length.
	FacingType *Command;        // Pointer to command string.
    int field_10;
	unsigned long *Overlap;     // Pointer to overlap list
	CellStruct LastOverlap;     // stores position of last overlap
	CellStruct LastFixup;       // stores position of last overlap
} PathType;


class FootClass : public TechnoClass
{
    public:
        enum FootClassEnums {
            PATH_MAX_CELLS = 24, // Number of cells to look ahead for movement.
            PATH_RETRY = 10
        };

    public:
        /**
         *  IPersistStream
         */
        IFACEMETHOD(Load)(IStream *pStm);
        IFACEMETHOD(Save)(IStream *pStm, BOOL fClearDirty);

    public:
        FootClass(HouseClass *house);
        FootClass(const NoInitClass &noinit);
        virtual ~FootClass();

        /**
         *  AbstractClass
         */
        virtual void Detach(TARGET target, bool all = false) override;
        virtual void Compute_CRC(WWCRCEngine &crc) const override;
        virtual CoordStruct Target_Coord() const override;
        virtual bool On_Ground() const override;
        virtual bool In_Air() const override;
        virtual void AI() override;

        /**
         *  ObjectClass
         */
        virtual VisualType Visual_Character(bool flag = false, const HouseClass *house = nullptr) override;
        virtual ActionType What_Action(CellStruct &cell, bool check_fog = false, bool disallow_force = false) const override;
        virtual ActionType What_Action(const ObjectClass *object, bool disallow_force = false) override;
        virtual LayerType In_Which_Layer() const override;
        virtual bool Can_Demolish() const override;
        virtual bool entry_BC() override;
        virtual bool entry_C0() const;
        virtual bool Limbo() override;
        virtual bool Unlimbo(CoordStruct &coord, DirType dir = DIR_N) override;
        virtual void Detach_All(bool all = false) override;
        virtual void entry_E4() override;
        virtual void Draw_It(Point2D &point, Rect &bounds) const override;
        virtual bool Mark(MarkType mark = MARK_CHANGE) override;
        virtual bool Active_Click_With(ActionType action, ObjectClass *target, bool a3) override;
        virtual bool Active_Click_With(ActionType action, CellStruct &cell, ObjectClass *target) override;
        virtual ResultType Take_Damage(int &damage, int distance, const WarheadTypeClass *warhead, const ObjectClass *source, bool forced = false, bool a6 = false) override;
        virtual void Per_Cell_Process(PCPType why) override;
        virtual RadioMessageType Receive_Message(RadioClass *from, RadioMessageType message, long &param) override;
        virtual void Sell_Back(int control) override;
        virtual void entry_174(int a1, int a2) override;
        virtual MoveType Can_Enter_Cell(const CellClass *cell, FacingType facing = FACING_NONE, int cell_level = -1, const CellClass *a4 = nullptr, bool a5 = false) override;
        virtual MoveType entry_180(const CellClass *cell, FacingType facing = FACING_NONE, int *cell_level = nullptr, bool *a4 = nullptr, const CellClass *a5 = nullptr) override;
        virtual void Set_Coord(CoordStruct &coord) override;

        /**
         *  MissionClass
         */
        virtual int Mission_Attack() override;
        virtual int Mission_Capture() override;
        virtual int Mission_Guard() override;
        virtual int Mission_Guard_Area() override;
        virtual int Mission_Hunt() override;
        virtual int Mission_Move() override;
        virtual int Mission_Retreat() override;
        virtual int Mission_Enter() override;
        virtual int Mission_Rescue() override;
        virtual int Mission_Patrol() override;
        virtual void Override_Mission(MissionType mission, const TARGET tarcom = nullptr, const TARGET navcom = nullptr) override;
        virtual bool Restore_Mission() override;

        /**
         *  TechnoClass
         */
        virtual bool Is_Allowed_To_Recloak() const override;
        virtual bool entry_22C() const;
        virtual bool Is_In_Same_Zone_As(const ObjectClass *object) const override;
        virtual bool Is_In_Same_Zone(const CoordStruct &cell) const override;
        virtual int Get_Z_Adjustment() const override;
        virtual ZGradientType Get_Z_Gradient() const override;
        virtual bool Is_Allowed_To_Leave_Map() const override;
        virtual void entry_2C8() const override;
        virtual void Stun() override;
        virtual void Death_Announcement(const TechnoClass *object = nullptr) const override;
        virtual int Greatest_Threat(ThreatType method, CoordStruct &coord, bool a3 = false) const override;
        virtual bool Captured(HouseClass *house = nullptr) override;
        virtual void entry_324() const override;
        virtual void entry_328(int a1, int a2, int a3, IndexClass<int, int> *a4, Rect *a5, int a6, int a7, int a8, int a9) const override;
        virtual void Assign_Destination(const TARGET target, bool a2 = true) const override;
        virtual bool Enter_Idle_Mode(bool inital = false, bool a2 = false) const override;

        /**
         *  FootClass
         */
        virtual bool entry_368();
        virtual bool entry_36C();
        virtual bool entry_370();
        virtual CoordStruct Likely_Coord() const;
        virtual void entry_378();
        virtual bool entry_37C();
        virtual bool Start_Driver(CoordStruct &headto);
        virtual bool Stop_Driver();
        virtual bool entry_388();
		virtual void Draw_Object(const ShapeFileStruct *shapefile, int shapenum, Point2D &xy,
            Rect &rect, DirType rotation = DIR_N, int scale = 256, int a7 = 0, int a8 = 0, bool a9 = false,
            int a10 = 0, ShapeFileStruct *z_shape = nullptr, int z_framenum = 0, int z_xoff = 0, int z_yoff = 0, ShapeFlagsType flags = SHAPE_NORMAL) const;
        virtual void entry_390();
        virtual void entry_394();
        virtual void entry_398();
        virtual void entry_39C(int a1);
        virtual int Offload_Tiberium_Bail();
        virtual void Overrun_Square(CellStruct &cell, bool threaten);
        virtual int entry_3A8();
        virtual void Approach_Target();
        virtual void Fixup_Path(PathType *path);
        virtual void Set_Speed(double speed);
        virtual void entry_3B8();
        virtual bool entry_3BC(FootClass *foot);

        int Rescue_Mission(TARGET tarcom);
        CellStruct Adjust_Dest(CellStruct &cell);
        void Handle_Navigation_List();
        void Queue_Navigation_List(TARGET target);
        void Clear_Navigation_List();
        bool Is_Recruitable(const HouseClass *house) const;
        bool Is_On_Priority_Mission() const;
        // 004A5D10
        // 004A6370
        // 004A6DE0
        // 004A6F40
        bool Tiberium_Check(CellStruct &center);
        bool Goto_Tiberium(int rad, bool a2 = false);
        CellStruct Search_For_Tiberium(int rad, bool a2 = false);
        CellStruct Search_For_Tiberium_Weighted(int rad);
        CellStruct Search_For_Weed(int rad);
        bool Weed_Check(CellStruct &center, int x, int y);
        bool Goto_Weed(int rad);
        // 004A8800

        bool Basic_Path(CellStruct &cell, int a2, int a3);
        PathType *Find_Path(CellStruct &dest, int *a2, int maxlen, int a4, int a5, int a6);
        CellStruct Safety_Point(CellStruct &src, CellStruct &dst, int start, int max);

    public:
        int field_220;
        CellStruct field_224;
        CellStruct field_228;
        double field_230;
        int CurrentWalkingFrame;
        CellStruct field_23C;
        CellStruct field_240;
        CoordStruct field_244;
        double Speed;
        double SpeedBias;
        DynamicVectorClass<TARGET> field_260;
        TARGET NavCom;
        TARGET SuspendedNavCom;
        DynamicVectorClass<TARGET> NavQueue;
        TeamClass *Team;
        FootClass *Member;
        CellClass *field_2A0;
		FacingType Path[PATH_MAX_CELLS];
        CDTimerClass<FrameTimerClass> PathDelay;
        int TryTryAgain;
		CDTimerClass<FrameTimerClass> BaseAttackTimer;
        CDTimerClass<FrameTimerClass> BlockagePathDelay;
        ILocomotionPtr Locomotion;
		CoordStruct HeadToCoord;
        TubeType CurrentTube;
        TubeDirType CurrentTubeDir;
        WaypointType field_33E;
        bool IsToScatter;
        bool IsScanLimited;
        bool IsInitiated;
        bool IsNewNavCom;
        bool IsPlanningToLook;
        bool IsDeploying;
        bool IsFiring;
        bool IsRotating;
        bool IsUnloading;
        bool IsNavQueueLoop;
        bool IsScattering;
        bool field_34A;
        bool field_34B;
        bool field_34C;
        bool IsDriving;
        bool field_34E;
        bool field_34F;
};
