/*******************************************************************************
/*                     O P E N  S O U R C E  --  T S + +                      **
/*******************************************************************************
 *
 *  @project       TS++
 *
 *  @file          TAGTYPE.H
 *
 *  @authors       CCHyper
 *
 *  @brief         Class for object trigger-tag types.
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

#include "abstracttype.h"


class TriggerTypeClass;


typedef enum PersistantType
{
	VOLATILE = 0,			// trigger destroys itself immediately after going off, and removes itself from
							// all objects it's attached to.
	SEMIPERSISTANT = 1,		// trigger is "Semi-Persistent"; it maintains a count of all objects it's attached
							// to, and only actually "springs" after its been triggered from all the objects; then,
							// it removes itself.
	PERSISTANT = 2			// trigger is Fully Persistent; it just won't go away.
} PersistantType;


class DECLSPEC_UUID("54F6E433-09ED-11D2-ACA5-006008055BB5")
TagTypeClass : public AbstractTypeClass
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
        TagTypeClass(const char *ini_name = nullptr);
        TagTypeClass(const NoInitClass &noinit);
        virtual ~TagTypeClass();

        /**
         *  AbstractClass
         */
        virtual void Detach(TARGET target, bool all = true);
        virtual RTTIType Kind_Of() const override;
        virtual int Size_Of(bool firestorm = false) const override;
        virtual void Compute_CRC(WWCRCEngine &crc) const override;
        virtual int Get_Heap_ID() const override;

        /**
         *  AbstractTypeClass
         */
        virtual bool Read_INI(CCINIClass &ini) override;
        virtual bool Write_INI(CCINIClass &ini) const override;

		// 0061F270
		// 0061F290
		AttachType Attaches_To() const;
		// 0061F660
		// 0061F690
		// 0061F6C0
		// 0061F6F0

        static void Read_Scenario_INI(CCINIClass &ini);
        static void Write_Scenario_INI(CCINIClass &ini);

        static const TagTypeClass &As_Reference(TagType type);
        static const TagTypeClass *As_Pointer(TagType type);
        static const TagTypeClass &As_Reference(const char *name);
        static const TagTypeClass *As_Pointer(const char *name);
        static TagType From_Name(const char *name);
        static const char *Name_From(TagType type);
        static const TagTypeClass *Find_Or_Make(const char *name);

    public:
        TagType Type;
		PersistantType IsPersistant;
        TriggerTypeClass *TriggerType;
};
