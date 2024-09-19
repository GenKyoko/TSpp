;/*******************************************************************************
;/*                     O P E N  S O U R C E  --  T S + +                      **
;/*******************************************************************************
; *
; *  @project       TS++
; *
; *  @file          TSPP_DEFINITIONS.ASM
; *
; *  @authors       CCHyper
; *
; *  @brief         Function definitions for the TS++ project.
; *
; *  @license       TS++ is free software: you can redistribute it and/or
; *                 modify it under the terms of the GNU General Public License
; *                 as published by the Free Software Foundation, either version
; *                 3 of the License, or (at your option) any later version.
; *
; *                 TS++ is distributed in the hope that it will be
; *                 useful, but WITHOUT ANY WARRANTY; without even the implied
; *                 warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
; *                 PURPOSE. See the GNU General Public License for more details.
; *
; *                 You should have received a copy of the GNU General Public
; *                 License along with this program.
; *                 If not, see <http://www.gnu.org/licenses/>.
; *
; ******************************************************************************/

.586
.model flat, C
option casemap :none
option prologue:none
option epilogue:none
option language: basic ; invalid language removes leading "_" from output name.


;
;  This file mostly contains the constructors what we need to jump to
;  without any additional code being rolled out.
;

.code

;
;  Implementation macro.
;
ASM_DEFINE_IMPLEMENTATION macro name, address
    name proc
        mov eax, address
        jmp eax
        ; ECHO Warning: MakeName("0x&address", "&name")
    name endp
    align 10h
endm


ASM_DEFINE_IMPLEMENTATION ??0RawFileClass@@QAE@PBD@Z 005BE310h
ASM_DEFINE_IMPLEMENTATION ??0MixFileClass@@QAE@PBDPBVPKey@@@Z 00559A10h
ASM_DEFINE_IMPLEMENTATION ??0WWKeyboardClass@@QAE@XZ 004FADC0h
ASM_DEFINE_IMPLEMENTATION ??0OptionsClass@@QAE@XZ 00589960h
ASM_DEFINE_IMPLEMENTATION ??0Buffer@@QAE@PADJ@Z 00425C70h
ASM_DEFINE_IMPLEMENTATION ??0Buffer@@QAE@PAXJ@Z 00425C30h
ASM_DEFINE_IMPLEMENTATION ??0Buffer@@QAE@PBXJ@Z 00425CB0h
ASM_DEFINE_IMPLEMENTATION ??0Buffer@@QAE@J@Z 00425CF0h
ASM_DEFINE_IMPLEMENTATION ??0Buffer@@QAE@ABV0@@Z 00425D20h
ASM_DEFINE_IMPLEMENTATION ??0RAMFileClass@@QAE@PAXH@Z 005BDB00h
ASM_DEFINE_IMPLEMENTATION ??0BufferIOFileClass@@QAE@XZ 00420D30h
ASM_DEFINE_IMPLEMENTATION ??0BufferIOFileClass@@QAE@PBD@Z 00420C40h
ASM_DEFINE_IMPLEMENTATION ??0CDFileClass@@QAE@XZ 00450610h
ASM_DEFINE_IMPLEMENTATION ??0CDFileClass@@QAE@PBD@Z 004505E0h
ASM_DEFINE_IMPLEMENTATION ??0Surface@@QAE@HH@Z 0047C1C0h
ASM_DEFINE_IMPLEMENTATION ??0CCFileClass@@QAE@XZ 004497F0h
ASM_DEFINE_IMPLEMENTATION ??0CCFileClass@@QAE@PBD@Z 004497B0h
ASM_DEFINE_IMPLEMENTATION ??0WWMouseClass@@QAE@PAVXSurface@@PAUHWND__@@@Z 006A5000h
ASM_DEFINE_IMPLEMENTATION ??0XSurface@@QAE@HH@Z 0047CCA0h
ASM_DEFINE_IMPLEMENTATION ??0DSurface@@QAE@XZ 0048AD10h
ASM_DEFINE_IMPLEMENTATION ??0DSurface@@QAE@HH_N@Z 0048ABB0h
ASM_DEFINE_IMPLEMENTATION ??0DSurface@@QAE@PAUIDirectDrawSurface@@@Z 0048B250h
ASM_DEFINE_IMPLEMENTATION ??0AbstractClass@@QAE@XZ 00405B50h
ASM_DEFINE_IMPLEMENTATION ??0AbstractClass@@QAE@ABVNoInitClass@@@Z 00405B70h
ASM_DEFINE_IMPLEMENTATION ??0RandomClass@@QAE@I@Z 005BDEE0h
ASM_DEFINE_IMPLEMENTATION ??0Random2Class@@QAE@I@Z 005BDF80h
ASM_DEFINE_IMPLEMENTATION ??0Random3Class@@QAE@II@Z 005BE120h
ASM_DEFINE_IMPLEMENTATION ??0MessageListClass@@QAE@XZ 00572E00h
ASM_DEFINE_IMPLEMENTATION ??0PaletteClass@@QAE@ABVRGBClass@@@Z 005A2810h
ASM_DEFINE_IMPLEMENTATION ??0PaletteClass@@QAE@ABV0@@Z 005A2860h
ASM_DEFINE_IMPLEMENTATION ??0VersionClass@@QAE@XZ 00663B30h
ASM_DEFINE_IMPLEMENTATION ??0CDControlClass@@QAE@XZ 0044ED90h
ASM_DEFINE_IMPLEMENTATION ??0WWFontClass@@QAE@PBX_NH@Z 006A43D0h
ASM_DEFINE_IMPLEMENTATION ??0UnitTrackerClass@@QAE@H@Z 0065D5B0h
ASM_DEFINE_IMPLEMENTATION ??0LinkClass@@QAE@ABV0@@Z 00503050h
ASM_DEFINE_IMPLEMENTATION ??0CounterClass@@QAE@XZ 0046E9F0h
ASM_DEFINE_IMPLEMENTATION ??0DropPodLocomotionClass@@QAE@XZ 004830F0h
ASM_DEFINE_IMPLEMENTATION ??0Quaternion@@QAE@MMMM@Z 005AFE70h
ASM_DEFINE_IMPLEMENTATION ??0Matrix3D@@QAE@ABV0@@Z 005546F0h
ASM_DEFINE_IMPLEMENTATION ??0Matrix3D@@QAE@MMMMMMMMMMMM@Z 00554740h
ASM_DEFINE_IMPLEMENTATION ??0FuseClass@@QAE@XZ 004A99F0h
ASM_DEFINE_IMPLEMENTATION ??0BaseClass@@QAE@XZ 0041F4C0h
ASM_DEFINE_IMPLEMENTATION ??0BaseClass@@QAE@ABVNoInitClass@@@Z 0041FF10h
ASM_DEFINE_IMPLEMENTATION ??0EventClass@@QAE@IVSpecialClass@@@Z 00493CC0h
ASM_DEFINE_IMPLEMENTATION ??0EventClass@@QAE@IW4EventType@@VTargetClass@@@Z 00493D00h
ASM_DEFINE_IMPLEMENTATION ??0EventClass@@QAE@IW4EventType@@@Z 00493DE0h
ASM_DEFINE_IMPLEMENTATION ??0EventClass@@QAE@IW4EventType@@PAUCell@@@Z 00493D70h
ASM_DEFINE_IMPLEMENTATION ??0EventClass@@QAE@IW4EventType@@VTargetClass@@1@Z 00493EB0h
ASM_DEFINE_IMPLEMENTATION ??0EventClass@@QAE@IVTargetClass@@W4MissionType@@00@Z 00493FA0h
ASM_DEFINE_IMPLEMENTATION ??0EventClass@@QAE@IVTargetClass@@W4MissionType@@00W4SpeedType@@W4MPHType@@@Z 00494010h
ASM_DEFINE_IMPLEMENTATION ??0EventClass@@QAE@IW4EventType@@W4RTTIType@@H@Z 004940A0h
ASM_DEFINE_IMPLEMENTATION ??0EventClass@@QAE@IW4EventType@@W4RTTIType@@PAUCell@@@Z 00494110h
ASM_DEFINE_IMPLEMENTATION ??0EventClass@@QAE@IW4EventType@@HPAUCell@@@Z 00494190h
ASM_DEFINE_IMPLEMENTATION ??0EventClass@@QAE@IW4AnimType@@W4HousesType@@PAUCoordinate@@@Z 00493F30h
ASM_DEFINE_IMPLEMENTATION ??0EventClass@@QAE@IPAXK@Z 00494210h
ASM_DEFINE_IMPLEMENTATION ??0SpotlightClass@@QAE@UCoordinate@@H@Z 0058DFD0h
ASM_DEFINE_IMPLEMENTATION ??0GScreenClass@@QAE@XZ 004B9370h
ASM_DEFINE_IMPLEMENTATION ??0ColorScheme@@QAE@XZ 005E2430h
ASM_DEFINE_IMPLEMENTATION ??0ColorScheme@@QAE@PBDPAVHSVClass@@PAVPaletteClass@@2H@Z 005E24F0h
ASM_DEFINE_IMPLEMENTATION ??0StorageClass@@QAE@XZ 0060AD60h
ASM_DEFINE_IMPLEMENTATION ??0GadgetClass@@QAE@HHHHI_N@Z 004A9BF0h
ASM_DEFINE_IMPLEMENTATION ??0GadgetClass@@QAE@ABV0@@Z 004A9C40h
ASM_DEFINE_IMPLEMENTATION ??0ControlClass@@QAE@IHHHHI_N@Z 00463A20h
ASM_DEFINE_IMPLEMENTATION ??0ControlClass@@QAE@ABV0@@Z 00463A70h
ASM_DEFINE_IMPLEMENTATION ??0DisplayClass@@QAE@XZ 00475BA0h
ASM_DEFINE_IMPLEMENTATION ??0DisplayClass@@QAE@ABVNoInitClass@@@Z 005F6950h
ASM_DEFINE_IMPLEMENTATION ??0CreditClass@@QAE@XZ 00471440h
ASM_DEFINE_IMPLEMENTATION ??0PowerClass@@QAE@XZ 005AAFD0h
ASM_DEFINE_IMPLEMENTATION ??0SidebarClass@@QAE@XZ 005F2330h
ASM_DEFINE_IMPLEMENTATION ??0SidebarClass@@QAE@ABVNoInitClass@@@Z 005F2510h
ASM_DEFINE_IMPLEMENTATION ??0StripClass@SidebarClass@@QAE@ABVInitClass@@@Z 005F4180h
ASM_DEFINE_IMPLEMENTATION ??0SBGadgetClass@SidebarClass@@QAE@XZ 005F2310h
ASM_DEFINE_IMPLEMENTATION ??0TabClass@@QAE@XZ 0060E3F0h
ASM_DEFINE_IMPLEMENTATION ??0ScrollClass@@QAE@XZ 005E85A0h
ASM_DEFINE_IMPLEMENTATION ??0MouseClass@@QAE@XZ 005621A0h
ASM_DEFINE_IMPLEMENTATION ??0MonoClass@@QAE@XZ 00561720h
ASM_DEFINE_IMPLEMENTATION ??1MonoClass@@QAE@XZ 00561760h
ASM_DEFINE_IMPLEMENTATION ??0DirectSoundAudioClass@@QAE@XZ 00487A20h
ASM_DEFINE_IMPLEMENTATION ??0PreviewClass@@QAE@XZ 005AC010h
ASM_DEFINE_IMPLEMENTATION ??0VeterancyClass@@QAE@XZ 00664340h
ASM_DEFINE_IMPLEMENTATION ??0SuperClass@@QAE@XZ 0060B2C0h
ASM_DEFINE_IMPLEMENTATION ??0SuperClass@@QAE@PBVSuperWeaponTypeClass@@PAVHouseClass@@@Z 0060B360h
ASM_DEFINE_IMPLEMENTATION ??0DropshipLoadoutClass@@QAE@XZ 00484040h
ASM_DEFINE_IMPLEMENTATION ??0HouseStaticClass@HouseClass@@QAE@XZ 004BBC00h
ASM_DEFINE_IMPLEMENTATION ??0ThemeControl@ThemeClass@@QAE@XZ 006439B0h
ASM_DEFINE_IMPLEMENTATION ??0IPXInterfaceClass@@QAE@XZ 006A02F0h
ASM_DEFINE_IMPLEMENTATION ??0SHAEngine@@QAE@XZ 0055A400h
ASM_DEFINE_IMPLEMENTATION ??0MissionControlClass@@QAE@XZ 00559550h
ASM_DEFINE_IMPLEMENTATION ??0RadioClass@@QAE@XZ 005BD850h
ASM_DEFINE_IMPLEMENTATION ??0FacingClass@@QAE@XZ 00496530h
ASM_DEFINE_IMPLEMENTATION ??0FacingClass@@QAE@H@Z 00496550h
ASM_DEFINE_IMPLEMENTATION ??0DoorClass@@QAE@XZ 00473C70h
ASM_DEFINE_IMPLEMENTATION ??0TargetClass@@QAE@PAVAbstractClass@@@Z 0061FEE0h
ASM_DEFINE_IMPLEMENTATION ??0TargetClass@@QAE@AAUCell@@@Z 0061FF60h
ASM_DEFINE_IMPLEMENTATION ??0TargetClass@@QAE@AAUCoordinate@@@Z 0061FFB0h
ASM_DEFINE_IMPLEMENTATION ??0TEventClass@@QAE@XZ 006420C0h
ASM_DEFINE_IMPLEMENTATION ??0TActionClass@@QAE@XZ 00618B80h
ASM_DEFINE_IMPLEMENTATION ??0VocClass@@QAE@PBD@Z 00664840h
ASM_DEFINE_IMPLEMENTATION ??0IonBlastClass@@QAE@UCoordinate@@@Z 004EDC20h
ASM_DEFINE_IMPLEMENTATION ??0WaypointClass@@QAE@XZ 00673390h
ASM_DEFINE_IMPLEMENTATION ??0CStreamClass@@QAE@XZ 004717C0h
ASM_DEFINE_IMPLEMENTATION ??0MultiMission@@QAE@AAVINIClass@@PBD@Z 005EF000h
ASM_DEFINE_IMPLEMENTATION ??0MultiMission@@QAE@PBD00_N@Z 005EF3C0h
;ASM_DEFINE_IMPLEMENTATION ??0Wstring@@QAE@XZ 006A2C10h
;ASM_DEFINE_IMPLEMENTATION ??0Wstring@@QAE@PBD@Z 006A2C20h
;ASM_DEFINE_IMPLEMENTATION ??0Wstring@@QAE@ABV0@@Z 006A2C70h
ASM_DEFINE_IMPLEMENTATION ??0RadarEventClass@@QAE@W4RadarEventType@@UCell@@@Z 005C1CE0h
ASM_DEFINE_IMPLEMENTATION ??0TeleportLocomotionClass@@QAE@XZ 0063ECC0h
ASM_DEFINE_IMPLEMENTATION ??0WalkLocomotionClass@@QAE@XZ 0066CA60h
ASM_DEFINE_IMPLEMENTATION ??0DriveLocomotionClass@@QAE@XZ 0047CF10h
ASM_DEFINE_IMPLEMENTATION ??0VQAClass@@QAE@PBDHHHHHH@Z 0066B290h
ASM_DEFINE_IMPLEMENTATION ??0ProgressScreenClass@@QAE@XZ 005AD890h
ASM_DEFINE_IMPLEMENTATION ??0EndGameClass@@QAE@XZ 00493860h
ASM_DEFINE_IMPLEMENTATION ??0NewMenuClass@@QAE@XZ 0057FBE0h
ASM_DEFINE_IMPLEMENTATION ??0LevitateLocomotionClass@@QAE@XZ 004FDEE0h
ASM_DEFINE_IMPLEMENTATION ??0JumpjetLocomotionClass@@QAE@XZ 004F9590h
ASM_DEFINE_IMPLEMENTATION ??0ABuffer@@QAE@VRect@@@Z 00406540h
ASM_DEFINE_IMPLEMENTATION ??0ZBuffer@@QAE@VRect@@@Z 006A8DD0h
ASM_DEFINE_IMPLEMENTATION ??1Pipe@@UAE@XZ 005A9430h
ASM_DEFINE_IMPLEMENTATION ??1Straw@@UAE@XZ 0060AFC0h
ASM_DEFINE_IMPLEMENTATION ??1RawFileClass@@UAE@XZ 005BE290h
ASM_DEFINE_IMPLEMENTATION ??1MixFileClass@@UAE@XZ 00559D40h
ASM_DEFINE_IMPLEMENTATION ??1WWKeyboardClass@@QAE@XZ 004FADB0h
ASM_DEFINE_IMPLEMENTATION ??1Buffer@@QAE@XZ 00425D80h
ASM_DEFINE_IMPLEMENTATION ??1RAMFileClass@@UAE@XZ 005BDB50h
ASM_DEFINE_IMPLEMENTATION ??1BufferIOFileClass@@UAE@XZ 00420D90h
ASM_DEFINE_IMPLEMENTATION ??1RulesClass@@QAE@XZ 005C59B0h
ASM_DEFINE_IMPLEMENTATION ??1CCFileClass@@UAE@XZ 004E8970h
ASM_DEFINE_IMPLEMENTATION ??1WWMouseClass@@UAE@XZ 006A5170h
ASM_DEFINE_IMPLEMENTATION ??1DSurface@@UAE@XZ 0048ACA0h
ASM_DEFINE_IMPLEMENTATION ??1AbstractClass@@UAE@XZ 00405B90h
ASM_DEFINE_IMPLEMENTATION ??1AbstractTypeClass@@UAE@XZ 00406330h
ASM_DEFINE_IMPLEMENTATION ??1MessageListClass@@QAE@XZ 00572E80h
ASM_DEFINE_IMPLEMENTATION ??1SessionClass@@QAE@XZ 005ED1C0h
ASM_DEFINE_IMPLEMENTATION ??1INIClass@@UAE@XZ 004DB470h
ASM_DEFINE_IMPLEMENTATION ??1ObjectTypeClass@@UAE@XZ 005878B0h
ASM_DEFINE_IMPLEMENTATION ??1TechnoTypeClass@@UAE@XZ 0063B5F0h
ASM_DEFINE_IMPLEMENTATION ??1SwizzleManagerClass@@QAE@XZ 0060DA00h
ASM_DEFINE_IMPLEMENTATION ??1BuildingTypeClass@@UAE@XZ 0043F8F0h
ASM_DEFINE_IMPLEMENTATION ??1ConvertClass@@UAE@XZ 00465970h
ASM_DEFINE_IMPLEMENTATION ??1IsometricTileTypeClass@@UAE@XZ 004F3330h
ASM_DEFINE_IMPLEMENTATION ??1ToolTipManager@@UAE@XZ 00647240h
ASM_DEFINE_IMPLEMENTATION ??1CDControlClass@@QAE@XZ 0044EDB0h
ASM_DEFINE_IMPLEMENTATION ??1UnitTrackerClass@@QAE@XZ 0065D600h
ASM_DEFINE_IMPLEMENTATION ??1LinkClass@@UAE@XZ 00503090h
ASM_DEFINE_IMPLEMENTATION ??1CounterClass@@UAE@XZ 0046EA10h
ASM_DEFINE_IMPLEMENTATION ??1HouseTypeClass@@UAE@XZ 004CDE80h
ASM_DEFINE_IMPLEMENTATION ??1UnitTypeClass@@UAE@XZ 0065BAC0h
ASM_DEFINE_IMPLEMENTATION ??1InfantryTypeClass@@UAE@XZ 004DA3A0h
ASM_DEFINE_IMPLEMENTATION ??1AircraftTypeClass@@UAE@XZ 0040FCC0h
ASM_DEFINE_IMPLEMENTATION ??1VoxelAnimTypeClass@@UAE@XZ 0065F590h
ASM_DEFINE_IMPLEMENTATION ??1WeaponTypeClass@@UAE@XZ 00680C40h
ASM_DEFINE_IMPLEMENTATION ??1BulletTypeClass@@UAE@XZ 00447DB0h
ASM_DEFINE_IMPLEMENTATION ??1WinsockInterfaceClass@@UAE@XZ 006A0F60h
ASM_DEFINE_IMPLEMENTATION ??1IPXManagerClass@@UAE@XZ 004F0410h
ASM_DEFINE_IMPLEMENTATION ??1ConnectionClass@@UAE@XZ 00461D80h
ASM_DEFINE_IMPLEMENTATION ??1CommBufferClass@@UAE@XZ 00460CD0h
ASM_DEFINE_IMPLEMENTATION ??1DropPodLocomotionClass@@UAE@XZ 00483140h
ASM_DEFINE_IMPLEMENTATION ??1CellClass@@UAE@XZ 00451750h
ASM_DEFINE_IMPLEMENTATION ??1WarheadTypeClass@@UAE@XZ 0066EF60h
ASM_DEFINE_IMPLEMENTATION ??1Tactical@@UAE@XZ 0060F0D0h
ASM_DEFINE_IMPLEMENTATION ??1OverlayTypeClass@@UAE@XZ 0058D160h
ASM_DEFINE_IMPLEMENTATION ??1SpotlightClass@@QAE@XZ 0058E050h
ASM_DEFINE_IMPLEMENTATION ??1ColorScheme@@QAE@XZ 005E26C0h
ASM_DEFINE_IMPLEMENTATION ??1MapClass@@UAE@XZ 0050ED30h
ASM_DEFINE_IMPLEMENTATION ??1LCWPipe@@UAE@XZ 004FD420h
ASM_DEFINE_IMPLEMENTATION ??1LCWStraw@@UAE@XZ 004FD810h
ASM_DEFINE_IMPLEMENTATION ??1LZOPipe@@UAE@XZ 00507E50h
ASM_DEFINE_IMPLEMENTATION ??1LZOStraw@@UAE@XZ 005082C0h
ASM_DEFINE_IMPLEMENTATION ??1GadgetClass@@UAE@XZ 004A9C90h
ASM_DEFINE_IMPLEMENTATION ??1RadarClass@@UAE@XZ 005B8AC0h
ASM_DEFINE_IMPLEMENTATION ??1DirectSoundAudioClass@@QAE@XZ 00487B20h
ASM_DEFINE_IMPLEMENTATION ??1PreviewClass@@QAE@XZ 005AC020h
ASM_DEFINE_IMPLEMENTATION ??1VeterancyClass@@QAE@XZ 00664350h
ASM_DEFINE_IMPLEMENTATION ??1SuperClass@@UAE@XZ 0060B4C0h
ASM_DEFINE_IMPLEMENTATION ??1SuperWeaponTypeClass@@UAE@XZ 0060D090h
ASM_DEFINE_IMPLEMENTATION ??1ConnectionPointClass@@QAE@XZ 0046F920h
ASM_DEFINE_IMPLEMENTATION ??1EnumConnectionsClass@@QAE@XZ 0046F4A0h
ASM_DEFINE_IMPLEMENTATION ??1EnumConnectionPointsClass@@QAE@XZ 0046FE00h
ASM_DEFINE_IMPLEMENTATION ??1DropshipLoadoutClass@@QAE@XZ 00484060h
ASM_DEFINE_IMPLEMENTATION ??1HouseClass@@UAE@XZ 004BB6B0h
ASM_DEFINE_IMPLEMENTATION ??1UDPInterfaceClass@@UAE@XZ 006A1EF0h
ASM_DEFINE_IMPLEMENTATION ??1LoadOptionsClass@@UAE@XZ 00504800h
ASM_DEFINE_IMPLEMENTATION ??1SideClass@@UAE@XZ 005F1AD0h
ASM_DEFINE_IMPLEMENTATION ??1ScriptClass@@UAE@XZ 005E78B0h
ASM_DEFINE_IMPLEMENTATION ??1ScriptTypeClass@@UAE@XZ 005E7B70h
ASM_DEFINE_IMPLEMENTATION ??1ObjectClass@@UAE@XZ 005849C0h
ASM_DEFINE_IMPLEMENTATION ??1TechnoClass@@UAE@XZ 0062A8E0h
ASM_DEFINE_IMPLEMENTATION ??1FootClass@@UAE@XZ 004A03D0h
ASM_DEFINE_IMPLEMENTATION ??1BuildingClass@@UAE@XZ 00426620h
ASM_DEFINE_IMPLEMENTATION ??1TeamTypeClass@@UAE@XZ 00627EE0h
ASM_DEFINE_IMPLEMENTATION ??1TeamClass@@UAE@XZ 00622420h
ASM_DEFINE_IMPLEMENTATION ??1TEventClass@@UAE@XZ 00642210h
ASM_DEFINE_IMPLEMENTATION ??1TActionClass@@UAE@XZ 00618CF0h
ASM_DEFINE_IMPLEMENTATION ??1TaskForceClass@@UAE@XZ 006214F0h
ASM_DEFINE_IMPLEMENTATION ??1AircraftClass@@UAE@XZ 0040DB20h
ASM_DEFINE_IMPLEMENTATION ??1InfantryClass@@UAE@XZ 004D2240h
ASM_DEFINE_IMPLEMENTATION ??1VocClass@@QAE@XZ 00664920h
ASM_DEFINE_IMPLEMENTATION ??1IonBlastClass@@QAE@XZ 004EDCA0h
ASM_DEFINE_IMPLEMENTATION ??1AnimClass@@UAE@XZ 004142B0h
ASM_DEFINE_IMPLEMENTATION ??1AnimTypeClass@@UAE@XZ 004187C0h
ASM_DEFINE_IMPLEMENTATION ??1TerrainTypeClass@@UAE@XZ 00641640h
ASM_DEFINE_IMPLEMENTATION ??1ParticleTypeClass@@UAE@XZ 005AF140h
ASM_DEFINE_IMPLEMENTATION ??1ParticleSystemTypeClass@@UAE@XZ 005AE560h
ASM_DEFINE_IMPLEMENTATION ??1VoxelAnimClass@@UAE@XZ 0065DF10h
ASM_DEFINE_IMPLEMENTATION ??1AITriggerTypeClass@@UAE@XZ 004105F0h
ASM_DEFINE_IMPLEMENTATION ??1TagTypeClass@@UAE@XZ 0061F150h
ASM_DEFINE_IMPLEMENTATION ??1BuildingLightClass@@UAE@XZ 00421D70h
ASM_DEFINE_IMPLEMENTATION ??1LightSourceClass@@UAE@XZ 005015B0h
ASM_DEFINE_IMPLEMENTATION ??1SmudgeTypeClass@@UAE@XZ 005FB300h
ASM_DEFINE_IMPLEMENTATION ??1FactoryClass@@UAE@XZ 00496DA0h
ASM_DEFINE_IMPLEMENTATION ??1SmudgeClass@@UAE@XZ 005FAAC0h
ASM_DEFINE_IMPLEMENTATION ??1OverlayClass@@UAE@XZ 0058B550h
ASM_DEFINE_IMPLEMENTATION ??1TiberiumClass@@UAE@XZ 00644A30h
ASM_DEFINE_IMPLEMENTATION ??1BulletClass@@UAE@XZ 004445E0h
ASM_DEFINE_IMPLEMENTATION ??1UnitClass@@UAE@XZ 0064D7C0h
ASM_DEFINE_IMPLEMENTATION ??1TerrainClass@@UAE@XZ 0063F170h
ASM_DEFINE_IMPLEMENTATION ??1TriggerTypeClass@@UAE@XZ 00649DF0h
ASM_DEFINE_IMPLEMENTATION ??1TriggerClass@@UAE@XZ 00649190h
ASM_DEFINE_IMPLEMENTATION ??1TagClass@@UAE@XZ 0061E4A0h
ASM_DEFINE_IMPLEMENTATION ??1WaypointPathClass@@UAE@XZ 00673550h
ASM_DEFINE_IMPLEMENTATION ??1WaypointClass@@QAE@XZ 006733C0h
ASM_DEFINE_IMPLEMENTATION ??1CampaignClass@@UAE@XZ 00448AD0h
ASM_DEFINE_IMPLEMENTATION ??1WaveClass@@UAE@XZ 006702C0h
ASM_DEFINE_IMPLEMENTATION ??1CStreamClass@@UAE@XZ 00471820h
ASM_DEFINE_IMPLEMENTATION ??1ParticleClass@@UAE@XZ 005A32E0h
ASM_DEFINE_IMPLEMENTATION ??1ParticleSystemClass@@UAE@XZ 005A56C0h
;ASM_DEFINE_IMPLEMENTATION ??1Wstring@@QAE@XZ 006A2CD0h
ASM_DEFINE_IMPLEMENTATION ??1IsometricTileClass@@UAE@XZ 004F2160h
ASM_DEFINE_IMPLEMENTATION ??1RadarEventClass@@QAE@XZ 005C1E40h
ASM_DEFINE_IMPLEMENTATION ??1WalkLocomotionClass@@UAE@XZ 0066CAD0h
ASM_DEFINE_IMPLEMENTATION ??1DriveLocomotionClass@@UAE@XZ 0047CFB0h
ASM_DEFINE_IMPLEMENTATION ??1VQAClass@@QAE@XZ 0066B540h
ASM_DEFINE_IMPLEMENTATION ??1ProgressScreenClass@@QAE@XZ 005AD8C0h
ASM_DEFINE_IMPLEMENTATION ??1EndGameClass@@QAE@XZ 00493890h
ASM_DEFINE_IMPLEMENTATION ??1TubeClass@@UAE@XZ 0064AFC0h
ASM_DEFINE_IMPLEMENTATION ??1LevitateLocomotionClass@@UAE@XZ 004FDF60h
ASM_DEFINE_IMPLEMENTATION ??1JumpjetLocomotionClass@@UAE@XZ 004F9600h
ASM_DEFINE_IMPLEMENTATION ??1ABuffer@@QAE@XZ 004066B0h
ASM_DEFINE_IMPLEMENTATION ??1ZBuffer@@QAE@XZ 006A8F40h
ASM_DEFINE_IMPLEMENTATION ??1StaticButtonClass@@UAE@XZ 00608F30h
ASM_DEFINE_IMPLEMENTATION ??1SliderClass@@UAE@XZ 005F7C90h
ASM_DEFINE_IMPLEMENTATION ??1ListClass@@UAE@XZ 00503650h
ASM_DEFINE_IMPLEMENTATION ??1ColorListClass@@UAE@XZ 0045E110h
ASM_DEFINE_IMPLEMENTATION ??1CheckListClass@@UAE@XZ 0045DBE0h
ASM_DEFINE_IMPLEMENTATION ??1EditClass@@UAE@XZ 00490380h
ASM_DEFINE_IMPLEMENTATION ??1LaserDrawClass@@QAE@XZ 004FBDC0h
ASM_DEFINE_IMPLEMENTATION ??0AbstractTypeClass@@QAE@PBD@Z 004061D0h
ASM_DEFINE_IMPLEMENTATION ??0AbstractTypeClass@@QAE@ABVNoInitClass@@@Z 00406310h
ASM_DEFINE_IMPLEMENTATION ??0SideClass@@QAE@PBD@Z 005F1A30h
ASM_DEFINE_IMPLEMENTATION ??0ScriptClass@@QAE@PAVScriptTypeClass@@@Z 005F1A30h
ASM_DEFINE_IMPLEMENTATION ??0ScriptTypeClass@@QAE@PBD@Z 005E7AC0h
ASM_DEFINE_IMPLEMENTATION ??0ObjectTypeClass@@QAE@PBD@Z 00587620h
ASM_DEFINE_IMPLEMENTATION ??0ObjectTypeClass@@QAE@ABVNoInitClass@@@Z 00587810h
ASM_DEFINE_IMPLEMENTATION ??0TechnoTypeClass@@QAE@PBDW4SpeedType@@@Z 0063ADE0h
ASM_DEFINE_IMPLEMENTATION ??0TechnoTypeClass@@QAE@ABVNoInitClass@@@Z 0063B480h
ASM_DEFINE_IMPLEMENTATION ??0BuildingTypeClass@@QAE@PBD@Z 0043F410h
ASM_DEFINE_IMPLEMENTATION ??0BuildingTypeClass@@QAE@ABVNoInitClass@@@Z 0043F8C0h
ASM_DEFINE_IMPLEMENTATION ??0ConvertClass@@QAE@PAVPaletteClass@@0PAVXSurface@@H_N@Z 00463C40h
ASM_DEFINE_IMPLEMENTATION ??0LightConvertClass@@QAE@PAVPaletteClass@@0PAVSurface@@HHH_NPA_NH@Z 00502A00h
ASM_DEFINE_IMPLEMENTATION ??0IsometricTileTypeClass@@QAE@W4IsometricTileType@@DDPBD_N@Z 004F30A0h
ASM_DEFINE_IMPLEMENTATION ??0IsometricTileTypeClass@@QAE@ABVNoInitClass@@@Z 004F32D0h
ASM_DEFINE_IMPLEMENTATION ??0HouseTypeClass@@QAE@PBD@Z 004CDD10h
ASM_DEFINE_IMPLEMENTATION ??0HouseTypeClass@@QAE@ABVNoInitClass@@@Z 004CDE60h
ASM_DEFINE_IMPLEMENTATION ??0UnitTypeClass@@QAE@PBD@Z 0065B8F0h
ASM_DEFINE_IMPLEMENTATION ??0UnitTypeClass@@QAE@ABVNoInitClass@@@Z 0065BAA0h
ASM_DEFINE_IMPLEMENTATION ??0InfantryTypeClass@@QAE@PBD@Z 004DA1E0h
ASM_DEFINE_IMPLEMENTATION ??0InfantryTypeClass@@QAE@ABVNoInitClass@@@Z 004DA370h
ASM_DEFINE_IMPLEMENTATION ??0AircraftTypeClass@@QAE@PBD@Z 0040FBC0h
ASM_DEFINE_IMPLEMENTATION ??0AircraftTypeClass@@QAE@ABVNoInitClass@@@Z 0040FCA0h
ASM_DEFINE_IMPLEMENTATION ??0VoxelAnimTypeClass@@QAE@PBD@Z 0065F3B0h
ASM_DEFINE_IMPLEMENTATION ??0WeaponTypeClass@@QAE@PBD@Z 00680A60h
ASM_DEFINE_IMPLEMENTATION ??0WeaponTypeClass@@QAE@ABVNoInitClass@@@Z 00680C00h
ASM_DEFINE_IMPLEMENTATION ??0BulletTypeClass@@QAE@PBD@Z 00447BC0h
ASM_DEFINE_IMPLEMENTATION ??0BulletTypeClass@@QAE@ABVNoInitClass@@@Z 00447D90h
ASM_DEFINE_IMPLEMENTATION ??0CellClass@@QAE@XZ 004517C0h
ASM_DEFINE_IMPLEMENTATION ??0CellClass@@QAE@ABVNoInitClass@@@Z 00450F60h
ASM_DEFINE_IMPLEMENTATION ??0WarheadTypeClass@@QAE@PBD@Z 0066ED40h
ASM_DEFINE_IMPLEMENTATION ??0WarheadTypeClass@@QAE@ABVNoInitClass@@@Z 0066EF00h
ASM_DEFINE_IMPLEMENTATION ??0Tactical@@QAE@XZ 0060EEC0h
ASM_DEFINE_IMPLEMENTATION ??0Tactical@@QAE@ABVNoInitClass@@@Z 0060F090h
ASM_DEFINE_IMPLEMENTATION ??0OverlayTypeClass@@QAE@PBD@Z 0058CFF0h
ASM_DEFINE_IMPLEMENTATION ??0OverlayTypeClass@@QAE@ABVNoInitClass@@@Z 0058D140h
ASM_DEFINE_IMPLEMENTATION ??0SuperWeaponTypeClass@@QAE@PBD@Z 0060CF70h
ASM_DEFINE_IMPLEMENTATION ??0SuperWeaponTypeClass@@QAE@ABVNoInitClass@@@Z 0060D060h
ASM_DEFINE_IMPLEMENTATION ??0HouseClass@@QAE@PBVHouseTypeClass@@@Z 004BA0B0h
ASM_DEFINE_IMPLEMENTATION ??0HouseClass@@QAE@ABVNoInitClass@@@Z 004B9EF0h
ASM_DEFINE_IMPLEMENTATION ??0ObjectClass@@QAE@XZ 005847D0h
ASM_DEFINE_IMPLEMENTATION ??0ObjectClass@@QAE@ABVNoInitClass@@@Z 005849A0h
ASM_DEFINE_IMPLEMENTATION ??0MissionClass@@QAE@XZ 00558E40h
ASM_DEFINE_IMPLEMENTATION ??0MissionClass@@QAE@ABVNoInitClass@@@Z 0063A600h
ASM_DEFINE_IMPLEMENTATION ??0TechnoClass@@QAE@PAVHouseClass@@@Z 00629CB0h
ASM_DEFINE_IMPLEMENTATION ??0TechnoClass@@QAE@ABVNoInitClass@@@Z 0062A7F0h
ASM_DEFINE_IMPLEMENTATION ??0FootClass@@QAE@PAVHouseClass@@@Z 004A00F0h
ASM_DEFINE_IMPLEMENTATION ??0FootClass@@QAE@ABVNoInitClass@@@Z 004A0390h
ASM_DEFINE_IMPLEMENTATION ??0BuildingClass@@QAE@PAVBuildingTypeClass@@PAVHouseClass@@@Z 00426190h
ASM_DEFINE_IMPLEMENTATION ??0BuildingClass@@QAE@AAVNoInitClass@@@Z 00426140h
ASM_DEFINE_IMPLEMENTATION ??0TeamTypeClass@@QAE@PBD@Z 00627D90h
ASM_DEFINE_IMPLEMENTATION ??0TeamClass@@QAE@PAVTeamTypeClass@@PAVHouseClass@@PAX@Z 00622100h
ASM_DEFINE_IMPLEMENTATION ??0TaskForceClass@@QAE@PBD@Z 00621420h
ASM_DEFINE_IMPLEMENTATION ??0TaskForceClass@@QAE@ABVNoInitClass@@@Z 006214D0h
ASM_DEFINE_IMPLEMENTATION ??0AircraftClass@@QAE@PAVAircraftTypeClass@@PAVHouseClass@@@Z 004085D0h
ASM_DEFINE_IMPLEMENTATION ??0InfantryClass@@QAE@PAVInfantryTypeClass@@PAVHouseClass@@@Z 004D1FD0h
ASM_DEFINE_IMPLEMENTATION ??0AnimClass@@QAE@XZ 00414170h
ASM_DEFINE_IMPLEMENTATION ??0AnimClass@@QAE@PBVAnimTypeClass@@AAUCoordinate@@IIIH@Z 00413AE0h
ASM_DEFINE_IMPLEMENTATION ??0AnimTypeClass@@QAE@PBD@Z 004184C0h
ASM_DEFINE_IMPLEMENTATION ??0AnimTypeClass@@QAE@ABVNoInitClass@@@Z 004187A0h
ASM_DEFINE_IMPLEMENTATION ??0TerrainTypeClass@@QAE@PBD@Z 006414E0h
ASM_DEFINE_IMPLEMENTATION ??0TerrainTypeClass@@QAE@ABVNoInitClass@@@Z 00641620h
ASM_DEFINE_IMPLEMENTATION ??0ParticleTypeClass@@QAE@PBD@Z 005AEF00h
ASM_DEFINE_IMPLEMENTATION ??0ParticleTypeClass@@QAE@ABVNoInitClass@@@Z 005AF0E0h
ASM_DEFINE_IMPLEMENTATION ??0ParticleSystemTypeClass@@QAE@PBD@Z 005AE3D0h
ASM_DEFINE_IMPLEMENTATION ??0ParticleSystemTypeClass@@QAE@ABVNoInitClass@@@Z 005AE540h
ASM_DEFINE_IMPLEMENTATION ??0VoxelAnimClass@@QAE@XZ 0065DE30h
ASM_DEFINE_IMPLEMENTATION ??0VoxelAnimClass@@QAE@PBVVoxelAnimTypeClass@@AAUCoordinate@@PAVHouseClass@@@Z 0065D950h
ASM_DEFINE_IMPLEMENTATION ??0AITriggerTypeClass@@QAE@PBD@Z 004104E0h
ASM_DEFINE_IMPLEMENTATION ??0TagTypeClass@@QAE@PBD@Z 0061F030h
ASM_DEFINE_IMPLEMENTATION ??0BuildingLightClass@@QAE@PAVTechnoClass@@@Z 00421AE0h
ASM_DEFINE_IMPLEMENTATION ??0LightSourceClass@@QAE@XZ 00501510h
ASM_DEFINE_IMPLEMENTATION ??0LightSourceClass@@QAE@UCoordinate@@HHHHH@Z 00501460h
ASM_DEFINE_IMPLEMENTATION ??0SmudgeTypeClass@@QAE@PBD@Z 005FB1E0h
ASM_DEFINE_IMPLEMENTATION ??0SmudgeTypeClass@@QAE@ABVNoInitClass@@@Z 005FB2E0h
ASM_DEFINE_IMPLEMENTATION ??0FactoryClass@@QAE@XZ 00496C60h
ASM_DEFINE_IMPLEMENTATION ??0SmudgeClass@@QAE@PAVSmudgeTypeClass@@AAUCoordinate@@W4HousesType@@@Z 005FA9E0h
ASM_DEFINE_IMPLEMENTATION ??0OverlayClass@@QAE@PAVOverlayTypeClass@@AAUCell@@W4HousesType@@@Z 0058B460h
ASM_DEFINE_IMPLEMENTATION ??0TiberiumClass@@QAE@PBD@Z 00644890h
ASM_DEFINE_IMPLEMENTATION ??0BulletClass@@QAE@XZ 004444A0h
ASM_DEFINE_IMPLEMENTATION ??0UnitClass@@QAE@PAVUnitTypeClass@@PAVHouseClass@@@Z 0064D4B0h
ASM_DEFINE_IMPLEMENTATION ??0TerrainClass@@QAE@XZ 0063F710h
ASM_DEFINE_IMPLEMENTATION ??0TerrainClass@@QAE@PAVTerrainTypeClass@@AAUCell@@@Z 0063F500h
ASM_DEFINE_IMPLEMENTATION ??0TriggerTypeClass@@QAE@PBD@Z 00649CA0h
ASM_DEFINE_IMPLEMENTATION ??0TriggerClass@@QAE@PAVTriggerTypeClass@@@Z 00649040h
ASM_DEFINE_IMPLEMENTATION ??0TagClass@@QAE@PAVTagTypeClass@@@Z 0061E330h
ASM_DEFINE_IMPLEMENTATION ??0CampaignClass@@QAE@PBD@Z 00448A10h
ASM_DEFINE_IMPLEMENTATION ??0WaveClass@@QAE@XZ 006700B0h
ASM_DEFINE_IMPLEMENTATION ??0WaveClass@@QAE@AAUCoordinate@@0PAVAbstractClass@@W4WaveType@@1@Z 0066FDE0h
ASM_DEFINE_IMPLEMENTATION ??0ParticleClass@@QAE@XZ 005A3170h
ASM_DEFINE_IMPLEMENTATION ??0ParticleClass@@QAE@PAVParticleTypeClass@@AAUCoordinate@@1PAVParticleSystemClass@@@Z 005A2C90h
ASM_DEFINE_IMPLEMENTATION ??0ParticleSystemClass@@QAE@XZ 005A5580h
ASM_DEFINE_IMPLEMENTATION ??0ParticleSystemClass@@QAE@PBVParticleSystemTypeClass@@AAUCoordinate@@PAVAbstractClass@@21@Z 005A5300h
ASM_DEFINE_IMPLEMENTATION ??0IsometricTileClass@@QAE@W4IsometricTileType@@AAUCell@@@Z 004F2070h
ASM_DEFINE_IMPLEMENTATION ??0TubeClass@@QAE@AAUCell@@W4FacingType@@@Z 0064AED0h
ASM_DEFINE_IMPLEMENTATION ??0SessionClass@@QAE@XZ 005ECD00h
ASM_DEFINE_IMPLEMENTATION ??0UDPInterfaceClass@@QAE@XZ 006A1E70h
ASM_DEFINE_IMPLEMENTATION ??0EnumConnectionPointsClass@@QAE@XZ 0046FC70h
ASM_DEFINE_IMPLEMENTATION ??0EnumConnectionPointsClass@@QAE@ABV?$DynamicVectorClass@PAUIConnectionPoint@@@@@Z 0046FD30h
ASM_DEFINE_IMPLEMENTATION ??0ThemeClass@@QAE@XZ 00643D60h
ASM_DEFINE_IMPLEMENTATION ??0ToolTipManager@@QAE@PAUHWND__@@@Z 00647190h
ASM_DEFINE_IMPLEMENTATION ??0WinsockInterfaceClass@@QAE@XZ 006A0EB0h
ASM_DEFINE_IMPLEMENTATION ??0IPXManagerClass@@QAE@HHHHGG@Z 004F0320h
ASM_DEFINE_IMPLEMENTATION ??0IPXConnClass@@QAE@HHHGPAVIPXAddressClass@@HPADH@Z 004EF450h
ASM_DEFINE_IMPLEMENTATION ??0IPXGlobalConnClass@@QAE@HHHG@Z 004EFA60h
ASM_DEFINE_IMPLEMENTATION ??0ConnectionClass@@QAE@HHHGKKKH@Z 00461D00h
ASM_DEFINE_IMPLEMENTATION ??0CommBufferClass@@QAE@HHHH@Z 00460BC0h
ASM_DEFINE_IMPLEMENTATION ??0LoadOptionsClass@@QAE@XZ 005047B0h
ASM_DEFINE_IMPLEMENTATION ??0MapClass@@QAE@XZ 0050EAD0h
ASM_DEFINE_IMPLEMENTATION ??0MapClass@@QAE@ABVNoInitClass@@@Z 0050EBE0h
ASM_DEFINE_IMPLEMENTATION ??0LCWPipe@@QAE@W4CompControl@0@H@Z 004FD3B0h
ASM_DEFINE_IMPLEMENTATION ??0LCWStraw@@QAE@W4CompControl@0@H@Z 004FD7A0h
ASM_DEFINE_IMPLEMENTATION ??0LZOPipe@@QAE@W4CompControl@0@H@Z 00507DF0h
ASM_DEFINE_IMPLEMENTATION ??0LZOStraw@@QAE@W4CompControl@0@H@Z 00508260h
ASM_DEFINE_IMPLEMENTATION ??0WaypointPathClass@@QAE@XZ 006733D0h
ASM_DEFINE_IMPLEMENTATION ??0WaypointPathClass@@QAE@H@Z 006734A0h
ASM_DEFINE_IMPLEMENTATION ??0WaypointPathClass@@QAE@ABVNoInitClass@@@Z 00673470h
ASM_DEFINE_IMPLEMENTATION ??0RadarClass@@QAE@XZ 005B8830h
ASM_DEFINE_IMPLEMENTATION ??0ConnectionPointClass@@QAE@ABU_GUID@@PAUIUnknown@@@Z 0046F8C0h
ASM_DEFINE_IMPLEMENTATION ??0EnumConnectionsClass@@QAE@ABV?$DynamicVectorClass@UtagCONNECTDATA@@@@@Z 0046F300h
ASM_DEFINE_IMPLEMENTATION ??0EnumConnectionsClass@@QAE@ABV0@@Z 0046F3D0h
ASM_DEFINE_IMPLEMENTATION ??0SwizzleManagerClass@@QAE@XZ 0060D9B0h
ASM_DEFINE_IMPLEMENTATION ??0ScenarioClass@@QAE@XZ 005DABC0h
ASM_DEFINE_IMPLEMENTATION ??0RulesClass@@QAE@XZ 005C4350h
ASM_DEFINE_IMPLEMENTATION ??0RulesClass@@QAE@ABVNoInitClass@@@Z 005C3E00h
ASM_DEFINE_IMPLEMENTATION ??0Dictionary@@QAE@XZ 005FD410h
ASM_DEFINE_IMPLEMENTATION ??1Dictionary@@QAE@XZ 005FD4F0h
ASM_DEFINE_IMPLEMENTATION ??0ToggleClass@@QAE@IHHHH@Z 00647000h
ASM_DEFINE_IMPLEMENTATION ??0TextButtonClass@@QAE@XZ 00643430h
ASM_DEFINE_IMPLEMENTATION ??0TextButtonClass@@QAE@IPBDW4TextPrintType@@HHHH_N2@Z 006433A0h
ASM_DEFINE_IMPLEMENTATION ??0TextButtonClass@@QAE@IHW4TextPrintType@@HHHH_N1@Z 00643460h
ASM_DEFINE_IMPLEMENTATION ??0GaugeClass@@QAE@IHHHH@Z 004AACB0h
ASM_DEFINE_IMPLEMENTATION ??0TriColorGaugeClass@@QAE@IHHHH@Z 004AB1F0h
ASM_DEFINE_IMPLEMENTATION ??0Dial8Class@@QAE@HHHHHW4DirType@@@Z 00473F30h
ASM_DEFINE_IMPLEMENTATION ??0StaticButtonClass@@QAE@XZ 00608EF0h
ASM_DEFINE_IMPLEMENTATION ??0StaticButtonClass@@QAE@IPBDW4TextPrintType@@HHHH@Z 00608E50h
ASM_DEFINE_IMPLEMENTATION ??0ShapeButtonClass@@QAE@XZ 005F15A0h
ASM_DEFINE_IMPLEMENTATION ??0ShapeButtonClass@@QAE@IPBUShapeFileStruct@@HH@Z 005F15E0h
ASM_DEFINE_IMPLEMENTATION ??0SliderClass@@QAE@IHHHH_N@Z 005F7AC0h
ASM_DEFINE_IMPLEMENTATION ??0ListClass@@QAE@HHHHHW4TextPrintType@@PBX1@Z 00503280h
ASM_DEFINE_IMPLEMENTATION ??0ListClass@@QAE@ABV0@@Z 005033E0h
ASM_DEFINE_IMPLEMENTATION ??0ColorListClass@@QAE@HHHHHW4TextPrintType@@PBX1@Z 0045E080h
ASM_DEFINE_IMPLEMENTATION ??CheckListClass@@YIHHHHHHW4TextPrintType@@PBX1@Z 0045DB90h
ASM_DEFINE_IMPLEMENTATION ??0EditClass@@QAE@HPADHW4TextPrintType@@HHHHW4EditStyle@0@@Z 00490280h
ASM_DEFINE_IMPLEMENTATION ??0DropListClass@@QAE@HPADHW4TextPrintType@@HHHHPBX2@Z 00482450h
ASM_DEFINE_IMPLEMENTATION ??4DropListClass@@QAEAAV0@ABV0@@Z 00482860h
ASM_DEFINE_IMPLEMENTATION ??0DropListClass@@QAE@ABV0@@Z 00482A10h
ASM_DEFINE_IMPLEMENTATION ??0TextLabelClass@@QAE@PBDHHW4ColorSchemeType@@W4TextPrintType@@@Z 0064D0C0h
ASM_DEFINE_IMPLEMENTATION ??0LaserDrawClass@@QAE@UCoordinate@@0H_NVRGBClass@@22H11MM@Z 004FBC80h
ASM_DEFINE_IMPLEMENTATION ??0PacketClass@@QAE@PAD@Z 005A22E0h
ASM_DEFINE_IMPLEMENTATION ??1PacketClass@@QAE@XZ 005A22A0h
ASM_DEFINE_IMPLEMENTATION ??0FieldClass@@QAE@PADD@Z 00498890h
ASM_DEFINE_IMPLEMENTATION ??0FieldClass@@QAE@PADE@Z 004988F0h
ASM_DEFINE_IMPLEMENTATION ??0FieldClass@@QAE@PADF@Z 00498950h
ASM_DEFINE_IMPLEMENTATION ??0FieldClass@@QAE@PADG@Z 004989B0h
ASM_DEFINE_IMPLEMENTATION ??0FieldClass@@QAE@PADJ@Z 00498A10h
ASM_DEFINE_IMPLEMENTATION ??0FieldClass@@QAE@PADK@Z 00498A70h
ASM_DEFINE_IMPLEMENTATION ??0FieldClass@@QAE@PAD0@Z 00498AD0h
ASM_DEFINE_IMPLEMENTATION ??0FieldClass@@QAE@PADPAXH@Z 00498B40h
ASM_DEFINE_IMPLEMENTATION ??1FieldClass@@QAE@XZ 00498BA0h
ASM_DEFINE_IMPLEMENTATION ??0PKey@@QAE@PBXPBX@Z 005A94F0h
ASM_DEFINE_IMPLEMENTATION ??1BrainClass@@UAE@XZ 00425540h
ASM_DEFINE_IMPLEMENTATION ??0NeuronClass@@QAE@XZ 004252B0h
ASM_DEFINE_IMPLEMENTATION ??1NeuronClass@@QAE@XZ 00425390h
ASM_DEFINE_IMPLEMENTATION ??0AlphaShapeClass@@QAE@XZ 00412720h
ASM_DEFINE_IMPLEMENTATION ??0AlphaShapeClass@@QAE@PAVAbstractClass@@HH@Z 004125A0h
ASM_DEFINE_IMPLEMENTATION ??0AlphaShapeClass@@QAE@ABVNoInitClass@@@Z 00412880h
ASM_DEFINE_IMPLEMENTATION ??1AlphaShapeClass@@QAE@XZ 004128A0h
ASM_DEFINE_IMPLEMENTATION ??0FlyLocomotionClass@@QAE@XZ 004994B0h
ASM_DEFINE_IMPLEMENTATION ??1FlyLocomotionClass@@UAE@XZ 00499530h
ASM_DEFINE_IMPLEMENTATION ??0MechLocomotionClass@@QAE@XZ 00556040h
ASM_DEFINE_IMPLEMENTATION ??1MechLocomotionClass@@UAE@XZ 005560A0h
ASM_DEFINE_IMPLEMENTATION ??0HoverLocomotionClass@@QAE@XZ 004CE8F0h
ASM_DEFINE_IMPLEMENTATION ??1HoverLocomotionClass@@UAE@XZ 004CE9D0h
ASM_DEFINE_IMPLEMENTATION ??0IPXAddressClass@@QAE@XZ 004EF040h
ASM_DEFINE_IMPLEMENTATION ??0IPXAddressClass@@QAE@QAE0@Z 004EF070h
ASM_DEFINE_IMPLEMENTATION ??0IPXAddressClass@@QAE@PAUIPXHEADER@@@Z 004EF0A0h
ASM_DEFINE_IMPLEMENTATION ??0EMPulseClass@@QAE@UCell@@HHPAVTechnoClass@@@Z 004926B0h
ASM_DEFINE_IMPLEMENTATION ??0EMPulseClass@@QAE@XZ 00492760h
ASM_DEFINE_IMPLEMENTATION ??0EMPulseClass@@QAE@ABVNoInitClass@@@Z 00492790h
ASM_DEFINE_IMPLEMENTATION ??1EMPulseClass@@UAE@XZ 004927B0h
ASM_DEFINE_IMPLEMENTATION ??0VeinholeMonsterClass@@QAE@UCell@@@Z 00660C00h
ASM_DEFINE_IMPLEMENTATION ??0VeinholeMonsterClass@@QAE@ABVNoInitClass@@@Z 00660A90h
ASM_DEFINE_IMPLEMENTATION ??1VeinholeMonsterClass@@QAE@XZ 00661000h
ASM_DEFINE_IMPLEMENTATION ??0FoggedObjectClass@@QAE@XZ 0049D850h
ASM_DEFINE_IMPLEMENTATION ??0FoggedObjectClass@@QAE@AAUCoordinate@@W4OverlayType@@H@Z 0049D910h
ASM_DEFINE_IMPLEMENTATION ??0FoggedObjectClass@@QAE@AAUCoordinate@@W4SmudgeType@@H@Z 0049DBB0h
ASM_DEFINE_IMPLEMENTATION ??0FoggedObjectClass@@QAE@PBVBuildingClass@@_N@Z 0049DE60h
ASM_DEFINE_IMPLEMENTATION ??0FoggedObjectClass@@QAE@PBVTerrainClass@@@Z 0049E2C0h
ASM_DEFINE_IMPLEMENTATION ??0FoggedObjectClass@@QAE@ABVNoInitClass@@@Z 0049D810h
ASM_DEFINE_IMPLEMENTATION ??1FoggedObjectClass@@QAE@XZ 0049E590h

;
;  Templated function instances.
;
ASM_DEFINE_IMPLEMENTATION ?Add@?$QueueClass@VEventClass@@$0EA@@@QAEHABVEventClass@@@Z 005B8500h ; int QueueClass<class EventClass, 64>::Add(EventClass const &)

end
