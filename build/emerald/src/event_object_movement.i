# 1 "src/event_object_movement.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/event_object_movement.c"
# 1 "include/global.h" 1



# 1 "tools/agbcc/include/string.h" 1
# 14 "tools/agbcc/include/string.h"
# 1 "tools/agbcc/include/_ansi.h" 1
# 15 "tools/agbcc/include/_ansi.h"
# 1 "tools/agbcc/include/sys/config.h" 1
# 103 "tools/agbcc/include/sys/config.h"
typedef int __int32_t;
typedef unsigned int __uint32_t;
# 16 "tools/agbcc/include/_ansi.h" 2
# 15 "tools/agbcc/include/string.h" 2


# 1 "tools/agbcc/include/stddef.h" 1





typedef long int ptrdiff_t;



typedef unsigned long int size_t;






typedef int wchar_t;
# 18 "tools/agbcc/include/string.h" 2





void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);


char *strtok_r (char *, const char *, char **);

int bcmp (const char *, const char *, size_t);
void bcopy (const char *, char *, size_t);
void bzero (char *, size_t);
int ffs (int);
char *index (const char *, int);
void * memccpy (void *, const void *, int, size_t);
char *rindex (const char *, int);
int strcasecmp (const char *, const char *);
char *strdup (const char *);
int strncasecmp (const char *, const char *, size_t);
char *strsep (char **, const char *);
char *strlwr (char *);
char *strupr (char *);
# 5 "include/global.h" 2
# 1 "tools/agbcc/include/limits.h" 1
# 6 "include/global.h" 2
# 1 "include/config.h" 1
# 7 "include/global.h" 2
# 1 "include/gba/gba.h" 1



# 1 "include/gba/defines.h" 1
# 5 "include/gba/gba.h" 2
# 1 "include/gba/io_reg.h" 1
# 6 "include/gba/gba.h" 2
# 1 "include/gba/types.h" 1



# 1 "tools/agbcc/include/stdint.h" 1
# 31 "tools/agbcc/include/stdint.h"
# 1 "tools/agbcc/include/limits.h" 1
# 32 "tools/agbcc/include/stdint.h" 2



typedef signed char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long long int64_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;



typedef signed char int_least8_t;
typedef short int_least16_t;
typedef int int_least32_t;
typedef long long int_least64_t;
typedef unsigned char uint_least8_t;
typedef unsigned short uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef unsigned long long uint_fast64_t;



typedef int intptr_t;
typedef unsigned int uintptr_t;



typedef long long intmax_t;
typedef unsigned long long uintmax_t;
# 5 "include/gba/types.h" 2

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;

typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;

typedef u8 bool8;
typedef u16 bool16;
typedef u32 bool32;

struct BgCnt
{
    u16 priority:2;
    u16 charBaseBlock:2;
    u16 dummy:2;
    u16 mosaic:1;
    u16 palettes:1;
    u16 screenBaseBlock:5;
    u16 areaOverflowMode:1;
    u16 screenSize:2;
};
typedef volatile struct BgCnt vBgCnt;

struct PlttData
{
    u16 r:5;
    u16 g:5;
    u16 b:5;
    u16 unused_15:1;
};

struct OamData
{
             u32 y:8;
             u32 affineMode:2;
             u32 objMode:2;
             u32 mosaic:1;
             u32 bpp:1;
             u32 shape:2;

             u32 x:9;
             u32 matrixNum:5;
             u32 size:2;

             u16 tileNum:10;
             u16 priority:2;
             u16 paletteNum:4;
             u16 affineParam;
};
# 117 "include/gba/types.h"
struct BgAffineSrcData
{
    s32 texX;
    s32 texY;
    s16 scrX;
    s16 scrY;
    s16 sx;
    s16 sy;
    u16 alpha;
};

struct BgAffineDstData
{
    s16 pa;
    s16 pb;
    s16 pc;
    s16 pd;
    s32 dx;
    s32 dy;
};

struct ObjAffineSrcData
{
    s16 xScale;
    s16 yScale;
    u16 rotation;
};


struct SioMultiCnt
{
    u16 baudRate:2;
    u16 si:1;
    u16 sd:1;
    u16 id:2;
    u16 error:1;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 intrEnable:1;
    u16 unused_15:1;
    u16 data;
};
# 7 "include/gba/gba.h" 2
# 1 "include/gba/multiboot.h" 1
# 9 "include/gba/multiboot.h"
struct MultiBootParam
{
    u32 system_work[5];
    u8 handshake_data;
    u8 padding;
    u16 handshake_timeout;
    u8 probe_count;
    u8 client_data[3];
    u8 palette_data;
    u8 response_bit;
    u8 client_bit;
    u8 reserved1;
    const u8 *boot_srcp;
    const u8 *boot_endp;
    const u8 *masterp;
    u8 *reserved2[3];
    u32 system_work2[4];
    u8 sendflag;
    u8 probe_target_bit;
    u8 check_wait;
    u8 server_type;
};
# 8 "include/gba/gba.h" 2
# 1 "include/gba/syscall.h" 1
# 14 "include/gba/syscall.h"
void SoftReset(u32 resetFlags);

void RegisterRamReset(u32 resetFlags);

void VBlankIntrWait(void);

u16 Sqrt(u32 num);

u16 ArcTan2(s16 x, s16 y);





void CpuSet(const void *src, void *dest, u32 control);



void CpuFastSet(const void *src, void *dest, u32 control);

void BgAffineSet(struct BgAffineSrcData *src, struct BgAffineDstData *dest, s32 count);

void ObjAffineSet(struct ObjAffineSrcData *src, void *dest, s32 count, s32 offset);

void LZ77UnCompWram(const u32 *src, void *dest);

void LZ77UnCompVram(const u32 *src, void *dest);

void RLUnCompWram(const void *src, void *dest);

void RLUnCompVram(const void *src, void *dest);

int MultiBoot(struct MultiBootParam *mp);

s32 Div(s32 num, s32 denom);
# 9 "include/gba/gba.h" 2
# 1 "include/gba/macro.h" 1
# 10 "include/gba/gba.h" 2
# 1 "include/gba/isagbprint.h" 1
# 11 "include/gba/gba.h" 2
# 8 "include/global.h" 2
# 1 "include/constants/global.h" 1
# 9 "include/global.h" 2
# 112 "include/global.h"
struct Coords8
{
    s8 x;
    s8 y;
};

struct UCoords8
{
    u8 x;
    u8 y;
};

struct Coords16
{
    s16 x;
    s16 y;
};

struct UCoords16
{
    u16 x;
    u16 y;
};

struct Coords32
{
    s32 x;
    s32 y;
};

struct UCoords32
{
    u32 x;
    u32 y;
};

struct Time
{
             s16 days;
             s8 hours;
             s8 minutes;
             s8 seconds;
};



struct Pokedex
{
             u8 order;
             u8 mode;
             u8 nationalMagic;
             u8 unknown2;
             u32 unownPersonality;
             u32 spindaPersonality;
             u32 unknown3;
             u8 owned[((412 / 8) + ((412 % 8) ? 1 : 0))];
             u8 seen[((412 / 8) + ((412 % 8) ? 1 : 0))];
};

struct PokemonJumpResults
{
    u16 jumpsInRow;
    u16 field2;
    u16 excellentsInRow;
    u16 field6;
    u32 field8;
    u32 bestJumpScore;
};

struct BerryPickingResults
{
    u32 bestScore;
    u16 berriesPicked;
    u16 berriesPickedInRow;
    u8 field_8;
    u8 field_9;
    u8 field_A;
    u8 field_B;
    u8 field_C;
    u8 field_D;
    u8 field_E;
    u8 field_F;
};


struct PyramidBag
{
    u16 itemId[2][10];
    u8 quantity[2][10];
};

struct BerryCrush
{
    u16 berryCrushResults[4];
    u32 berryPowderAmount;
    u32 unk;
};

struct ApprenticeMon
{
    u16 species;
    u16 moves[4];
    u16 item;
};



struct Apprentice
{
    u8 id:5;
    u8 lvlMode:2;
    u8 numQuestions;
    u8 number;
    struct ApprenticeMon party[6 / 2];
    u16 speechWon[6];
    u8 playerId[4];
    u8 playerName[7];
    u8 language;
    u32 checksum;
};

struct BattleTowerPokemon
{
    u16 species;
    u16 heldItem;
    u16 moves[4];
    u8 level;
    u8 ppBonuses;
    u8 hpEV;
    u8 attackEV;
    u8 defenseEV;
    u8 speedEV;
    u8 spAttackEV;
    u8 spDefenseEV;
    u32 otId;
    u32 hpIV:5;
    u32 attackIV:5;
    u32 defenseIV:5;
    u32 speedIV:5;
    u32 spAttackIV:5;
    u32 spDefenseIV:5;
    u32 gap:1;
    u32 abilityNum:1;
    u32 personality;
    u8 nickname[10 + 1];
    u8 friendship;
};



struct EmeraldBattleTowerRecord
{
             u8 lvlMode;
             u8 facilityClass;
             u16 winStreak;
             u8 name[7 + 1];
             u8 trainerId[4];
             u16 greeting[6];
             u16 speechWon[6];
             u16 speechLost[6];
             struct BattleTowerPokemon party[4];
             u8 language;
             u32 checksum;
};

struct BattleTowerInterview
{
    u16 playerSpecies;
    u16 opponentSpecies;
    u8 opponentName[7 + 1];
    u8 opponentMonNickname[10 + 1];
    u8 opponentLanguage;
};

struct BattleTowerEReaderTrainer
{
             u8 unk0;
             u8 facilityClass;
             u16 winStreak;
             u8 name[7 + 1];
             u8 trainerId[4];
             u16 greeting[6];
             u16 farewellPlayerLost[6];
             u16 farewellPlayerWon[6];
             struct BattleTowerPokemon party[3];
             u32 checksum;
};


struct DomeMonData
{
    u16 moves[4];
    u8 evs[6];
    u8 nature;
};

struct RentalMon
{
    u16 monId;
    u32 personality;
    u8 ivs;
    u8 abilityNum;
};

struct BattleDomeTrainer
{
    u16 trainerId:10;
    u16 isEliminated:1;
    u16 eliminatedAt:2;
    u16 forfeited:3;
};



struct BattleFrontier
{
              struct EmeraldBattleTowerRecord towerPlayer;
              struct EmeraldBattleTowerRecord towerRecords[5];
              struct BattleTowerInterview towerInterview;
              struct BattleTowerEReaderTrainer ereaderTrainer;
              u8 challengeStatus;
              u8 lvlMode:2;
              u8 challengePaused:1;
              u8 disableRecordBattle:1;
              u16 selectedPartyMons[4];
              u16 curChallengeBattleNum;
              u16 trainerIds[20];
              u32 winStreakActiveFlags;
              u16 towerWinStreaks[4][2];
              u16 towerRecordWinStreaks[4][2];
              u16 battledBrainFlags;
              u16 towerSinglesStreak;
              u16 towerNumWins;
              u8 towerBattleOutcome;
              u8 towerLvlMode;
              u8 domeAttemptedSingles50:1;
              u8 domeAttemptedSinglesOpen:1;
              u8 domeHasWonSingles50:1;
              u8 domeHasWonSinglesOpen:1;
              u8 domeAttemptedDoubles50:1;
              u8 domeAttemptedDoublesOpen:1;
              u8 domeHasWonDoubles50:1;
              u8 domeHasWonDoublesOpen:1;
              u8 domeUnused;
              u8 domeLvlMode;
              u8 domeBattleMode;
              u16 domeWinStreaks[2][2];
              u16 domeRecordWinStreaks[2][2];
              u16 domeTotalChampionships[2][2];
              struct BattleDomeTrainer domeTrainers[16];
              u16 domeMonIds[16][3];
              u16 unused_DC4;
              u16 palacePrize;
              u16 palaceWinStreaks[2][2];
              u16 palaceRecordWinStreaks[2][2];
              u16 arenaPrize;
              u16 arenaWinStreaks[2];
              u16 arenaRecordStreaks[2];
              u16 factoryWinStreaks[2][2];
              u16 factoryRecordWinStreaks[2][2];
              u16 factoryRentsCount[2][2];
              u16 factoryRecordRentsCount[2][2];
              u16 pikePrize;
              u16 pikeWinStreaks[2];
              u16 pikeRecordStreaks[2];
              u16 pikeTotalStreaks[2];
              u8 pikeHintedRoomIndex:3;
              u8 pikeHintedRoomType:4;
              u8 pikeHealingRoomsDisabled:1;
              u16 pikeHeldItemsBackup[3];
              u16 pyramidPrize;
              u16 pyramidWinStreaks[2];
              u16 pyramidRecordStreaks[2];
              u16 pyramidRandoms[4];
              u8 pyramidTrainerFlags;
              struct PyramidBag pyramidBag;
              u8 pyramidLightRadius;
              u16 verdanturfTentPrize;
              u16 fallarborTentPrize;
              u16 slateportTentPrize;
              struct RentalMon rentalMons[3 * 2];
              u16 battlePoints;
              u16 cardBattlePoints;
              u32 battlesCount;
              u16 domeWinningMoves[16];
              u8 trainerFlags;
              u8 opponentNames[2][7 + 1];
              u8 opponentTrainerIds[2][4];
              u8 unk_EF9:7;
              u8 savedGame:1;
              u8 unused_EFA;
              u8 unused_EFB;
              struct DomeMonData domePlayerPartyData[3];
};

struct ApprenticeQuestion
{
    u8 questionId:2;
    u8 monId:2;
    u8 moveSlot:2;
    u8 suggestedChange:2;
    u16 data;
};

struct PlayersApprentice
{
             u8 id;
             u8 lvlMode:2;
             u8 questionsAnswered:4;
             u8 leadMonId:2;
             u8 party:3;
             u8 saveId:2;
             u8 unused;
             u8 speciesIds[6 / 2];
             struct ApprenticeQuestion questions[9];
};

struct RankingHall1P
{
    u8 id[4];
    u16 winStreak;
    u8 name[7 + 1];
    u8 language;
};

struct RankingHall2P
{
    u8 id1[4];
    u8 id2[4];
    u16 winStreak;
    u8 name1[7 + 1];
    u8 name2[7 + 1];
    u8 language;
};

struct SaveBlock2
{
             u8 playerName[7 + 1];
             u8 playerGender;
             u8 specialSaveWarpFlags;
             u8 playerTrainerId[4];
             u16 playTimeHours;
             u8 playTimeMinutes;
             u8 playTimeSeconds;
             u8 playTimeVBlanks;
             u8 optionsButtonMode;
             u16 optionsTextSpeed:3;
             u16 optionsWindowFrameType:5;
             u16 optionsSound:1;
             u16 optionsBattleStyle:1;
             u16 optionsBattleSceneOff:1;
             u16 regionMapZoom:1;
             struct Pokedex pokedex;
             u8 filler_90[0x8];
             struct Time localTimeOffset;
             struct Time lastBerryTreeUpdate;
             u32 gcnLinkFlags;
             u32 encryptionKey;
             struct PlayersApprentice playerApprentice;
             struct Apprentice apprentices[4];
              struct BerryCrush berryCrush;
              struct PokemonJumpResults pokeJump;
              struct BerryPickingResults berryPick;
              struct RankingHall1P hallRecords1P[9][2][3];
              struct RankingHall2P hallRecords2P[2][3];
              u16 contestLinkResults[5][4];
              struct BattleFrontier frontier;
};

extern struct SaveBlock2 *gSaveBlock2Ptr;

struct SecretBaseParty
{
    u32 personality[6];
    u16 moves[6 * 4];
    u16 species[6];
    u16 heldItems[6];
    u8 levels[6];
    u8 EVs[6];
};

struct SecretBase
{
               u8 secretBaseId;
               u8 sbr_field_1_0:4;
               u8 gender:1;
               u8 battledOwnerToday:1;
               u8 registryStatus:2;
               u8 trainerName[7];
               u8 trainerId[4];
               u8 language;
               u16 numSecretBasesReceived;
               u8 numTimesEntered;
               u8 sbr_field_11;
               u8 decorations[16];
               u8 decorationPositions[16];
               struct SecretBaseParty party;
};

# 1 "include/constants/game_stat.h" 1
# 512 "include/global.h" 2
# 1 "include/global.fieldmap.h" 1
# 13 "include/global.fieldmap.h"
enum
{
    CONNECTION_SOUTH = 1,
    CONNECTION_NORTH,
    CONNECTION_WEST,
    CONNECTION_EAST,
    CONNECTION_DIVE,
    CONNECTION_EMERGE
};

typedef void (*TilesetCB)(void);

struct Tileset
{
             bool8 isCompressed;
             bool8 isSecondary;
             void *tiles;
             void *palettes;
             u16 *metatiles;
             u16 *metatileAttributes;
             TilesetCB callback;
};

struct MapLayout
{
             s32 width;
             s32 height;
             u16 *border;
             u16 *map;
             struct Tileset *primaryTileset;
             struct Tileset *secondaryTileset;
};

struct BackupMapLayout
{
    s32 width;
    s32 height;
    u16 *map;
};

struct ObjectEventTemplate
{
             u8 localId;
             u8 graphicsId;
             u8 inConnection;
             s16 x;
             s16 y;
             u8 elevation;
             u8 movementType;
             u16 movementRangeX:4;
             u16 movementRangeY:4;
             u16 trainerType;
             u16 trainerRange_berryTreeId;
             const u8 *script;
             u16 flagId;
};

struct WarpEvent
{
    s16 x, y;
    u8 elevation;
    u8 warpId;
    u8 mapNum;
    u8 mapGroup;
};

struct CoordEvent
{
    s16 x, y;
    u8 elevation;
    u16 trigger;
    u16 index;
    u8 *script;
};

struct BgEvent
{
    u16 x, y;
    u8 elevation;
    u8 kind;
    union {
        u8 *script;
        struct {
            u16 item;
            u16 hiddenItemId;
        } hiddenItem;
        u32 secretBaseId;
    } bgUnion;
};

struct MapEvents
{
    u8 objectEventCount;
    u8 warpCount;
    u8 coordEventCount;
    u8 bgEventCount;
    struct ObjectEventTemplate *objectEvents;
    struct WarpEvent *warps;
    struct CoordEvent *coordEvents;
    struct BgEvent *bgEvents;
};

struct MapConnection
{
    u8 direction;
    u32 offset;
    u8 mapGroup;
    u8 mapNum;
};

struct MapConnections
{
    s32 count;
    struct MapConnection *connections;
};

struct MapHeader
{
               const struct MapLayout *mapLayout;
               const struct MapEvents *events;
               const u8 *mapScripts;
               const struct MapConnections *connections;
               u16 music;
               u16 mapLayoutId;
               u8 regionMapSectionId;
               u8 cave;
               u8 weather;
               u8 mapType;
               u8 filler_18[2];
               u8 flags;
               u8 battleType;
};
# 156 "include/global.fieldmap.h"
struct ObjectEvent
{
             u32 active:1;
             u32 singleMovementActive:1;
             u32 triggerGroundEffectsOnMove:1;
             u32 triggerGroundEffectsOnStop:1;
             u32 disableCoveringGroundEffects:1;
             u32 landingJump:1;
             u32 heldMovementActive:1;
             u32 heldMovementFinished:1;
             u32 frozen:1;
             u32 facingDirectionLocked:1;
             u32 disableAnim:1;
             u32 enableAnim:1;
             u32 inanimate:1;
             u32 invisible:1;
             u32 offScreen:1;
             u32 trackedByCamera:1;
             u32 isPlayer:1;
             u32 hasReflection:1;
             u32 inShortGrass:1;
             u32 inShallowFlowingWater:1;
             u32 inSandPile:1;
             u32 inHotSprings:1;
             u32 hasShadow:1;
             u32 spriteAnimPausedBackup:1;
             u32 spriteAffineAnimPausedBackup:1;
             u32 disableJumpLandingGroundEffect:1;
             u32 fixedPriority:1;
             u32 hideReflection:1;
             u8 spriteId;
             u8 graphicsId;
             u8 movementType;
             u8 trainerType;
             u8 localId;
             u8 mapNum;
             u8 mapGroup;
             u8 currentElevation:4;
             u8 previousElevation:4;
             struct Coords16 initialCoords;
             struct Coords16 currentCoords;
             struct Coords16 previousCoords;
             u8 facingDirection:4;
             u8 movementDirection:4;
             union __attribute__((packed)) {
        u8 as_byte;
        struct __attribute__((packed)) {
            u8 x:4;
            u8 y:4;
        } __attribute__((aligned(1))) as_nybbles;
    } __attribute__((aligned(1))) range;
             u8 fieldEffectSpriteId;
             u8 warpArrowSpriteId;
             u8 movementActionId;
             u8 trainerRange_berryTreeId;
             u8 currentMetatileBehavior;
             u8 previousMetatileBehavior;
             u8 previousMovementDirection;
             u8 directionSequenceIndex;
             u8 playerCopyableMovement;

};

struct ObjectEventGraphicsInfo
{
             u16 tileTag;
             u16 paletteTag1;
             u16 paletteTag2;
             u16 size;
             s16 width;
             s16 height;
             u8 paletteSlot:4;
             u8 shadowSize:2;
             u8 inanimate:1;
             u8 disableReflectionPaletteLoad:1;
             u8 tracks;
             const struct OamData *oam;
             const struct SubspriteTable *subspriteTables;
             const union AnimCmd *const *anims;
             const struct SpriteFrameImage *images;
             const union AffineAnimCmd *const *affineAnims;
};

enum {
    PLAYER_AVATAR_STATE_NORMAL,
    PLAYER_AVATAR_STATE_MACH_BIKE,
    PLAYER_AVATAR_STATE_ACRO_BIKE,
    PLAYER_AVATAR_STATE_SURFING,
    PLAYER_AVATAR_STATE_UNDERWATER,
    PLAYER_AVATAR_STATE_FIELD_MOVE,
    PLAYER_AVATAR_STATE_FISHING,
    PLAYER_AVATAR_STATE_WATERING,
};
# 259 "include/global.fieldmap.h"
enum
{
    ACRO_BIKE_NORMAL,
    ACRO_BIKE_TURNING,
    ACRO_BIKE_WHEELIE_STANDING,
    ACRO_BIKE_BUNNY_HOP,
    ACRO_BIKE_WHEELIE_MOVING,
    ACRO_BIKE_STATE5,
    ACRO_BIKE_STATE6,
};

enum
{
    COLLISION_NONE,
    COLLISION_OUTSIDE_RANGE,
    COLLISION_IMPASSABLE,
    COLLISION_ELEVATION_MISMATCH,
    COLLISION_OBJECT_EVENT,
    COLLISION_STOP_SURFING,
    COLLISION_LEDGE_JUMP,
    COLLISION_PUSHED_BOULDER,
    COLLISION_ROTATING_GATE,
    COLLISION_WHEELIE_HOP,
    COLLISION_ISOLATED_VERTICAL_RAIL,
    COLLISION_ISOLATED_HORIZONTAL_RAIL,
    COLLISION_VERTICAL_RAIL,
    COLLISION_HORIZONTAL_RAIL,
};


enum
{
    NOT_MOVING,
    TURN_DIRECTION,
    MOVING,
};


enum
{
    T_NOT_MOVING,
    T_TILE_TRANSITION,
    T_TILE_CENTER,
};

struct PlayerAvatar
{
             u8 flags;
             u8 transitionFlags;
             u8 runningState;
             u8 tileTransitionState;
             u8 spriteId;
             u8 objectEventId;
             bool8 preventStep;
             u8 gender;
             u8 acroBikeState;
             u8 newDirBackup;
             u8 bikeFrameCounter;
             u8 bikeSpeed;

             u32 directionHistory;
             u32 abStartSelectHistory;

             u8 dirTimerHistory[8];
             u8 abStartSelectTimerHistory[8];
};

struct Camera
{
    bool8 active:1;
    s32 x;
    s32 y;
};

extern struct ObjectEvent gObjectEvents[16];
extern u8 gSelectedObjectEvent;
extern struct MapHeader gMapHeader;
extern struct PlayerAvatar gPlayerAvatar;
extern struct Camera gCamera;
# 513 "include/global.h" 2
# 1 "include/global.berry.h" 1






struct Berry
{
    const u8 name[6 + 1];
    u8 firmness;
    u16 size;
    u8 maxYield;
    u8 minYield;
    const u8 *description1;
    const u8 *description2;
    u8 stageDuration;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 smoothness;
};



struct Berry2
{
    u8 name[6 + 1];
    u8 firmness;
    u16 size;
    u8 maxYield;
    u8 minYield;
    u8 *description1;
    u8 *description2;
    u8 stageDuration;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 smoothness;
};

struct EnigmaBerry
{
    struct Berry2 berry;
    u8 itemEffect[18];
    u8 holdEffect;
    u8 holdEffectParam;
    u32 checksum;
};

struct BattleEnigmaBerry
{
             u8 name[6 + 1];
             u8 holdEffect;
             u8 itemEffect[18];
             u8 holdEffectParam;
};

struct BerryTree
{
    u8 berry;
    u8 stage:7;
    u8 growthSparkle:1;
    u16 minutesUntilNextStage;
    u8 berryYield;
    u8 regrowthCount:4;
    u8 watered1:1;
    u8 watered2:1;
    u8 watered3:1;
    u8 watered4:1;
};
# 514 "include/global.h" 2
# 1 "include/global.tv.h" 1



typedef union
{

    struct {
                 u8 kind;
                 bool8 active;
                 u8 pad02[26];
                 u8 srcTrainerId3Lo;
                 u8 srcTrainerId3Hi;
                 u8 srcTrainerId2Lo;
                 u8 srcTrainerId2Hi;
                 u8 srcTrainerIdLo;
                 u8 srcTrainerIdHi;
                 u8 trainerIdLo;
                 u8 trainerIdHi;
    } common;



    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u16 words[6];
                 u8 playerName[8];
                 u8 language;
    } fanclubLetter;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 var02;
                 u16 words[6];
                 u8 playerName[8];
                 u8 language;
    } recentHappenings;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u8 friendshipHighNybble:4;
                 u8 questionAsked:4;
                 u8 playerName[8];
                 u8 language;
                 u8 pokemonNameLanguage;
                 u8 filler_0F[1];
                 u8 nickname[8];
                 u16 words18[2];
                 u16 words[4];
    } fanclubOpinions;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 words[2];
                 u16 var06;
                 u8 pad_08[3];
                 u8 string_0b[12];
                 u8 language;
    } unkShow04;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u8 pokemonName[11];
                 u8 trainerName[11];
                 u8 random;
                 u8 random2;
                 u16 randomSpecies;
                 u8 language;
                 u8 pokemonNameLanguage;
    } nameRaterShow;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 species;
                 u16 words[2];
                 u8 pokemonNickname[11];
                 u8 contestCategory:3;
                 u8 contestRank:2;
                 u8 contestResult:2;
                 u16 move;
                 u8 playerName[8];
                 u8 language;
                 u8 pokemonNameLanguage;
    } bravoTrainer;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 trainerName[8];
                 u16 species;
                 u8 pokemonName[8];
                 u16 defeatedSpecies;
                 u16 numFights;
                 u16 words[1];
                 u8 btLevel;
                 u8 interviewResponse;
                 bool8 wonTheChallenge;
                 u8 language;
                 u8 pokemonNameLanguage;
    } bravoTrainerTower;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 winningSpecies;
                 u8 winningTrainerName[8];
                 u8 appealFlags2;
                 u8 round1Rank;
                 u8 round2Rank;
                 u8 appealFlags1;
                 u16 move;
                 u16 species;
                 u8 playerName[8];
                 u8 category;
                 u8 language;
                 u8 winningTrainerLanguage;
    } contestLiveUpdates;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 sheen;
                 u8 flavor:3;
                 u8 unk_03_3:2;
                 u8 worstBlenderName[8];
                 u8 playerName[8];
                 u8 language;
                 u8 worstBlenderLanguage;
    } threeCheers;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 speciesOpponent;
                 u8 playerName[8];
                 u8 linkOpponentName[8];
                 u16 move;
                 u16 speciesPlayer;
                 u8 battleType;
                 u8 language;
                 u8 linkOpponentLanguage;
    } battleUpdate;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 playerName[8];
                 u8 idLo;
                 u8 idHi;
                 u8 idolName[8];
                 u16 words[1];
                 u8 score;
                 u8 language;
                 u8 idolNameLanguage;
    } fanClubSpecial;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 playerName[8];
                 u8 contestCategory;
                 u8 nickname[11];
                 u8 pokeblockState;
                 u8 language;
                 u8 pokemonNameLanguage;
    } contestLiveUpdates2;



    struct {
                 u8 kind;
                 bool8 active;
                 u8 language;
                 u8 language2;
                 u8 nickname[11];
                 u8 ball;
                 u16 species;
                 u8 nBallsUsed;
                 u8 playerName[8];
    } pokemonToday;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 priceReduced;
                 u8 language;
                 u8 pad04[2];
                 u16 itemIds[3];
                 u16 itemAmounts[3];
                 u8 shopLocation;
                 u8 playerName[8];
    } smartshopperShow;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 language;
                 u8 pad03[9];
                 u16 species;
                 u16 species2;
                 u8 nBallsUsed;
                 u8 outcome;
                 u8 location;
                 u8 playerName[8];
    } pokemonTodayFailed;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 nBites;
                 u8 nFails;
                 u16 species;
                 u8 language;
                 u8 pad07[12];
                 u8 playerName[8];
    } pokemonAngler;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 numPokeCaught;
                 u16 caughtPoke;
                 u16 steps;
                 u16 species;
                 u8 location;
                 u8 language;
                 u8 pad0c[7];
                 u8 playerName[8];
    } worldOfMasters;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 dexCount;
                 u8 badgeCount;
                 u8 nSilverSymbols;
                 u8 nGoldSymbols;
                 u8 location;
                 u16 battlePoints;
                 u16 mapLayoutId;
                 u8 language;
                 u8 filler_0d[6];
                 u8 playerName[8];
    } rivalTrainer;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 filler_02[2];
                 u16 words[2];
                 u8 gender;
                 u8 language;
                 u8 filler_0a[9];
                 u8 playerName[8];
    } trendWatcher;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 item;
                 u8 location;
                 u8 language;
                 u16 mapLayoutId;
                 u8 filler_08[11];
                 u8 playerName[8];
    } treasureInvestigators;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 won;
                 u8 whichGame;
                 u16 nCoins;
                 u8 filler_06[2];
                 u8 language;
                 u8 filler_09[10];
                 u8 playerName[8];
    } findThatGamer;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 lastOpponentSpecies;
                 u8 location;
                 u8 outcome;
                 u16 caughtMonBall;
                 u16 balls;
                 u16 poke1Species;
                 u16 lastUsedMove;
                 u8 language;
                 u8 filler_0f[4];
                 u8 playerName[8];
    } breakingNews;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 avgLevel;
                 u8 nDecorations;
                 u8 decorations[4];
                 u16 species;
                 u16 move;
                 u8 language;
                 u8 filler_0d[6];
                 u8 playerName[8];
    } secretBaseVisit;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 item;
                 u8 whichPrize;
                 u8 language;
                 u8 filler_06[13];
                 u8 playerName[8];
    } lottoWinner;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 move;
                 u16 foeSpecies;
                 u16 species;
                 u16 otherMoves[3];
                 u16 betterMove;
                 u8 nOtherMoves;
                 u8 language;
                 u8 filler_12[1];
                 u8 playerName[8];
    } battleSeminar;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 filler_02[2];
                 u16 words[2];
                 u8 language;
                 u8 filler_09[10];
                 u8 playerName[8];
    } trainerFanClub;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 nRibbons;
                 u8 selectedRibbon;
                 u8 nickname[11];
                 u8 language;
                 u8 pokemonNameLanguage;
                 u8 filler_12[2];
                 u8 playerName[8];
    } cuties;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 winStreak;
                 u16 species1;
                 u16 species2;
                 u16 species3;
                 u16 species4;
                 u8 language;
                 u8 facility;
                 u8 filler_0e[5];
                 u8 playerName[8];
    } frontier;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 count;
                 u8 actionIdx;
                 u8 language;
                 u8 filler_06[13];
                 u8 playerName[8];
    } numberOne;


    struct {
                 u8 kind;
                 bool8 active;
                 u16 stepsInBase;
                 u8 baseOwnersName[8];
                 u32 flags;
                 u16 item;
                 u8 savedState;
                 u8 playerName[8];
                 u8 language;
                 u8 baseOwnersNameLanguage;
    } secretBaseSecrets;


    struct {
                 u8 kind;
                 bool8 active;
                 u8 nMonsCaught;
                 u8 nPkblkUsed;
                 u8 language;
                 u8 filler_05[14];
                 u8 playerName[8];
    } safariFanClub;



    struct {
                 u8 kind;
                 bool8 active;
                 u8 var02;
                 u8 var03;
                 u16 moves[4];
                 u16 species;
                 u16 var0E;
                 u8 locationMapNum;
                 u8 locationMapGroup;
                 u8 var12;
                 u8 probability;
                 u8 level;
                 u8 var15;
                 u16 daysLeft;
                 u8 language;
    } massOutbreak;
} TVShow;

typedef struct
{
    u8 kind;
    u8 state;
    u16 days;
} PokeNews;

struct GabbyAndTyData
{
             u16 mon1;
             u16 mon2;
             u16 lastMove;
             u16 quote[1];
             u8 mapnum;
             u8 battleNum;
             u8 battleTookMoreThanOneTurn:1;
             u8 playerLostAMon:1;
             u8 playerUsedHealingItem:1;
             u8 playerThrewABall:1;
             u8 onAir:1;
             u8 valA_5:3;
             u8 battleTookMoreThanOneTurn2:1;
             u8 playerLostAMon2:1;
             u8 playerUsedHealingItem2:1;
             u8 playerThrewABall2:1;
             u8 valB_4:4;
};
# 515 "include/global.h" 2
# 1 "include/pokemon.h" 1



# 1 "include/constants/pokemon.h" 1
# 5 "include/pokemon.h" 2
# 1 "gflib/sprite.h" 1






struct SpriteSheet
{
    const void *data;
    u16 size;
    u16 tag;
};

struct CompressedSpriteSheet
{
    const u32 *data;
    u16 size;
    u16 tag;
};

struct SpriteFrameImage
{
    const void *data;
    u16 size;
};





struct SpritePalette
{
    const u16 *data;
    u16 tag;
};

struct CompressedSpritePalette
{
    const u32 *data;
    u16 tag;
};

struct AnimFrameCmd
{


    u32 imageValue:16;

    u32 duration:6;
    u32 hFlip:1;
    u32 vFlip:1;
};

struct AnimLoopCmd
{
    u32 type:16;
    u32 count:6;
};

struct AnimJumpCmd
{
    u32 type:16;
    u32 target:6;
};




union AnimCmd
{
    s16 type;
    struct AnimFrameCmd frame;
    struct AnimLoopCmd loop;
    struct AnimJumpCmd jump;
};
# 86 "gflib/sprite.h"
struct AffineAnimFrameCmd
{
    s16 xScale;
    s16 yScale;
    u8 rotation;
    u8 duration;
};

struct AffineAnimLoopCmd
{
    s16 type;
    s16 count;
};

struct AffineAnimJumpCmd
{
    s16 type;
    u16 target;
};

struct AffineAnimEndCmdAlt
{
    s16 type;
    u16 val;
};

union AffineAnimCmd
{
    s16 type;
    struct AffineAnimFrameCmd frame;
    struct AffineAnimLoopCmd loop;
    struct AffineAnimJumpCmd jump;
    struct AffineAnimEndCmdAlt end;
};
# 136 "gflib/sprite.h"
struct AffineAnimState
{
    u8 animNum;
    u8 animCmdIndex;
    u8 delayCounter;
    u8 loopCounter;
    s16 xScale;
    s16 yScale;
    u16 rotation;
};

enum
{
    SUBSPRITES_OFF,
    SUBSPRITES_ON,
    SUBSPRITES_IGNORE_PRIORITY,
};

struct Subsprite
{
    s8 x;
    s8 y;
    u16 shape:2;
    u16 size:2;
    u16 tileOffset:10;
    u16 priority:2;
};

struct SubspriteTable
{
    u8 subspriteCount;
    const struct Subsprite *subsprites;
};

struct Sprite;

typedef void (*SpriteCallback)(struct Sprite *);

struct SpriteTemplate
{
    u16 tileTag;
    u16 paletteTag;
    const struct OamData *oam;
    const union AnimCmd *const *anims;
    const struct SpriteFrameImage *images;
    const union AffineAnimCmd *const *affineAnims;
    SpriteCallback callback;
};





struct Sprite
{
             struct OamData oam;
             const union AnimCmd *const *anims;
             const struct SpriteFrameImage *images;
             const union AffineAnimCmd *const *affineAnims;
             const struct SpriteTemplate *template;
             const struct SubspriteTable *subspriteTables;
             SpriteCallback callback;

             struct Coords16 pos1;
             struct Coords16 pos2;
             s8 centerToCornerVecX;
             s8 centerToCornerVecY;

             u8 animNum;
             u8 animCmdIndex;
             u8 animDelayCounter:6;
             bool8 animPaused:1;
             bool8 affineAnimPaused:1;
             u8 animLoopCounter;


             s16 data[8];

             bool16 inUse:1;
             bool16 coordOffsetEnabled:1;
             bool16 invisible:1;
             bool16 flags_3:1;
             bool16 flags_4:1;
             bool16 flags_5:1;
             bool16 flags_6:1;
             bool16 flags_7:1;
             bool16 hFlip:1;
             bool16 vFlip:1;
             bool16 animBeginning:1;
             bool16 affineAnimBeginning:1;
             bool16 animEnded:1;
             bool16 affineAnimEnded:1;
             bool16 usingSheet:1;
             bool16 flags_f:1;

             u16 sheetTileStart;

             u8 subspriteTableNum:6;
             u8 subspriteMode:2;

             u8 subpriority;
};

struct OamMatrix
{
    s16 a;
    s16 b;
    s16 c;
    s16 d;
};

extern const struct OamData gDummyOamData;
extern const union AnimCmd *const gDummySpriteAnimTable[];
extern const union AffineAnimCmd *const gDummySpriteAffineAnimTable[];
extern const struct SpriteTemplate gDummySpriteTemplate;

extern u8 gReservedSpritePaletteCount;
extern struct Sprite gSprites[];
extern u8 gOamLimit;
extern u16 gReservedSpriteTileCount;
extern s16 gSpriteCoordOffsetX;
extern s16 gSpriteCoordOffsetY;
extern struct OamMatrix gOamMatrices[];
extern bool8 gAffineAnimsDisabled;

void ResetSpriteData(void);
void AnimateSprites(void);
void BuildOamBuffer(void);
u8 CreateSprite(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
u8 CreateSpriteAtEnd(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
u8 CreateInvisibleSprite(void (*callback)(struct Sprite *));
u8 CreateSpriteAndAnimate(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
void DestroySprite(struct Sprite *sprite);
void ResetOamRange(u8 a, u8 b);
void LoadOam(void);
void SetOamMatrix(u8 matrixNum, u16 a, u16 b, u16 c, u16 d);
void CalcCenterToCornerVec(struct Sprite *sprite, u8 shape, u8 size, u8 affineMode);
void SpriteCallbackDummy(struct Sprite *sprite);
void ProcessSpriteCopyRequests(void);
void RequestSpriteCopy(const u8 *src, u8 *dest, u16 size);
void FreeSpriteTiles(struct Sprite *sprite);
void FreeSpritePalette(struct Sprite *sprite);
void FreeSpriteOamMatrix(struct Sprite *sprite);
void DestroySpriteAndFreeResources(struct Sprite *sprite);
void sub_800142C(u32 a1, u32 a2, u16 *a3, u16 a4, u32 a5);
void AnimateSprite(struct Sprite *sprite);
void sub_8007E18(struct Sprite* sprite, s16 a2, s16 a3);
void StartSpriteAnim(struct Sprite *sprite, u8 animNum);
void StartSpriteAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void SeekSpriteAnim(struct Sprite *sprite, u8 animCmdIndex);
void StartSpriteAffineAnim(struct Sprite *sprite, u8 animNum);
void StartSpriteAffineAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void ChangeSpriteAffineAnim(struct Sprite *sprite, u8 animNum);
void ChangeSpriteAffineAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void SetSpriteSheetFrameTileNum(struct Sprite *sprite);
u8 AllocOamMatrix(void);
void FreeOamMatrix(u8 matrixNum);
void InitSpriteAffineAnim(struct Sprite *sprite);
void SetOamMatrixRotationScaling(u8 matrixNum, s16 xScale, s16 yScale, u16 rotation);
u16 LoadSpriteSheet(const struct SpriteSheet *sheet);
void LoadSpriteSheets(const struct SpriteSheet *sheets);
u16 AllocTilesForSpriteSheet(struct SpriteSheet *sheet);
void AllocTilesForSpriteSheets(struct SpriteSheet *sheets);
void LoadTilesForSpriteSheet(const struct SpriteSheet *sheet);
void LoadTilesForSpriteSheets(struct SpriteSheet *sheets);
void FreeSpriteTilesByTag(u16 tag);
void FreeSpriteTileRanges(void);
u16 GetSpriteTileStartByTag(u16 tag);
u16 GetSpriteTileTagByTileStart(u16 start);
void RequestSpriteSheetCopy(const struct SpriteSheet *sheet);
u16 LoadSpriteSheetDeferred(const struct SpriteSheet *sheet);
void FreeAllSpritePalettes(void);
u8 LoadSpritePalette(const struct SpritePalette *palette);
void LoadSpritePalettes(const struct SpritePalette *palettes);
u8 AllocSpritePalette(u16 tag);
u8 IndexOfSpritePaletteTag(u16 tag);
u16 GetSpritePaletteTagByPaletteNum(u8 paletteNum);
void FreeSpritePaletteByTag(u16 tag);
void SetSubspriteTables(struct Sprite *sprite, const struct SubspriteTable *subspriteTables);
bool8 AddSpriteToOamBuffer(struct Sprite *object, u8 *oamIndex);
bool8 AddSubspritesToOamBuffer(struct Sprite *sprite, struct OamData *destOam, u8 *oamIndex);
void CopyToSprites(u8 *src);
void CopyFromSprites(u8 *dest);
u8 SpriteTileAllocBitmapOp(u16 bit, u8 op);
void ClearSpriteCopyRequests(void);
void ResetAffineAnimData(void);
# 6 "include/pokemon.h" 2

struct PokemonSubstruct0
{
    u16 species;
    u16 heldItem;
    u32 experience;
    u8 ppBonuses;
    u8 friendship;
};

struct PokemonSubstruct1
{
    u16 moves[4];
    u8 pp[4];
};

struct PokemonSubstruct2
{
    u8 hpEV;
    u8 attackEV;
    u8 defenseEV;
    u8 speedEV;
    u8 spAttackEV;
    u8 spDefenseEV;
    u8 cool;
    u8 beauty;
    u8 cute;
    u8 smart;
    u8 tough;
    u8 sheen;
};

struct PokemonSubstruct3
{
            u8 pokerus;
            u8 metLocation;

            u16 metLevel:7;
            u16 metGame:4;
            u16 pokeball:4;
            u16 otGender:1;

            u32 hpIV:5;
            u32 attackIV:5;
            u32 defenseIV:5;
            u32 speedIV:5;
            u32 spAttackIV:5;
            u32 spDefenseIV:5;
            u32 isEgg:1;
            u32 abilityNum:1;

            u32 coolRibbon:3;
            u32 beautyRibbon:3;
            u32 cuteRibbon:3;
            u32 smartRibbon:3;
            u32 toughRibbon:3;
            u32 championRibbon:1;
            u32 winningRibbon:1;
            u32 victoryRibbon:1;
            u32 artistRibbon:1;
            u32 effortRibbon:1;
            u32 giftRibbon1:1;
            u32 giftRibbon2:1;
            u32 giftRibbon3:1;
            u32 giftRibbon4:1;
            u32 giftRibbon5:1;
            u32 giftRibbon6:1;
            u32 giftRibbon7:1;
            u32 fatefulEncounter:4;
            u32 obedient:1;
};

union PokemonSubstruct
{
    struct PokemonSubstruct0 type0;
    struct PokemonSubstruct1 type1;
    struct PokemonSubstruct2 type2;
    struct PokemonSubstruct3 type3;
    u16 raw[6];
};

struct BoxPokemon
{
    u32 personality;
    u32 otId;
    u8 nickname[10];
    u8 language;
    u8 isBadEgg:1;
    u8 hasSpecies:1;
    u8 isEgg:1;
    u8 unused:5;
    u8 otName[7];
    u8 markings;
    u16 checksum;
    u16 unknown;

    union
    {
        u32 raw[12];
        union PokemonSubstruct substructs[4];
    } secure;
};

struct Pokemon
{
    struct BoxPokemon box;
    u32 status;
    u8 level;
    u8 mail;
    u16 hp;
    u16 maxHP;
    u16 attack;
    u16 defense;
    u16 speed;
    u16 spAttack;
    u16 spDefense;
};

struct Unknown_806F160_Struct
{
    u8 field_0_0:4;
    u8 field_0_1:4;
    u8 field_1;
    u8 magic;
    u8 field_3_0:4;
    u8 field_3_1:4;
    void *bytes;
    u8 **byteArrays;
    struct SpriteTemplate *templates;
    struct SpriteFrameImage *frameImages;
};

struct BattlePokemon
{
             u16 species;
             u16 attack;
             u16 defense;
             u16 speed;
             u16 spAttack;
             u16 spDefense;
             u16 moves[4];
             u32 hpIV:5;
             u32 attackIV:5;
             u32 defenseIV:5;
             u32 speedIV:5;
             u32 spAttackIV:5;
             u32 spDefenseIV:5;
             u32 isEgg:1;
             u32 abilityNum:1;
             s8 statStages[6 + 2];
             u8 ability;
             u8 type1;
             u8 type2;
             u8 unknown;
             u8 pp[4];
             u16 hp;
             u8 level;
             u8 friendship;
             u16 maxHP;
             u16 item;
             u8 nickname[10 + 1];
             u8 ppBonuses;
             u8 otName[7 + 1];
             u32 experience;
             u32 personality;
             u32 status1;
             u32 status2;
             u32 otId;
};

struct BaseStats
{
            u8 baseHP;
            u8 baseAttack;
            u8 baseDefense;
            u8 baseSpeed;
            u8 baseSpAttack;
            u8 baseSpDefense;
            u8 type1;
            u8 type2;
            u8 catchRate;
            u8 expYield;
            u16 evYield_HP:2;
            u16 evYield_Attack:2;
            u16 evYield_Defense:2;
            u16 evYield_Speed:2;
            u16 evYield_SpAttack:2;
            u16 evYield_SpDefense:2;
            u16 item1;
            u16 item2;
            u8 genderRatio;
            u8 eggCycles;
            u8 friendship;
            u8 growthRate;
            u8 eggGroup1;
            u8 eggGroup2;
            u8 abilities[2];
            u8 safariZoneFleeRate;
            u8 bodyColor : 7;
            u8 noFlip : 1;
};





struct BattleMove
{
    u8 effect;
    u8 power;
    u8 type;
    u8 accuracy;
    u8 pp;
    u8 secondaryEffectChance;
    u8 target;
    s8 priority;
    u8 flags;
    u8 physicality;
};

struct SpindaSpot
{
    u8 x, y;
    u16 image[16];
};

struct __attribute__((packed)) LevelUpMove
{
    u16 move:9;
    u16 level:7;
};

struct Evolution
{
    u16 method;
    u16 param;
    u16 targetSpecies;
};

extern u8 gPlayerPartyCount;
extern struct Pokemon gPlayerParty[6];
extern u8 gEnemyPartyCount;
extern struct Pokemon gEnemyParty[6];
extern struct SpriteTemplate gMultiuseSpriteTemplate;

extern const struct BattleMove gBattleMoves[];
extern const u8 gFacilityClassToPicIndex[];
extern const u8 gFacilityClassToTrainerClass[];
extern const struct BaseStats gBaseStats[];
extern const u8 *const gItemEffectTable[];
extern const struct Evolution gEvolutionTable[][5];
extern const u32 gExperienceTables[][100 + 1];
extern const u16 *const gLevelUpLearnsets[];
extern const u8 gPPUpGetMask[];
extern const u8 gPPUpSetMask[];
extern const u8 gPPUpAddMask[];
extern const u8 gStatStageRatios[][2];
extern const u16 gLinkPlayerFacilityClasses[];
extern const struct SpriteTemplate gUnknown_08329D98[];
extern const s8 gNatureStatTable[][5];

void ZeroBoxMonData(struct BoxPokemon *boxMon);
void ZeroMonData(struct Pokemon *mon);
void ZeroPlayerPartyMons(void);
void ZeroEnemyPartyMons(void);
void CreateMon(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId);
void CreateBoxMon(struct BoxPokemon *boxMon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId);
void CreateMonWithNature(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 nature);
void CreateMonWithGenderNatureLetter(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 gender, u8 nature, u8 unownLetter);
void CreateMaleMon(struct Pokemon *mon, u16 species, u8 level);
void CreateMonWithIVsPersonality(struct Pokemon *mon, u16 species, u8 level, u32 ivs, u32 personality);
void CreateMonWithIVsOTID(struct Pokemon *mon, u16 species, u8 level, u8 *ivs, u32 otId);
void CreateMonWithEVSpread(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 evSpread);
void CreateBattleTowerMon(struct Pokemon *mon, struct BattleTowerPokemon *src);
void CreateBattleTowerMon2(struct Pokemon *mon, struct BattleTowerPokemon *src, bool8 lvl50);
void CreateApprenticeMon(struct Pokemon *mon, const struct Apprentice *src, u8 monId);
void CreateMonWithEVSpreadNatureOTID(struct Pokemon *mon, u16 species, u8 level, u8 nature, u8 fixedIV, u8 evSpread, u32 otId);
void sub_80686FC(struct Pokemon *mon, struct BattleTowerPokemon *dest);
void CreateObedientMon(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId);
bool8 sub_80688F8(u8 caseId, u8 battlerId);
void SetDeoxysStats(void);
u16 sub_8068B48(void);
u16 sub_8068BB0(void);
void CreateObedientEnemyMon(void);
void CalculateMonStats(struct Pokemon *mon);
void BoxMonToMon(const struct BoxPokemon *src, struct Pokemon *dest);
u8 GetLevelFromMonExp(struct Pokemon *mon);
u8 GetLevelFromBoxMonExp(struct BoxPokemon *boxMon);
u16 GiveMoveToMon(struct Pokemon *mon, u16 move);
u16 GiveMoveToBattleMon(struct BattlePokemon *mon, u16 move);
void SetMonMoveSlot(struct Pokemon *mon, u16 move, u8 slot);
void SetBattleMonMoveSlot(struct BattlePokemon *mon, u16 move, u8 slot);
void GiveMonInitialMoveset(struct Pokemon *mon);
void GiveBoxMonInitialMoveset(struct BoxPokemon *boxMon);
u16 MonTryLearningNewMove(struct Pokemon *mon, bool8 firstMove);
void DeleteFirstMoveAndGiveMoveToMon(struct Pokemon *mon, u16 move);
void DeleteFirstMoveAndGiveMoveToBoxMon(struct BoxPokemon *boxMon, u16 move);
s32 CalculateBaseDamage(struct BattlePokemon *attacker, struct BattlePokemon *defender, u32 move, u16 sideStatus, u16 powerOverride, u8 typeOverride, u8 bankAtk, u8 bankDef);

u8 CountAliveMonsInBattle(u8 caseId);




u8 GetDefaultMoveTarget(u8 battlerId);
u8 GetMonGender(struct Pokemon *mon);
u8 GetBoxMonGender(struct BoxPokemon *boxMon);
u8 GetGenderFromSpeciesAndPersonality(u16 species, u32 personality);
void SetMultiuseSpriteTemplateToPokemon(u16 speciesTag, u8 battlerPosition);
void SetMultiuseSpriteTemplateToTrainerBack(u16 trainerSpriteId, u8 battlerPosition);
void SetMultiuseSpriteTemplateToTrainerFront(u16 arg0, u8 battlerPosition);





u32 GetMonData();
u32 GetBoxMonData();

void SetMonData(struct Pokemon *mon, s32 field, const void *dataArg);
void SetBoxMonData(struct BoxPokemon *boxMon, s32 field, const void *dataArg);
void CopyMon(void *dest, void *src, size_t size);
u8 GiveMonToPlayer(struct Pokemon *mon);
u8 SendMonToPC(struct Pokemon* mon);
u8 CalculatePlayerPartyCount(void);
u8 CalculateEnemyPartyCount(void);
u8 GetMonsStateToDoubles(void);
u8 GetMonsStateToDoubles_2(void);
u8 GetAbilityBySpecies(u16 species, u8 abilityNum);
u8 GetMonAbility(struct Pokemon *mon);
void CreateSecretBaseEnemyParty(struct SecretBase *secretBaseRecord);
u8 GetSecretBaseTrainerPicIndex(void);
u8 GetSecretBaseTrainerClass(void);
bool8 IsPlayerPartyAndPokemonStorageFull(void);
bool8 IsPokemonStorageFull(void);
void GetSpeciesName(u8 *name, u16 species);
u8 CalculatePPWithBonus(u16 move, u8 ppBonuses, u8 moveIndex);
void RemoveMonPPBonus(struct Pokemon *mon, u8 moveIndex);
void RemoveBattleMonPPBonus(struct BattlePokemon *mon, u8 moveIndex);
void CopyPlayerPartyMonToBattleData(u8 battlerId, u8 partyIndex);
bool8 ExecuteTableBasedItemEffect(struct Pokemon *mon, u16 item, u8 partyIndex, u8 moveIndex);
bool8 PokemonUseItemEffects(struct Pokemon *mon, u16 item, u8 partyIndex, u8 moveIndex, u8 e);
bool8 HealStatusConditions(struct Pokemon *mon, u32 battlePartyId, u32 healMask, u8 battlerId);
u8 GetItemEffectParamOffset(u16 itemId, u8 effectByte, u8 effectBit);
u8 *UseStatIncreaseItem(u16 itemId);
u8 GetNature(struct Pokemon *mon);
u8 GetNatureFromPersonality(u32 personality);
u16 GetEvolutionTargetSpecies(struct Pokemon *mon, u8 type, u16 evolutionItem);
u16 HoennPokedexNumToSpecies(u16 hoennNum);
u16 NationalPokedexNumToSpecies(u16 nationalNum);
u16 NationalToHoennOrder(u16 nationalNum);
u16 SpeciesToNationalPokedexNum(u16 species);
u16 SpeciesToHoennPokedexNum(u16 species);
u16 HoennToNationalOrder(u16 hoennNum);
u16 SpeciesToCryId(u16 species);
void sub_806D544(u16 species, u32 personality, u8 *dest);
void DrawSpindaSpots(u16 species, u32 personality, u8 *dest, u8 a4);
void EvolutionRenameMon(struct Pokemon *mon, u16 oldSpecies, u16 newSpecies);
u8 GetPlayerFlankId(void);
u16 GetLinkTrainerFlankId(u8 id);
s32 GetBattlerMultiplayerId(u16 a1);
u8 GetTrainerEncounterMusicId(u16 trainerOpponentId);
u16 ModifyStatByNature(u8 nature, u16 n, u8 statIndex);
void AdjustFriendship(struct Pokemon *mon, u8 event);
void MonGainEVs(struct Pokemon *mon, u16 defeatedSpecies);
u16 GetMonEVCount(struct Pokemon *mon);
void RandomlyGivePartyPokerus(struct Pokemon *party);
u8 CheckPartyPokerus(struct Pokemon *party, u8 selection);
u8 CheckPartyHasHadPokerus(struct Pokemon *party, u8 selection);
void UpdatePartyPokerusTime(u16 days);
void PartySpreadPokerus(struct Pokemon *party);
bool8 TryIncrementMonLevel(struct Pokemon *mon);
u32 CanMonLearnTMHM(struct Pokemon *mon, u8 tm);
u32 CanSpeciesLearnTMHM(u16 species, u8 tm);
u8 GetMoveRelearnerMoves(struct Pokemon *mon, u16 *moves);
u8 GetLevelUpMovesBySpecies(u16 species, u16 *moves);
u8 GetNumberOfRelearnableMoves(struct Pokemon *mon);
u16 SpeciesToPokedexNum(u16 species);
bool32 IsSpeciesInHoennDex(u16 species);
void ClearBattleMonForms(void);
u16 GetBattleBGM(void);
void PlayBattleBGM(void);
void PlayMapChosenOrBattleBGM(u16 songId);
void sub_806E694(u16 songId);
const u32 *GetMonFrontSpritePal(struct Pokemon *mon);
const u32 *GetMonSpritePalFromSpeciesAndPersonality(u16 species, u32 otId, u32 personality);
const struct CompressedSpritePalette *GetMonSpritePalStruct(struct Pokemon *mon);
const struct CompressedSpritePalette *GetMonSpritePalStructFromOtIdPersonality(u16 species, u32 otId , u32 personality);
bool32 IsHMMove2(u16 move);
bool8 IsMonSpriteNotFlipped(u16 species);
s8 GetMonFlavorRelation(struct Pokemon *mon, u8 flavor);
s8 GetFlavorRelationByPersonality(u32 personality, u8 flavor);
bool8 IsTradedMon(struct Pokemon *mon);
bool8 IsOtherTrainer(u32 otId, u8 *otName);
void MonRestorePP(struct Pokemon *mon);
void BoxMonRestorePP(struct BoxPokemon *boxMon);
void SetMonPreventsSwitchingString(void);
void SetWildMonHeldItem(void);
bool8 IsMonShiny(struct Pokemon *mon);
bool8 IsShinyOtIdPersonality(u32 otId, u32 personality);
const u8 *GetTrainerPartnerName(void);
void BattleAnimateFrontSprite(struct Sprite* sprite, u16 species, bool8 noCry, u8 arg3);
void DoMonFrontSpriteAnimation(struct Sprite* sprite, u16 species, bool8 noCry, u8 arg3);
void PokemonSummaryDoMonAnimation(struct Sprite* sprite, u16 species, bool8 oneFrame);
void StopPokemonAnimationDelayTask(void);
void BattleAnimateBackSprite(struct Sprite* sprite, u16 species);
u8 sub_806EF08(u8 arg0);
u8 sub_806EF84(u8 arg0, u8 arg1);
u16 sub_806EFF0(u16 arg0);
u16 FacilityClassToPicIndex(u16 facilityClass);
u16 PlayerGenderToFrontTrainerPicId(u8 playerGender);
void HandleSetPokedexFlag(u16 nationalNum, u8 caseId, u32 personality);
const u8 *GetTrainerClassNameFromId(u16 trainerId);
const u8 *GetTrainerNameFromId(u16 trainerId);
bool8 HasTwoFramesAnimation(u16 species);
struct Unknown_806F160_Struct *sub_806F2AC(u8 id, u8 arg1);
void sub_806F47C(u8 id);
u8 *sub_806F4F8(u8 id, u8 arg1);
# 516 "include/global.h" 2

struct WarpData
{
    s8 mapGroup;
    s8 mapNum;
    s8 warpId;
    s16 x, y;
};

struct ItemSlot
{
    u16 itemId;
    u16 quantity;
};

struct Pokeblock
{
    u8 color;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 feel;
};

struct Roamer
{
             u32 ivs;
             u32 personality;
             u16 species;
             u16 hp;
             u8 level;
             u8 status;
             u8 cool;
             u8 beauty;
             u8 cute;
             u8 smart;
             u8 tough;
             bool8 active;
             u8 filler[0x8];
};

struct RamScriptData
{
    u8 magic;
    u8 mapGroup;
    u8 mapNum;
    u8 objectId;
    u8 script[995];
};

struct RamScript
{
    u32 checksum;
    struct RamScriptData data;
};

struct EasyChatPair
{
    u16 unk0_0:7;
    u16 unk0_7:7;
    u16 unk1_6:1;
    u16 unk2;
    u16 words[2];
};

struct MailStruct
{
             u16 words[9];
             u8 playerName[7 + 1];
             u8 trainerId[4];
             u16 species;
             u16 itemId;
};

struct MauvilleManCommon
{
    u8 id;
};

struct MauvilleManBard
{
             u8 id;
             u16 songLyrics[6];
             u16 temporaryLyrics[6];
             u8 playerName[7 + 1];
             u8 filler_2DB6[0x3];
             u8 playerTrainerId[4];
             bool8 hasChangedSong;
             u8 language;
};

struct MauvilleManStoryteller
{
    u8 id;
    bool8 alreadyRecorded;
    u8 filler2[2];
    u8 gameStatIDs[4];
    u8 trainerNames[4][7];
    u8 statValues[4][4];
    u8 language[4];
};

struct MauvilleManGiddy
{
             u8 id;
             u8 taleCounter;
             u8 questionNum;
             u16 randomWords[10];
             u8 questionList[8];
             u8 language;
};

struct MauvilleManHipster
{
    u8 id;
    bool8 alreadySpoken;
    u8 language;
};

struct MauvilleOldManTrader
{
    u8 id;
    u8 decorations[4];
    u8 playerNames[4][11];
    u8 alreadyTraded;
    u8 language[4];
};

typedef union OldMan
{
    struct MauvilleManCommon common;
    struct MauvilleManBard bard;
    struct MauvilleManGiddy giddy;
    struct MauvilleManHipster hipster;
    struct MauvilleOldManTrader trader;
    struct MauvilleManStoryteller storyteller;
    u8 filler[0x40];
} OldMan;

struct RecordMixing_UnknownStructSub
{
    u32 unk0;
    u8 data[0x34];

};

struct RecordMixing_UnknownStruct
{
    struct RecordMixing_UnknownStructSub data[2];
    u32 unk70;
    u16 unk74[0x2];
};



struct LinkBattleRecord
{
    u8 name[7 + 1];
    u16 trainerId;
    u16 wins;
    u16 losses;
    u16 draws;
};

struct LinkBattleRecords
{
    struct LinkBattleRecord entries[5];
    u8 languages[5];
};

struct RecordMixingGiftData
{
    u8 unk0;
    u8 quantity;
    u16 itemId;
    u8 filler4[8];
};

struct RecordMixingGift
{
    int checksum;
    struct RecordMixingGiftData data;
};

struct ContestWinner
{
    u32 personality;
    u32 trainerId;
    u16 species;
    u8 contestCategory;
    u8 monName[10 + 1];
    u8 trainerName[7 + 1];
    u8 contestRank;
};

struct DayCareMail
{
    struct MailStruct message;
    u8 OT_name[7 + 1];
    u8 monName[10 + 1];
    u8 gameLanguage:4;
    u8 monLanguage:4;
};

struct DaycareMon
{
    struct BoxPokemon mon;
    struct DayCareMail mail;
    u32 steps;
};

struct DayCare
{
    struct DaycareMon mons[2];
    u32 offspringPersonality;
    u8 stepCounter;
};

struct RecordMixingDayCareMail
{
    struct DayCareMail mail[2];
    u32 numDaycareMons;
    bool16 holdsItem[2];
};

struct LilycoveLadyQuiz
{
              u8 id;
              u8 state;
              u16 question[9];
              u16 correctAnswer;
              u16 playerAnswer;
              u8 playerName[7 + 1];
              u16 playerTrainerId[4];
              u16 prize;
              bool8 waitingForChallenger;
              u8 questionId;
              u8 prevQuestionId;
              u8 language;
};

struct LilycoveLadyFavor
{
              u8 id;
              u8 state;
              bool8 likedItem;
              u8 numItemsGiven;
              u8 playerName[7 + 1];
              u8 favorId;
              u16 itemId;
              u16 bestItem;
              u8 language;
};

struct LilycoveLadyContest
{
              u8 id;
              bool8 givenPokeblock;
              u8 numGoodPokeblocksGiven;
              u8 numOtherPokeblocksGiven;
              u8 playerName[7 + 1];
              u8 maxSheen;
              u8 category;
              u8 language;
};

typedef union
{
    struct LilycoveLadyQuiz quiz;
    struct LilycoveLadyFavor favor;
    struct LilycoveLadyContest contest;
    u8 id;
    u8 pad[0x40];
} LilycoveLady;

struct WaldaPhrase
{
    u16 colors[2];
    u8 text[16];
    u8 iconId;
    u8 patternId;
    bool8 patternUnlocked;
};

struct TrainerNameRecord
{
    u32 trainerId;
    u8 trainerName[7 + 1];
};

struct SaveTrainerHill
{
               u32 timer;
               u32 bestTime;
               u8 unk_3D6C;
               u8 unused;
               u16 receivedPrize:1;
               u16 checkedFinalTime:1;
               u16 spokeToOwner:1;
               u16 hasLost:1;
               u16 maybeECardScanDuringChallenge:1;
               u16 field_3D6E_0f:1;
               u16 tag:2;
};

struct MysteryEventStruct
{
    u8 unk_0_0:2;
    u8 unk_0_2:3;
    u8 unk_0_5:3;
    u8 unk_1;
};

 struct WonderNews
{
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04[40];
    u8 unk_2C[10][40];
};

 struct WonderNewsSaveStruct
{
    u32 crc;
    struct WonderNews data;
};

 struct WonderCard
{
    u16 unk_00;
    u16 unk_02;
    u32 unk_04;
    u8 unk_08_0:2;
    u8 unk_08_2:4;
    u8 unk_08_6:2;
    u8 unk_09;
    u8 unk_0A[40];
    u8 unk_32[40];
    u8 unk_5A[4][40];
    u8 unk_FA[40];
    u8 unk_122[40];
};

 struct WonderCardSaveStruct
{
    u32 crc;
    struct WonderCard data;
};

 struct MEventBuffer_3430_Sub
{
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08[2][7];
};

 struct MEventBuffer_3430
{
    u32 crc;
    struct MEventBuffer_3430_Sub data;
};

 struct MEventBuffers
{
                     struct WonderNewsSaveStruct wonderNews;
                     struct WonderCardSaveStruct wonderCard;
                     struct MEventBuffer_3430 buffer_310;
                     u16 unk_338[4];
                     struct MysteryEventStruct unk_340;
                     u32 unk_344[2][5];
};

struct SaveBlock1
{
             struct Coords16 pos;
             struct WarpData location;
             struct WarpData continueGameWarp;
             struct WarpData dynamicWarp;
             struct WarpData lastHealLocation;
             struct WarpData escapeWarp;
             u16 savedMusic;
             u8 weather;
             u8 weatherCycleStage;
             u8 flashLevel;
             u16 mapLayoutId;
             u16 mapView[0x100];
              u8 playerPartyCount;
              struct Pokemon playerParty[6];
              u32 money;
              u16 coins;
              u16 registeredItem;
              struct ItemSlot pcItems[50];
              struct ItemSlot bagPocket_Items[30];
              struct ItemSlot bagPocket_KeyItems[30];
              struct ItemSlot bagPocket_PokeBalls[16];
              struct ItemSlot bagPocket_TMHM[64];
              struct ItemSlot bagPocket_Berries[46];
              struct Pokeblock pokeblocks[40];
              u8 seen1[((412 / 8) + ((412 % 8) ? 1 : 0))];
              u16 berryBlenderRecords[3];
              u8 field_9C2[6];
              u16 trainerRematchStepCounter;
              u8 trainerRematches[100];
              struct ObjectEvent objectEvents[16];
              struct ObjectEventTemplate objectEventTemplates[64];
               u8 flags[300];
               u16 vars[256];
               u32 gameStats[64];
               struct BerryTree berryTrees[128];
               struct SecretBase secretBases[20];
               u8 playerRoomDecorations[12];
               u8 playerRoomDecorationPositions[12];
               u8 decorationDesks[10];
               u8 decorationChairs[10];
               u8 decorationPlants[10];
               u8 decorationOrnaments[30];
               u8 decorationMats[30];
               u8 decorationPosters[10];
               u8 decorationDolls[40];
               u8 decorationCushions[10];
               u8 padding_27CA[2];
               TVShow tvShows[25];
               PokeNews pokeNews[16];
               u16 outbreakPokemonSpecies;
               u8 outbreakLocationMapNum;
               u8 outbreakLocationMapGroup;
               u8 outbreakPokemonLevel;
               u8 outbreakUnk1;
               u16 outbreakUnk2;
               u16 outbreakPokemonMoves[4];
               u8 outbreakUnk4;
               u8 outbreakPokemonProbability;
               u16 outbreakDaysLeft;
               struct GabbyAndTyData gabbyAndTyData;
               u16 easyChatProfile[6];
               u16 easyChatBattleStart[6];
               u16 easyChatBattleWon[6];
               u16 easyChatBattleLost[6];
               struct MailStruct mail[16];
               u8 additionalPhrases[8];
               OldMan oldMan;
               struct EasyChatPair easyChatPairs[5];
               struct ContestWinner contestWinners[13];
               struct DayCare daycare;
               struct LinkBattleRecords linkBattleRecords;
               u8 giftRibbons[52];
               struct Roamer roamer;
               struct EnigmaBerry enigmaBerry;
               struct MEventBuffers unk_322C;
               u8 field_3598[0x180];
               u32 trainerHillTimes[4];
               struct RamScript ramScript;
               struct RecordMixingGift recordMixingGift;
               u8 seen2[((412 / 8) + ((412 % 8) ? 1 : 0))];
               LilycoveLady lilycoveLady;
               struct TrainerNameRecord trainerNameRecords[20];
               u8 unk3C88[10][21];
               u8 filler3D5A[0xA];
               struct SaveTrainerHill trainerHill;
               struct WaldaPhrase waldaPhrase;

};

extern struct SaveBlock1* gSaveBlock1Ptr;

struct MapPosition
{
    s16 x;
    s16 y;
    s8 height;
};

struct TradeRoomPlayer
{
    u8 playerId;
    u8 isLocalPlayer;
    u8 c;
    u8 facing;
    struct MapPosition pos;
    u16 field_C;
};
# 2 "src/event_object_movement.c" 2
# 1 "gflib/malloc.h" 1
# 15 "gflib/malloc.h"
extern u8 gHeap[];

void *Alloc(u32 size);
void *AllocZeroed(u32 size);
void Free(void *pointer);
void InitHeap(void *pointer, u32 size);
# 3 "src/event_object_movement.c" 2
# 1 "include/battle_pyramid.h" 1



void CallBattlePyramidFunction(void);
u16 LocalIdToPyramidTrainerId(u8 localId);
bool8 GetBattlePyramidTrainerFlag(u8 eventId);
void MarkApproachingPyramidTrainersAsBattled(void);
void GenerateBattlePyramidWildMon(void);
u8 GetPyramidRunMultiplier(void);
u8 InBattlePyramid(void);
bool8 InBattlePyramid_(void);
void PausePyramidChallenge(void);
void SoftResetInBattlePyramid(void);
void CopyPyramidTrainerSpeechBefore(u16 trainerId);
void CopyPyramidTrainerWinSpeech(u16 trainerId);
void CopyPyramidTrainerLoseSpeech(u16 trainerId);
u8 GetBattlePyramindTrainerEncounterMusicId(u16 trainerId);
void GenerateBattlePyramidFloorLayout(u16 *mapArg, bool8 setPlayerPosition);
void LoadBattlePyramidObjectEventTemplates(void);
void LoadBattlePyramidFloorObjectEventScripts(void);
u8 GetNumBattlePyramidObjectEvents(void);
u16 GetBattlePyramidPickupItemId(void);
# 4 "src/event_object_movement.c" 2
# 1 "include/berry.h" 1



void ClearEnigmaBerries(void);
void SetEnigmaBerry(u8 *src);
bool32 IsEnigmaBerryValid(void);
const struct Berry *GetBerryInfo(u8 berry);
struct BerryTree *GetBerryTreeInfo(u8 id);
bool32 ObjectEventInteractionWaterBerryTree(void);
bool8 IsPlayerFacingEmptyBerryTreePatch(void);
bool8 TryToWaterBerryTree(void);
void ClearBerryTrees(void);
void BerryTreeTimeUpdate(s32 minutes);
void PlantBerryTree(u8 id, u8 berry, u8 stage, bool8 sparkle);
void RemoveBerryTree(u8 id);
u8 GetBerryTypeByBerryTreeId(u8 id);
u8 GetStageByBerryTreeId(u8);
u8 ItemIdToBerryType(u16 item);
void GetBerryNameByBerryType(u8 berry, u8 *string);
void ResetBerryTreeSparkleFlag(u8 id);
void Bag_ChooseBerry(void);
void ObjectEventInteractionGetBerryTreeData(void);
void ObjectEventInteractionPlantBerryTree(void);
void ObjectEventInteractionPickBerryTree(void);
void ObjectEventInteractionRemoveBerryTree(void);
bool8 PlayerHasBerries(void);
void ResetBerryTreeSparkleFlags(void);

extern const struct Berry gBerries[];

struct UnkStruct_0858AB24 {
    u8 unk0;
    u16 unk1;
};

extern const struct UnkStruct_0858AB24 gUnknown_0858AB24[];
# 5 "src/event_object_movement.c" 2
# 1 "include/decoration.h" 1



enum DecorationPermission
{



    DECORPERM_SOLID_FLOOR,
    DECORPERM_PASS_FLOOR,
    DECORPERM_BEHIND_FLOOR,
    DECORPERM_NA_WALL,
    DECORPERM_SPRITE,
};

enum DecorationShape
{
    DECORSHAPE_1x1,
    DECORSHAPE_2x1,
    DECORSHAPE_3x1,
    DECORSHAPE_4x2,
    DECORSHAPE_2x2,
    DECORSHAPE_1x2,
    DECORSHAPE_1x3,
    DECORSHAPE_2x4,
    DECORSHAPE_3x3,
    DECORSHAPE_3x2,
};

enum DecorationCategory
{
    DECORCAT_DESK,
    DECORCAT_CHAIR,
    DECORCAT_PLANT,
    DECORCAT_ORNAMENT,
    DECORCAT_MAT,
    DECORCAT_POSTER,
    DECORCAT_DOLL,
    DECORCAT_CUSHION,
    DECORCAT_COUNT,
};

struct Decoration
{
    u8 id;
    u8 name[16];
    u8 permission;
    u8 shape;
    u8 category;
    u16 price;
    const u8 *description;
    const u16 *tiles;
};

extern const struct Decoration gDecorations[];
extern __attribute__((section("ewram_data"))) u8 *gCurDecorationItems;
extern __attribute__((section("ewram_data"))) u8 gCurDecorationIndex;

void InitDecorationContextItems(void);
void DoSecretBaseDecorationMenu(u8 taskId);
void ShowDecorationOnMap(u16 mapX, u16 mapY, u16 decor);
void DoPlayerRoomDecorationMenu(u8 taskId);
void ShowDecorationCategoriesWindow(u8 taskId);
void CopyDecorationCategoryName(u8 *dest, u8 decorCat);
bool8 IsSelectedDecorInThePC(void);
u8 AddDecorationIconObject(u8 decor, s16 x, s16 y, u8 priority, u16 tilesTag, u16 paletteTag);
# 6 "src/event_object_movement.c" 2
# 1 "include/event_data.h" 1



# 1 "include/constants/flags.h" 1



# 1 "include/constants/opponents.h" 1
# 5 "include/constants/flags.h" 2
# 5 "include/event_data.h" 2
# 1 "include/constants/vars.h" 1
# 6 "include/event_data.h" 2

void InitEventData(void);
void ClearTempFieldEventData(void);
void ClearDailyFlags(void);
void DisableNationalPokedex(void);
void EnableNationalPokedex(void);
bool32 IsNationalPokedexEnabled(void);
void DisableMysteryEvent(void);
void EnableMysteryEvent(void);
bool32 IsMysteryEventEnabled(void);
void DisableMysteryGift(void);
void EnableMysteryGift(void);
bool32 IsMysteryGiftEnabled(void);
void ClearMysteryEventFlags(void);
void ClearMysteryEventVars(void);
void DisableResetRTC(void);
void EnableResetRTC(void);
bool32 CanResetRTC(void);
u16 *GetVarPointer(u16 id);
u16 VarGet(u16 id);
bool8 VarSet(u16 id, u16 value);
u8 VarGetObjectEventGraphicsId(u8 id);
u8 *GetFlagPointer(u16 id);
u8 FlagSet(u16 id);
u8 FlagClear(u16 id);
bool8 FlagGet(u16 id);

extern u16 gSpecialVar_0x8000;
extern u16 gSpecialVar_0x8001;
extern u16 gSpecialVar_0x8002;
extern u16 gSpecialVar_0x8003;
extern u16 gSpecialVar_0x8004;
extern u16 gSpecialVar_0x8005;
extern u16 gSpecialVar_0x8006;
extern u16 gSpecialVar_0x8007;
extern u16 gSpecialVar_0x8008;
extern u16 gSpecialVar_0x8009;
extern u16 gSpecialVar_0x800A;
extern u16 gSpecialVar_0x800B;
extern u16 gSpecialVar_Result;
extern u16 gSpecialVar_LastTalked;
extern u16 gSpecialVar_Facing;
extern u16 gSpecialVar_MonBoxId;
extern u16 gSpecialVar_MonBoxPos;
extern u16 gSpecialVar_Unused_0x8014;
# 7 "src/event_object_movement.c" 2
# 1 "include/event_object_movement.h" 1



enum SpinnerRunnerFollowPatterns
{
    RUNFOLLOW_ANY,
    RUNFOLLOW_NORTH_SOUTH,
    RUNFOLLOW_EAST_WEST,
    RUNFOLLOW_NORTH_WEST,
    RUNFOLLOW_NORTH_EAST,
    RUNFOLLOW_SOUTH_WEST,
    RUNFOLLOW_SOUTH_EAST,
    RUNFOLLOW_NORTH_SOUTH_WEST,
    RUNFOLLOW_NORTH_SOUTH_EAST,
    RUNFOLLOW_NORTH_EAST_WEST,
    RUNFOLLOW_SOUTH_EAST_WEST
};

struct UnkStruct_085094AC
{
    const union AnimCmd *const *anims;
    u8 animPos[4];
};
# 46 "include/event_object_movement.h"
struct PairedPalettes
{
    u16 tag;
    const u16 *data;
};

struct LockedAnimObjectEvents
{
    u8 objectEventIds[16];
    u8 count;
};

extern const struct SpriteFrameImage gObjectEventPicTable_PechaBerryTree[];
extern const struct OamData gObjectEventBaseOam_32x8;
extern const struct OamData gObjectEventBaseOam_32x32;
extern const struct SpriteTemplate *const gFieldEffectObjectTemplatePointers[];
extern const u8 gReflectionEffectPaletteMap[];

extern const u8 *const gBerryTreeObjectEventGraphicsIdTablePointers[];
extern const struct SpriteFrameImage *const gBerryTreePicTablePointers[];
extern const u8 *const gBerryTreePaletteSlotTablePointers[];

void ResetObjectEvents(void);
u8 GetMoveDirectionAnimNum(u8);
u8 GetObjectEventIdByLocalIdAndMap(u8, u8, u8);
bool8 TryGetObjectEventIdByLocalIdAndMap(u8, u8, u8, u8 *);
u8 GetObjectEventIdByXY(s16, s16);
void SetObjectEventDirection(struct ObjectEvent *, u8);
u8 GetFirstInactiveObjectEventId(void);
void RemoveObjectEventByLocalIdAndMap(u8, u8, u8);
void LoadPlayerObjectReflectionPalette(u16, u8);
void LoadSpecialObjectReflectionPalette(u16, u8);
void TryMoveObjectEventToMapCoords(u8, u8, u8, s16, s16);
void PatchObjectPalette(u16, u8);
void sub_808E16C(s16, s16);
void OverrideSecretBaseDecorationSpriteScript(u8 localId, u8 mapNum, u8 mapGroup, u8 decorCat);
void sub_8092FF0(s16, s16, s16 *, s16 *);
u8 GetFaceDirectionAnimNum(u8);
void sub_80930E0(s16 *, s16 *, s16, s16);
void ObjectEventClearHeldMovement(struct ObjectEvent *);
void ObjectEventClearHeldMovementIfActive(struct ObjectEvent *);
void TrySpawnObjectEvents(s16, s16);
u8 sprite_new(u8 graphicsId, u8 a1, s16 x, s16 y, u8 z, u8 direction);
u8 AddPseudoObjectEvent(u16, void (*)(struct Sprite *), s16 x, s16 y, u8 subpriority);
u8 TrySpawnObjectEvent(u8, u8, u8);
u8 SpawnSpecialObjectEventParameterized(u8 graphicsId, u8 movementBehavior, u8 localId, s16 x, s16 y, u8 z);
u8 SpawnSpecialObjectEvent(struct ObjectEventTemplate *);
void SetSpritePosToMapCoords(s16, s16, s16 *, s16 *);
void CameraObjectReset1(void);
void ObjectEventSetGraphicsId(struct ObjectEvent *, u8 graphicsId);
void ObjectEventTurn(struct ObjectEvent *, u8);
void ObjectEventTurnByLocalIdAndMap(u8, u8, u8, u8);
const struct ObjectEventGraphicsInfo *GetObjectEventGraphicsInfo(u8 graphicsId);
void npc_by_local_id_and_map_set_field_1_bit_x20(u8, u8, u8, u8);
void FreeAndReserveObjectSpritePalettes(void);
void sub_808E82C(u8, u8, u8, s16, s16);
void sub_808E7E4(u8, u8, u8);
void sub_808E78C(u8, u8, u8, u8);
void sub_808E75C(s16, s16);
void ObjectEventGetLocalIdAndMap(struct ObjectEvent *objectEvent, void *localId, void *mapNum, void *mapGroup);
void ShiftObjectEventCoords(struct ObjectEvent *, s16, s16);
void MoveObjectEventToMapCoords(struct ObjectEvent *, s16, s16);
void TryOverrideObjectEventTemplateCoords(u8, u8, u8);
void InitObjectEventPalettes(u8 palSlot);
void UpdateObjectEventCurrentMovement(struct ObjectEvent *, struct Sprite *, bool8(struct ObjectEvent *, struct Sprite *));
u8 ObjectEventFaceOppositeDirection(struct ObjectEvent *, u8);
u8 GetOppositeDirection(u8);
u8 GetWalkInPlaceFastestMovementAction(u32);
u8 GetWalkInPlaceFastMovementAction(u32);
u8 GetWalkInPlaceNormalMovementAction(u32);
u8 GetWalkInPlaceSlowMovementAction(u32);
u8 GetCollisionAtCoords(struct ObjectEvent *, s16, s16, u32);
void MoveCoords(u8, s16 *, s16 *);
bool8 ObjectEventIsHeldMovementActive(struct ObjectEvent *);
u8 ObjectEventClearHeldMovementIfFinished(struct ObjectEvent *);
u8 GetObjectEventIdByXYZ(u16 x, u16 y, u8 z);
void SetTrainerMovementType(struct ObjectEvent *objectEvent, u8 movementType);
u8 GetTrainerFacingDirectionMovementType(u8 direction);
const u8 *GetObjectEventScriptPointerByObjectEventId(u8 objectEventId);
u8 GetCollisionFlagsAtCoords(struct ObjectEvent *objectEvent, s16 x, s16 y, u8 direction);
u8 GetFaceDirectionMovementAction(u32);
u8 GetWalkNormalMovementAction(u32);
u8 GetWalkFastMovementAction(u32);
u8 GetRideWaterCurrentMovementAction(u32);
u8 GetWalkFastestMovementAction(u32);
u8 GetPlayerRunMovementAction(u32);
u8 GetJumpInPlaceMovementAction(u32);
u8 GetAcroWheelieFaceDirectionMovementAction(u32);
u8 GetAcroPopWheelieFaceDirectionMovementAction(u32);
u8 GetAcroEndWheelieFaceDirectionMovementAction(u32);
u8 GetAcroWheelieHopFaceDirectionMovementAction(u32);
u8 GetAcroWheelieHopDirectionMovementAction(u32);
u8 GetAcroWheelieJumpDirectionMovementAction(u32);
u8 GetJumpInPlaceTurnAroundMovementAction(u32);
u8 GetAcroWheelieInPlaceDirectionMovementAction(u32);
u8 GetAcroPopWheelieMoveDirectionMovementAction(u32);
u8 GetAcroWheelieMoveDirectionMovementAction(u32);
u8 GetAcroEndWheelieMoveDirectionMovementAction(u32);
u8 GetFishingDirectionAnimNum(u8 direction);
u8 GetAcroWheelieDirectionAnimNum(u8 direction);
u8 GetFishingBiteDirectionAnimNum(u8 direction);
u8 GetFishingNoCatchDirectionAnimNum(u8 direction);
bool8 ObjectEventSetHeldMovement(struct ObjectEvent *objectEvent, u8 specialAnimId);
void ObjectEventForceSetHeldMovement(struct ObjectEvent *objectEvent, u8 movementActionId);
bool8 ObjectEventIsMovementOverridden(struct ObjectEvent *objectEvent);
u8 ObjectEventCheckHeldMovementStatus(struct ObjectEvent *objectEvent);
u8 ObjectEventGetHeldMovementActionId(struct ObjectEvent *objectEvent);
void TryOverrideTemplateCoordsForObjectEvent(const struct ObjectEvent *objectEvent, u8 movementType);
void OverrideTemplateCoordsForObjectEvent(const struct ObjectEvent *objectEvent);
void ShiftStillObjectEventCoords(struct ObjectEvent *pObject);
void ObjectEventMoveDestCoords(struct ObjectEvent *pObject, u32 unk_19, s16 *pInt, s16 *pInt1);
u8 AddCameraObject(u8 linkedSpriteId);
void UpdateObjectEventsForCameraUpdate(s16 x, s16 y);
u8 GetWalkSlowMovementAction(u32);
u8 GetJumpMovementAction(u32);
bool8 AreZCoordsCompatible(u8, u8);
u8 ZCoordToPriority(u8);
void ObjectEventUpdateZCoord(struct ObjectEvent *pObject);
void SetObjectSubpriorityByZCoord(u8, struct Sprite *, u8);
bool8 IsZCoordMismatchAt(u8, s16, s16);
void UnfreezeObjectEvent(struct ObjectEvent *);
u8 FindLockedObjectEventIndex(struct ObjectEvent *);
bool8 obj_npc_ministep(struct Sprite *sprite);
bool8 sub_80976EC(struct Sprite *sprite);
void sub_80976DC(struct Sprite *, u8);
void sub_809783C(struct Sprite *, u8, u8, u8);
void DoShadowFieldEffect(struct ObjectEvent *);
u8 sub_809785C(struct Sprite *);
u8 sub_80978E4(struct Sprite *);
void SetAndStartSpriteAnim(struct Sprite *, u8, u8);
bool8 SpriteAnimEnded(struct Sprite *);
void sub_8097750(struct Sprite *);
bool8 sub_8097758(struct Sprite *);
void CreateLevitateMovementTask(struct ObjectEvent *);
void DestroyExtraMovementTask(u8);
void UnfreezeObjectEvents(void);
void FreezeObjectEventsExceptOne(u8 objectEventId);
void sub_8097B78(u8, u8);
void sub_8098074(u8 var1, u8 var2);
void FreezeObjectEvents(void);
bool8 FreezeObjectEvent(struct ObjectEvent *objectEvent);
u8 GetMoveDirectionFastAnimNum(u8);
u8 GetMoveDirectionFasterAnimNum(u8);
u8 GetMoveDirectionFastestAnimNum(u8);
u8 GetLedgeJumpDirection(s16, s16, u8);
void CameraObjectSetFollowedObjectId(u8 objectId);
u16 GetObjectPaletteTag(u8 palSlot);
void UpdateObjectEventSpriteVisibility(struct Sprite *sprite, bool8 invisible);
s16 sub_809773C(s16 a1);
s16 sub_8097728(s16 a1);
void CameraObjectReset2(void);
u8 ObjectEventGetBerryTreeId(u8 objectEventId);
void sub_8092EF0(u8 mapId, u8 mapNumber, u8 mapGroup);
bool8 IsBerryTreeSparkling(u8, u8, u8);

void MovementType_None(struct Sprite *);
void MovementType_LookAround(struct Sprite *);
void MovementType_WanderAround(struct Sprite *);
void MovementType_WanderUpAndDown(struct Sprite *);
void MovementType_WanderLeftAndRight(struct Sprite *);
void MovementType_FaceDirection(struct Sprite *);
void MovementType_Player(struct Sprite *);
void MovementType_BerryTreeGrowth(struct Sprite *);
void MovementType_FaceDownAndUp(struct Sprite *);
void MovementType_FaceLeftAndRight(struct Sprite *);
void MovementType_FaceUpAndLeft(struct Sprite *);
void MovementType_FaceUpAndRight(struct Sprite *);
void MovementType_FaceDownAndLeft(struct Sprite *);
void MovementType_FaceDownAndRight(struct Sprite *);
void MovementType_FaceDownUpAndLeft(struct Sprite *);
void MovementType_FaceDownUpAndRight(struct Sprite *);
void MovementType_FaceUpRightAndLeft(struct Sprite *);
void MovementType_FaceDownRightAndLeft(struct Sprite *);
void MovementType_RotateCounterclockwise(struct Sprite *);
void MovementType_RotateClockwise(struct Sprite *);
void MovementType_WalkBackAndForth(struct Sprite *);
void MovementType_WalkSequenceUpRightLeftDown(struct Sprite *);
void MovementType_WalkSequenceRightLeftDownUp(struct Sprite *);
void MovementType_WalkSequenceDownUpRightLeft(struct Sprite *);
void MovementType_WalkSequenceLeftDownUpRight(struct Sprite *);
void MovementType_WalkSequenceUpLeftRightDown(struct Sprite *);
void MovementType_WalkSequenceLeftRightDownUp(struct Sprite *);
void MovementType_WalkSequenceDownUpLeftRight(struct Sprite *);
void MovementType_WalkSequenceRightDownUpLeft(struct Sprite *);
void MovementType_WalkSequenceLeftUpDownRight(struct Sprite *);
void MovementType_WalkSequenceUpDownRightLeft(struct Sprite *);
void MovementType_WalkSequenceRightLeftUpDown(struct Sprite *);
void MovementType_WalkSequenceDownRightLeftUp(struct Sprite *);
void MovementType_WalkSequenceRightUpDownLeft(struct Sprite *);
void MovementType_WalkSequenceUpDownLeftRight(struct Sprite *);
void MovementType_WalkSequenceLeftRightUpDown(struct Sprite *);
void MovementType_WalkSequenceDownLeftRightUp(struct Sprite *);
void MovementType_WalkSequenceUpLeftDownRight(struct Sprite *);
void MovementType_WalkSequenceDownRightUpLeft(struct Sprite *);
void MovementType_WalkSequenceLeftDownRightUp(struct Sprite *);
void MovementType_WalkSequenceRightUpLeftDown(struct Sprite *);
void MovementType_WalkSequenceUpRightDownLeft(struct Sprite *);
void MovementType_WalkSequenceDownLeftUpRight(struct Sprite *);
void MovementType_WalkSequenceLeftUpRightDown(struct Sprite *);
void MovementType_WalkSequenceRightDownLeftUp(struct Sprite *);
void MovementType_CopyPlayer(struct Sprite *);
void MovementType_TreeDisguise(struct Sprite *);
void MovementType_MountainDisguise(struct Sprite *);
void MovementType_CopyPlayerInGrass(struct Sprite *);
void MovementType_Hidden(struct Sprite *);
void MovementType_WalkInPlace(struct Sprite *);
void MovementType_JogInPlace(struct Sprite *);
void MovementType_RunInPlace(struct Sprite *);
void MovementType_Invisible(struct Sprite *);
void MovementType_WalkSlowlyInPlace(struct Sprite *);
u8 GetSlideMovementAction(u32);
u8 GetJumpInPlaceMovementAction(u32);
u8 GetJumpMovementAction(u32);
u8 GetJump2MovementAction(u32);
u8 CreateCopySpriteAt(struct Sprite *sprite, s16 x, s16 y, u8 subpriority);

u8 MovementType_WanderAround_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderAround_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderAround_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderAround_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderAround_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderAround_Step5(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderAround_Step6(struct ObjectEvent *, struct Sprite *);
u8 GetVectorDirection(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_SouthNorth(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_WestEast(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_WestNorth(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_EastNorth(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_WestSouth(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_EastSouth(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_SouthNorthWest(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_SouthNorthEast(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_NorthWestEast(s16, s16, s16, s16);
u8 GetLimitedVectorDirection_SouthWestEast(s16, s16, s16, s16);
u8 MovementType_LookAround_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_LookAround_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_LookAround_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_LookAround_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_LookAround_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step5(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderUpAndDown_Step6(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step5(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WanderLeftAndRight_Step6(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDirection_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDirection_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDirection_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_BerryTreeGrowth_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_BerryTreeGrowth_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_BerryTreeGrowth_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_BerryTreeGrowth_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_BerryTreeGrowth_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndUp_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndUp_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndUp_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceLeftAndRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceLeftAndRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceLeftAndRight_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceLeftAndRight_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceLeftAndRight_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndLeft_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndLeft_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndLeft_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndRight_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndRight_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpAndRight_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndLeft_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndLeft_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndLeft_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndRight_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndRight_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownAndRight_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndLeft_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndLeft_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndLeft_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndRight_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndRight_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownUpAndRight_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpLeftAndRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpLeftAndRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpLeftAndRight_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpLeftAndRight_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceUpLeftAndRight_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownLeftAndRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownLeftAndRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownLeftAndRight_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownLeftAndRight_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_FaceDownLeftAndRight_Step4(struct ObjectEvent *, struct Sprite *);
u8 MovementType_RotateCounterclockwise_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_RotateCounterclockwise_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_RotateCounterclockwise_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_RotateCounterclockwise_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_RotateClockwise_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_RotateClockwise_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_RotateClockwise_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_RotateClockwise_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkBackAndForth_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkBackAndForth_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkBackAndForth_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkBackAndForth_Step3(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequence_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequence_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceUpRightLeftDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceRightLeftDownUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceDownUpRightLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceLeftDownUpRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceUpLeftRightDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceLeftRightDownUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceDownUpLeftRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceRightDownUpLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceLeftUpDownRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceUpDownRightLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceRightLeftUpDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceDownRightLeftUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceRightUpDownLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceUpDownLeftRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceLeftRightUpDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceDownLeftRightUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceUpLeftDownRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceDownRightUpLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceLeftDownRightUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceRightUpLeftDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceUpRightDownLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceDownLeftUpRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceLeftUpRightDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSequenceRightDownLeftUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_CopyPlayer_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_CopyPlayer_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_CopyPlayer_Step2(struct ObjectEvent *, struct Sprite *);
bool8 CopyablePlayerMovement_None(struct ObjectEvent *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_FaceDirection(struct ObjectEvent *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_GoSpeed0(struct ObjectEvent *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_GoSpeed1(struct ObjectEvent *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_GoSpeed2(struct ObjectEvent *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_Slide(struct ObjectEvent *, struct Sprite *, u8, bool8(u8));
bool8 cph_IM_DIFFERENT(struct ObjectEvent *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_GoSpeed4(struct ObjectEvent *, struct Sprite *, u8, bool8(u8));
bool8 CopyablePlayerMovement_Jump(struct ObjectEvent *, struct Sprite *, u8, bool8(u8));
u8 MovementType_CopyPlayerInGrass_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_Hidden_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkInPlace_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_MoveInPlace_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_WalkSlowlyInPlace_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_JogInPlace_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_RunInPlace_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_Invisible_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementType_Invisible_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementType_Invisible_Step2(struct ObjectEvent *, struct Sprite *);
void sub_8097C44(u8 var, bool32 var2);
bool32 sub_8097C8C(u8 var);
void sub_8097BB4(u8 var1, u8 graphicsId);
void sub_8097CC4(u8 var1, u8 var2);
bool32 sub_8097D9C(u8 var);
# 8 "src/event_object_movement.c" 2
# 1 "include/event_scripts.h" 1



extern const u8 EventScript_TestSignpostMsg[];
extern const u8 EventScript_TryGetTrainerScript[];
extern const u8 EventScript_271354[];
extern const u8 EventScript_DoNoIntroTrainerBattle[];
extern const u8 EventScript_TryDoDoubleTrainerBattle[];
extern const u8 EventScript_TryDoNormalTrainerBattle[];
extern const u8 EventScript_TryDoDoubleRematchBattle[];
extern const u8 EventScript_TryDoRematchBattle[];

extern const u8 BerryTreeScript[];

extern const u8 gTVBravoTrainerText00[];
extern const u8 gTVBravoTrainerText01[];
extern const u8 gTVBravoTrainerText02[];
extern const u8 gTVBravoTrainerText03[];
extern const u8 gTVBravoTrainerText04[];
extern const u8 gTVBravoTrainerText05[];
extern const u8 gTVBravoTrainerText06[];
extern const u8 gTVBravoTrainerText07[];
extern const u8 gTVBravoTrainerText08[];
extern const u8 gTVBravoTrainerBattleTowerText00[];
extern const u8 gTVBravoTrainerBattleTowerText01[];
extern const u8 gTVBravoTrainerBattleTowerText02[];
extern const u8 gTVBravoTrainerBattleTowerText03[];
extern const u8 gTVBravoTrainerBattleTowerText04[];
extern const u8 gTVBravoTrainerBattleTowerText05[];
extern const u8 gTVBravoTrainerBattleTowerText06[];
extern const u8 gTVBravoTrainerBattleTowerText07[];
extern const u8 gTVBravoTrainerBattleTowerText08[];
extern const u8 gTVBravoTrainerBattleTowerText09[];
extern const u8 gTVBravoTrainerBattleTowerText10[];
extern const u8 gTVBravoTrainerBattleTowerText11[];
extern const u8 gTVBravoTrainerBattleTowerText12[];
extern const u8 gTVBravoTrainerBattleTowerText13[];
extern const u8 gTVBravoTrainerBattleTowerText14[];
extern const u8 gTVFanClubOpinionsText00[];
extern const u8 gTVFanClubOpinionsText01[];
extern const u8 gTVFanClubOpinionsText02[];
extern const u8 gTVFanClubOpinionsText03[];
extern const u8 gTVFanClubOpinionsText04[];
extern const u8 gTVFanClubText00[];
extern const u8 gTVFanClubText01[];
extern const u8 gTVFanClubText02[];
extern const u8 gTVFanClubText03[];
extern const u8 gTVFanClubText04[];
extern const u8 gTVFanClubText05[];
extern const u8 gTVFanClubText06[];
extern const u8 gTVFanClubText07[];
extern const u8 gTVRecentHappeningsText00[];
extern const u8 gTVRecentHappeningsText01[];
extern const u8 gTVRecentHappeningsText02[];
extern const u8 gTVRecentHappeningsText03[];
extern const u8 gTVRecentHappeningsText04[];
extern const u8 gTVRecentHappeningsText05[];
extern const u8 gTVMassOutbreakText00[];
extern const u8 gTV3CheersForPokeblocksText00[];
extern const u8 gTV3CheersForPokeblocksText01[];
extern const u8 gTV3CheersForPokeblocksText02[];
extern const u8 gTV3CheersForPokeblocksText03[];
extern const u8 gTV3CheersForPokeblocksText04[];
extern const u8 gTV3CheersForPokeblocksText05[];
extern const u8 gTVTrainerFanClubSpecialText00[];
extern const u8 gTVTrainerFanClubSpecialText01[];
extern const u8 gTVTrainerFanClubSpecialText02[];
extern const u8 gTVTrainerFanClubSpecialText03[];
extern const u8 gTVTrainerFanClubSpecialText04[];
extern const u8 gTVTrainerFanClubSpecialText05[];
extern const u8 gTVNameRaterText00[];
extern const u8 gTVNameRaterText01[];
extern const u8 gTVNameRaterText02[];
extern const u8 gTVNameRaterText03[];
extern const u8 gTVNameRaterText04[];
extern const u8 gTVNameRaterText05[];
extern const u8 gTVNameRaterText06[];
extern const u8 gTVNameRaterText07[];
extern const u8 gTVNameRaterText08[];
extern const u8 gTVNameRaterText09[];
extern const u8 gTVNameRaterText10[];
extern const u8 gTVNameRaterText11[];
extern const u8 gTVNameRaterText12[];
extern const u8 gTVNameRaterText13[];
extern const u8 gTVNameRaterText14[];
extern const u8 gTVNameRaterText15[];
extern const u8 gTVNameRaterText16[];
extern const u8 gTVNameRaterText17[];
extern const u8 gTVNameRaterText18[];
extern const u8 gTVPokemonAnglerText00[];
extern const u8 gTVPokemonAnglerText01[];
extern const u8 gTVPokemonTodayFailedText00[];
extern const u8 gTVPokemonTodayFailedText01[];
extern const u8 gTVPokemonTodayFailedText02[];
extern const u8 gTVPokemonTodayFailedText03[];
extern const u8 gTVPokemonTodayFailedText04[];
extern const u8 gTVPokemonTodayFailedText05[];
extern const u8 gTVPokemonTodayFailedText06[];
extern const u8 gTVPokemonTodaySuccessfulText00[];
extern const u8 gTVPokemonTodaySuccessfulText01[];
extern const u8 gTVPokemonTodaySuccessfulText02[];
extern const u8 gTVPokemonTodaySuccessfulText03[];
extern const u8 gTVPokemonTodaySuccessfulText04[];
extern const u8 gTVPokemonTodaySuccessfulText05[];
extern const u8 gTVPokemonTodaySuccessfulText06[];
extern const u8 gTVPokemonTodaySuccessfulText07[];
extern const u8 gTVPokemonTodaySuccessfulText08[];
extern const u8 gTVPokemonTodaySuccessfulText09[];
extern const u8 gTVPokemonTodaySuccessfulText10[];
extern const u8 gTVPokemonTodaySuccessfulText11[];
extern const u8 gTVTodaysSmartShopperText00[];
extern const u8 gTVTodaysSmartShopperText01[];
extern const u8 gTVTodaysSmartShopperText02[];
extern const u8 gTVTodaysSmartShopperText03[];
extern const u8 gTVTodaysSmartShopperText04[];
extern const u8 gTVTodaysSmartShopperText05[];
extern const u8 gTVTodaysSmartShopperText06[];
extern const u8 gTVTodaysSmartShopperText07[];
extern const u8 gTVTodaysSmartShopperText08[];
extern const u8 gTVTodaysSmartShopperText09[];
extern const u8 gTVTodaysSmartShopperText10[];
extern const u8 gTVTodaysSmartShopperText11[];
extern const u8 gTVTodaysSmartShopperText12[];
extern const u8 gTVWorldOfMastersText00[];
extern const u8 gTVWorldOfMastersText01[];
extern const u8 gTVWorldOfMastersText02[];
extern const u8 gTVTodaysRivalTrainerText00[];
extern const u8 gTVTodaysRivalTrainerText07[];
extern const u8 gTVTodaysRivalTrainerText08[];
extern const u8 gTVTodaysRivalTrainerText09[];
extern const u8 gTVTodaysRivalTrainerText10[];
extern const u8 gTVTodaysRivalTrainerText01[];
extern const u8 gTVTodaysRivalTrainerText02[];
extern const u8 gTVTodaysRivalTrainerText03[];
extern const u8 gTVTodaysRivalTrainerText04[];
extern const u8 gTVTodaysRivalTrainerText05[];
extern const u8 gTVTodaysRivalTrainerText06[];
extern const u8 gTVDewfordTrendWatcherNetworkText00[];
extern const u8 gTVDewfordTrendWatcherNetworkText01[];
extern const u8 gTVDewfordTrendWatcherNetworkText02[];
extern const u8 gTVDewfordTrendWatcherNetworkText03[];
extern const u8 gTVDewfordTrendWatcherNetworkText04[];
extern const u8 gTVDewfordTrendWatcherNetworkText05[];
extern const u8 gTVDewfordTrendWatcherNetworkText06[];
extern const u8 gTVHoennTreasureInvestigatorsText00[];
extern const u8 gTVHoennTreasureInvestigatorsText01[];
extern const u8 gTVHoennTreasureInvestigatorsText02[];
extern const u8 gTVFindThatGamerText00[];
extern const u8 gTVFindThatGamerText01[];
extern const u8 gTVFindThatGamerText02[];
extern const u8 gTVFindThatGamerText03[];
extern const u8 gTVBreakingNewsText00[];
extern const u8 gTVBreakingNewsText01[];
extern const u8 gTVBreakingNewsText02[];
extern const u8 gTVBreakingNewsText03[];
extern const u8 gTVBreakingNewsText04[];
extern const u8 gTVBreakingNewsText05[];
extern const u8 gTVBreakingNewsText06[];
extern const u8 gTVBreakingNewsText07[];
extern const u8 gTVBreakingNewsText12[];
extern const u8 gTVBreakingNewsText08[];
extern const u8 gTVBreakingNewsText09[];
extern const u8 gTVBreakingNewsText10[];
extern const u8 gTVBreakingNewsText11[];
extern const u8 gTVSecretBaseVisitText00[];
extern const u8 gTVSecretBaseVisitText01[];
extern const u8 gTVSecretBaseVisitText02[];
extern const u8 gTVSecretBaseVisitText03[];
extern const u8 gTVSecretBaseVisitText04[];
extern const u8 gTVSecretBaseVisitText05[];
extern const u8 gTVSecretBaseVisitText06[];
extern const u8 gTVSecretBaseVisitText07[];
extern const u8 gTVSecretBaseVisitText08[];
extern const u8 gTVSecretBaseVisitText09[];
extern const u8 gTVSecretBaseVisitText10[];
extern const u8 gTVSecretBaseVisitText11[];
extern const u8 gTVSecretBaseVisitText12[];
extern const u8 gTVSecretBaseVisitText13[];
extern const u8 gTVPokemonLotteryWinnerFlashReportText00[];
extern const u8 gTVThePokemonBattleSeminarText00[];
extern const u8 gTVThePokemonBattleSeminarText01[];
extern const u8 gTVThePokemonBattleSeminarText02[];
extern const u8 gTVThePokemonBattleSeminarText03[];
extern const u8 gTVThePokemonBattleSeminarText04[];
extern const u8 gTVThePokemonBattleSeminarText05[];
extern const u8 gTVThePokemonBattleSeminarText06[];
extern const u8 gTVTrainerFanClubText00[];
extern const u8 gTVTrainerFanClubText01[];
extern const u8 gTVTrainerFanClubText02[];
extern const u8 gTVTrainerFanClubText03[];
extern const u8 gTVTrainerFanClubText04[];
extern const u8 gTVTrainerFanClubText05[];
extern const u8 gTVTrainerFanClubText06[];
extern const u8 gTVTrainerFanClubText07[];
extern const u8 gTVTrainerFanClubText08[];
extern const u8 gTVTrainerFanClubText09[];
extern const u8 gTVTrainerFanClubText10[];
extern const u8 gTVTrainerFanClubText11[];
extern const u8 gTVCutiesText00[];
extern const u8 gTVCutiesText01[];
extern const u8 gTVCutiesText02[];
extern const u8 gTVCutiesText03[];
extern const u8 gTVCutiesText04[];
extern const u8 gTVCutiesText05[];
extern const u8 gTVCutiesText06[];
extern const u8 gTVCutiesText07[];
extern const u8 gTVCutiesText08[];
extern const u8 gTVCutiesText09[];
extern const u8 gTVCutiesText10[];
extern const u8 gTVCutiesText11[];
extern const u8 gTVCutiesText12[];
extern const u8 gTVCutiesText13[];
extern const u8 gTVCutiesText14[];
extern const u8 gTVCutiesText15[];
extern const u8 gTVPokemonNewsBattleFrontierText00[];
extern const u8 gTVPokemonNewsBattleFrontierText01[];
extern const u8 gTVPokemonNewsBattleFrontierText02[];
extern const u8 gTVPokemonNewsBattleFrontierText03[];
extern const u8 gTVPokemonNewsBattleFrontierText04[];
extern const u8 gTVPokemonNewsBattleFrontierText05[];
extern const u8 gTVPokemonNewsBattleFrontierText06[];
extern const u8 gTVPokemonNewsBattleFrontierText07[];
extern const u8 gTVPokemonNewsBattleFrontierText08[];
extern const u8 gTVPokemonNewsBattleFrontierText09[];
extern const u8 gTVPokemonNewsBattleFrontierText10[];
extern const u8 gTVPokemonNewsBattleFrontierText11[];
extern const u8 gTVPokemonNewsBattleFrontierText12[];
extern const u8 gTVPokemonNewsBattleFrontierText13[];
extern const u8 gTVPokemonNewsBattleFrontierText14[];
extern const u8 gTVPokemonNewsBattleFrontierText15[];
extern const u8 gTVPokemonNewsBattleFrontierText16[];
extern const u8 gTVPokemonNewsBattleFrontierText17[];
extern const u8 gTVPokemonNewsBattleFrontierText18[];
extern const u8 gTVWhatsNo1InHoennTodayText00[];
extern const u8 gTVWhatsNo1InHoennTodayText01[];
extern const u8 gTVWhatsNo1InHoennTodayText02[];
extern const u8 gTVWhatsNo1InHoennTodayText03[];
extern const u8 gTVWhatsNo1InHoennTodayText04[];
extern const u8 gTVWhatsNo1InHoennTodayText05[];
extern const u8 gTVWhatsNo1InHoennTodayText06[];
extern const u8 gTVWhatsNo1InHoennTodayText07[];
extern const u8 gTVWhatsNo1InHoennTodayText08[];
extern const u8 TVSecretBaseSecrets_Text_Intro[];
extern const u8 TVSecretBaseSecrets_Text_WhatWillPlayerDoNext1[];
extern const u8 TVSecretBaseSecrets_Text_WhatWillPlayerDoNext2[];
extern const u8 TVSecretBaseSecrets_Text_TookXStepsBeforeLeaving[];
extern const u8 TVSecretBaseSecrets_Text_BaseFailedToInterestPlayer[];
extern const u8 TVSecretBaseSecrets_Text_PlayerEnjoyedBase[];
extern const u8 TVSecretBaseSecrets_Text_PlayerHugeFanOfBase[];
extern const u8 TVSecretBaseSecrets_Text_Outro[];
extern const u8 TVSecretBaseSecrets_Text_StoppedMoving1[];
extern const u8 TVSecretBaseSecrets_Text_StoppedMoving2[];
extern const u8 TVSecretBaseSecrets_Text_UsedChair[];
extern const u8 TVSecretBaseSecrets_Text_UsedBalloon[];
extern const u8 TVSecretBaseSecrets_Text_UsedTent[];
extern const u8 TVSecretBaseSecrets_Text_UsedPlant[];
extern const u8 TVSecretBaseSecrets_Text_UsedGoldShield[];
extern const u8 TVSecretBaseSecrets_Text_UsedSilverShield[];
extern const u8 TVSecretBaseSecrets_Text_UsedGlassOrnament[];
extern const u8 TVSecretBaseSecrets_Text_UsedTV[];
extern const u8 TVSecretBaseSecrets_Text_UsedMudBall[];
extern const u8 TVSecretBaseSecrets_Text_UsedBag[];
extern const u8 TVSecretBaseSecrets_Text_UsedCushion[];
extern const u8 TVSecretBaseSecrets_Text_HitCushion[];
extern const u8 TVSecretBaseSecrets_Text_HuggedCushion[];
extern const u8 TVSecretBaseSecrets_Text_BattledWon[];
extern const u8 TVSecretBaseSecrets_Text_BattledLost[];
extern const u8 TVSecretBaseSecrets_Text_DeclinedBattle[];
extern const u8 TVSecretBaseSecrets_Text_UsedPoster[];
extern const u8 TVSecretBaseSecrets_Text_UsedNoteMat[];
extern const u8 TVSecretBaseSecrets_Text_BattledDraw[];
extern const u8 TVSecretBaseSecrets_Text_UsedSpinMat[];
extern const u8 TVSecretBaseSecrets_Text_UsedSandOrnament[];
extern const u8 TVSecretBaseSecrets_Text_UsedDesk[];
extern const u8 TVSecretBaseSecrets_Text_UsedBrick[];
extern const u8 TVSecretBaseSecrets_Text_UsedSolidBoard[];
extern const u8 TVSecretBaseSecrets_Text_UsedFence[];
extern const u8 TVSecretBaseSecrets_Text_UsedGlitterMat[];
extern const u8 TVSecretBaseSecrets_Text_UsedTire[];
extern const u8 TVSecretBaseSecrets_Text_UsedStand[];
extern const u8 TVSecretBaseSecrets_Text_BrokeDoor[];
extern const u8 TVSecretBaseSecrets_Text_UsedDoll[];
extern const u8 TVSecretBaseSecrets_Text_UsedSlide[];
extern const u8 TVSecretBaseSecrets_Text_UsedSlideButDidntGoDown[];
extern const u8 TVSecretBaseSecrets_Text_UsedJumpMat[];
extern const u8 gTVSafariFanClubText00[];
extern const u8 gTVSafariFanClubText01[];
extern const u8 gTVSafariFanClubText02[];
extern const u8 gTVSafariFanClubText03[];
extern const u8 gTVSafariFanClubText04[];
extern const u8 gTVSafariFanClubText05[];
extern const u8 gTVSafariFanClubText06[];
extern const u8 gTVSafariFanClubText07[];
extern const u8 gTVSafariFanClubText08[];
extern const u8 gTVSafariFanClubText09[];
extern const u8 gTVSafariFanClubText10[];
extern const u8 gTVContestLiveUpdatesText00[];
extern const u8 gTVContestLiveUpdatesText01[];
extern const u8 gTVContestLiveUpdatesText02[];
extern const u8 gTVContestLiveUpdatesText03[];
extern const u8 gTVContestLiveUpdatesText04[];
extern const u8 gTVContestLiveUpdatesText05[];
extern const u8 gTVContestLiveUpdatesText06[];
extern const u8 gTVContestLiveUpdatesText07[];
extern const u8 gTVContestLiveUpdatesText08[];
extern const u8 gTVContestLiveUpdatesText09[];
extern const u8 gTVContestLiveUpdatesText10[];
extern const u8 gTVContestLiveUpdatesText11[];
extern const u8 gTVContestLiveUpdatesText12[];
extern const u8 gTVContestLiveUpdatesText13[];
extern const u8 gTVContestLiveUpdatesText14[];
extern const u8 gTVContestLiveUpdatesText15[];
extern const u8 gTVContestLiveUpdatesText16[];
extern const u8 gTVContestLiveUpdatesText17[];
extern const u8 gTVContestLiveUpdatesText18[];
extern const u8 gTVContestLiveUpdatesText19[];
extern const u8 gTVContestLiveUpdatesText20[];
extern const u8 gTVContestLiveUpdatesText21[];
extern const u8 gTVContestLiveUpdatesText22[];
extern const u8 gTVContestLiveUpdatesText23[];
extern const u8 gTVContestLiveUpdatesText24[];
extern const u8 gTVContestLiveUpdatesText25[];
extern const u8 gTVContestLiveUpdatesText26[];
extern const u8 gTVContestLiveUpdatesText27[];
extern const u8 gTVContestLiveUpdatesText28[];
extern const u8 gTVContestLiveUpdatesText29[];
extern const u8 gTVContestLiveUpdatesText30[];
extern const u8 gTVContestLiveUpdatesText31[];
extern const u8 gTVContestLiveUpdatesText32[];
extern const u8 gTVPokemonBattleUpdateText00[];
extern const u8 gTVPokemonBattleUpdateText01[];
extern const u8 gTVPokemonBattleUpdateText02[];
extern const u8 gTVPokemonBattleUpdateText03[];
extern const u8 gTVPokemonBattleUpdateText04[];
extern const u8 gTVPokemonBattleUpdateText05[];
extern const u8 gTVPokemonBattleUpdateText06[];
extern const u8 gTVPokemonBattleUpdateText07[];
extern const u8 gTVInSearchOfTrainersText00[];
extern const u8 gTVInSearchOfTrainersText01[];
extern const u8 gTVInSearchOfTrainersText02[];
extern const u8 gTVInSearchOfTrainersText03[];
extern const u8 gTVInSearchOfTrainersText04[];
extern const u8 gTVInSearchOfTrainersText05[];
extern const u8 gTVInSearchOfTrainersText06[];
extern const u8 gTVInSearchOfTrainersText07[];
extern const u8 gTVInSearchOfTrainersText08[];
extern const u8 gTVPokemonContestLiveUpdates2Text00[];
extern const u8 gTVPokemonContestLiveUpdates2Text01[];
extern const u8 gTVPokemonContestLiveUpdates2Text02[];
extern const u8 gTVPokemonContestLiveUpdates2Text03[];
extern const u8 gPokeNewsTextSlateport_Upcoming[];
extern const u8 gPokeNewsTextSlateport_Ongoing[];
extern const u8 gPokeNewsTextSlateport_Ending[];
extern const u8 gPokeNewsTextGameCorner_Upcoming[];
extern const u8 gPokeNewsTextGameCorner_Ongoing[];
extern const u8 gPokeNewsTextGameCorner_Ending[];
extern const u8 gPokeNewsTextLilycove_Upcoming[];
extern const u8 gPokeNewsTextLilycove_Ongoing[];
extern const u8 gPokeNewsTextLilycove_Ending[];
extern const u8 gPokeNewsTextBlendMaster_Upcoming[];
extern const u8 gPokeNewsTextBlendMaster_Ongoing[];
extern const u8 gPokeNewsTextBlendMaster_Ending[];
extern const u8 SecretBase_Text_Trainer0Defeated[];
extern const u8 SecretBase_Text_Trainer1Defeated[];
extern const u8 SecretBase_Text_Trainer2Defeated[];
extern const u8 SecretBase_Text_Trainer3Defeated[];
extern const u8 SecretBase_Text_Trainer4Defeated[];
extern const u8 SecretBase_Text_Trainer5Defeated[];
extern const u8 SecretBase_Text_Trainer6Defeated[];
extern const u8 SecretBase_Text_Trainer7Defeated[];
extern const u8 SecretBase_Text_Trainer8Defeated[];
extern const u8 SecretBase_Text_Trainer9Defeated[];


extern const u8 EventScript_FldEffStrength[];
extern const u8 EventScript_FailSweetScent[];
extern const u8 EventScript_FldEffFlash[];
extern const u8 EventScript_FldEffRockSmash[];


extern const u8 LittlerootTown_BrendansHouse_2F_EventScript_TurnOffPlayerPC[];
extern const u8 LittlerootTown_MaysHouse_2F_EventScript_TurnOffPlayerPC[];


extern const u8 gOtherText_Is[];
extern const u8 gOtherText_DontYouAgree[];
extern const u8 gText_SoPretty[];
extern const u8 gText_SoDarling[];
extern const u8 gText_SoRelaxed[];
extern const u8 gText_SoSunny[];
extern const u8 gText_SoDesirable[];
extern const u8 gText_SoExciting[];
extern const u8 gText_SoAmusing[];
extern const u8 gText_SoMagical[];
extern const u8 gMauvilleManText_ISoWantToGoOnAVacation[];
extern const u8 gMauvilleManText_IBoughtCrayonsWith120Colors[];
extern const u8 gMauvilleManText_WouldntItBeNiceIfWeCouldFloat[];
extern const u8 gMauvilleManText_WhenYouWriteOnASandyBeach[];
extern const u8 gMauvilleManText_WhatsTheBottomOfTheSeaLike[];
extern const u8 gMauvilleManText_WhenYouSeeTheSettingSunDoesIt[];
extern const u8 gMauvilleManText_LyingBackInTheGreenGrass[];
extern const u8 gMauvilleManText_SecretBasesAreSoWonderful[];


extern const u8 MauvilleCity_PokemonCenter_1F_Text_SavedGameTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_SavedGameAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_SavedGameStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_TrendsStartedTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_TrendsStartedAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_TrendsStartedStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_BerriesPlantedTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_BerriesPlantedAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_BerriesPlantedStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_BikeTradesTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_BikeTradesAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_BikeTradesStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_InterviewsTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_InterviewsAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_InterviewsStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_TrainerBattlesTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_TrainerBattlesAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_TrainerBattlesStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_PokemonCaughtTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_PokemonCaughtAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_PokemonCaughtStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_FishingPokemonCaughtTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_FishingPokemonCaughtAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_FishingPokemonCaughtStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_EggsHatchedTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_EggsHatchedAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_EggsHatchedStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_PokemonEvolvedTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_PokemonEvolvedAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_PokemonEvolvedStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedPokemonCenterTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedPokemonCenterAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedPokemonCenterStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_RestedAtHomeTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_RestedAtHomeAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_RestedAtHomeStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_SafariGamesTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_SafariGamesAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_SafariGamesStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedCutTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedCutAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedCutStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedRockSmashTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedRockSmashAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedRockSmashStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_MovedBasesTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_MovedBasesAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_MovedBasesStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedSplashTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedSplashAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedSplashStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedStruggleTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedStruggleAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedStruggleStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_SlotJackpotsTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_SlotJackpotsAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_SlotJackpotsStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_RouletteWinsTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_RouletteWinsAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_RouletteWinsStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_BattleTowerChallengesTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_BattleTowerChallengesAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_BattleTowerChallengesStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_MadePokeblocksTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_MadePokeblocksAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_MadePokeblocksStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_EnteredContestsTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_EnteredContestsAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_EnteredContestsStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_WonContestsTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_WonContestsAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_WonContestsStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_TimesShoppedTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_TimesShoppedAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_TimesShoppedStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedItemFinderTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedItemFinderAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedItemFinderStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_TimesRainedTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_TimesRainedAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_TimesRainedStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_CheckedPokedexTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_CheckedPokedexAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_CheckedPokedexStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_ReceivedRibbonsTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_ReceivedRibbonsAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_ReceivedRibbonsStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_LedgesJumpedTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_LedgesJumpedAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_LedgesJumpedStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_TVWatchedTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_TVWatchedAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_TVWatchedStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_CheckedClockTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_CheckedClockAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_CheckedClockStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_WonLotteryTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_WonLotteryAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_WonLotteryStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedDaycareTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedDaycareAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_UsedDaycareStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_RodeCableCarTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_RodeCableCarAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_RodeCableCarStory[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_HotSpringsTitle[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_HotSpringsAction[];
extern const u8 MauvilleCity_PokemonCenter_1F_Text_HotSpringsStory[];

extern const u8 LittlerootTown_BrendansHouse_2F_EventScript_PC[];
extern const u8 LittlerootTown_MaysHouse_2F_EventScript_PC[];
extern const u8 EventScript_PC[];
extern const u8 EventScript_TestSignpostMsg[];
extern const u8 EventScript_HiddenItemScript[];
extern const u8 EventScript_TV[];
extern const u8 EventScript_ClosedSootopolisDoor[];
extern const u8 SkyPillar_Outside_EventScript_ClosedDoor[];
extern const u8 EventScript_CableBoxResults[];
extern const u8 EventScript_PokeBlockFeeder[];
extern const u8 Route110_TrickHousePuzzle_EventScript_Door[];
extern const u8 EventScript_RegionMap[];
extern const u8 EventScript_RunningShoesManual[];
extern const u8 EventScript_PictureBookShelf[];
extern const u8 EventScript_BookShelf[];
extern const u8 EventScript_PokemonCenterBookShelf[];
extern const u8 EventScript_Vase[];
extern const u8 EventScript_EmptyTrashCan[];
extern const u8 EventScript_ShopShelf[];
extern const u8 EventScript_Blueprint[];
extern const u8 EventScript_WirelessBoxResults[];
extern const u8 EventScript_CableBoxResults[];
extern const u8 EventScript_Questionnaire[];
extern const u8 EventScript_TrainerHillTimer[];
extern const u8 EventScript_UseSurf[];
extern const u8 EventScript_UseWaterfall[];
extern const u8 EventScript_CannotUseWaterfall[];
extern const u8 EventScript_UseDive[];
extern const u8 EventScript_UseDiveUnderwater[];
extern const u8 EventScript_FallDownHole[];
extern const u8 EventScript_FieldPoison[];
extern const u8 EventScript_EggHatch[];
extern const u8 AbnormalWeather_EventScript_EndEventAndCleanup_1[];
extern const u8 IslandCave_EventScript_OpenRegiEntrance[];
extern const u8 MauvilleCity_EventScript_RegisterWallyCall[];
extern const u8 Route119_EventScript_ScottWonAtFortreeGymCall[];
extern const u8 LittlerootTown_ProfessorBirchsLab_EventScript_ScottAboardSSTidalCall[];
extern const u8 RustboroCity_Gym_EventScript_RegisterRoxanne[];
extern const u8 MossdeepCity_SpaceCenter_2F_EventScript_RivalRayquazaCall[];
extern const u8 SSTidalCorridor_EventScript_ReachedStepCount[];
extern const u8 EventScript_FallDownHoleMtPyre[];


extern const u8 SecretBase_EventScript_PC[];
extern const u8 SecretBase_EventScript_RecordMixingPC[];
extern const u8 SecretBase_EventScript_PCCancel[];
extern const u8 SecretBase_EventScript_ShowRegisterMenu[];
extern const u8 SecretBase_EventScript_SandOrnament[];
extern const u8 SecretBase_EventScript_ShieldOrToyTV[];
extern const u8 SecretBase_EventScript_DollInteract[];
extern const u8 SecretBase_EventScript_CushionInteract[];
extern const u8 SecretBase_EventScript_CheckEntrance[];
extern const u8 SecretBase_EventScript_Enter[];
extern const u8 SecretBase_EventScript_InitDecorations[];
extern const u8 SecretBase_EventScript_PutAwayDecoration[];
extern const u8 SecretBase_EventScript_SetDecoration[];


extern const u8 BattlePyramid_Retire[];
extern const u8 BattlePyramid_WarpToNextFloor[];
extern const u8 BattlePyramid_TrainerBattle[];
extern const u8 BattlePyramid_FindItemBall[];


extern const u8 SecretBase_EventScript_CaveUseSecretPower[];
extern const u8 SecretBase_EventScript_TreeUseSecretPower[];
extern const u8 SecretBase_EventScript_ShrubUseSecretPower[];


extern const u8 TrainerHill_EventScript_TrainerBattle[];


extern u8 BerryTree_EventScript_ItemUsePlantBerry[];
extern u8 BerryTree_EventScript_ItemUseWailmerPail[];
extern u8 BattleFrontier_OutsideEast_EventScript_WaterSudowoodo[];
# 9 "src/event_object_movement.c" 2
# 1 "include/faraway_island.h" 1



u32 GetMewMoveDirection(void);
bool8 sub_81D4A58(struct ObjectEvent*);
void UpdateFarawayIslandStepCounter(void);
bool8 ObjectEventIsFarawayIslandMew(struct ObjectEvent *);
bool8 IsMewPlayingHideAndSeek(void);
# 10 "src/event_object_movement.c" 2
# 1 "include/field_camera.h" 1





struct CameraObject
{
    void (*callback)(struct CameraObject *);
    u32 spriteId;
    s32 movementSpeedX;
    s32 movementSpeedY;
    s32 x;
    s32 y;
};


extern struct CameraObject gFieldCamera;
extern u16 gTotalCameraPixelOffsetX;
extern u16 gTotalCameraPixelOffsetY;


void DrawWholeMapView(void);
void CurrentMapDrawMetatileAt(int x, int y);
void sub_8089C08(s16 *a0, s16 *a1);
void DrawDoorMetatileAt(int x, int y, u16 *arr);
void move_tilemap_camera_to_upper_left_corner(void);
void sub_8057A58(void);
void ResetCameraUpdateInfo(void);
u32 InitCameraUpdateCallback(u8 a);
void CameraUpdate(void);
void SetCameraPanningCallback(void (*a)(void));
void SetCameraPanning(s16 a, s16 b);
void InstallCameraPanAheadCallback(void);
void UpdateCameraPanning(void);
void FieldUpdateBgTilemapScroll(void);
# 11 "src/event_object_movement.c" 2
# 1 "include/field_effect.h" 1



extern const struct SpritePalette gNewGameBirchObjectPaletteInfo;
extern const struct SpriteTemplate gNewGameBirchObjectTemplate;
extern const struct OamData gNewGameBirchOamAttributes;

extern s32 gFieldEffectArguments[8];
extern void (*gPostMenuFieldCallback)(void);
extern bool8 (*gFieldCallback2)(void);

u32 FieldEffectStart(u8);
bool8 FieldEffectActiveListContains(u8 id);
void FieldEffectActiveListClear(void);
void ReturnToFieldFromFlyMapSelect(void);
u8 AddNewGameBirchObject(s16, s16, u8);
void FieldEffectStop(struct Sprite *sprite, u8 id);
u8 CreateTrainerSprite(u8 trainerSpriteID, s16 x, s16 y, u8 subpriority, u8 *buffer);
void CreateTeleportFieldEffectTask(void);
void FieldEffectActiveListRemove(u8 id);
void MultiplyInvertedPaletteRGBComponents(u16, u8, u8, u8);
void FieldEffectActiveListAdd(u8 id);
void FieldEffectScript_LoadTiles(u8 **script);
void FieldEffectScript_LoadFadedPalette(u8 **script);
void FieldEffectScript_LoadPalette(u8 **script);
void FieldEffectScript_CallNative(u8 **script, u32 *val);
void FieldEffectFreeTilesIfUnused(u16 tileStart);
void FieldEffectFreePaletteIfUnused(u8 paletteNum);
bool8 FieldEffectCmd_loadtiles(u8 **script, u32 *val);
bool8 FieldEffectCmd_loadfadedpal(u8 **script, u32 *val);
bool8 FieldEffectCmd_loadpal(u8 **script, u32 *val);
bool8 FieldEffectCmd_callnative(u8 **script, u32 *val);
bool8 FieldEffectCmd_end(u8 **script, u32 *val);
bool8 FieldEffectCmd_loadgfx_callnative(u8 **script, u32 *val);
bool8 FieldEffectCmd_loadtiles_callnative(u8 **script, u32 *val);
bool8 FieldEffectCmd_loadfadedpal_callnative(u8 **script, u32 *val);
void FieldCB_FallWarpExit(void);
void StartEscalatorWarp(u8 metatileBehavior, u8 priority);
void StartLavaridgeGymB1FWarp(u8 priority);
void StartLavaridgeGym1FWarp(u8 priority);

void sub_80B9C28(s16*, u8);
void sub_80B9C54(s16*, u8);
void sub_80B9CDC(s16*, u8);

void SpriteCB_PopOutOfAsh(struct Sprite*);
void SpriteCB_LavaridgeGymWarp(struct Sprite*);

void MultiplyPaletteRGBComponents(u16 i, u8 r, u8 g, u8 b);
void FreeResourcesAndDestroySprite(struct Sprite *sprite, u8 spriteId);
u8 CreateMonSprite_PicBox(u16 species, s16 x, s16 y, u8 subpriority);
void StartEscapeRopeFieldEffect(void);
# 12 "src/event_object_movement.c" 2
# 1 "include/field_effect_helpers.h" 1
# 9 "include/field_effect_helpers.h"
u8 CreateWarpArrowSprite(void);
u8 sub_8155800(u8 oldSpriteId);
void sub_81555AC(u8, u8);
bool8 sub_8155DA0(struct ObjectEvent *);
void sub_8155D78(struct ObjectEvent *);
void StartAshFieldEffect(s16, s16, u16, s16);
void SetUpReflection(struct ObjectEvent*, struct Sprite*, u8);
u32 StartFieldEffectForObjectEvent(u8, struct ObjectEvent*);
u8 FindTallGrassFieldEffectSpriteId(u8 localId, u8 mapNum, u8 mapGroup, s16 x, s16 y);
void sub_8155F80(struct Sprite*);
void UpdateShadowFieldEffect(struct Sprite*);
void UpdateTallGrassFieldEffect(struct Sprite*);
void WaitFieldEffectSpriteAnim(struct Sprite*);
void UpdateAshFieldEffect(struct Sprite*);
void UpdateSurfBlobFieldEffect(struct Sprite*);
void sub_8156194(struct Sprite*);
void UpdateFootprintsTireTracksFieldEffect(struct Sprite*);
void UpdateSplashFieldEffect(struct Sprite*);
void UpdateLongGrassFieldEffect(struct Sprite*);
void UpdateSandPileFieldEffect(struct Sprite*);
void UpdateDisguiseFieldEffect(struct Sprite*);
void UpdateShortGrassFieldEffect(struct Sprite*);
void UpdateHotSpringsWaterFieldEffect(struct Sprite*);
void UpdateBubblesFieldEffect(struct Sprite*);
void UpdateSparkleFieldEffect(struct Sprite*);
void SetSpriteInvisible(u8 spriteId);
void ShowWarpArrowSprite(u8 spriteId, u8 direction, s16 x, s16 y);
void sub_8155604(u8 spriteId, u8 value, s16 data1);
void sub_81555D8(u8 spriteId, u8 value);
# 13 "src/event_object_movement.c" 2
# 1 "include/field_player_avatar.h" 1



void player_step(u8 a, u16 b, u16 c);
void ClearPlayerAvatarInfo(void);
void SetPlayerAvatarExtraStateTransition(u8, u8);
u8 GetPlayerAvatarGenderByGraphicsId(u8);
bool8 TestPlayerAvatarFlags(u8);
u8 GetPlayerAvatarObjectId(void);
void PlayerGetDestCoords(s16 *, s16 *);
u8 GetPlayerFacingDirection(void);
u8 GetPlayerMovementDirection(void);
u8 PlayerGetCopyableMovement(void);
void PlayerGoSpeed1(u8);
void PlayerGoSpeed2(u8);
void PlayerRideWaterCurrent(u8);
void PlayerGoSpeed4(u8);
void PlayerOnBikeCollide(u8);
void PlayerFaceDirection(u8 a);
void PlayerTurnInPlace(u8 a);
void PlayerJumpLedge(u8 a);
void PlayerIdleWheelie(u8 a);
void PlayerStartWheelie(u8 a);
void PlayerEndWheelie(u8 a);
void PlayerStandingHoppingWheelie(u8 a);
void PlayerMovingHoppingWheelie(u8 a);
void PlayerLedgeHoppingWheelie(u8 a);
void PlayerAcroTurnJump(u8 a);
void PlayerSetAnimId(u8 a, u8 b);
bool8 IsPlayerCollidingWithFarawayIslandMew(u8 direction);
void PlayerOnBikeCollideWithFarawayIslandMew(u8 direction);
u8 CheckForObjectEventCollision(struct ObjectEvent *a, s16 b, s16 c, u8 d, u8 e);
u8 PlayerGetZCoord(void);
void SetPlayerAvatarTransitionFlags(u16 a);
void sub_808BCE8(void);
void InitPlayerAvatar(s16 a, s16 b, u8 c, u8 d);
void sub_808B864(void);
void sub_808BCF4(void);
void sub_808D074(u8);
void GetXYCoordsOneStepInFrontOfPlayer(s16 *xPtr, s16 *yPtr);
u8 GetRivalAvatarGraphicsIdByStateIdAndGender(u8, u8);
void sub_808C114(void);
u8 GetPlayerAvatarGraphicsIdByCurrentState(void);
void SetPlayerAvatarStateMask(u8 a);
u8 GetPlayerAvatarGraphicsIdByStateId(u8 a);
u8 GetJumpSpecialMovementAction(u32);
bool8 PartyHasMonWithSurf(void);
bool8 IsPlayerFacingSurfableFishableWater(void);
bool8 IsPlayerSurfingNorth(void);
void sub_808C228(u8 direction);
u8 GetPlayerAvatarFlags(void);
void sub_808B578(void);
u8 GetFRLGAvatarGraphicsIdByGender(u8);
u8 GetRSAvatarGraphicsIdByGender(u8);
void PlayerWheelieInPlace(u8 direction);
void PlayerWheelieMove(u8 direction);
void PlayerPopWheelieWhileMoving(u8 direction);
void PlayerUseAcroBikeOnBumpySlope(u8 direction);
void PlayerEndWheelieWhileMoving(u8 direction);
void sub_808D194(void);
void sub_808D1C8(void);
bool32 sub_808D1B4(void);
bool32 sub_808D1E8(void);
void SetPlayerInvisibility(bool8 invisible);
u8 player_get_pos_including_state_based_drift(s16 *x, s16 *y);
void StartFishing(u8 rod);
# 14 "src/event_object_movement.c" 2
# 1 "include/fieldmap.h" 1
# 12 "include/fieldmap.h"
# 1 "include/main.h" 1



typedef void (*MainCallback)(void);
typedef void (*IntrCallback)(void);
typedef void (*IntrFunc)(void);

struct Main
{
              MainCallback callback1;
              MainCallback callback2;

              MainCallback savedCallback;

              IntrCallback vblankCallback;
              IntrCallback hblankCallback;
              IntrCallback vcountCallback;
              IntrCallback serialCallback;

              vu16 intrCheck;

              u32 vblankCounter1;
              u32 vblankCounter2;

              u16 heldKeysRaw;
              u16 newKeysRaw;
              u16 heldKeys;
              u16 newKeys;
              u16 newAndRepeatedKeys;
              u16 keyRepeatCounter;
              bool16 watchedKeysPressed;
              u16 watchedKeysMask;

              struct OamData oamBuffer[128];

              u8 state;

              u8 oamLoadDisabled:1;
              u8 inBattle:1;
              u8 field_439_x4:1;
};

extern const u8 gGameVersion;
extern const u8 gGameLanguage;
extern const u8 RomHeaderGameCode[4];
extern const u8 RomHeaderSoftwareVersion;

extern u16 gKeyRepeatStartDelay;
extern bool8 gLinkTransferringData;
extern struct Main gMain;
extern u16 gKeyRepeatContinueDelay;
extern bool8 gSoftResetDisabled;
extern IntrFunc gIntrTable[];
extern u8 gLinkVSyncDisabled;
extern u32 IntrMain_Buffer[];
extern s8 gPcmDmaCounter;

void AgbMain(void);
void SetMainCallback2(MainCallback callback);
void InitKeys(void);
void SetVBlankCallback(IntrCallback callback);
void SetHBlankCallback(IntrCallback callback);
void SetVCountCallback(IntrCallback callback);
void SetSerialCallback(IntrCallback callback);
void InitFlashTimer(void);
void SetTrainerHillVBlankCounter(u32 *var);
void ClearTrainerHillVBlankCounter(void);
void DoSoftReset(void);
void ClearPokemonCrySongs(void);
void RestoreSerialTimer3IntrHandlers(void);
void StartTimer1(void);
void SeedRngAndSetTrainerId(void);
u16 GetGeneratedTrainerIdLower(void);
void sub_819789C(void);
# 13 "include/fieldmap.h" 2

extern struct BackupMapLayout gBackupMapLayout;

u32 MapGridGetMetatileIdAt(int, int);
u32 MapGridGetMetatileBehaviorAt(int, int);
void MapGridSetMetatileIdAt(int, int, u16);
void MapGridSetMetatileEntryAt(int, int, u16);
void GetCameraCoords(u16*, u16*);
bool8 MapGridIsImpassableAt(int, int);
int GetMapBorderIdAt(int x, int y);
int CanCameraMoveInDirection(int direction);
u16 GetBehaviorByMetatileId(u16 metatileId);
void GetCameraFocusCoords(u16 *x, u16 *y);
u8 MapGridGetMetatileLayerTypeAt(int x, int y);
u8 MapGridGetZCoordAt(int x, int y);
bool8 CameraMove(int deltaX, int deltaY);
struct MapConnection *sub_8088950(u8 direction, int x, int y);
bool8 sub_80889A8(u8 direction, int x, int y, struct MapConnection *connection);
bool8 sub_8088A0C(int x, int src_width, int dest_width, int offset);
void save_serialize_map(void);
void sub_8088B3C(u16 x, u16 y);
void InitMap(void);
void InitMapFromSavedGame(void);
void InitTrainerHillMap(void);
void InitBattlePyramidMap(bool8 setPlayerPosition);
void copy_map_tileset1_tileset2_to_vram(struct MapLayout const *mapLayout);
void apply_map_tileset1_tileset2_palette(struct MapLayout const *mapLayout);
void apply_map_tileset2_palette(struct MapLayout const *mapLayout);
void copy_map_tileset2_to_vram_2(struct MapLayout const *mapLayout);
void copy_map_tileset1_to_vram(const struct MapLayout *);
void copy_map_tileset2_to_vram(const struct MapLayout *);
struct MapHeader const *const mapconnection_get_mapheader(struct MapConnection *connection);
struct MapConnection *GetConnectionAtCoords(s16 x, s16 y);

void SpriteCB_PokeballGlow(struct Sprite *);
void SpriteCB_PokecenterMonitor(struct Sprite *);
void SpriteCB_HallOfFameMonitor(struct Sprite *);


void FieldInitRegionMap(MainCallback callback);
void sub_8088B94(int x, int y, int a2);
# 15 "src/event_object_movement.c" 2
# 1 "include/mauville_old_man.h" 1



extern struct BardSong gBardSong;

void SetMauvilleOldMan(void);
u8 GetCurrentMauvilleOldMan(void);
void ScrSpecial_SetMauvilleOldManObjEventGfx(void);
u8 sub_81201C8(void);
void sub_8120B70(OldMan *dest);
void sub_8120670(void);
void SanitizeReceivedRubyOldMan(union OldMan * oldMan, u32 r1, u32 r6);
void SanitizeReceivedEmeraldOldMan(union OldMan * oldMan, u32 unused, u32 a2);
void ResetMauvilleOldManFlag(void);
# 16 "src/event_object_movement.c" 2
# 1 "include/metatile_behavior.h" 1



bool8 MetatileBehavior_IsATile(u8);
bool8 MetatileBehavior_IsEncounterTile(u8);
bool8 MetatileBehavior_IsJumpEast(u8);
bool8 MetatileBehavior_IsJumpWest(u8);
bool8 MetatileBehavior_IsJumpNorth(u8);
bool8 MetatileBehavior_IsJumpSouth(u8);
bool8 MetatileBehavior_IsPokeGrass(u8);
bool8 MetatileBehavior_IsSandOrDeepSand(u8);
bool8 MetatileBehavior_IsDeepSand(u8);
bool8 MetatileBehavior_IsReflective(u8);
bool8 MetatileBehavior_IsIce(u8);
bool8 MetatileBehavior_IsWarpDoor(u8);
bool8 MetatileBehavior_IsDoor(u8);
bool8 MetatileBehavior_IsEscalator(u8);
bool8 MetatileBehavior_IsMB_04(u8);
bool8 MetatileBehavior_IsLadder(u8);
bool8 MetatileBehavior_IsNonAnimDoor(u8);
bool8 MetatileBehavior_IsDeepSouthWarp(u8);
bool8 MetatileBehavior_IsSurfableWaterOrUnderwater(u8);
bool8 MetatileBehavior_IsEastArrowWarp(u8);
bool8 MetatileBehavior_IsWestArrowWarp(u8);
bool8 MetatileBehavior_IsNorthArrowWarp(u8);
bool8 MetatileBehavior_IsSouthArrowWarp(u8);
bool8 MetatileBehavior_IsArrowWarp(u8);
bool8 MetatileBehavior_IsForcedMovementTile(u8);
bool8 MetatileBehavior_IsIce_2(u8);
bool8 MetatileBehavior_IsTrickHouseSlipperyFloor(u8);
bool8 MetatileBehavior_IsMB_05(u8);
bool8 MetatileBehavior_IsWalkNorth(u8);
bool8 MetatileBehavior_IsWalkSouth(u8);
bool8 MetatileBehavior_IsWalkWest(u8);
bool8 MetatileBehavior_IsWalkEast(u8);
bool8 MetatileBehavior_IsNorthwardCurrent(u8);
bool8 MetatileBehavior_IsSouthwardCurrent(u8);
bool8 MetatileBehavior_IsWestwardCurrent(u8);
bool8 MetatileBehavior_IsEastwardCurrent(u8);
bool8 MetatileBehavior_IsSlideNorth(u8);
bool8 MetatileBehavior_IsSlideSouth(u8);
bool8 MetatileBehavior_IsSlideWest(u8);
bool8 MetatileBehavior_IsSlideEast(u8);
bool8 MetatileBehavior_IsCounter(u8);
bool8 MetatileBehavior_IsPlayerFacingTVScreen(u8 tile, u8 playerDir);
bool8 MetatileBehavior_IsPC(u8);
bool8 MetatileBehavior_IsCableBoxResults1(u8);
bool8 MetatileBehavior_IsOpenSecretBaseDoor(u8);
bool8 MetatileBehavior_IsSecretBaseCave(u8);
bool8 MetatileBehavior_IsSecretBaseTree(u8);
bool8 MetatileBehavior_IsSecretBaseShrub(u8);
bool8 MetatileBehavior_IsSecretBasePC(u8);
bool8 MetatileBehavior_IsRecordMixingSecretBasePC(u8);
bool8 MetatileBehavior_IsMB_B2(u8);
bool8 MetatileBehavior_IsBlockDecoration(u8);
bool8 MetatileBehavior_IsSecretBaseImpassable(u8);
bool8 MetatileBehavior_IsMB_C6(u8);
bool8 MetatileBehavior_IsSecretBasePoster(u8);
bool8 MetatileBehavior_IsNormal(u8);
bool8 MetatileBehavior_IsSecretBaseNorthWall(u8);
bool8 MetatileBehavior_IsMB_B2_Duplicate(u8);
bool8 MetatileBehavior_HoldsSmallDecoration(u8);
bool8 MetatileBehavior_HoldsLargeDecoration(u8);
bool8 MetatileBehavior_IsSecretBaseHole(u8);
bool8 MetatileBehavior_IsSecretBaseBalloon(u8);
bool8 MetatileBehavior_IsSecretBaseBreakableDoor(u8);
bool8 MetatileBehavior_IsSecretBaseSoundMat(u8);
bool8 MetatileBehavior_IsSecretBaseGlitterMat(u8);
bool8 MetatileBehavior_IsSecretBaseSandOrnament(u8);
bool8 MetatileBehavior_IsSecretBaseShieldOrToyTV(u8);
bool8 MetatileBehavior_IsPlayerRoomPCOn(u8);
bool8 MetatileBehavior_HasRipples(u8);
bool8 MetatileBehavior_IsPuddle(u8);
bool8 MetatileBehavior_IsTallGrass(u8);
bool8 MetatileBehavior_IsLongGrass(u8);
bool8 MetatileBehavior_IsBerryTreeSoil(u8);
bool8 MetatileBehavior_IsAshGrass(u8);
bool8 MetatileBehavior_IsFootprints(u8);
bool8 MetatileBehavior_IsBridge(u8);
u8 MetatileBehavior_GetBridgeType(u8);
u8 MetatileBehavior_8089510(u8);
bool8 MetatileBehavior_IsLandWildEncounter(u8);
bool8 MetatileBehavior_IsWaterWildEncounter(u8);
bool8 MetatileBehavior_IsIndoorEncounter(u8);
bool8 MetatileBehavior_IsMountain(u8);
bool8 MetatileBehavior_IsDiveable(u8);
bool8 MetatileBehavior_IsUnableToEmerge(u8);
bool8 MetatileBehavior_IsShallowFlowingWater(u8);
bool8 MetatileBehavior_IsThinIce(u8);
bool8 MetatileBehavior_IsCrackedIce(u8);
bool8 MetatileBehavior_IsDeepOrOceanWater(u8);
bool8 MetatileBehavior_IsMB_18_OrMB_1A(u8);
bool8 MetatileBehavior_IsSurfableAndNotWaterfall(u8);
bool8 MetatileBehavior_IsEastBlocked(u8);
bool8 MetatileBehavior_IsWestBlocked(u8);
bool8 MetatileBehavior_IsNorthBlocked(u8);
bool8 MetatileBehavior_IsSouthBlocked(u8);
bool8 MetatileBehavior_IsShortGrass(u8);
bool8 MetatileBehavior_IsHotSprings(u8);
bool8 MetatileBehavior_IsWaterfall(u8);
bool8 MetatileBehavior_IsFortreeBridge(u8);
bool8 MetatileBehavior_IsPacifilogVerticalLog1(u8);
bool8 MetatileBehavior_IsPacifilogVerticalLog2(u8);
bool8 MetatileBehavior_IsPacifilogHorizontalLog1(u8);
bool8 MetatileBehavior_IsPacifilogHorizontalLog2(u8);
bool8 MetatileBehavior_IsPacifidlogLog(u8);
bool8 MetatileBehavior_IsTrickHousePuzzleDoor(u8);
bool8 MetatileBehavior_IsRegionMap(u8);
bool8 MetatileBehavior_IsClosedSootopolisDoor(u8);
bool8 MetatileBehavior_IsSkyPillarClosedDoor(u8);
bool8 MetatileBehavior_IsRoulette(u8);
bool8 MetatileBehavior_IsPokeblockFeeder(u8);
bool8 MetatileBehavior_IsSecretBaseJumpMat(u8);
bool8 MetatileBehavior_IsSecretBaseSpinMat(u8);
bool8 MetatileBehavior_IsLavaridgeB1FWarp(u8);
bool8 MetatileBehavior_IsLavaridge1FWarp(u8);
bool8 MetatileBehavior_IsAquaHideoutWarp(u8);
bool8 MetatileBehavior_IsWarpOrBridge(u8);
bool8 MetatileBehavior_IsMossdeepGymWarp(u8);
bool8 MetatileBehavior_IsSurfableFishableWater(u8);
bool8 MetatileBehavior_IsMtPyreHole(u8);
bool8 MetatileBehavior_IsCrackedFloorHole(u8);
bool8 MetatileBehavior_IsCrackedFloor(u8);
bool8 MetatileBehavior_IsMuddySlope(u8);
bool8 MetatileBehavior_IsBumpySlope(u8);
bool8 MetatileBehavior_IsIsolatedVerticalRail(u8);
bool8 MetatileBehavior_IsIsolatedHorizontalRail(u8);
bool8 MetatileBehavior_IsVerticalRail(u8);
bool8 MetatileBehavior_IsHorizontalRail(u8);
bool8 MetatileBehavior_IsSeaweed(u8);
bool8 MetatileBehavior_IsRunningDisallowed(u8);
bool8 MetatileBehavior_IsCuttableGrass(u8);
bool8 MetatileBehavior_IsRunningShoesManual(u8);
bool8 MetatileBehavior_IsPictureBookShelf(u8);
bool8 MetatileBehavior_IsBookShelf(u8);
bool8 MetatileBehavior_IsPokeCenterBookShelf(u8);
bool8 MetatileBehavior_IsVase(u8);
bool8 MetatileBehavior_IsTrashCan(u8);
bool8 MetatileBehavior_IsShopShelf(u8);
bool8 MetatileBehavior_IsBlueprint(u8);
bool8 MetatileBehavior_IsBattlePyramidWarp(u8);
bool8 MetatileBehavior_IsPlayerFacingWirelessBoxResults(u8 tile, u8 playerDir);
bool8 MetatileBehavior_IsCableBoxResults2(u8 tile, u8 playerDir);
bool8 MetatileBehavior_IsQuestionnaire(u8);
bool8 MetatileBehavior_IsLongGrass_Duplicate(u8);
bool8 MetatileBehavior_IsLongGrassSouthEdge(u8);
bool8 MetatileBehavior_IsTrainerHillTimer(u8);
# 17 "src/event_object_movement.c" 2
# 1 "include/overworld.h" 1
# 27 "include/overworld.h"
struct InitialPlayerAvatarState
{
    u8 transitionFlags;
    u8 direction;
};

struct LinkPlayerObjectEvent
{
    u8 active;
    u8 linkPlayerId;
    u8 objEventId;
    u8 movementMode;
};


extern struct WarpData gLastUsedWarp;
extern struct LinkPlayerObjectEvent gLinkPlayerObjectEvents[4];

extern u16 *gBGTilemapBuffers1;
extern u16 *gBGTilemapBuffers2;
extern u16 *gBGTilemapBuffers3;
extern u16 gHeldKeyCodeToSend;
extern void (*gFieldCallback)(void);
extern bool8 (*gFieldCallback2)(void);
extern u8 gLocalLinkPlayerId;
extern u8 gFieldLinkPlayerCount;


extern const struct UCoords32 gDirectionToVectors[];

void DoWhiteOut(void);
void Overworld_ResetStateAfterFly(void);
void Overworld_ResetStateAfterTeleport(void);
void Overworld_ResetStateAfterDigEscRope(void);
void ResetGameStats(void);
void IncrementGameStat(u8 index);
u32 GetGameStat(u8 index);
void SetGameStat(u8 index, u32 value);
void ApplyNewEncryptionKeyToGameStats(u32 newKey);
void LoadObjEventTemplatesFromHeader(void);
void LoadSaveblockObjEventScripts(void);
void Overworld_SetObjEventTemplateCoords(u8 localId, s16 x, s16 y);
void Overworld_SetObjEventTemplateMovementType(u8 localId, u8 movementType);
const struct MapLayout *GetMapLayout(void);
void ApplyCurrentWarp(void);
struct MapHeader const *const Overworld_GetMapHeaderByGroupAndId(u16 mapGroup, u16 mapNum);
struct MapHeader const *const GetDestinationWarpMapHeader(void);
void WarpIntoMap(void);
void SetWarpDestination(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetWarpDestinationToMapWarp(s8 mapGroup, s8 mapNum, s8 warpId);
void SetDynamicWarp(s32 unused, s8 mapGroup, s8 mapNum, s8 warpId);
void SetDynamicWarpWithCoords(s32 unused, s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetWarpDestinationToDynamicWarp(u8 unused);
void SetWarpDestinationToHealLocation(u8 a1);
void SetWarpDestinationToLastHealLocation(void);
void SetLastHealLocationWarp(u8 healLocationId);
void UpdateEscapeWarp(s16 x, s16 y);
void SetEscapeWarp(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetWarpDestinationToEscapeWarp(void);
void SetFixedDiveWarp(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetFixedHoleWarp(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetWarpDestinationToFixedHoleWarp(s16 x, s16 y);
void SetContinueGameWarpToHealLocation(u8 a1);
void SetContinueGameWarpToDynamicWarp(int unused);
const struct MapConnection *GetMapConnection(u8 dir);
bool8 SetDiveWarpEmerge(u16 x, u16 y);
bool8 SetDiveWarpDive(u16 x, u16 y);
void LoadMapFromCameraTransition(u8 mapGroup, u8 mapNum);
void ResetInitialPlayerAvatarState(void);
void StoreInitialPlayerAvatarState(void);
bool32 Overworld_IsBikingAllowed(void);
void SetDefaultFlashLevel(void);
void Overworld_SetFlashLevel(s32 flashLevel);
u8 Overworld_GetFlashLevel(void);
void SetCurrentMapLayout(u16 mapLayoutId);
void sub_8085540(u8 var);
u8 sub_808554C(void);
u16 GetLocationMusic(struct WarpData *warp);
u16 GetCurrLocationDefaultMusic(void);
u16 GetWarpDestinationMusic(void);
void Overworld_ResetMapMusic(void);
void Overworld_PlaySpecialMapMusic(void);
void Overworld_SetSavedMusic(u16 songNum);
void Overworld_ClearSavedMusic(void);
void Overworld_ChangeMusicToDefault(void);
void Overworld_ChangeMusicTo(u16 newMusic);
u8 GetMapMusicFadeoutSpeed(void);
void TryFadeOutOldMapMusic(void);
bool8 BGMusicStopped(void);
void Overworld_FadeOutMapMusic(void);
void UpdateAmbientCry(s16 *state, u16 *delayCounter);
u8 GetMapTypeByGroupAndId(s8 mapGroup, s8 mapNum);
u8 GetMapTypeByWarpData(struct WarpData *warp);
u8 GetCurrentMapType(void);
u8 GetLastUsedWarpMapType(void);
bool8 IsMapTypeOutdoors(u8 mapType);
bool8 Overworld_MapTypeAllowsTeleportAndFly(u8 mapType);
bool8 IsMapTypeIndoors(u8 mapType);
u8 GetSavedWarpRegionMapSectionId(void);
u8 GetCurrentRegionMapSectionId(void);
u8 GetCurrentMapBattleScene(void);
void CleanupOverworldWindowsAndTilemaps(void);
bool32 IsUpdateLinkStateCBActive(void);
void CB1_Overworld(void);
void CB2_OverworldBasic(void);
void CB2_Overworld(void);
void SetMainCallback1(void (*cb)(void));
void SetUnusedCallback(void *a0);
void CB2_NewGame(void);
void CB2_WhiteOut(void);
void CB2_LoadMap(void);
void sub_8086024(void);
void CB2_ReturnToFieldCableClub(void);
void CB2_ReturnToField(void);
void CB2_ReturnToFieldLocal(void);
void CB2_ReturnToFieldLink(void);
void CB2_ReturnToFieldFromMultiplayer(void);
void CB2_ReturnToFieldWithOpenMenu(void);
void CB2_ReturnToFieldContinueScript(void);
void CB2_ReturnToFieldContinueScriptPlayMapMusic(void);
void sub_80861E8(void);
void CB2_ContinueSavedGame(void);
void ResetAllMultiplayerState(void);
u32 sub_8087214(void);
bool32 sub_808727C(void);
u16 sub_8087288(void);
u16 sub_808729C(void);
u16 QueueExitLinkRoomKey(void);
u16 sub_80872C4(void);
bool32 sub_8087598(void);
bool32 sub_80875C8(void);
bool32 sub_8087634(void);
bool32 sub_808766C(void);
void ClearLinkPlayerObjectEvents(void);
# 18 "src/event_object_movement.c" 2
# 1 "include/palette.h" 1
# 17 "include/palette.h"
enum
{
    FAST_FADE_IN_FROM_WHITE,
    FAST_FADE_OUT_TO_WHITE,
    FAST_FADE_IN_FROM_BLACK,
    FAST_FADE_OUT_TO_BLACK,
};

struct PaletteFadeControl
{
    u32 multipurpose1;
    u8 delayCounter:6;
    u16 y:5;
    u16 targetY:5;
    u16 blendColor:15;
    bool16 active:1;
    u16 multipurpose2:6;
    bool16 yDec:1;
    bool16 bufferTransferDisabled:1;
    u16 mode:2;
    bool16 shouldResetBlendRegisters:1;
    bool16 hardwareFadeFinishing:1;
    u16 softwareFadeFinishingCounter:5;
    bool16 softwareFadeFinishing:1;
    bool16 objPaletteToggle:1;
    u8 deltaY:4;
};

extern struct PaletteFadeControl gPaletteFade;
extern u32 gPlttBufferTransferPending;
extern u8 gPaletteDecompressionBuffer[];
extern u16 gPlttBufferUnfaded[];
extern u16 gPlttBufferFaded[];

void LoadCompressedPalette(const u32 *, u16, u16);
void LoadPalette(const void *, u16, u16);
void FillPalette(u16, u16, u16);
void TransferPlttBuffer(void);
u8 UpdatePaletteFade(void);
void ResetPaletteFade(void);
void ReadPlttIntoBuffers(void);
bool8 BeginNormalPaletteFade(u32, s8, u8, u8, u16);
bool8 unref_sub_8073D3C(u32, u8, u8, u8, u16);
void unref_sub_8073D84(u8, u32 *);
void ResetPaletteStructByUid(u16);
void ResetPaletteStruct(u8);
void ResetPaletteFadeControl(void);
void unref_sub_8074168(u16);
void unref_sub_8074194(u16);
void InvertPlttBuffer(u32);
void TintPlttBuffer(u32, s8, s8, s8);
void UnfadePlttBuffer(u32);
void BeginFastPaletteFade(u8);
void BeginHardwarePaletteFade(u8, u8, u8, u8, u8);
void BlendPalettes(u32 selectedPalettes, u8 coeff, u16 color);
void BlendPalettesUnfaded(u32, u8, u16);
void sub_80A2C44(u32 a1, s8 a2, u8 a3, u8 a4, u16 a5, u8 a6, u8 a7);
void TintPalette_GrayScale(u16 *palette, u16 count);
void TintPalette_GrayScale2(u16 *palette, u16 count);
void TintPalette_SepiaTone(u16 *palette, u16 count);
void TintPalette_CustomTone(u16 *palette, u16 count, u16 rTone, u16 gTone, u16 bTone);
# 19 "src/event_object_movement.c" 2
# 1 "include/random.h" 1



extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);
# 20 "include/random.h"
void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 20 "src/event_object_movement.c" 2

# 1 "include/task.h" 1
# 10 "include/task.h"
typedef void (*TaskFunc)(u8 taskId);

struct Task
{
    TaskFunc func;
    bool8 isActive;
    u8 prev;
    u8 next;
    u8 priority;
    s16 data[16];
};

extern struct Task gTasks[];

void ResetTasks(void);
u8 CreateTask(TaskFunc func, u8 priority);
void DestroyTask(u8 taskId);
void RunTasks(void);
void TaskDummy(u8 taskId);
void SetTaskFuncWithFollowupFunc(u8 taskId, TaskFunc func, TaskFunc followupFunc);
void SwitchTaskToFollowupFunc(u8 taskId);
bool8 FuncIsActiveTask(TaskFunc func);
u8 FindTaskIdByFunc(TaskFunc func);
u8 GetTaskCount(void);
void SetWordTaskArg(u8 taskId, u8 dataElem, u32 value);
u32 GetWordTaskArg(u8 taskId, u8 dataElem);
# 22 "src/event_object_movement.c" 2
# 1 "include/trainer_see.h" 1



struct ApproachingTrainer
{
    u8 objectEventId;
    u8 radius;
    const u8 *trainerScriptPtr;
    u8 taskId;
};

extern u16 gWhichTrainerToFaceAfterBattle;
extern u8 gPostBattleMovementScript[4];
extern struct ApproachingTrainer gApproachingTrainers[2];
extern u8 gNoOfApproachingTrainers;
extern bool8 gTrainerApproachedPlayer;
extern u8 gApproachingTrainerId;

bool8 CheckForTrainersWantingBattle(void);
void sub_80B4578(struct ObjectEvent *var);
void EndTrainerApproach(void);
void TryPrepareSecondApproachingTrainer(void);
u8 FldEff_ExclamationMarkIcon(void);
u8 FldEff_QuestionMarkIcon(void);
u8 FldEff_HeartIcon(void);
u8 GetCurrentApproachingTrainerObjectEventId(void);
u8 GetChosenApproachingTrainerObjectEventId(u8 arrayId);
void PlayerFaceTrainerAfterBattle(void);
# 23 "src/event_object_movement.c" 2
# 1 "include/trainer_hill.h" 1





struct TrainerHillTrainer
{
    u8 name[11];
    u8 facilityClass;
    u32 unused;
    u16 speechBefore[6];
    u16 speechWin[6];
    u16 speechLose[6];
    u16 speechAfter[6];
    struct BattleTowerPokemon mons[6];
};

struct TrHillRoomTrainers
{
    u8 name[2][11];
    u8 facilityClass[2];
};

struct TrHillDisplay
{
    u8 data[0x100];
    u16 unk3A0[16];
    u8 coords[2];
    u8 direction;
    u8 range;
};

struct TrHillFloor
{
    u8 trainerNum1;
    u8 trainerNum2;
    struct TrainerHillTrainer trainers[2];
    struct TrHillDisplay display;
};

struct TrHillTag
{
    u8 numTrainers;
    u8 unused1;
    u8 numFloors;
    u32 checksum;
    struct TrHillFloor floors[0];
};

extern u32 *gTrainerHillVBlankCounter;

void CallTrainerHillFunction(void);
void ResetTrainerHillResults(void);
u8 GetTrainerHillOpponentClass(u16 trainerId);
void GetTrainerHillTrainerName(u8 *dst, u16 trainerId);
u8 GetTrainerHillTrainerFrontSpriteId(u16 trainerId);
void InitTrainerHillBattleStruct(void);
void FreeTrainerHillBattleStruct(void);
void CopyTrainerHillTrainerText(u8 which, u16 trainerId);
bool8 InTrainerHillChallenge(void);
void nullsub_129(void);
void PrintOnTrainerHillRecordsWindow(void);
void LoadTrainerHillObjectEventTemplates(void);
bool32 LoadTrainerHillFloorObjectEventScripts(void);
void GenerateTrainerHillFloorLayout(u16 *mapArg);
bool32 InTrainerHill(void);
u8 GetCurrentTrainerHillMapId(void);
const struct WarpEvent* SetWarpDestinationTrainerHill4F(void);
const struct WarpEvent* SetWarpDestinationTrainerHillFinalFloor(u8 warpEventId);
u16 LocalIdToHillTrainerId(u8 localId);
bool8 GetHillTrainerFlag(u8 objectEventId);
void SetHillTrainerFlag(void);
const u8 *GetTrainerHillTrainerScript(void);
void FillHillTrainerParty(void);
void FillHillTrainersParties(void);
u8 GetTrainerEncounterMusicIdInTrainerHill(u16 trainerId);
u8 GetNumFloorsInTrainerHillChallenge(void);
void sub_81D64C0(void);
bool32 sub_81D6534(void);
# 24 "src/event_object_movement.c" 2
# 1 "include/util.h" 1





extern const u8 gMiscBlank_Gfx[];
extern const u32 gBitTable[];

u8 CreateInvisibleSpriteWithCallback(void (*)(struct Sprite *));
void StoreWordInTwoHalfwords(u16 *, u32);
void LoadWordFromTwoHalfwords(u16 *, u32 *);
int CountTrailingZeroBits(u32 value);
u16 CalcCRC16(const u8 *data, s32 length);
u16 CalcCRC16WithTable(const u8 *data, u32 length);
u32 CalcByteArraySum(const u8* data, u32 length);
void BlendPalette(u16 palOffset, u16 numEntries, u8 coeff, u16 blendColor);
void DoBgAffineSet(struct BgAffineDstData *dest, u32 texX, u32 texY, s16 scrX, s16 scrY, s16 sx, s16 sy, u16 alpha);
void CopySpriteTiles(u8 shape, u8 size, u8 *tiles, u16 *tilemap, u8 *output);
# 25 "src/event_object_movement.c" 2
# 1 "include/constants/event_object_movement.h" 1
# 26 "src/event_object_movement.c" 2
# 1 "include/constants/event_objects.h" 1
# 27 "src/event_object_movement.c" 2
# 1 "include/constants/field_effects.h" 1
# 28 "src/event_object_movement.c" 2
# 1 "include/constants/items.h" 1
# 29 "src/event_object_movement.c" 2
# 1 "include/constants/mauville_old_man.h" 1
# 30 "src/event_object_movement.c" 2
# 1 "include/constants/trainer_types.h" 1
# 31 "src/event_object_movement.c" 2
# 56 "src/event_object_movement.c"
__attribute__((section("ewram_data"))) u8 sCurrentReflectionType = 0;
__attribute__((section("ewram_data"))) u16 sCurrentSpecialObjectPaletteTag = 0;
__attribute__((section("ewram_data"))) struct LockedAnimObjectEvents *gLockedAnimObjectEvents = {0};

static void MoveCoordsInDirection(u32, s16 *, s16 *, s16, s16);
static bool8 ObjectEventExecSingleMovementAction(struct ObjectEvent *, struct Sprite *);
static void SetMovementDelay(struct Sprite *, s16);
static bool8 WaitForMovementDelay(struct Sprite *);
static u8 GetCollisionInDirection(struct ObjectEvent *, u8);
static u32 state_to_direction(u8, u32, u32);
static void TryEnableObjectEventAnim(struct ObjectEvent *, struct Sprite *);
static void ObjectEventExecHeldMovementAction(struct ObjectEvent *, struct Sprite *);
static void UpdateObjectEventSpriteAnimPause(struct ObjectEvent *, struct Sprite *);
static bool8 IsCoordOutsideObjectEventMovementRange(struct ObjectEvent *, s16, s16);
static bool8 IsMetatileDirectionallyImpassable(struct ObjectEvent *, s16, s16, u8);
static bool8 DoesObjectCollideWithObjectAt(struct ObjectEvent *, s16, s16);
static void sub_8096530(struct ObjectEvent *, struct Sprite *);
static void UpdateObjEventSpriteVisibility(struct ObjectEvent *, struct Sprite *);
static void ObjectEventUpdateMetatileBehaviors(struct ObjectEvent*);
static void GetGroundEffectFlags_Reflection(struct ObjectEvent*, u32*);
static void GetGroundEffectFlags_TallGrassOnSpawn(struct ObjectEvent*, u32*);
static void GetGroundEffectFlags_LongGrassOnSpawn(struct ObjectEvent*, u32*);
static void GetGroundEffectFlags_SandHeap(struct ObjectEvent*, u32*);
static void GetGroundEffectFlags_ShallowFlowingWater(struct ObjectEvent*, u32*);
static void GetGroundEffectFlags_ShortGrass(struct ObjectEvent*, u32*);
static void GetGroundEffectFlags_HotSprings(struct ObjectEvent*, u32*);
static void GetGroundEffectFlags_TallGrassOnBeginStep(struct ObjectEvent*, u32*);
static void GetGroundEffectFlags_LongGrassOnBeginStep(struct ObjectEvent*, u32*);
static void GetGroundEffectFlags_Tracks(struct ObjectEvent*, u32*);
static void GetGroundEffectFlags_Puddle(struct ObjectEvent*, u32*);
static void GetGroundEffectFlags_Ripple(struct ObjectEvent*, u32*);
static void GetGroundEffectFlags_Seaweed(struct ObjectEvent*, u32*);
static void GetGroundEffectFlags_JumpLanding(struct ObjectEvent*, u32*);
static u8 ObjectEventCheckForReflectiveSurface(struct ObjectEvent*);
static u8 GetReflectionTypeByMetatileBehavior(u32);
static void InitObjectPriorityByZCoord(struct Sprite *sprite, u8 z);
static void ObjectEventUpdateSubpriority(struct ObjectEvent*, struct Sprite*);
static void DoTracksGroundEffect_None(struct ObjectEvent*, struct Sprite*, u8);
static void DoTracksGroundEffect_Footprints(struct ObjectEvent*, struct Sprite*, u8);
static void DoTracksGroundEffect_BikeTireTracks(struct ObjectEvent*, struct Sprite*, u8);
static void DoRippleFieldEffect(struct ObjectEvent*, struct Sprite*);
static void DoGroundEffects_OnSpawn(struct ObjectEvent*, struct Sprite*);
static void DoGroundEffects_OnBeginStep(struct ObjectEvent*, struct Sprite*);
static void DoGroundEffects_OnFinishStep(struct ObjectEvent*, struct Sprite*);
static void sub_8097D68(struct Sprite*);
static void ApplyLevitateMovement(u8);
static bool8 MovementType_Disguise_Callback(struct ObjectEvent *, struct Sprite *);
static bool8 MovementType_Hidden_Callback(struct ObjectEvent *, struct Sprite *);
static void CreateReflectionEffectSprites(void);
static u8 GetObjectEventIdByLocalId(u8);
static u8 GetObjectEventIdByLocalIdAndMapInternal(u8, u8, u8);
static bool8 GetAvailableObjectEventId(u16, u8, u8, u8 *);
static void SetObjectEventDynamicGraphicsId(struct ObjectEvent *);
static void RemoveObjectEventInternal(struct ObjectEvent *);
static u16 GetObjectEventFlagIdByObjectEventId(u8);
static void UpdateObjectEventVisibility(struct ObjectEvent *, struct Sprite *);
static void MakeObjectTemplateFromObjectEventTemplate(struct ObjectEventTemplate *, struct SpriteTemplate *, const struct SubspriteTable **);
static void GetObjectEventMovingCameraOffset(s16 *, s16 *);
static struct ObjectEventTemplate *GetObjectEventTemplateByLocalIdAndMap(u8, u8, u8);
static void LoadObjectEventPalette(u16);
static void RemoveObjectEventIfOutsideView(struct ObjectEvent *);
static void sub_808E1B8(u8, s16, s16);
static void SetPlayerAvatarObjectEventIdAndObjectId(u8, u8);
static void sub_808E38C(struct ObjectEvent *);
static u8 sub_808E8F4(const struct SpritePalette *);
static u8 FindObjectEventPaletteIndexByTag(u16);
static void sub_808EAB0(u16, u8);
static bool8 ObjectEventDoesZCoordMatch(struct ObjectEvent *, u8);
static void ObjectCB_CameraObject(struct Sprite *);
static void CameraObject_0(struct Sprite *);
static void CameraObject_1(struct Sprite *);
static void CameraObject_2(struct Sprite *);
static struct ObjectEventTemplate *FindObjectEventTemplateByLocalId(u8 localId, struct ObjectEventTemplate *templates, u8 count);
static void ClearObjectEventMovement(struct ObjectEvent *, struct Sprite *);
static void ObjectEventSetSingleMovement(struct ObjectEvent *, struct Sprite *, u8);
static void oamt_npc_ministep_reset(struct Sprite *, u8, u8);
static void UpdateObjectEventSpriteSubpriorityAndVisibility(struct Sprite *);

const u8 gReflectionEffectPaletteMap[] = {1, 1, 6, 7, 8, 9, 6, 7, 8, 9, 11, 11, 0, 0, 0, 0};

const struct SpriteTemplate gCameraSpriteTemplate = {0, 0xFFFF, &gDummyOamData, gDummySpriteAnimTable, ((void *)0), gDummySpriteAffineAnimTable, ObjectCB_CameraObject};

void (*const gCameraObjectFuncs[])(struct Sprite *) = {
    CameraObject_0,
    CameraObject_1,
    CameraObject_2,
};

# 1 "src/data/object_events/object_event_graphics.h" 1
const u32 gObjectEventPic_BrendanNormal[] = INCBIN_U32("graphics/object_events/pics/people/brendan/walking.4bpp");
const u32 gObjectEventPic_BrendanRunning[] = INCBIN_U32("graphics/object_events/pics/people/brendan/running.4bpp");
const u16 gObjectEventPalette8[] = INCBIN_U16("graphics/object_events/palettes/08.gbapal");
const u32 gObjectEventPic_RubySapphireBrendanNormal[] = INCBIN_U32("graphics/object_events/pics/people/ruby_sapphire_brendan/walking.4bpp");
const u32 gObjectEventPic_RubySapphireBrendanRunning[] = INCBIN_U32("graphics/object_events/pics/people/ruby_sapphire_brendan/running.4bpp");
const u16 gObjectEventPalette33[] = INCBIN_U16("graphics/object_events/palettes/33.gbapal");
const u16 gObjectEventPaletteNull1[16] = {};
const u16 gObjectEventPaletteNull2[16] = {};
const u16 gObjectEventPaletteNull3[16] = {};
const u16 gObjectEventPaletteNull4[16] = {};
const u16 gObjectEventPaletteNull5[16] = {};
const u16 gObjectEventPaletteNull6[16] = {};
const u16 gObjectEventPaletteNull7[16] = {};
const u16 gObjectEventPaletteNull8[16] = {};
const u16 gObjectEventPaletteNull9[16] = {};
const u16 gObjectEventPaletteNull10[16] = {};
const u16 gObjectEventPaletteNull11[16] = {};
const u16 gObjectEventPaletteNull12[16] = {};
const u16 gObjectEventPaletteNull13[16] = {};
const u16 gObjectEventPaletteNull14[16] = {};
const u16 gObjectEventPaletteNull15[16] = {};
const u16 gObjectEventPalette9[] = INCBIN_U16("graphics/object_events/palettes/09.gbapal");
const u16 gObjectEventPalette10[] = INCBIN_U16("graphics/object_events/palettes/10.gbapal");
const u32 gObjectEventPic_BrendanFieldMove[] = INCBIN_U32("graphics/object_events/pics/people/brendan/field_move.4bpp");
const u32 gObjectEventPic_BrendanSurfing[] = INCBIN_U32("graphics/object_events/pics/people/brendan/surfing.4bpp");
const u32 gObjectEventPic_BrendanMachBike[] = INCBIN_U32("graphics/object_events/pics/people/brendan/mach_bike.4bpp");
const u32 gObjectEventPic_BrendanAcroBike[] = INCBIN_U32("graphics/object_events/pics/people/brendan/acro_bike.4bpp");
const u32 gObjectEventPic_BrendanFishing[] = INCBIN_U32("graphics/object_events/pics/people/brendan/fishing.4bpp");
const u32 gObjectEventPic_BrendanWatering[] = INCBIN_U32("graphics/object_events/pics/people/brendan/watering.4bpp");
const u32 gObjectEventPic_BrendanDecorating[] = INCBIN_U32("graphics/object_events/pics/people/brendan/decorating.4bpp");
const u32 gObjectEventPic_MayDecorating[] = INCBIN_U32("graphics/object_events/pics/people/may/decorating.4bpp");
const u32 gObjectEventPic_BrendanUnderwater[] = INCBIN_U32("graphics/object_events/pics/people/brendan/underwater.4bpp");
const u32 gObjectEventPic_MayUnderwater[] = INCBIN_U32("graphics/object_events/pics/people/may/underwater.4bpp");
const u16 gObjectEventPalette11[] = INCBIN_U16("graphics/object_events/palettes/11.gbapal");
const u32 gObjectEventPic_MayNormal[] = INCBIN_U32("graphics/object_events/pics/people/may/walking.4bpp");
const u32 gObjectEventPic_MayRunning[] = INCBIN_U32("graphics/object_events/pics/people/may/running.4bpp");
const u16 gObjectEventPalette17[] = INCBIN_U16("graphics/object_events/palettes/17.gbapal");
const u16 gObjectEventPalette18[] = INCBIN_U16("graphics/object_events/palettes/18.gbapal");
const u32 gObjectEventPic_RubySapphireMayNormal[] = INCBIN_U32("graphics/object_events/pics/people/ruby_sapphire_may/walking.4bpp");
const u32 gObjectEventPic_RubySapphireMayRunning[] = INCBIN_U32("graphics/object_events/pics/people/ruby_sapphire_may/running.4bpp");
const u16 gObjectEventPalette34[] = INCBIN_U16("graphics/object_events/palettes/34.gbapal");
const u16 gUnusedObjectEventPalette[] = INCBIN_U16("graphics/object_events/palettes/unused_palette.gbapal");
const u16 gObjectEventPaletteNull16[16] = {};
const u16 gObjectEventPaletteNull17[16] = {};
const u16 gObjectEventPaletteNull18[16] = {};
const u16 gObjectEventPaletteNull19[16] = {};
const u16 gObjectEventPaletteNull20[16] = {};
const u16 gObjectEventPaletteNull21[16] = {};
const u16 gObjectEventPaletteNull22[16] = {};
const u16 gObjectEventPaletteNull23[16] = {};
const u16 gObjectEventPaletteNull24[16] = {};
const u16 gObjectEventPaletteNull25[16] = {};
const u16 gObjectEventPaletteNull26[16] = {};
const u16 gObjectEventPaletteNull27[16] = {};
const u16 gObjectEventPaletteNull28[16] = {};
const u16 gObjectEventPaletteNull29[16] = {};
const u32 gObjectEventPic_MayMachBike[] = INCBIN_U32("graphics/object_events/pics/people/may/mach_bike.4bpp");
const u32 gObjectEventPic_MayAcroBike[] = INCBIN_U32("graphics/object_events/pics/people/may/acro_bike.4bpp");
const u32 gObjectEventPic_MaySurfing[] = INCBIN_U32("graphics/object_events/pics/people/may/surfing.4bpp");
const u32 gObjectEventPic_MayFieldMove[] = INCBIN_U32("graphics/object_events/pics/people/may/field_move.4bpp");
const u32 gObjectEventPic_MayFishing[] = INCBIN_U32("graphics/object_events/pics/people/may/fishing.4bpp");
const u32 gObjectEventPic_MayWatering[] = INCBIN_U32("graphics/object_events/pics/people/may/watering.4bpp");
const u16 gObjectEventPalette0[] = INCBIN_U16("graphics/object_events/palettes/00.gbapal");
const u16 gObjectEventPalette1[] = INCBIN_U16("graphics/object_events/palettes/01.gbapal");
const u16 gObjectEventPalette2[] = INCBIN_U16("graphics/object_events/palettes/02.gbapal");
const u16 gObjectEventPalette3[] = INCBIN_U16("graphics/object_events/palettes/03.gbapal");
const u16 gObjectEventPalette4[] = INCBIN_U16("graphics/object_events/palettes/04.gbapal");
const u16 gObjectEventPalette5[] = INCBIN_U16("graphics/object_events/palettes/05.gbapal");
const u16 gObjectEventPalette6[] = INCBIN_U16("graphics/object_events/palettes/06.gbapal");
const u16 gObjectEventPalette7[] = INCBIN_U16("graphics/object_events/palettes/07.gbapal");
const u32 gObjectEventPic_NinjaBoy[] = INCBIN_U32("graphics/object_events/pics/people/ninja_boy.4bpp");
const u32 gObjectEventPic_Twin[] = INCBIN_U32("graphics/object_events/pics/people/twin.4bpp");
const u32 gObjectEventPic_Boy1[] = INCBIN_U32("graphics/object_events/pics/people/boy_1.4bpp");
const u32 gObjectEventPic_Girl1[] = INCBIN_U32("graphics/object_events/pics/people/girl_1.4bpp");
const u32 gObjectEventPic_Boy2[] = INCBIN_U32("graphics/object_events/pics/people/boy_2.4bpp");
const u32 gObjectEventPic_Girl2[] = INCBIN_U32("graphics/object_events/pics/people/girl_2.4bpp");
const u32 gObjectEventPic_LittleBoy[] = INCBIN_U32("graphics/object_events/pics/people/little_boy.4bpp");
const u32 gObjectEventPic_LittleGirl[] = INCBIN_U32("graphics/object_events/pics/people/little_girl.4bpp");
const u32 gObjectEventPic_Boy3[] = INCBIN_U32("graphics/object_events/pics/people/boy_3.4bpp");
const u32 gObjectEventPic_Girl3[] = INCBIN_U32("graphics/object_events/pics/people/girl_3.4bpp");
const u32 gObjectEventPic_RichBoy[] = INCBIN_U32("graphics/object_events/pics/people/rich_boy.4bpp");
const u32 gObjectEventPic_Woman1[] = INCBIN_U32("graphics/object_events/pics/people/woman_1.4bpp");
const u32 gObjectEventPic_FatMan[] = INCBIN_U32("graphics/object_events/pics/people/fat_man.4bpp");
const u32 gObjectEventPic_PokefanF[] = INCBIN_U32("graphics/object_events/pics/people/pokefan_f.4bpp");
const u32 gObjectEventPic_Man1[] = INCBIN_U32("graphics/object_events/pics/people/man_1.4bpp");
const u32 gObjectEventPic_Woman2[] = INCBIN_U32("graphics/object_events/pics/people/woman_2.4bpp");
const u32 gObjectEventPic_ExpertM[] = INCBIN_U32("graphics/object_events/pics/people/expert_m.4bpp");
const u32 gObjectEventPic_ExpertF[] = INCBIN_U32("graphics/object_events/pics/people/expert_f.4bpp");
const u32 gObjectEventPic_Man2[] = INCBIN_U32("graphics/object_events/pics/people/man_2.4bpp");
const u32 gObjectEventPic_Woman3[] = INCBIN_U32("graphics/object_events/pics/people/woman_3.4bpp");
const u32 gObjectEventPic_PokefanM[] = INCBIN_U32("graphics/object_events/pics/people/pokefan_m.4bpp");
const u32 gObjectEventPic_Woman4[] = INCBIN_U32("graphics/object_events/pics/people/woman_4.4bpp");
const u32 gObjectEventPic_Cook[] = INCBIN_U32("graphics/object_events/pics/people/cook.4bpp");
const u32 gObjectEventPic_LinkReceptionist[] = INCBIN_U32("graphics/object_events/pics/people/link_receptionist.4bpp");
const u32 gObjectEventPic_OldMan[] = INCBIN_U32("graphics/object_events/pics/people/old_man.4bpp");
const u32 gObjectEventPic_OldWoman[] = INCBIN_U32("graphics/object_events/pics/people/old_woman.4bpp");
const u32 gObjectEventPic_Camper[] = INCBIN_U32("graphics/object_events/pics/people/camper.4bpp");
const u32 gObjectEventPic_Picnicker[] = INCBIN_U32("graphics/object_events/pics/people/picnicker.4bpp");
const u32 gObjectEventPic_Man3[] = INCBIN_U32("graphics/object_events/pics/people/man_3.4bpp");
const u32 gObjectEventPic_Woman5[] = INCBIN_U32("graphics/object_events/pics/people/woman_5.4bpp");
const u32 gObjectEventPic_Youngster[] = INCBIN_U32("graphics/object_events/pics/people/youngster.4bpp");
const u32 gObjectEventPic_BugCatcher[] = INCBIN_U32("graphics/object_events/pics/people/bug_catcher.4bpp");
const u32 gObjectEventPic_PsychicM[] = INCBIN_U32("graphics/object_events/pics/people/psychic_m.4bpp");
const u32 gObjectEventPic_SchoolKidM[] = INCBIN_U32("graphics/object_events/pics/people/school_kid_m.4bpp");
const u32 gObjectEventPic_Maniac[] = INCBIN_U32("graphics/object_events/pics/people/maniac.4bpp");
const u32 gObjectEventPic_HexManiac[] = INCBIN_U32("graphics/object_events/pics/people/hex_maniac.4bpp");
const u32 gObjectEventPic_UnusedWoman[] = INCBIN_U32("graphics/object_events/pics/people/unused_woman.4bpp");
const u32 gObjectEventPic_SwimmerM[] = INCBIN_U32("graphics/object_events/pics/people/swimmer_m.4bpp");
const u32 gObjectEventPic_SwimmerF[] = INCBIN_U32("graphics/object_events/pics/people/swimmer_f.4bpp");
const u32 gObjectEventPic_BlackBelt[] = INCBIN_U32("graphics/object_events/pics/people/black_belt.4bpp");
const u32 gObjectEventPic_Beauty[] = INCBIN_U32("graphics/object_events/pics/people/beauty.4bpp");
const u32 gObjectEventPic_Scientist1[] = INCBIN_U32("graphics/object_events/pics/people/scientist_1.4bpp");
const u32 gObjectEventPic_Lass[] = INCBIN_U32("graphics/object_events/pics/people/lass.4bpp");
const u32 gObjectEventPic_Gentleman[] = INCBIN_U32("graphics/object_events/pics/people/gentleman.4bpp");
const u32 gObjectEventPic_Sailor[] = INCBIN_U32("graphics/object_events/pics/people/sailor.4bpp");
const u32 gObjectEventPic_Fisherman[] = INCBIN_U32("graphics/object_events/pics/people/fisherman.4bpp");
const u32 gObjectEventPic_RunningTriathleteM[] = INCBIN_U32("graphics/object_events/pics/people/running_triathlete_m.4bpp");
const u32 gObjectEventPic_RunningTriathleteF[] = INCBIN_U32("graphics/object_events/pics/people/running_triathlete_f.4bpp");
const u32 gObjectEventPic_TuberF[] = INCBIN_U32("graphics/object_events/pics/people/tuber_f.4bpp");
const u32 gObjectEventPic_TuberM[] = INCBIN_U32("graphics/object_events/pics/people/tuber_m.4bpp");
const u32 gObjectEventPic_Hiker[] = INCBIN_U32("graphics/object_events/pics/people/hiker.4bpp");
const u32 gObjectEventPic_CyclingTriathleteM[] = INCBIN_U32("graphics/object_events/pics/people/cycling_triathlete_m.4bpp");
const u32 gObjectEventPic_CyclingTriathleteF[] = INCBIN_U32("graphics/object_events/pics/people/cycling_triathlete_f.4bpp");
const u32 gObjectEventPic_Man4[] = INCBIN_U32("graphics/object_events/pics/people/man_4.4bpp");
const u32 gObjectEventPic_Man5[] = INCBIN_U32("graphics/object_events/pics/people/man_5.4bpp");
const u32 gObjectEventPic_Nurse[] = INCBIN_U32("graphics/object_events/pics/people/nurse.4bpp");
const u32 gObjectEventPic_ItemBall[] = INCBIN_U32("graphics/object_events/pics/misc/item_ball.4bpp");
const u32 gObjectEventPic_ProfBirch[] = INCBIN_U32("graphics/object_events/pics/people/prof_birch.4bpp");
const u32 gObjectEventPic_ReporterM[] = INCBIN_U32("graphics/object_events/pics/people/reporter_m.4bpp");
const u32 gObjectEventPic_ReporterF[] = INCBIN_U32("graphics/object_events/pics/people/reporter_f.4bpp");
const u32 gObjectEventPic_MauvilleOldMan1[] = INCBIN_U32("graphics/object_events/pics/people/mauville_old_man_1.4bpp");
const u32 gObjectEventPic_MauvilleOldMan2[] = INCBIN_U32("graphics/object_events/pics/people/mauville_old_man_2.4bpp");
const u32 gObjectEventPic_MartEmployee[] = INCBIN_U32("graphics/object_events/pics/people/mart_employee.4bpp");
const u32 gObjectEventPic_RooftopSaleWoman[] = INCBIN_U32("graphics/object_events/pics/people/rooftop_sale_woman.4bpp");
const u32 gObjectEventPic_Teala[] = INCBIN_U32("graphics/object_events/pics/people/teala.4bpp");
const u32 gObjectEventPic_Artist[] = INCBIN_U32("graphics/object_events/pics/people/artist.4bpp");
const u32 gObjectEventPic_Cameraman[] = INCBIN_U32("graphics/object_events/pics/people/cameraman.4bpp");
const u32 gObjectEventPic_Scientist2[] = INCBIN_U32("graphics/object_events/pics/people/scientist_2.4bpp");
const u32 gObjectEventPic_DevonEmployee[] = INCBIN_U32("graphics/object_events/pics/people/devon_employee.4bpp");
const u32 gObjectEventPic_AquaMemberM[] = INCBIN_U32("graphics/object_events/pics/people/team_aqua/aqua_member_m.4bpp");
const u32 gObjectEventPic_AquaMemberF[] = INCBIN_U32("graphics/object_events/pics/people/team_aqua/aqua_member_f.4bpp");
const u32 gObjectEventPic_MagmaMemberM[] = INCBIN_U32("graphics/object_events/pics/people/team_magma/magma_member_m.4bpp");
const u32 gObjectEventPic_MagmaMemberF[] = INCBIN_U32("graphics/object_events/pics/people/team_magma/magma_member_f.4bpp");
const u32 gObjectEventPic_Sidney[] = INCBIN_U32("graphics/object_events/pics/people/elite_four/sidney.4bpp");
const u32 gObjectEventPic_Phoebe[] = INCBIN_U32("graphics/object_events/pics/people/elite_four/phoebe.4bpp");
const u32 gObjectEventPic_Glacia[] = INCBIN_U32("graphics/object_events/pics/people/elite_four/glacia.4bpp");
const u32 gObjectEventPic_Drake[] = INCBIN_U32("graphics/object_events/pics/people/elite_four/drake.4bpp");
const u32 gObjectEventPic_Roxanne[] = INCBIN_U32("graphics/object_events/pics/people/gym_leaders/roxanne.4bpp");
const u32 gObjectEventPic_Brawly[] = INCBIN_U32("graphics/object_events/pics/people/gym_leaders/brawly.4bpp");
const u32 gObjectEventPic_Wattson[] = INCBIN_U32("graphics/object_events/pics/people/gym_leaders/wattson.4bpp");
const u32 gObjectEventPic_Flannery[] = INCBIN_U32("graphics/object_events/pics/people/gym_leaders/flannery.4bpp");
const u32 gObjectEventPic_Norman[] = INCBIN_U32("graphics/object_events/pics/people/gym_leaders/norman.4bpp");
const u32 gObjectEventPic_Winona[] = INCBIN_U32("graphics/object_events/pics/people/gym_leaders/winona.4bpp");
const u32 gObjectEventPic_Liza[] = INCBIN_U32("graphics/object_events/pics/people/gym_leaders/liza.4bpp");
const u32 gObjectEventPic_Tate[] = INCBIN_U32("graphics/object_events/pics/people/gym_leaders/tate.4bpp");
const u32 gObjectEventPic_Wallace[] = INCBIN_U32("graphics/object_events/pics/people/wallace.4bpp");
const u32 gObjectEventPic_Steven[] = INCBIN_U32("graphics/object_events/pics/people/steven.4bpp");
const u32 gObjectEventPic_Wally[] = INCBIN_U32("graphics/object_events/pics/people/wally.4bpp");
const u32 gObjectEventPic_RubySapphireLittleBoy[] = INCBIN_U32("graphics/object_events/pics/people/rs_little_boy.4bpp");
const u32 gObjectEventPic_HotSpringsOldWoman[] = INCBIN_U32("graphics/object_events/pics/people/hot_springs_old_woman.4bpp");
const u32 gObjectEventPic_LatiasLatios[] = INCBIN_U32("graphics/object_events/pics/pokemon/latias_latios.4bpp");
const u32 gObjectEventPic_GameboyKid[] = INCBIN_U32("graphics/object_events/pics/people/gameboy_kid.4bpp");
const u32 gObjectEventPic_ContestJudge[] = INCBIN_U32("graphics/object_events/pics/people/contest_judge.4bpp");
const u32 gObjectEventPic_Archie[] = INCBIN_U32("graphics/object_events/pics/people/team_aqua/archie.4bpp");
const u32 gObjectEventPic_Maxie[] = INCBIN_U32("graphics/object_events/pics/people/team_magma/maxie.4bpp");
const u32 gObjectEventPic_Kyogre[] = INCBIN_U32("graphics/object_events/pics/pokemon/kyogre.4bpp");
const u32 gObjectEventPic_Groudon[] = INCBIN_U32("graphics/object_events/pics/pokemon/groudon.4bpp");
const u32 gObjectEventPic_Regi[] = INCBIN_U32("graphics/object_events/pics/pokemon/regi.4bpp");
const u32 gObjectEventPic_Skitty[] = INCBIN_U32("graphics/object_events/pics/pokemon/skitty.4bpp");
const u32 gObjectEventPic_Kecleon[] = INCBIN_U32("graphics/object_events/pics/pokemon/kecleon.4bpp");
const u32 gObjectEventPic_Rayquaza[] = INCBIN_U32("graphics/object_events/pics/pokemon/rayquaza.4bpp");
const u32 gObjectEventPic_RayquazaStill[] = INCBIN_U32("graphics/object_events/pics/pokemon/rayquaza_still.4bpp");
const u32 gObjectEventPic_Zigzagoon[] = INCBIN_U32("graphics/object_events/pics/pokemon/zigzagoon.4bpp");
const u32 gObjectEventPic_Pikachu[] = INCBIN_U32("graphics/object_events/pics/pokemon/pikachu.4bpp");
const u32 gObjectEventPic_Azumarill[] = INCBIN_U32("graphics/object_events/pics/pokemon/azumarill.4bpp");
const u32 gObjectEventPic_Wingull[] = INCBIN_U32("graphics/object_events/pics/pokemon/wingull.4bpp");
const u32 gObjectEventPic_TuberMSwimming[] = INCBIN_U32("graphics/object_events/pics/people/tuber_m_swimming.4bpp");
const u32 gObjectEventPic_Azurill[] = INCBIN_U32("graphics/object_events/pics/pokemon/azurill.4bpp");
const u32 gObjectEventPic_Mom[] = INCBIN_U32("graphics/object_events/pics/people/mom.4bpp");
const u16 gObjectEventPalette22[] = INCBIN_U16("graphics/object_events/palettes/22.gbapal");
const u16 gObjectEventPalette23[] = INCBIN_U16("graphics/object_events/palettes/23.gbapal");
const u16 gObjectEventPalette24[] = INCBIN_U16("graphics/object_events/palettes/24.gbapal");
const u16 gObjectEventPalette25[] = INCBIN_U16("graphics/object_events/palettes/25.gbapal");
const u32 gObjectEventPic_UnusedNatuDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/unused_natu_doll.4bpp");
const u32 gObjectEventPic_UnusedMagnemiteDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/unused_magnemite_doll.4bpp");
const u32 gObjectEventPic_UnusedSquirtleDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/unused_squirtle_doll.4bpp");
const u32 gObjectEventPic_UnusedWooperDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/unused_wooper_doll.4bpp");
const u32 gObjectEventPic_UnusedPikachuDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/unused_pikachu_doll.4bpp");
const u32 gObjectEventPic_UnusedPorygon2Doll[] = INCBIN_U32("graphics/object_events/pics/dolls/unused_porygon2_doll.4bpp");
const u32 gObjectEventPic_PichuDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/pichu_doll.4bpp");
const u32 gObjectEventPic_PikachuDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/pikachu_doll.4bpp");
const u32 gObjectEventPic_MarillDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/marill_doll.4bpp");
const u32 gObjectEventPic_TogepiDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/togepi_doll.4bpp");
const u32 gObjectEventPic_CyndaquilDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/cyndaquil_doll.4bpp");
const u32 gObjectEventPic_ChikoritaDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/chikorita_doll.4bpp");
const u32 gObjectEventPic_TotodileDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/totodile_doll.4bpp");
const u32 gObjectEventPic_JigglypuffDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/jigglypuff_doll.4bpp");
const u32 gObjectEventPic_MeowthDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/meowth_doll.4bpp");
const u32 gObjectEventPic_ClefairyDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/clefairy_doll.4bpp");
const u32 gObjectEventPic_DittoDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/ditto_doll.4bpp");
const u32 gObjectEventPic_SmoochumDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/smoochum_doll.4bpp");
const u32 gObjectEventPic_TreeckoDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/treecko_doll.4bpp");
const u32 gObjectEventPic_TorchicDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/torchic_doll.4bpp");
const u32 gObjectEventPic_MudkipDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/mudkip_doll.4bpp");
const u32 gObjectEventPic_DuskullDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/duskull_doll.4bpp");
const u32 gObjectEventPic_WynautDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/wynaut_doll.4bpp");
const u32 gObjectEventPic_BaltoyDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/baltoy_doll.4bpp");
const u32 gObjectEventPic_KecleonDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/kecleon_doll.4bpp");
const u32 gObjectEventPic_AzurillDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/azurill_doll.4bpp");
const u32 gObjectEventPic_SkittyDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/skitty_doll.4bpp");
const u32 gObjectEventPic_SwabluDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/swablu_doll.4bpp");
const u32 gObjectEventPic_GulpinDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/gulpin_doll.4bpp");
const u32 gObjectEventPic_LotadDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/lotad_doll.4bpp");
const u32 gObjectEventPic_SeedotDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/seedot_doll.4bpp");
const u32 gObjectEventPic_PikaCushion[] = INCBIN_U32("graphics/object_events/pics/cushions/pika_cushion.4bpp");
const u32 gObjectEventPic_RoundCushion[] = INCBIN_U32("graphics/object_events/pics/cushions/round_cushion.4bpp");
const u32 gObjectEventPic_KissCushion[] = INCBIN_U32("graphics/object_events/pics/cushions/kiss_cushion.4bpp");
const u32 gObjectEventPic_ZigzagCushion[] = INCBIN_U32("graphics/object_events/pics/cushions/zigzag_cushion.4bpp");
const u32 gObjectEventPic_SpinCushion[] = INCBIN_U32("graphics/object_events/pics/cushions/spin_cushion.4bpp");
const u32 gObjectEventPic_DiamondCushion[] = INCBIN_U32("graphics/object_events/pics/cushions/diamond_cushion.4bpp");
const u32 gObjectEventPic_BallCushion[] = INCBIN_U32("graphics/object_events/pics/cushions/ball_cushion.4bpp");
const u32 gObjectEventPic_GrassCushion[] = INCBIN_U32("graphics/object_events/pics/cushions/grass_cushion.4bpp");
const u32 gObjectEventPic_FireCushion[] = INCBIN_U32("graphics/object_events/pics/cushions/fire_cushion.4bpp");
const u32 gObjectEventPic_WaterCushion[] = INCBIN_U32("graphics/object_events/pics/cushions/water_cushion.4bpp");
const u32 gObjectEventPic_BigSnorlaxDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/big_snorlax_doll.4bpp");
const u32 gObjectEventPic_BigRhydonDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/big_rhydon_doll.4bpp");
const u32 gObjectEventPic_BigLaprasDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/big_lapras_doll.4bpp");
const u32 gObjectEventPic_BigVenusaurDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/big_venusaur_doll.4bpp");
const u32 gObjectEventPic_BigCharizardDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/big_charizard_doll.4bpp");
const u32 gObjectEventPic_BigBlastoiseDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/big_blastoise_doll.4bpp");
const u32 gObjectEventPic_BigWailmerDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/big_wailmer_doll.4bpp");
const u32 gObjectEventPic_BigRegirockDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/big_regirock_doll.4bpp");
const u32 gObjectEventPic_BigRegiceDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/big_regice_doll.4bpp");
const u32 gObjectEventPic_BigRegisteelDoll[] = INCBIN_U32("graphics/object_events/pics/dolls/big_registeel_doll.4bpp");
const u32 gObjectEventPic_CuttableTree[] = INCBIN_U32("graphics/object_events/pics/misc/cuttable_tree.4bpp");
const u32 gObjectEventPic_BreakableRock[] = INCBIN_U32("graphics/object_events/pics/misc/breakable_rock.4bpp");
const u32 gObjectEventPic_PushableBoulder[] = INCBIN_U32("graphics/object_events/pics/misc/pushable_boulder.4bpp");
const u32 gObjectEventPic_MrBrineysBoat[] = INCBIN_U32("graphics/object_events/pics/misc/mr_brineys_boat.4bpp");
const u32 gObjectEventPic_Fossil[] = INCBIN_U32("graphics/object_events/pics/misc/fossil.4bpp");
const u32 gObjectEventPic_SubmarineShadow[] = INCBIN_U32("graphics/object_events/pics/misc/submarine_shadow.4bpp");
const u16 gObjectEventPalette26[] = INCBIN_U16("graphics/object_events/palettes/26.gbapal");
const u32 gObjectEventPic_Truck[] = INCBIN_U32("graphics/object_events/pics/misc/truck.4bpp");
const u16 gObjectEventPalette14[] = INCBIN_U16("graphics/object_events/palettes/14.gbapal");
const u32 gObjectEventPic_Vigoroth[] = INCBIN_U32("graphics/object_events/pics/pokemon/vigoroth.4bpp");
const u16 gObjectEventPalette15[] = INCBIN_U16("graphics/object_events/palettes/15.gbapal");
const u32 gObjectEventPic_BirchsBag[] = INCBIN_U32("graphics/object_events/pics/misc/birchs_bag.4bpp");
const u32 gObjectEventPic_EnemyZigzagoon[] = INCBIN_U32("graphics/object_events/pics/pokemon/enemy_zigzagoon.4bpp");
const u16 gObjectEventPalette16[] = INCBIN_U16("graphics/object_events/palettes/16.gbapal");
const u32 gObjectEventPic_Poochyena[] = INCBIN_U32("graphics/object_events/pics/pokemon/poochyena.4bpp");
const u16 gObjectEventPalette27[] = INCBIN_U16("graphics/object_events/palettes/27.gbapal");
const u32 gObjectEventPic_CableCar[] = INCBIN_U32("graphics/object_events/pics/misc/cable_car.4bpp");
const u16 gObjectEventPalette20[] = INCBIN_U16("graphics/object_events/palettes/20.gbapal");
const u32 gObjectEventPic_SSTidal[] = INCBIN_U32("graphics/object_events/pics/misc/ss_tidal.4bpp");
const u16 gObjectEventPalette21[] = INCBIN_U16("graphics/object_events/palettes/21.gbapal");
const u32 gFieldEffectObjectPic_BerryTreeGrowthSparkle[] = INCBIN_U32("graphics/field_effects/pics/berry_tree_growth_sparkle.4bpp");
const u32 gObjectEventPic_BerryTreeDirtPile[] = INCBIN_U32("graphics/object_events/pics/berry_trees/dirt_pile.4bpp");
const u32 gObjectEventPic_BerryTreeSprout[] = INCBIN_U32("graphics/object_events/pics/berry_trees/sprout.4bpp");
const u32 gObjectEventPic_PechaBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/pecha.4bpp");
const u32 gObjectEventPic_KelpsyBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/kelpsy.4bpp");
const u32 gObjectEventPic_WepearBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/wepear.4bpp");
const u32 gObjectEventPic_IapapaBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/iapapa.4bpp");
const u32 gObjectEventPic_CheriBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/cheri.4bpp");
const u32 gObjectEventPic_FigyBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/figy.4bpp");
const u32 gObjectEventPic_MagoBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/mago.4bpp");
const u32 gObjectEventPic_LumBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/lum.4bpp");
const u32 gObjectEventPic_RazzBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/razz.4bpp");
const u32 gObjectEventPic_GrepaBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/grepa.4bpp");
const u32 gObjectEventPic_RabutaBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/rabuta.4bpp");
const u32 gObjectEventPic_NomelBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/nomel.4bpp");
const u32 gObjectEventPic_LeppaBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/leppa.4bpp");
const u32 gObjectEventPic_LiechiBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/liechi.4bpp");
const u32 gObjectEventPic_HondewBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/hondew.4bpp");
const u32 gObjectEventPic_AguavBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/aguav.4bpp");
const u32 gObjectEventPic_WikiBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/wiki.4bpp");
const u32 gObjectEventPic_PomegBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/pomeg.4bpp");
const u32 gObjectEventPic_RawstBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/rawst.4bpp");
const u32 gObjectEventPic_SpelonBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/spelon.4bpp");
const u32 gObjectEventPic_ChestoBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/chesto.4bpp");
const u32 gObjectEventPic_OranBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/oran.4bpp");
const u32 gObjectEventPic_PersimBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/persim.4bpp");
const u32 gObjectEventPic_SitrusBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/sitrus.4bpp");
const u32 gObjectEventPic_AspearBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/aspear.4bpp");
const u32 gObjectEventPic_PamtreBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/pamtre.4bpp");
const u32 gObjectEventPic_CornnBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/cornn.4bpp");
const u32 gObjectEventPic_LansatBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/lansat.4bpp");
const u32 gObjectEventPic_DurinBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/durin.4bpp");
const u32 gObjectEventPic_TamatoBerryTree[] = INCBIN_U32("graphics/object_events/pics/berry_trees/tamato.4bpp");
const u32 gFieldEffectObjectPic_SurfBlob[] = INCBIN_U32("graphics/field_effects/pics/surf_blob.4bpp");
const u32 gObjectEventPic_QuintyPlump[] = INCBIN_U32("graphics/object_events/pics/people/quinty_plump.4bpp");
const u16 gObjectEventPalette12[] = INCBIN_U16("graphics/object_events/palettes/12.gbapal");
const u16 gObjectEventPalette13[] = INCBIN_U16("graphics/object_events/palettes/13.gbapal");
const u32 gFieldEffectObjectPic_ShadowSmall[] = INCBIN_U32("graphics/field_effects/pics/shadow_small.4bpp");
const u32 gFieldEffectObjectPic_ShadowMedium[] = INCBIN_U32("graphics/field_effects/pics/shadow_medium.4bpp");
const u32 gFieldEffectObjectPic_ShadowLarge[] = INCBIN_U32("graphics/field_effects/pics/shadow_large.4bpp");
const u32 gFieldEffectObjectPic_ShadowExtraLarge[] = INCBIN_U32("graphics/field_effects/pics/shadow_extra_large.4bpp");
const u32 filler_8368A08[0x48] = {};
const u8 gFieldEffectPic_CutGrass[] = INCBIN_U8("graphics/field_effects/pics/cut_grass.4bpp");
const u32 gFieldEffectPic_CutGrass_Copy[] = INCBIN_U32("graphics/field_effects/pics/cut_grass.4bpp");
const u16 gFieldEffectObjectPalette6[] = INCBIN_U16("graphics/field_effects/palettes/06.gbapal");
const u32 gFieldEffectObjectPic_Ripple[] = INCBIN_U32("graphics/field_effects/pics/ripple.4bpp");
const u32 gFieldEffectObjectPic_Ash[] = INCBIN_U32("graphics/field_effects/pics/ash.4bpp");
const u32 gFieldEffectObjectPic_Arrow[] = INCBIN_U32("graphics/field_effects/pics/arrow.4bpp");
const u16 gFieldEffectObjectPalette0[] = INCBIN_U16("graphics/field_effects/palettes/00.gbapal");
const u16 gFieldEffectObjectPalette1[] = INCBIN_U16("graphics/field_effects/palettes/01.gbapal");
const u32 gFieldEffectObjectPic_GroundImpactDust[] = INCBIN_U32("graphics/field_effects/pics/ground_impact_dust.4bpp");
const u32 gFieldEffectObjectPic_BikeHopTallGrass[] = INCBIN_U32("graphics/field_effects/pics/bike_hop_tall_grass.4bpp");
const u32 gUnusedGrass[] = INCBIN_U32("graphics/field_effects/pics/unused_grass.4bpp");
const u32 gFieldEffectObjectPic_Unknown16[] = INCBIN_U32("graphics/field_effects/pics/unknown_16.4bpp");
const u32 gFieldEffectObjectPic_Unknown17[] = INCBIN_U32("graphics/field_effects/pics/unknown_17.4bpp");
const u32 gFieldEffectObjectPic_Unknown18[] = INCBIN_U32("graphics/field_effects/pics/unknown_18.4bpp");
const u32 gFieldEffectObjectPic_LongGrass[] = INCBIN_U32("graphics/field_effects/pics/long_grass.4bpp");
const u32 gFieldEffectObjectPic_TallGrass[] = INCBIN_U32("graphics/field_effects/pics/tall_grass.4bpp");
const u32 gFieldEffectObjectPic_ShortGrass[] = INCBIN_U32("graphics/field_effects/pics/short_grass.4bpp");
const u32 gFieldEffectObjectPic_SandFootprints[] = INCBIN_U32("graphics/field_effects/pics/sand_footprints.4bpp");
const u32 gFieldEffectObjectPic_DeepSandFootprints[] = INCBIN_U32("graphics/field_effects/pics/deep_sand_footprints.4bpp");
const u32 gFieldEffectObjectPic_BikeTireTracks[] = INCBIN_U32("graphics/field_effects/pics/bike_tire_tracks.4bpp");
const u32 gFieldEffectObjectPic_Unknown19[] = INCBIN_U32("graphics/field_effects/pics/unknown_19.4bpp");
const u32 gFieldEffectObjectPic_Unknown29[] = INCBIN_U32("graphics/field_effects/pics/unknown_29.4bpp");
const u32 gFieldEffectObjectPic_BikeHopBigSplash[] = INCBIN_U32("graphics/field_effects/pics/bike_hop_big_splash.4bpp");
const u32 gFieldEffectObjectPic_Splash[] = INCBIN_U32("graphics/field_effects/pics/splash.4bpp");
const u32 gFieldEffectObjectPic_BikeHopSmallSplash[] = INCBIN_U32("graphics/field_effects/pics/bike_hop_small_splash.4bpp");
const u32 gFieldEffectObjectPic_Unknown20[] = INCBIN_U32("graphics/field_effects/pics/unknown_20.4bpp");
const u32 gFieldEffectObjectPic_TreeDisguise[] = INCBIN_U32("graphics/field_effects/pics/tree_disguise.4bpp");
const u32 gFieldEffectObjectPic_MountainDisguise[] = INCBIN_U32("graphics/field_effects/pics/mountain_disguise.4bpp");
const u32 gFieldEffectObjectPic_SandDisguisePlaceholder[] = INCBIN_U32("graphics/field_effects/pics/sand_disguise_placeholder.4bpp");
const u32 gFieldEffectObjectPic_HotSpringsWater[] = INCBIN_U32("graphics/field_effects/pics/hot_springs_water.4bpp");
const u16 gFieldEffectObjectPalette2[] = INCBIN_U16("graphics/field_effects/palettes/02.gbapal");
const u32 gFieldEffectObjectPic_JumpOutOfAsh[] = INCBIN_U32("graphics/field_effects/pics/jump_out_of_ash.4bpp");
const u32 gFieldEffectObjectPic_LavaridgeGymWarp[] = INCBIN_U32("graphics/field_effects/pics/lavaridge_gym_warp.4bpp");
const u32 gFieldEffectObjectPic_Bubbles[] = INCBIN_U32("graphics/field_effects/pics/bubbles.4bpp");
const u32 gFieldEffectObjectPic_Unknown35[] = INCBIN_U32("graphics/field_effects/pics/unknown_35.4bpp");
const u16 gFieldEffectObjectPalette3[] = INCBIN_U16("graphics/field_effects/palettes/03.gbapal");
const u32 gFieldEffectObjectPic_Bird[] = INCBIN_U32("graphics/field_effects/pics/bird.4bpp");
const u32 gObjectEventPic_Juan[] = INCBIN_U32("graphics/object_events/pics/people/gym_leaders/juan.4bpp");
const u32 gObjectEventPic_Scott[] = INCBIN_U32("graphics/object_events/pics/people/scott.4bpp");
const u32 gObjectEventPic_Statue[] = INCBIN_U32("graphics/object_events/pics/misc/statue.4bpp");
const u32 gObjectEventPic_Kirlia[] = INCBIN_U32("graphics/object_events/pics/pokemon/kirlia.4bpp");
const u32 gObjectEventPic_Dusclops[] = INCBIN_U32("graphics/object_events/pics/pokemon/dusclops.4bpp");
const u32 gObjectEventPic_MysteryEventDeliveryman[] = INCBIN_U32("graphics/object_events/pics/people/mystery_event_deliveryman.4bpp");
const u32 gObjectEventPic_UnionRoomAttendant[] = INCBIN_U32("graphics/object_events/pics/people/union_room_attendant.4bpp");
const u32 gObjectEventPic_MovingBox[] = INCBIN_U32("graphics/object_events/pics/misc/moving_box.4bpp");
const u16 gObjectEventPalette19[] = INCBIN_U16("graphics/object_events/palettes/19.gbapal");
const u32 gObjectEventPic_Sudowoodo[] = INCBIN_U32("graphics/object_events/pics/pokemon/sudowoodo.4bpp");
const u32 gObjectEventPic_Mew[] = INCBIN_U32("graphics/object_events/pics/pokemon/mew.4bpp");
const u16 gObjectEventPalette28[] = INCBIN_U16("graphics/object_events/palettes/28.gbapal");
const u32 gObjectEventPic_Red[] = INCBIN_U32("graphics/object_events/pics/people/red.4bpp");
const u32 gObjectEventPic_Leaf[] = INCBIN_U32("graphics/object_events/pics/people/leaf.4bpp");
const u16 gObjectEventPalette30[] = INCBIN_U16("graphics/object_events/palettes/30.gbapal");
const u32 gObjectEventPic_BirthIslandStone[] = INCBIN_U32("graphics/object_events/pics/misc/birth_island_stone.4bpp");
const u16 gObjectEventPalette29[] = INCBIN_U16("graphics/object_events/palettes/29.gbapal");
const u32 gObjectEventPic_Deoxys[] = INCBIN_U32("graphics/object_events/pics/pokemon/deoxys.4bpp");
const u32 gObjectEventPic_Anabel[] = INCBIN_U32("graphics/object_events/pics/people/frontier_brains/anabel.4bpp");
const u32 gObjectEventPic_Tucker[] = INCBIN_U32("graphics/object_events/pics/people/frontier_brains/tucker.4bpp");
const u32 gObjectEventPic_Spenser[] = INCBIN_U32("graphics/object_events/pics/people/frontier_brains/spenser.4bpp");
const u32 gObjectEventPic_Greta[] = INCBIN_U32("graphics/object_events/pics/people/frontier_brains/greta.4bpp");
const u32 gObjectEventPic_Noland[] = INCBIN_U32("graphics/object_events/pics/people/frontier_brains/noland.4bpp");
const u32 gObjectEventPic_Lucy[] = INCBIN_U32("graphics/object_events/pics/people/frontier_brains/lucy.4bpp");
const u32 gObjectEventPic_Brandon[] = INCBIN_U32("graphics/object_events/pics/people/frontier_brains/brandon.4bpp");
const u32 gObjectEventPic_Lugia[] = INCBIN_U32("graphics/object_events/pics/pokemon/lugia.4bpp");
const u16 gObjectEventPalette32[] = INCBIN_U16("graphics/object_events/palettes/32.gbapal");
const u32 gObjectEventPic_HoOh[] = INCBIN_U32("graphics/object_events/pics/pokemon/ho_oh.4bpp");
const u16 gObjectEventPalette31[] = INCBIN_U16("graphics/object_events/palettes/31.gbapal");
# 145 "src/event_object_movement.c" 2


static void (*const sMovementTypeCallbacks[])(struct Sprite *) =
{
    [0x0] = MovementType_None,
    [0x1] = MovementType_LookAround,
    [0x2] = MovementType_WanderAround,
    [0x3] = MovementType_WanderUpAndDown,
    [0x4] = MovementType_WanderUpAndDown,
    [0x5] = MovementType_WanderLeftAndRight,
    [0x6] = MovementType_WanderLeftAndRight,
    [0x7] = MovementType_FaceDirection,
    [0x8] = MovementType_FaceDirection,
    [0x9] = MovementType_FaceDirection,
    [0xA] = MovementType_FaceDirection,
    [0xB] = MovementType_Player,
    [0xC] = MovementType_BerryTreeGrowth,
    [0xD] = MovementType_FaceDownAndUp,
    [0xE] = MovementType_FaceLeftAndRight,
    [0xF] = MovementType_FaceUpAndLeft,
    [0x10] = MovementType_FaceUpAndRight,
    [0x11] = MovementType_FaceDownAndLeft,
    [0x12] = MovementType_FaceDownAndRight,
    [0x13] = MovementType_FaceDownUpAndLeft,
    [0x14] = MovementType_FaceDownUpAndRight,
    [0x15] = MovementType_FaceUpRightAndLeft,
    [0x16] = MovementType_FaceDownRightAndLeft,
    [0x17] = MovementType_RotateCounterclockwise,
    [0x18] = MovementType_RotateClockwise,
    [0x19] = MovementType_WalkBackAndForth,
    [0x1A] = MovementType_WalkBackAndForth,
    [0x1B] = MovementType_WalkBackAndForth,
    [0x1C] = MovementType_WalkBackAndForth,
    [0x1D] = MovementType_WalkSequenceUpRightLeftDown,
    [0x1E] = MovementType_WalkSequenceRightLeftDownUp,
    [0x1F] = MovementType_WalkSequenceDownUpRightLeft,
    [0x20] = MovementType_WalkSequenceLeftDownUpRight,
    [0x21] = MovementType_WalkSequenceUpLeftRightDown,
    [0x22] = MovementType_WalkSequenceLeftRightDownUp,
    [0x23] = MovementType_WalkSequenceDownUpLeftRight,
    [0x24] = MovementType_WalkSequenceRightDownUpLeft,
    [0x25] = MovementType_WalkSequenceLeftUpDownRight,
    [0x26] = MovementType_WalkSequenceUpDownRightLeft,
    [0x27] = MovementType_WalkSequenceRightLeftUpDown,
    [0x28] = MovementType_WalkSequenceDownRightLeftUp,
    [0x29] = MovementType_WalkSequenceRightUpDownLeft,
    [0x2A] = MovementType_WalkSequenceUpDownLeftRight,
    [0x2B] = MovementType_WalkSequenceLeftRightUpDown,
    [0x2C] = MovementType_WalkSequenceDownLeftRightUp,
    [0x2D] = MovementType_WalkSequenceUpLeftDownRight,
    [0x2E] = MovementType_WalkSequenceDownRightUpLeft,
    [0x2F] = MovementType_WalkSequenceLeftDownRightUp,
    [0x30] = MovementType_WalkSequenceRightUpLeftDown,
    [0x31] = MovementType_WalkSequenceUpRightDownLeft,
    [0x32] = MovementType_WalkSequenceDownLeftUpRight,
    [0x33] = MovementType_WalkSequenceLeftUpRightDown,
    [0x34] = MovementType_WalkSequenceRightDownLeftUp,
    [0x35] = MovementType_CopyPlayer,
    [0x36] = MovementType_CopyPlayer,
    [0x37] = MovementType_CopyPlayer,
    [0x38] = MovementType_CopyPlayer,
    [0x39] = MovementType_TreeDisguise,
    [0x3A] = MovementType_MountainDisguise,
    [0x3B] = MovementType_CopyPlayerInGrass,
    [0x3C] = MovementType_CopyPlayerInGrass,
    [0x3D] = MovementType_CopyPlayerInGrass,
    [0x3E] = MovementType_CopyPlayerInGrass,
    [0x3F] = MovementType_Hidden,
    [0x40] = MovementType_WalkInPlace,
    [0x41] = MovementType_WalkInPlace,
    [0x42] = MovementType_WalkInPlace,
    [0x43] = MovementType_WalkInPlace,
    [0x44] = MovementType_JogInPlace,
    [0x45] = MovementType_JogInPlace,
    [0x46] = MovementType_JogInPlace,
    [0x47] = MovementType_JogInPlace,
    [0x48] = MovementType_RunInPlace,
    [0x49] = MovementType_RunInPlace,
    [0x4A] = MovementType_RunInPlace,
    [0x4B] = MovementType_RunInPlace,
    [0x4C] = MovementType_Invisible,
    [0x4D] = MovementType_WalkSlowlyInPlace,
    [0x4E] = MovementType_WalkSlowlyInPlace,
    [0x4F] = MovementType_WalkSlowlyInPlace,
    [0x50] = MovementType_WalkSlowlyInPlace,
};

const u8 gRangedMovementTypes[] = {
    [0x0] = 0,
    [0x1] = 0,
    [0x2] = 1,
    [0x3] = 1,
    [0x4] = 1,
    [0x5] = 1,
    [0x6] = 1,
    [0x7] = 0,
    [0x8] = 0,
    [0x9] = 0,
    [0xA] = 0,
    [0xB] = 0,
    [0xC] = 0,
    [0xD] = 0,
    [0xE] = 0,
    [0xF] = 0,
    [0x10] = 0,
    [0x11] = 0,
    [0x12] = 0,
    [0x13] = 0,
    [0x14] = 0,
    [0x15] = 0,
    [0x16] = 0,
    [0x17] = 0,
    [0x18] = 0,
    [0x19] = 1,
    [0x1A] = 1,
    [0x1B] = 1,
    [0x1C] = 1,
    [0x1D] = 1,
    [0x1E] = 1,
    [0x1F] = 1,
    [0x20] = 1,
    [0x21] = 1,
    [0x22] = 1,
    [0x23] = 1,
    [0x24] = 1,
    [0x25] = 1,
    [0x26] = 1,
    [0x27] = 1,
    [0x28] = 1,
    [0x29] = 1,
    [0x2A] = 1,
    [0x2B] = 1,
    [0x2C] = 1,
    [0x2D] = 1,
    [0x2E] = 1,
    [0x2F] = 1,
    [0x30] = 1,
    [0x31] = 1,
    [0x32] = 1,
    [0x33] = 1,
    [0x34] = 1,
    [0x35] = 1,
    [0x36] = 1,
    [0x37] = 1,
    [0x38] = 1,
    [0x39] = 0,
    [0x3A] = 0,
    [0x3B] = 1,
    [0x3C] = 1,
    [0x3D] = 1,
    [0x3E] = 1,
    [0x3F] = 0,
    [0x40] = 0,
    [0x41] = 0,
    [0x42] = 0,
    [0x43] = 0,
    [0x44] = 0,
    [0x45] = 0,
    [0x46] = 0,
    [0x47] = 0,
    [0x48] = 0,
    [0x49] = 0,
    [0x4A] = 0,
    [0x4B] = 0,
    [0x4C] = 0,
    [0x4D] = 0,
    [0x4E] = 0,
    [0x4F] = 0,
    [0x50] = 0,
};

const u8 gInitialMovementTypeFacingDirections[] = {
    [0x0] = 1,
    [0x1] = 1,
    [0x2] = 1,
    [0x3] = 2,
    [0x4] = 1,
    [0x5] = 3,
    [0x6] = 4,
    [0x7] = 2,
    [0x8] = 1,
    [0x9] = 3,
    [0xA] = 4,
    [0xB] = 1,
    [0xC] = 1,
    [0xD] = 1,
    [0xE] = 3,
    [0xF] = 2,
    [0x10] = 2,
    [0x11] = 1,
    [0x12] = 1,
    [0x13] = 1,
    [0x14] = 1,
    [0x15] = 2,
    [0x16] = 1,
    [0x17] = 1,
    [0x18] = 1,
    [0x19] = 2,
    [0x1A] = 1,
    [0x1B] = 3,
    [0x1C] = 4,
    [0x1D] = 2,
    [0x1E] = 4,
    [0x1F] = 1,
    [0x20] = 3,
    [0x21] = 2,
    [0x22] = 3,
    [0x23] = 1,
    [0x24] = 4,
    [0x25] = 3,
    [0x26] = 2,
    [0x27] = 4,
    [0x28] = 1,
    [0x29] = 4,
    [0x2A] = 2,
    [0x2B] = 3,
    [0x2C] = 1,
    [0x2D] = 2,
    [0x2E] = 1,
    [0x2F] = 3,
    [0x30] = 4,
    [0x31] = 2,
    [0x32] = 1,
    [0x33] = 3,
    [0x34] = 4,
    [0x35] = 2,
    [0x36] = 1,
    [0x37] = 3,
    [0x38] = 4,
    [0x39] = 1,
    [0x3A] = 1,
    [0x3B] = 2,
    [0x3C] = 1,
    [0x3D] = 3,
    [0x3E] = 4,
    [0x3F] = 1,
    [0x40] = 1,
    [0x41] = 2,
    [0x42] = 3,
    [0x43] = 4,
    [0x44] = 1,
    [0x45] = 2,
    [0x46] = 3,
    [0x47] = 4,
    [0x48] = 1,
    [0x49] = 2,
    [0x4A] = 3,
    [0x4B] = 4,
    [0x4C] = 1,
    [0x4D] = 1,
    [0x4E] = 2,
    [0x4F] = 3,
    [0x50] = 4,
};
# 437 "src/event_object_movement.c"
# 1 "src/data/object_events/object_event_graphics_info_pointers.h" 1
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BrendanNormal;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BrendanMachBike;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BrendanSurfing;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BrendanFieldMove;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_QuintyPlump;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_NinjaBoy;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Twin;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Boy1;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Girl1;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Boy2;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Girl2;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LittleBoy;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LittleGirl;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Boy3;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Girl3;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RichBoy;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Woman1;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_FatMan;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_PokefanF;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Man1;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Woman2;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ExpertM;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ExpertF;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Man2;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Woman3;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_PokefanM;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Woman4;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Cook;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LinkReceptionist;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_OldMan;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_OldWoman;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Camper;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Picnicker;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Man3;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Woman5;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Youngster;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BugCatcher;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_PsychicM;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SchoolKidM;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Maniac;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_HexManiac;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Rayquaza1;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SwimmerM;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SwimmerF;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BlackBelt;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Beauty;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Scientist1;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Lass;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Gentleman;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Sailor;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Fisherman;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RunningTriathleteM;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RunningTriathleteF;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TuberF;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TuberM;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Hiker;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_CyclingTriathleteM;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_CyclingTriathleteF;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Nurse;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ItemBall;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BerryTree;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BerryTreeEarlyStages;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BerryTreeLateStages;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BrendanAcroBike;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ProfBirch;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Man4;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Man5;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ReporterM;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ReporterF;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Bard;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Anabel;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Tucker;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Greta;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Spenser;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Noland;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Lucy;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnusedNatuDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnusedMagnemiteDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnusedSquirtleDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnusedWooperDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnusedPikachuDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnusedPorygon2Doll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_CuttableTree;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MartEmployee;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RooftopSaleWoman;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Teala;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BreakableRock;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_PushableBoulder;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MrBrineysBoat;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MayNormal;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MayMachBike;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MayAcroBike;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MaySurfing;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MayFieldMove;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Truck;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_VigorothCarryingBox;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_VigorothFacingAway;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BirchsBag;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_EnemyZigzagoon;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Artist;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalBrendanNormal;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalBrendanMachBike;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalBrendanAcroBike;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalBrendanSurfing;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalBrendanFieldMove;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalMayNormal;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalMayMachBike;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalMayAcroBike;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalMaySurfing;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalMayFieldMove;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Cameraman;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BrendanUnderwater;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MayUnderwater;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MovingBox;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_CableCar;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Scientist2;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_DevonEmployee;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_AquaMemberM;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_AquaMemberF;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MagmaMemberM;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MagmaMemberF;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Sidney;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Phoebe;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Glacia;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Drake;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Roxanne;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Brawly;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Wattson;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Flannery;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Norman;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Winona;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Liza;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Tate;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Wallace;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Steven;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Wally;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RubySapphireLittleBoy;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BrendanFishing;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MayFishing;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_HotSpringsOldWoman;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SSTidal;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SubmarineShadow;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_PichuDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_PikachuDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MarillDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TogepiDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_CyndaquilDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ChikoritaDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TotodileDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_JigglypuffDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MeowthDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ClefairyDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_DittoDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SmoochumDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TreeckoDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TorchicDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MudkipDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_DuskullDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_WynautDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BaltoyDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_KecleonDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_AzurillDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SkittyDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SwabluDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GulpinDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LotadDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SeedotDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_PikaCushion;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RoundCushion;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_KissCushion;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ZigzagCushion;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SpinCushion;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_DiamondCushion;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BallCushion;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GrassCushion;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_FireCushion;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_WaterCushion;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigSnorlaxDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigRhydonDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigLaprasDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigVenusaurDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigCharizardDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigBlastoiseDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigWailmerDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigRegirockDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigRegiceDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigRegisteelDoll;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Latias;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Latios;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GameboyKid;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ContestJudge;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BrendanWatering;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MayWatering;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BrendanDecorating;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MayDecorating;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Archie;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Maxie;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Kyogre1;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Groudon1;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Fossil;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Regirock;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Regice;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Registeel;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Skitty;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Kecleon1;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Kyogre2;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Groudon2;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Rayquaza2;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Zigzagoon;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Pikachu;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Azumarill;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Wingull;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Kecleon2;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TuberMSwimming;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Azurill;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Mom;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LinkBrendan;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LinkMay;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Juan;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Scott;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Poochyena;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Kyogre3;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Groudon3;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MysteryEventDeliveryman;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Statue;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Kirlia;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Dusclops;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnionRoomAttendant;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Sudowoodo;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Mew;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Red;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Leaf;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Deoxys;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BirthIslandStone;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Brandon;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RubySapphireBrendan;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RubySapphireMay;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Lugia;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_HoOh;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Bard;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Hipster;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Trader;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Storyteller;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Giddy;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnusedMauvilleOldMan1;
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnusedMauvilleOldMan2;


const struct ObjectEventGraphicsInfo *const gObjectEventGraphicsInfoPointers[239] = {
    [0] = &gObjectEventGraphicsInfo_BrendanNormal,
    [1] = &gObjectEventGraphicsInfo_BrendanMachBike,
    [2] = &gObjectEventGraphicsInfo_BrendanSurfing,
    [3] = &gObjectEventGraphicsInfo_BrendanFieldMove,
    [4] = &gObjectEventGraphicsInfo_QuintyPlump,
    [5] = &gObjectEventGraphicsInfo_NinjaBoy,
    [6] = &gObjectEventGraphicsInfo_Twin,
    [7] = &gObjectEventGraphicsInfo_Boy1,
    [8] = &gObjectEventGraphicsInfo_Girl1,
    [9] = &gObjectEventGraphicsInfo_Boy2,
    [10] = &gObjectEventGraphicsInfo_Girl2,
    [11] = &gObjectEventGraphicsInfo_LittleBoy,
    [12] = &gObjectEventGraphicsInfo_LittleGirl,
    [13] = &gObjectEventGraphicsInfo_Boy3,
    [14] = &gObjectEventGraphicsInfo_Girl3,
    [15] = &gObjectEventGraphicsInfo_RichBoy,
    [16] = &gObjectEventGraphicsInfo_Woman1,
    [17] = &gObjectEventGraphicsInfo_FatMan,
    [18] = &gObjectEventGraphicsInfo_PokefanF,
    [19] = &gObjectEventGraphicsInfo_Man1,
    [20] = &gObjectEventGraphicsInfo_Woman2,
    [21] = &gObjectEventGraphicsInfo_ExpertM,
    [22] = &gObjectEventGraphicsInfo_ExpertF,
    [23] = &gObjectEventGraphicsInfo_Man2,
    [24] = &gObjectEventGraphicsInfo_Woman3,
    [25] = &gObjectEventGraphicsInfo_PokefanM,
    [26] = &gObjectEventGraphicsInfo_Woman4,
    [27] = &gObjectEventGraphicsInfo_Cook,
    [28] = &gObjectEventGraphicsInfo_LinkReceptionist,
    [29] = &gObjectEventGraphicsInfo_OldMan,
    [30] = &gObjectEventGraphicsInfo_OldWoman,
    [31] = &gObjectEventGraphicsInfo_Camper,
    [32] = &gObjectEventGraphicsInfo_Picnicker,
    [33] = &gObjectEventGraphicsInfo_Man3,
    [34] = &gObjectEventGraphicsInfo_Woman5,
    [35] = &gObjectEventGraphicsInfo_Youngster,
    [36] = &gObjectEventGraphicsInfo_BugCatcher,
    [37] = &gObjectEventGraphicsInfo_PsychicM,
    [38] = &gObjectEventGraphicsInfo_SchoolKidM,
    [39] = &gObjectEventGraphicsInfo_Maniac,
    [40] = &gObjectEventGraphicsInfo_HexManiac,
    [41] = &gObjectEventGraphicsInfo_Rayquaza1,
    [42] = &gObjectEventGraphicsInfo_SwimmerM,
    [43] = &gObjectEventGraphicsInfo_SwimmerF,
    [44] = &gObjectEventGraphicsInfo_BlackBelt,
    [45] = &gObjectEventGraphicsInfo_Beauty,
    [46] = &gObjectEventGraphicsInfo_Scientist1,
    [47] = &gObjectEventGraphicsInfo_Lass,
    [48] = &gObjectEventGraphicsInfo_Gentleman,
    [49] = &gObjectEventGraphicsInfo_Sailor,
    [50] = &gObjectEventGraphicsInfo_Fisherman,
    [51] = &gObjectEventGraphicsInfo_RunningTriathleteM,
    [52] = &gObjectEventGraphicsInfo_RunningTriathleteF,
    [53] = &gObjectEventGraphicsInfo_TuberF,
    [54] = &gObjectEventGraphicsInfo_TuberM,
    [55] = &gObjectEventGraphicsInfo_Hiker,
    [56] = &gObjectEventGraphicsInfo_CyclingTriathleteM,
    [57] = &gObjectEventGraphicsInfo_CyclingTriathleteF,
    [58] = &gObjectEventGraphicsInfo_Nurse,
    [59] = &gObjectEventGraphicsInfo_ItemBall,
    [60] = &gObjectEventGraphicsInfo_BerryTree,
    [61] = &gObjectEventGraphicsInfo_BerryTreeEarlyStages,
    [62] = &gObjectEventGraphicsInfo_BerryTreeLateStages,
    [63] = &gObjectEventGraphicsInfo_BrendanAcroBike,
    [64] = &gObjectEventGraphicsInfo_ProfBirch,
    [65] = &gObjectEventGraphicsInfo_Man4,
    [66] = &gObjectEventGraphicsInfo_Man5,
    [67] = &gObjectEventGraphicsInfo_ReporterM,
    [68] = &gObjectEventGraphicsInfo_ReporterF,
    [69] = &gObjectEventGraphicsInfo_Bard,
    [70] = &gObjectEventGraphicsInfo_Anabel,
    [71] = &gObjectEventGraphicsInfo_Tucker,
    [72] = &gObjectEventGraphicsInfo_Greta,
    [73] = &gObjectEventGraphicsInfo_Spenser,
    [74] = &gObjectEventGraphicsInfo_Noland,
    [75] = &gObjectEventGraphicsInfo_Lucy,
    [76] = &gObjectEventGraphicsInfo_UnusedNatuDoll,
    [77] = &gObjectEventGraphicsInfo_UnusedMagnemiteDoll,
    [78] = &gObjectEventGraphicsInfo_UnusedSquirtleDoll,
    [79] = &gObjectEventGraphicsInfo_UnusedWooperDoll,
    [80] = &gObjectEventGraphicsInfo_UnusedPikachuDoll,
    [81] = &gObjectEventGraphicsInfo_UnusedPorygon2Doll,
    [82] = &gObjectEventGraphicsInfo_CuttableTree,
    [83] = &gObjectEventGraphicsInfo_MartEmployee,
    [84] = &gObjectEventGraphicsInfo_RooftopSaleWoman,
    [85] = &gObjectEventGraphicsInfo_Teala,
    [86] = &gObjectEventGraphicsInfo_BreakableRock,
    [87] = &gObjectEventGraphicsInfo_PushableBoulder,
    [88] = &gObjectEventGraphicsInfo_MrBrineysBoat,
    [89] = &gObjectEventGraphicsInfo_MayNormal,
    [90] = &gObjectEventGraphicsInfo_MayMachBike,
    [91] = &gObjectEventGraphicsInfo_MayAcroBike,
    [92] = &gObjectEventGraphicsInfo_MaySurfing,
    [93] = &gObjectEventGraphicsInfo_MayFieldMove,
    [94] = &gObjectEventGraphicsInfo_Truck,
    [95] = &gObjectEventGraphicsInfo_VigorothCarryingBox,
    [96] = &gObjectEventGraphicsInfo_VigorothFacingAway,
    [97] = &gObjectEventGraphicsInfo_BirchsBag,
    [98] = &gObjectEventGraphicsInfo_EnemyZigzagoon,
    [99] = &gObjectEventGraphicsInfo_Artist,
    [100] = &gObjectEventGraphicsInfo_RivalBrendanNormal,
    [101] = &gObjectEventGraphicsInfo_RivalBrendanMachBike,
    [102] = &gObjectEventGraphicsInfo_RivalBrendanAcroBike,
    [103] = &gObjectEventGraphicsInfo_RivalBrendanSurfing,
    [104] = &gObjectEventGraphicsInfo_RivalBrendanFieldMove,
    [105] = &gObjectEventGraphicsInfo_RivalMayNormal,
    [106] = &gObjectEventGraphicsInfo_RivalMayMachBike,
    [107] = &gObjectEventGraphicsInfo_RivalMayAcroBike,
    [108] = &gObjectEventGraphicsInfo_RivalMaySurfing,
    [109] = &gObjectEventGraphicsInfo_RivalMayFieldMove,
    [110] = &gObjectEventGraphicsInfo_Cameraman,
    [111] = &gObjectEventGraphicsInfo_BrendanUnderwater,
    [112] = &gObjectEventGraphicsInfo_MayUnderwater,
    [113] = &gObjectEventGraphicsInfo_MovingBox,
    [114] = &gObjectEventGraphicsInfo_CableCar,
    [115] = &gObjectEventGraphicsInfo_Scientist2,
    [116] = &gObjectEventGraphicsInfo_DevonEmployee,
    [117] = &gObjectEventGraphicsInfo_AquaMemberM,
    [118] = &gObjectEventGraphicsInfo_AquaMemberF,
    [119] = &gObjectEventGraphicsInfo_MagmaMemberM,
    [120] = &gObjectEventGraphicsInfo_MagmaMemberF,
    [121] = &gObjectEventGraphicsInfo_Sidney,
    [122] = &gObjectEventGraphicsInfo_Phoebe,
    [123] = &gObjectEventGraphicsInfo_Glacia,
    [124] = &gObjectEventGraphicsInfo_Drake,
    [125] = &gObjectEventGraphicsInfo_Roxanne,
    [126] = &gObjectEventGraphicsInfo_Brawly,
    [127] = &gObjectEventGraphicsInfo_Wattson,
    [128] = &gObjectEventGraphicsInfo_Flannery,
    [129] = &gObjectEventGraphicsInfo_Norman,
    [130] = &gObjectEventGraphicsInfo_Winona,
    [131] = &gObjectEventGraphicsInfo_Liza,
    [132] = &gObjectEventGraphicsInfo_Tate,
    [133] = &gObjectEventGraphicsInfo_Wallace,
    [134] = &gObjectEventGraphicsInfo_Steven,
    [135] = &gObjectEventGraphicsInfo_Wally,
    [136] = &gObjectEventGraphicsInfo_RubySapphireLittleBoy,
    [137] = &gObjectEventGraphicsInfo_BrendanFishing,
    [138] = &gObjectEventGraphicsInfo_MayFishing,
    [139] = &gObjectEventGraphicsInfo_HotSpringsOldWoman,
    [140] = &gObjectEventGraphicsInfo_SSTidal,
    [141] = &gObjectEventGraphicsInfo_SubmarineShadow,
    [142] = &gObjectEventGraphicsInfo_PichuDoll,
    [143] = &gObjectEventGraphicsInfo_PikachuDoll,
    [144] = &gObjectEventGraphicsInfo_MarillDoll,
    [145] = &gObjectEventGraphicsInfo_TogepiDoll,
    [146] = &gObjectEventGraphicsInfo_CyndaquilDoll,
    [147] = &gObjectEventGraphicsInfo_ChikoritaDoll,
    [148] = &gObjectEventGraphicsInfo_TotodileDoll,
    [149] = &gObjectEventGraphicsInfo_JigglypuffDoll,
    [150] = &gObjectEventGraphicsInfo_MeowthDoll,
    [151] = &gObjectEventGraphicsInfo_ClefairyDoll,
    [152] = &gObjectEventGraphicsInfo_DittoDoll,
    [153] = &gObjectEventGraphicsInfo_SmoochumDoll,
    [154] = &gObjectEventGraphicsInfo_TreeckoDoll,
    [155] = &gObjectEventGraphicsInfo_TorchicDoll,
    [156] = &gObjectEventGraphicsInfo_MudkipDoll,
    [157] = &gObjectEventGraphicsInfo_DuskullDoll,
    [158] = &gObjectEventGraphicsInfo_WynautDoll,
    [159] = &gObjectEventGraphicsInfo_BaltoyDoll,
    [160] = &gObjectEventGraphicsInfo_KecleonDoll,
    [161] = &gObjectEventGraphicsInfo_AzurillDoll,
    [162] = &gObjectEventGraphicsInfo_SkittyDoll,
    [163] = &gObjectEventGraphicsInfo_SwabluDoll,
    [164] = &gObjectEventGraphicsInfo_GulpinDoll,
    [165] = &gObjectEventGraphicsInfo_LotadDoll,
    [166] = &gObjectEventGraphicsInfo_SeedotDoll,
    [167] = &gObjectEventGraphicsInfo_PikaCushion,
    [168] = &gObjectEventGraphicsInfo_RoundCushion,
    [169] = &gObjectEventGraphicsInfo_KissCushion,
    [170] = &gObjectEventGraphicsInfo_ZigzagCushion,
    [171] = &gObjectEventGraphicsInfo_SpinCushion,
    [172] = &gObjectEventGraphicsInfo_DiamondCushion,
    [173] = &gObjectEventGraphicsInfo_BallCushion,
    [174] = &gObjectEventGraphicsInfo_GrassCushion,
    [175] = &gObjectEventGraphicsInfo_FireCushion,
    [176] = &gObjectEventGraphicsInfo_WaterCushion,
    [177] = &gObjectEventGraphicsInfo_BigSnorlaxDoll,
    [178] = &gObjectEventGraphicsInfo_BigRhydonDoll,
    [179] = &gObjectEventGraphicsInfo_BigLaprasDoll,
    [180] = &gObjectEventGraphicsInfo_BigVenusaurDoll,
    [181] = &gObjectEventGraphicsInfo_BigCharizardDoll,
    [182] = &gObjectEventGraphicsInfo_BigBlastoiseDoll,
    [183] = &gObjectEventGraphicsInfo_BigWailmerDoll,
    [184] = &gObjectEventGraphicsInfo_BigRegirockDoll,
    [185] = &gObjectEventGraphicsInfo_BigRegiceDoll,
    [186] = &gObjectEventGraphicsInfo_BigRegisteelDoll,
    [187] = &gObjectEventGraphicsInfo_Latias,
    [188] = &gObjectEventGraphicsInfo_Latios,
    [189] = &gObjectEventGraphicsInfo_GameboyKid,
    [190] = &gObjectEventGraphicsInfo_ContestJudge,
    [191] = &gObjectEventGraphicsInfo_BrendanWatering,
    [192] = &gObjectEventGraphicsInfo_MayWatering,
    [193] = &gObjectEventGraphicsInfo_BrendanDecorating,
    [194] = &gObjectEventGraphicsInfo_MayDecorating,
    [195] = &gObjectEventGraphicsInfo_Archie,
    [196] = &gObjectEventGraphicsInfo_Maxie,
    [197] = &gObjectEventGraphicsInfo_Kyogre1,
    [198] = &gObjectEventGraphicsInfo_Groudon1,
    [199] = &gObjectEventGraphicsInfo_Fossil,
    [200] = &gObjectEventGraphicsInfo_Regirock,
    [201] = &gObjectEventGraphicsInfo_Regice,
    [202] = &gObjectEventGraphicsInfo_Registeel,
    [203] = &gObjectEventGraphicsInfo_Skitty,
    [204] = &gObjectEventGraphicsInfo_Kecleon1,
    [205] = &gObjectEventGraphicsInfo_Kyogre2,
    [206] = &gObjectEventGraphicsInfo_Groudon2,
    [207] = &gObjectEventGraphicsInfo_Rayquaza2,
    [208] = &gObjectEventGraphicsInfo_Zigzagoon,
    [209] = &gObjectEventGraphicsInfo_Pikachu,
    [210] = &gObjectEventGraphicsInfo_Azumarill,
    [211] = &gObjectEventGraphicsInfo_Wingull,
    [212] = &gObjectEventGraphicsInfo_Kecleon2,
    [213] = &gObjectEventGraphicsInfo_TuberMSwimming,
    [214] = &gObjectEventGraphicsInfo_Azurill,
    [215] = &gObjectEventGraphicsInfo_Mom,
    [216] = &gObjectEventGraphicsInfo_LinkBrendan,
    [217] = &gObjectEventGraphicsInfo_LinkMay,
    [218] = &gObjectEventGraphicsInfo_Juan,
    [219] = &gObjectEventGraphicsInfo_Scott,
    [220] = &gObjectEventGraphicsInfo_Poochyena,
    [221] = &gObjectEventGraphicsInfo_Kyogre3,
    [222] = &gObjectEventGraphicsInfo_Groudon3,
    [223] = &gObjectEventGraphicsInfo_MysteryEventDeliveryman,
    [224] = &gObjectEventGraphicsInfo_Statue,
    [225] = &gObjectEventGraphicsInfo_Kirlia,
    [226] = &gObjectEventGraphicsInfo_Dusclops,
    [227] = &gObjectEventGraphicsInfo_UnionRoomAttendant,
    [228] = &gObjectEventGraphicsInfo_Sudowoodo,
    [229] = &gObjectEventGraphicsInfo_Mew,
    [230] = &gObjectEventGraphicsInfo_Red,
    [231] = &gObjectEventGraphicsInfo_Leaf,
    [232] = &gObjectEventGraphicsInfo_Deoxys,
    [233] = &gObjectEventGraphicsInfo_BirthIslandStone,
    [234] = &gObjectEventGraphicsInfo_Brandon,
    [235] = &gObjectEventGraphicsInfo_RubySapphireBrendan,
    [236] = &gObjectEventGraphicsInfo_RubySapphireMay,
    [237] = &gObjectEventGraphicsInfo_Lugia,
    [238] = &gObjectEventGraphicsInfo_HoOh,
};

const struct ObjectEventGraphicsInfo *const gMauvilleOldManGraphicsInfoPointers[] = {
    [0] = &gObjectEventGraphicsInfo_Bard,
    [1] = &gObjectEventGraphicsInfo_Hipster,
    [2] = &gObjectEventGraphicsInfo_Trader,
    [3] = &gObjectEventGraphicsInfo_Storyteller,
    [4] = &gObjectEventGraphicsInfo_Giddy,
    [5] = &gObjectEventGraphicsInfo_UnusedMauvilleOldMan1,
    [6] = &gObjectEventGraphicsInfo_UnusedMauvilleOldMan2,
};
# 438 "src/event_object_movement.c" 2
# 1 "src/data/field_effects/field_effect_object_template_pointers.h" 1
const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowSmall;
const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowMedium;
const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowLarge;
const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowExtraLarge;
const struct SpriteTemplate gFieldEffectObjectTemplate_TallGrass;
const struct SpriteTemplate gFieldEffectObjectTemplate_Ripple;
const struct SpriteTemplate gFieldEffectObjectTemplate_Ash;
const struct SpriteTemplate gFieldEffectObjectTemplate_SurfBlob;
const struct SpriteTemplate gFieldEffectObjectTemplate_Arrow;
const struct SpriteTemplate gFieldEffectObjectTemplate_GroundImpactDust;
const struct SpriteTemplate gFieldEffectObjectTemplate_BikeHopTallGrass;
const struct SpriteTemplate gFieldEffectObjectTemplate_SandFootprints;
const struct SpriteTemplate gFieldEffectObjectTemplate_BikeHopBigSplash;
const struct SpriteTemplate gFieldEffectObjectTemplate_Splash;
const struct SpriteTemplate gFieldEffectObjectTemplate_BikeHopSmallSplash;
const struct SpriteTemplate gFieldEffectObjectTemplate_LongGrass;
const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown16;
const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown17;
const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown18;
const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown19;
const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown20;
const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown21;
const struct SpriteTemplate gFieldEffectObjectTemplate_BerryTreeGrowthSparkle;
const struct SpriteTemplate gFieldEffectObjectTemplate_DeepSandFootprints;
const struct SpriteTemplate gFieldEffectObjectTemplate_TreeDisguise;
const struct SpriteTemplate gFieldEffectObjectTemplate_MountainDisguise;
const struct SpriteTemplate gFieldEffectObjectTemplate_Bird;
const struct SpriteTemplate gFieldEffectObjectTemplate_BikeTireTracks;
const struct SpriteTemplate gFieldEffectObjectTemplate_SandDisguisePlaceholder;
const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown29;
const struct SpriteTemplate gFieldEffectObjectTemplate_ShortGrass;
const struct SpriteTemplate gFieldEffectObjectTemplate_HotSpringsWater;
const struct SpriteTemplate gFieldEffectObjectTemplate_JumpOutOfAsh;
const struct SpriteTemplate gFieldEffectObjectTemplate_LavaridgeGymWarp;
const struct SpriteTemplate gFieldEffectObjectTemplate_Bubbles;
const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown35;
const struct SpriteTemplate gFieldEffectObjectTemplate_Rayquaza;

const struct SpriteTemplate *const gFieldEffectObjectTemplatePointers[] = {
    &gFieldEffectObjectTemplate_ShadowSmall,
    &gFieldEffectObjectTemplate_ShadowMedium,
    &gFieldEffectObjectTemplate_ShadowLarge,
    &gFieldEffectObjectTemplate_ShadowExtraLarge,
    &gFieldEffectObjectTemplate_TallGrass,
    &gFieldEffectObjectTemplate_Ripple,
    &gFieldEffectObjectTemplate_Ash,
    &gFieldEffectObjectTemplate_SurfBlob,
    &gFieldEffectObjectTemplate_Arrow,
    &gFieldEffectObjectTemplate_GroundImpactDust,
    &gFieldEffectObjectTemplate_BikeHopTallGrass,
    &gFieldEffectObjectTemplate_SandFootprints,
    &gFieldEffectObjectTemplate_BikeHopBigSplash,
    &gFieldEffectObjectTemplate_Splash,
    &gFieldEffectObjectTemplate_BikeHopSmallSplash,
    &gFieldEffectObjectTemplate_LongGrass,
    &gFieldEffectObjectTemplate_Unknown16,
    &gFieldEffectObjectTemplate_Unknown17,
    &gFieldEffectObjectTemplate_Unknown18,
    &gFieldEffectObjectTemplate_Unknown19,
    &gFieldEffectObjectTemplate_Unknown20,
    &gFieldEffectObjectTemplate_Unknown21,
    &gFieldEffectObjectTemplate_BerryTreeGrowthSparkle,
    &gFieldEffectObjectTemplate_DeepSandFootprints,
    &gFieldEffectObjectTemplate_TreeDisguise,
    &gFieldEffectObjectTemplate_MountainDisguise,
    &gFieldEffectObjectTemplate_Bird,
    &gFieldEffectObjectTemplate_BikeTireTracks,
    &gFieldEffectObjectTemplate_SandDisguisePlaceholder,
    &gFieldEffectObjectTemplate_Unknown29,
    &gFieldEffectObjectTemplate_ShortGrass,
    &gFieldEffectObjectTemplate_HotSpringsWater,
    &gFieldEffectObjectTemplate_JumpOutOfAsh,
    &gFieldEffectObjectTemplate_LavaridgeGymWarp,
    &gFieldEffectObjectTemplate_Bubbles,
    &gFieldEffectObjectTemplate_Unknown35,
    &gFieldEffectObjectTemplate_Rayquaza,
};
# 439 "src/event_object_movement.c" 2
# 1 "src/data/object_events/object_event_pic_tables.h" 1
const struct SpriteFrameImage gObjectEventPicTable_BrendanNormal[] = {
    {.data = (u8 *)gObjectEventPic_BrendanNormal + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanNormal + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanNormal + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanNormal + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanNormal + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanNormal + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanNormal + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanNormal + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanNormal + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanRunning + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanRunning + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanRunning + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanRunning + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanRunning + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanRunning + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanRunning + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanRunning + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanRunning + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_BrendanMachBike[] = {
    {.data = (u8 *)gObjectEventPic_BrendanMachBike + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanMachBike + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanMachBike + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanMachBike + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanMachBike + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanMachBike + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanMachBike + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanMachBike + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanMachBike + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_BrendanAcroBike[] = {
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 9 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 10 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 11 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 12 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 13 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 14 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 15 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 16 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 17 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 18 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 19 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 20 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 21 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 22 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 23 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 24 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 25 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanAcroBike + (4 * 4 * 26 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_BrendanSurfing[] = {
    {.data = (u8 *)gObjectEventPic_BrendanSurfing + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanSurfing + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanSurfing + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanSurfing + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanSurfing + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanSurfing + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanSurfing + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanSurfing + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanSurfing + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanSurfing + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanSurfing + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanSurfing + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_BrendanUnderwater[] = {
    {.data = (u8 *)gObjectEventPic_BrendanUnderwater + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanUnderwater + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanUnderwater + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanUnderwater + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanUnderwater + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanUnderwater + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanUnderwater + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanUnderwater + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanUnderwater + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_BrendanFieldMove[] = {
    {.data = (u8 *)gObjectEventPic_BrendanFieldMove + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanFieldMove + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanFieldMove + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanFieldMove + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanFieldMove + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_QuintyPlump[] = {
    {.data = (u8 *)gObjectEventPic_QuintyPlump + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_QuintyPlump + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_QuintyPlump + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_QuintyPlump + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_QuintyPlump + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_QuintyPlump + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_QuintyPlump + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_NinjaBoy[] = {
    {.data = (u8 *)gObjectEventPic_NinjaBoy + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NinjaBoy + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NinjaBoy + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NinjaBoy + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NinjaBoy + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NinjaBoy + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NinjaBoy + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NinjaBoy + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NinjaBoy + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Twin[] = {
    {.data = (u8 *)gObjectEventPic_Twin + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Twin + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Twin + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Twin + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Twin + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Twin + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Twin + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Twin + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Twin + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Boy1[] = {
    {.data = (u8 *)gObjectEventPic_Boy1 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy1 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy1 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy1 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy1 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy1 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy1 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy1 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy1 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Girl1[] = {
    {.data = (u8 *)gObjectEventPic_Girl1 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl1 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl1 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl1 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl1 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl1 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl1 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl1 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl1 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Boy2[] = {
    {.data = (u8 *)gObjectEventPic_Boy2 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy2 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy2 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy2 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy2 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy2 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy2 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy2 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy2 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Girl2[] = {
    {.data = (u8 *)gObjectEventPic_Girl2 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl2 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl2 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl2 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl2 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl2 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl2 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl2 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl2 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_LittleBoy[] = {
    {.data = (u8 *)gObjectEventPic_LittleBoy + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleBoy + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleBoy + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleBoy + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleBoy + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleBoy + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleBoy + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleBoy + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleBoy + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_LittleGirl[] = {
    {.data = (u8 *)gObjectEventPic_LittleGirl + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleGirl + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleGirl + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleGirl + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleGirl + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleGirl + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleGirl + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleGirl + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LittleGirl + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Boy3[] = {
    {.data = (u8 *)gObjectEventPic_Boy3 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy3 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy3 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy3 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy3 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy3 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy3 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy3 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Boy3 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Girl3[] = {
    {.data = (u8 *)gObjectEventPic_Girl3 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl3 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl3 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl3 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl3 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl3 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl3 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl3 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Girl3 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_RichBoy[] = {
    {.data = (u8 *)gObjectEventPic_RichBoy + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RichBoy + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RichBoy + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RichBoy + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RichBoy + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RichBoy + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RichBoy + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RichBoy + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RichBoy + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Woman1[] = {
    {.data = (u8 *)gObjectEventPic_Woman1 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman1 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman1 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman1 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman1 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman1 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman1 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman1 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman1 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_FatMan[] = {
    {.data = (u8 *)gObjectEventPic_FatMan + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FatMan + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FatMan + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FatMan + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FatMan + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FatMan + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FatMan + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FatMan + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FatMan + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_PokefanF[] = {
    {.data = (u8 *)gObjectEventPic_PokefanF + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PokefanF + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PokefanF + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PokefanF + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PokefanF + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PokefanF + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PokefanF + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PokefanF + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PokefanF + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Man1[] = {
    {.data = (u8 *)gObjectEventPic_Man1 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man1 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man1 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man1 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man1 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man1 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man1 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man1 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man1 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Woman2[] = {
    {.data = (u8 *)gObjectEventPic_Woman2 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman2 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman2 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman2 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman2 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman2 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman2 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman2 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman2 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_ExpertM[] = {
    {.data = (u8 *)gObjectEventPic_ExpertM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ExpertM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ExpertM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ExpertM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ExpertM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ExpertM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ExpertM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ExpertM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ExpertM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_ExpertF[] = {
    {.data = (u8 *)gObjectEventPic_ExpertF + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ExpertF + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ExpertF + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ExpertF + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ExpertF + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ExpertF + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ExpertF + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ExpertF + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ExpertF + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Man2[] = {
    {.data = (u8 *)gObjectEventPic_Man2 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man2 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man2 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man2 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man2 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man2 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man2 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man2 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man2 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Woman3[] = {
    {.data = (u8 *)gObjectEventPic_Woman3 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman3 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman3 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman3 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman3 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman3 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman3 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman3 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman3 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_PokefanM[] = {
    {.data = (u8 *)gObjectEventPic_PokefanM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PokefanM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PokefanM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PokefanM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PokefanM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PokefanM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PokefanM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PokefanM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PokefanM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Woman4[] = {
    {.data = (u8 *)gObjectEventPic_Woman4 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman4 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman4 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman4 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman4 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman4 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman4 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman4 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman4 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Cook[] = {
    {.data = (u8 *)gObjectEventPic_Cook + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cook + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cook + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cook + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cook + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cook + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cook + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cook + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cook + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_LinkReceptionist[] = {
    {.data = (u8 *)gObjectEventPic_LinkReceptionist + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LinkReceptionist + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LinkReceptionist + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LinkReceptionist + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LinkReceptionist + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LinkReceptionist + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LinkReceptionist + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LinkReceptionist + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LinkReceptionist + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_OldMan[] = {
    {.data = (u8 *)gObjectEventPic_OldMan + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldMan + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_OldWoman[] = {
    {.data = (u8 *)gObjectEventPic_OldWoman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldWoman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldWoman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldWoman + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldWoman + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldWoman + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldWoman + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldWoman + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OldWoman + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Camper[] = {
    {.data = (u8 *)gObjectEventPic_Camper + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Camper + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Camper + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Camper + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Camper + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Camper + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Camper + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Camper + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Camper + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Picnicker[] = {
    {.data = (u8 *)gObjectEventPic_Picnicker + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Picnicker + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Picnicker + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Picnicker + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Picnicker + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Picnicker + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Picnicker + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Picnicker + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Picnicker + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Man3[] = {
    {.data = (u8 *)gObjectEventPic_Man3 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man3 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man3 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man3 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man3 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man3 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man3 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man3 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man3 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Woman5[] = {
    {.data = (u8 *)gObjectEventPic_Woman5 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman5 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman5 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman5 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman5 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman5 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman5 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman5 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Woman5 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Youngster[] = {
    {.data = (u8 *)gObjectEventPic_Youngster + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Youngster + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Youngster + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Youngster + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Youngster + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Youngster + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Youngster + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Youngster + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Youngster + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_BugCatcher[] = {
    {.data = (u8 *)gObjectEventPic_BugCatcher + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BugCatcher + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BugCatcher + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BugCatcher + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BugCatcher + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BugCatcher + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BugCatcher + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BugCatcher + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BugCatcher + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_PsychicM[] = {
    {.data = (u8 *)gObjectEventPic_PsychicM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PsychicM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PsychicM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PsychicM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PsychicM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PsychicM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PsychicM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PsychicM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PsychicM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_SchoolKidM[] = {
    {.data = (u8 *)gObjectEventPic_SchoolKidM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SchoolKidM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SchoolKidM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SchoolKidM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SchoolKidM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SchoolKidM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SchoolKidM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SchoolKidM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SchoolKidM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Maniac[] = {
    {.data = (u8 *)gObjectEventPic_Maniac + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Maniac + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Maniac + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Maniac + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Maniac + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Maniac + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Maniac + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Maniac + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Maniac + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_HexManiac[] = {
    {.data = (u8 *)gObjectEventPic_HexManiac + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HexManiac + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HexManiac + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HexManiac + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HexManiac + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HexManiac + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HexManiac + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HexManiac + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HexManiac + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_SwimmerM[] = {
    {.data = (u8 *)gObjectEventPic_SwimmerM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_SwimmerF[] = {
    {.data = (u8 *)gObjectEventPic_SwimmerF + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerF + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerF + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerF + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerF + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerF + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerF + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerF + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SwimmerF + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_BlackBelt[] = {
    {.data = (u8 *)gObjectEventPic_BlackBelt + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BlackBelt + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BlackBelt + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BlackBelt + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BlackBelt + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BlackBelt + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BlackBelt + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BlackBelt + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BlackBelt + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Beauty[] = {
    {.data = (u8 *)gObjectEventPic_Beauty + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Beauty + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Beauty + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Beauty + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Beauty + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Beauty + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Beauty + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Beauty + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Beauty + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Scientist1[] = {
    {.data = (u8 *)gObjectEventPic_Scientist1 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist1 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist1 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist1 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist1 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist1 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist1 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist1 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist1 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Lass[] = {
    {.data = (u8 *)gObjectEventPic_Lass + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lass + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lass + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lass + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lass + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lass + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lass + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lass + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lass + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Gentleman[] = {
    {.data = (u8 *)gObjectEventPic_Gentleman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Gentleman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Gentleman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Gentleman + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Gentleman + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Gentleman + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Gentleman + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Gentleman + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Gentleman + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Sailor[] = {
    {.data = (u8 *)gObjectEventPic_Sailor + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sailor + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sailor + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sailor + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sailor + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sailor + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sailor + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sailor + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sailor + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Fisherman[] = {
    {.data = (u8 *)gObjectEventPic_Fisherman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fisherman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fisherman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fisherman + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fisherman + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fisherman + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fisherman + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fisherman + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Fisherman + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_RunningTriathleteM[] = {
    {.data = (u8 *)gObjectEventPic_RunningTriathleteM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RunningTriathleteM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RunningTriathleteM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RunningTriathleteM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RunningTriathleteM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RunningTriathleteM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RunningTriathleteM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RunningTriathleteM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RunningTriathleteM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_RunningTriathleteF[] = {
    {.data = (u8 *)gObjectEventPic_RunningTriathleteF + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RunningTriathleteF + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RunningTriathleteF + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RunningTriathleteF + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RunningTriathleteF + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RunningTriathleteF + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RunningTriathleteF + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RunningTriathleteF + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RunningTriathleteF + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_TuberF[] = {
    {.data = (u8 *)gObjectEventPic_TuberF + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberF + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberF + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberF + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberF + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberF + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberF + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberF + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberF + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_TuberM[] = {
    {.data = (u8 *)gObjectEventPic_TuberM + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberM + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberM + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberM + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberM + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberM + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberM + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberM + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberM + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Hiker[] = {
    {.data = (u8 *)gObjectEventPic_Hiker + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Hiker + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Hiker + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Hiker + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Hiker + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Hiker + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Hiker + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Hiker + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Hiker + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_CyclingTriathleteM[] = {
    {.data = (u8 *)gObjectEventPic_CyclingTriathleteM + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CyclingTriathleteM + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CyclingTriathleteM + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CyclingTriathleteM + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CyclingTriathleteM + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CyclingTriathleteM + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CyclingTriathleteM + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CyclingTriathleteM + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CyclingTriathleteM + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_CyclingTriathleteF[] = {
    {.data = (u8 *)gObjectEventPic_CyclingTriathleteF + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CyclingTriathleteF + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CyclingTriathleteF + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CyclingTriathleteF + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CyclingTriathleteF + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CyclingTriathleteF + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CyclingTriathleteF + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CyclingTriathleteF + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CyclingTriathleteF + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Nurse[] = {
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Nurse + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_ItemBall[] = {
    {.data = (u8 *)gObjectEventPic_ItemBall, .size = sizeof gObjectEventPic_ItemBall},
};

const struct SpriteFrameImage gObjectEventPicTable_ProfBirch[] = {
    {.data = (u8 *)gObjectEventPic_ProfBirch + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ProfBirch + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ProfBirch + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ProfBirch + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ProfBirch + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ProfBirch + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ProfBirch + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ProfBirch + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ProfBirch + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Man4[] = {
    {.data = (u8 *)gObjectEventPic_Man4 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man4 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man4 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man4 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man4 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man4 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man4 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man4 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man4 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Man5[] = {
    {.data = (u8 *)gObjectEventPic_Man5 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man5 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man5 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man5 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man5 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man5 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man5 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man5 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Man5 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_ReporterM[] = {
    {.data = (u8 *)gObjectEventPic_ReporterM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ReporterM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ReporterM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ReporterM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ReporterM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ReporterM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ReporterM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ReporterM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ReporterM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_ReporterF[] = {
    {.data = (u8 *)gObjectEventPic_ReporterF + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ReporterF + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ReporterF + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ReporterF + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ReporterF + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ReporterF + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ReporterF + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ReporterF + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ReporterF + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_MauvilleOldMan1[] = {
    {.data = (u8 *)gObjectEventPic_MauvilleOldMan1 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MauvilleOldMan1 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MauvilleOldMan1 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MauvilleOldMan1 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MauvilleOldMan1 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MauvilleOldMan1 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MauvilleOldMan1 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MauvilleOldMan1 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MauvilleOldMan1 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_MauvilleOldMan2[] = {
    {.data = (u8 *)gObjectEventPic_MauvilleOldMan2 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MauvilleOldMan2 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MauvilleOldMan2 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MauvilleOldMan2 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MauvilleOldMan2 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MauvilleOldMan2 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MauvilleOldMan2 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MauvilleOldMan2 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MauvilleOldMan2 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_UnusedNatuDoll[] = {
    {.data = (u8 *)gObjectEventPic_UnusedNatuDoll, .size = sizeof gObjectEventPic_UnusedNatuDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_UnusedMagnemiteDoll[] = {
    {.data = (u8 *)gObjectEventPic_UnusedMagnemiteDoll, .size = sizeof gObjectEventPic_UnusedMagnemiteDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_UnusedSquirtleDoll[] = {
    {.data = (u8 *)gObjectEventPic_UnusedSquirtleDoll, .size = sizeof gObjectEventPic_UnusedSquirtleDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_UnusedWooperDoll[] = {
    {.data = (u8 *)gObjectEventPic_UnusedWooperDoll, .size = sizeof gObjectEventPic_UnusedWooperDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_UnusedPikachuDoll[] = {
    {.data = (u8 *)gObjectEventPic_UnusedPikachuDoll, .size = sizeof gObjectEventPic_UnusedPikachuDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_UnusedPorygon2Doll[] = {
    {.data = (u8 *)gObjectEventPic_UnusedPorygon2Doll, .size = sizeof gObjectEventPic_UnusedPorygon2Doll},
};

const struct SpriteFrameImage gObjectEventPicTable_CuttableTree[] = {
    {.data = (u8 *)gObjectEventPic_CuttableTree + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CuttableTree + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CuttableTree + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CuttableTree + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_MartEmployee[] = {
    {.data = (u8 *)gObjectEventPic_MartEmployee + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MartEmployee + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MartEmployee + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MartEmployee + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MartEmployee + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MartEmployee + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MartEmployee + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MartEmployee + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MartEmployee + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_RooftopSaleWoman[] = {
    {.data = (u8 *)gObjectEventPic_RooftopSaleWoman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RooftopSaleWoman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RooftopSaleWoman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RooftopSaleWoman + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RooftopSaleWoman + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RooftopSaleWoman + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RooftopSaleWoman + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RooftopSaleWoman + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RooftopSaleWoman + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Teala[] = {
    {.data = (u8 *)gObjectEventPic_Teala + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Teala + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Teala + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Teala + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Teala + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Teala + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Teala + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Teala + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Teala + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_BreakableRock[] = {
    {.data = (u8 *)gObjectEventPic_BreakableRock + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BreakableRock + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BreakableRock + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BreakableRock + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_PushableBoulder[] = {
    {.data = (u8 *)gObjectEventPic_PushableBoulder, .size = sizeof gObjectEventPic_PushableBoulder},
};

const struct SpriteFrameImage gObjectEventPicTable_MrBrineysBoat[] = {
    {.data = (u8 *)gObjectEventPic_MrBrineysBoat + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MrBrineysBoat + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MrBrineysBoat + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MrBrineysBoat + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MrBrineysBoat + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MrBrineysBoat + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MrBrineysBoat + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MrBrineysBoat + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MrBrineysBoat + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Truck[] = {
    {.data = (u8 *)gObjectEventPic_Truck, .size = sizeof gObjectEventPic_Truck},
};

const struct SpriteFrameImage gObjectEventPicTable_VigorothCarryingBox[] = {
    {.data = (u8 *)gObjectEventPic_Vigoroth + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Vigoroth + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Vigoroth + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Vigoroth + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Vigoroth + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Vigoroth + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Vigoroth + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Vigoroth + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Vigoroth + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_VigorothFacingAway[] = {
    {.data = (u8 *)gObjectEventPic_Vigoroth + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Vigoroth + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Vigoroth + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Vigoroth + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Vigoroth + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Vigoroth + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Vigoroth + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Vigoroth + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Vigoroth + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_BirchsBag[] = {
    {.data = (u8 *)gObjectEventPic_BirchsBag, .size = sizeof gObjectEventPic_BirchsBag},
};

const struct SpriteFrameImage gObjectEventPicTable_EnemyZigzagoon[] = {
    {.data = (u8 *)gObjectEventPic_EnemyZigzagoon + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_EnemyZigzagoon + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_EnemyZigzagoon + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_EnemyZigzagoon + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_EnemyZigzagoon + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_EnemyZigzagoon + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_EnemyZigzagoon + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_EnemyZigzagoon + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_EnemyZigzagoon + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Poochyena[] = {
    {.data = (u8 *)gObjectEventPic_Poochyena + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Poochyena + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Poochyena + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Poochyena + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Poochyena + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Poochyena + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Poochyena + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Poochyena + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Poochyena + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Artist[] = {
    {.data = (u8 *)gObjectEventPic_Artist + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Artist + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Artist + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Artist + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Artist + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Artist + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Artist + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Artist + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Artist + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_MayNormal[] = {
    {.data = (u8 *)gObjectEventPic_MayNormal + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayNormal + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayNormal + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayNormal + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayNormal + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayNormal + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayNormal + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayNormal + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayNormal + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayRunning + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayRunning + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayRunning + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayRunning + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayRunning + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayRunning + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayRunning + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayRunning + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayRunning + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_MayMachBike[] = {
    {.data = (u8 *)gObjectEventPic_MayMachBike + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayMachBike + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayMachBike + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayMachBike + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayMachBike + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayMachBike + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayMachBike + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayMachBike + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayMachBike + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_MayAcroBike[] = {
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 9 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 10 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 11 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 12 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 13 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 14 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 15 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 16 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 17 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 18 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 19 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 20 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 21 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 22 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 23 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 24 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 25 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayAcroBike + (4 * 4 * 26 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_MaySurfing[] = {
    {.data = (u8 *)gObjectEventPic_MaySurfing + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MaySurfing + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MaySurfing + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MaySurfing + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MaySurfing + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MaySurfing + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MaySurfing + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MaySurfing + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MaySurfing + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MaySurfing + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MaySurfing + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MaySurfing + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_MayUnderwater[] = {
    {.data = (u8 *)gObjectEventPic_MayUnderwater + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayUnderwater + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayUnderwater + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayUnderwater + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayUnderwater + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayUnderwater + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayUnderwater + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayUnderwater + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayUnderwater + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_MayFieldMove[] = {
    {.data = (u8 *)gObjectEventPic_MayFieldMove + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayFieldMove + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayFieldMove + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayFieldMove + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayFieldMove + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Cameraman[] = {
    {.data = (u8 *)gObjectEventPic_Cameraman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cameraman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cameraman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cameraman + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cameraman + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cameraman + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cameraman + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cameraman + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Cameraman + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_MovingBox[] = {
    {.data = (u8 *)gObjectEventPic_MovingBox, .size = sizeof gObjectEventPic_MovingBox},
};

const struct SpriteFrameImage gObjectEventPicTable_CableCar[] = {
    {.data = (u8 *)gObjectEventPic_CableCar, .size = sizeof gObjectEventPic_CableCar},
};

const struct SpriteFrameImage gObjectEventPicTable_Scientist2[] = {
    {.data = (u8 *)gObjectEventPic_Scientist2 + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist2 + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist2 + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist2 + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist2 + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist2 + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist2 + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist2 + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scientist2 + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_DevonEmployee[] = {
    {.data = (u8 *)gObjectEventPic_DevonEmployee + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DevonEmployee + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DevonEmployee + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DevonEmployee + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DevonEmployee + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DevonEmployee + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DevonEmployee + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DevonEmployee + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DevonEmployee + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_AquaMemberM[] = {
    {.data = (u8 *)gObjectEventPic_AquaMemberM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AquaMemberM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AquaMemberM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AquaMemberM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AquaMemberM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AquaMemberM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AquaMemberM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AquaMemberM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AquaMemberM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_AquaMemberF[] = {
    {.data = (u8 *)gObjectEventPic_AquaMemberF + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AquaMemberF + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AquaMemberF + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AquaMemberF + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AquaMemberF + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AquaMemberF + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AquaMemberF + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AquaMemberF + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AquaMemberF + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_MagmaMemberM[] = {
    {.data = (u8 *)gObjectEventPic_MagmaMemberM + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagmaMemberM + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagmaMemberM + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagmaMemberM + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagmaMemberM + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagmaMemberM + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagmaMemberM + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagmaMemberM + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagmaMemberM + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_MagmaMemberF[] = {
    {.data = (u8 *)gObjectEventPic_MagmaMemberF + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagmaMemberF + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagmaMemberF + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagmaMemberF + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagmaMemberF + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagmaMemberF + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagmaMemberF + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagmaMemberF + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagmaMemberF + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Sidney[] = {
    {.data = (u8 *)gObjectEventPic_Sidney + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sidney + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sidney + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sidney + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sidney + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sidney + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sidney + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sidney + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sidney + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Phoebe[] = {
    {.data = (u8 *)gObjectEventPic_Phoebe + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Phoebe + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Phoebe + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Phoebe + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Phoebe + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Phoebe + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Phoebe + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Phoebe + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Phoebe + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Glacia[] = {
    {.data = (u8 *)gObjectEventPic_Glacia + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Glacia + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Glacia + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Glacia + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Glacia + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Glacia + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Glacia + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Glacia + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Glacia + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Drake[] = {
    {.data = (u8 *)gObjectEventPic_Drake + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Drake + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Drake + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Drake + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Drake + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Drake + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Drake + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Drake + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Drake + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Roxanne[] = {
    {.data = (u8 *)gObjectEventPic_Roxanne + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Roxanne + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Roxanne + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Roxanne + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Roxanne + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Roxanne + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Roxanne + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Roxanne + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Roxanne + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Brawly[] = {
    {.data = (u8 *)gObjectEventPic_Brawly + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brawly + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brawly + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brawly + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brawly + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brawly + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brawly + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brawly + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brawly + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Wattson[] = {
    {.data = (u8 *)gObjectEventPic_Wattson + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wattson + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wattson + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wattson + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wattson + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wattson + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wattson + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wattson + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wattson + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Flannery[] = {
    {.data = (u8 *)gObjectEventPic_Flannery + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Flannery + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Flannery + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Flannery + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Flannery + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Flannery + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Flannery + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Flannery + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Flannery + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Norman[] = {
    {.data = (u8 *)gObjectEventPic_Norman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Norman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Norman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Norman + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Norman + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Norman + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Norman + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Norman + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Norman + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Winona[] = {
    {.data = (u8 *)gObjectEventPic_Winona + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Winona + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Winona + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Winona + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Winona + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Winona + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Winona + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Winona + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Winona + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Liza[] = {
    {.data = (u8 *)gObjectEventPic_Liza + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Liza + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Liza + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Liza + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Liza + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Liza + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Liza + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Liza + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Liza + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Tate[] = {
    {.data = (u8 *)gObjectEventPic_Tate + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Tate + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Tate + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Tate + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Tate + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Tate + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Tate + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Tate + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Tate + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Wallace[] = {
    {.data = (u8 *)gObjectEventPic_Wallace + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wallace + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wallace + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wallace + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wallace + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wallace + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wallace + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wallace + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wallace + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Steven[] = {
    {.data = (u8 *)gObjectEventPic_Steven + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Steven + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Steven + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Steven + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Steven + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Steven + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Steven + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Steven + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Steven + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Wally[] = {
    {.data = (u8 *)gObjectEventPic_Wally + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wally + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wally + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wally + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wally + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wally + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wally + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wally + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wally + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_RubySapphireLittleBoy[] = {
    {.data = (u8 *)gObjectEventPic_RubySapphireLittleBoy + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireLittleBoy + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireLittleBoy + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireLittleBoy + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireLittleBoy + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireLittleBoy + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireLittleBoy + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireLittleBoy + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireLittleBoy + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_BrendanFishing[] = {
    {.data = (u8 *)gObjectEventPic_BrendanFishing + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanFishing + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanFishing + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanFishing + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanFishing + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanFishing + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanFishing + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanFishing + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanFishing + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanFishing + (4 * 4 * 9 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanFishing + (4 * 4 * 10 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanFishing + (4 * 4 * 11 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_MayFishing[] = {
    {.data = (u8 *)gObjectEventPic_MayFishing + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayFishing + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayFishing + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayFishing + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayFishing + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayFishing + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayFishing + (4 * 4 * 6 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayFishing + (4 * 4 * 7 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayFishing + (4 * 4 * 8 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayFishing + (4 * 4 * 9 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayFishing + (4 * 4 * 10 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayFishing + (4 * 4 * 11 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_HotSpringsOldWoman[] = {
    {.data = (u8 *)gObjectEventPic_HotSpringsOldWoman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HotSpringsOldWoman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HotSpringsOldWoman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HotSpringsOldWoman + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HotSpringsOldWoman + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HotSpringsOldWoman + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HotSpringsOldWoman + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HotSpringsOldWoman + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HotSpringsOldWoman + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_SSTidal[] = {
    {.data = (u8 *)gObjectEventPic_SSTidal, .size = sizeof gObjectEventPic_SSTidal},
    {.data = (u8 *)gObjectEventPic_SSTidal, .size = sizeof gObjectEventPic_SSTidal},
    {.data = (u8 *)gObjectEventPic_SSTidal, .size = sizeof gObjectEventPic_SSTidal},
    {.data = (u8 *)gObjectEventPic_SSTidal, .size = sizeof gObjectEventPic_SSTidal},
    {.data = (u8 *)gObjectEventPic_SSTidal, .size = sizeof gObjectEventPic_SSTidal},
    {.data = (u8 *)gObjectEventPic_SSTidal, .size = sizeof gObjectEventPic_SSTidal},
    {.data = (u8 *)gObjectEventPic_SSTidal, .size = sizeof gObjectEventPic_SSTidal},
    {.data = (u8 *)gObjectEventPic_SSTidal, .size = sizeof gObjectEventPic_SSTidal},
    {.data = (u8 *)gObjectEventPic_SSTidal, .size = sizeof gObjectEventPic_SSTidal},
};

const struct SpriteFrameImage gObjectEventPicTable_SubmarineShadow[] = {
    {.data = (u8 *)gObjectEventPic_SubmarineShadow, .size = sizeof gObjectEventPic_SubmarineShadow},
    {.data = (u8 *)gObjectEventPic_SubmarineShadow, .size = sizeof gObjectEventPic_SubmarineShadow},
    {.data = (u8 *)gObjectEventPic_SubmarineShadow, .size = sizeof gObjectEventPic_SubmarineShadow},
    {.data = (u8 *)gObjectEventPic_SubmarineShadow, .size = sizeof gObjectEventPic_SubmarineShadow},
    {.data = (u8 *)gObjectEventPic_SubmarineShadow, .size = sizeof gObjectEventPic_SubmarineShadow},
    {.data = (u8 *)gObjectEventPic_SubmarineShadow, .size = sizeof gObjectEventPic_SubmarineShadow},
    {.data = (u8 *)gObjectEventPic_SubmarineShadow, .size = sizeof gObjectEventPic_SubmarineShadow},
    {.data = (u8 *)gObjectEventPic_SubmarineShadow, .size = sizeof gObjectEventPic_SubmarineShadow},
    {.data = (u8 *)gObjectEventPic_SubmarineShadow, .size = sizeof gObjectEventPic_SubmarineShadow},
};

const struct SpriteFrameImage gObjectEventPicTable_PichuDoll[] = {
    {.data = (u8 *)gObjectEventPic_PichuDoll, .size = sizeof gObjectEventPic_PichuDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_PikachuDoll[] = {
    {.data = (u8 *)gObjectEventPic_PikachuDoll, .size = sizeof gObjectEventPic_PikachuDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_MarillDoll[] = {
    {.data = (u8 *)gObjectEventPic_MarillDoll, .size = sizeof gObjectEventPic_MarillDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_TogepiDoll[] = {
    {.data = (u8 *)gObjectEventPic_TogepiDoll, .size = sizeof gObjectEventPic_TogepiDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_CyndaquilDoll[] = {
    {.data = (u8 *)gObjectEventPic_CyndaquilDoll, .size = sizeof gObjectEventPic_CyndaquilDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_ChikoritaDoll[] = {
    {.data = (u8 *)gObjectEventPic_ChikoritaDoll, .size = sizeof gObjectEventPic_ChikoritaDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_TotodileDoll[] = {
    {.data = (u8 *)gObjectEventPic_TotodileDoll, .size = sizeof gObjectEventPic_TotodileDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_JigglypuffDoll[] = {
    {.data = (u8 *)gObjectEventPic_JigglypuffDoll, .size = sizeof gObjectEventPic_JigglypuffDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_MeowthDoll[] = {
    {.data = (u8 *)gObjectEventPic_MeowthDoll, .size = sizeof gObjectEventPic_MeowthDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_ClefairyDoll[] = {
    {.data = (u8 *)gObjectEventPic_ClefairyDoll, .size = sizeof gObjectEventPic_ClefairyDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_DittoDoll[] = {
    {.data = (u8 *)gObjectEventPic_DittoDoll, .size = sizeof gObjectEventPic_DittoDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_SmoochumDoll[] = {
    {.data = (u8 *)gObjectEventPic_SmoochumDoll, .size = sizeof gObjectEventPic_SmoochumDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_TreeckoDoll[] = {
    {.data = (u8 *)gObjectEventPic_TreeckoDoll, .size = sizeof gObjectEventPic_TreeckoDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_TorchicDoll[] = {
    {.data = (u8 *)gObjectEventPic_TorchicDoll, .size = sizeof gObjectEventPic_TorchicDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_MudkipDoll[] = {
    {.data = (u8 *)gObjectEventPic_MudkipDoll, .size = sizeof gObjectEventPic_MudkipDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_DuskullDoll[] = {
    {.data = (u8 *)gObjectEventPic_DuskullDoll, .size = sizeof gObjectEventPic_DuskullDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_WynautDoll[] = {
    {.data = (u8 *)gObjectEventPic_WynautDoll, .size = sizeof gObjectEventPic_WynautDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_BaltoyDoll[] = {
    {.data = (u8 *)gObjectEventPic_BaltoyDoll, .size = sizeof gObjectEventPic_BaltoyDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_KecleonDoll[] = {
    {.data = (u8 *)gObjectEventPic_KecleonDoll, .size = sizeof gObjectEventPic_KecleonDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_AzurillDoll[] = {
    {.data = (u8 *)gObjectEventPic_AzurillDoll, .size = sizeof gObjectEventPic_AzurillDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_SkittyDoll[] = {
    {.data = (u8 *)gObjectEventPic_SkittyDoll, .size = sizeof gObjectEventPic_SkittyDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_SwabluDoll[] = {
    {.data = (u8 *)gObjectEventPic_SwabluDoll, .size = sizeof gObjectEventPic_SwabluDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_GulpinDoll[] = {
    {.data = (u8 *)gObjectEventPic_GulpinDoll, .size = sizeof gObjectEventPic_GulpinDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_LotadDoll[] = {
    {.data = (u8 *)gObjectEventPic_LotadDoll, .size = sizeof gObjectEventPic_LotadDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_SeedotDoll[] = {
    {.data = (u8 *)gObjectEventPic_SeedotDoll, .size = sizeof gObjectEventPic_SeedotDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_PikaCushion[] = {
    {.data = (u8 *)gObjectEventPic_PikaCushion, .size = sizeof gObjectEventPic_PikaCushion},
};

const struct SpriteFrameImage gObjectEventPicTable_RoundCushion[] = {
    {.data = (u8 *)gObjectEventPic_RoundCushion, .size = sizeof gObjectEventPic_RoundCushion},
};

const struct SpriteFrameImage gObjectEventPicTable_KissCushion[] = {
    {.data = (u8 *)gObjectEventPic_KissCushion, .size = sizeof gObjectEventPic_KissCushion},
};

const struct SpriteFrameImage gObjectEventPicTable_ZigzagCushion[] = {
    {.data = (u8 *)gObjectEventPic_ZigzagCushion, .size = sizeof gObjectEventPic_ZigzagCushion},
};

const struct SpriteFrameImage gObjectEventPicTable_SpinCushion[] = {
    {.data = (u8 *)gObjectEventPic_SpinCushion, .size = sizeof gObjectEventPic_SpinCushion},
};

const struct SpriteFrameImage gObjectEventPicTable_DiamondCushion[] = {
    {.data = (u8 *)gObjectEventPic_DiamondCushion, .size = sizeof gObjectEventPic_DiamondCushion},
};

const struct SpriteFrameImage gObjectEventPicTable_BallCushion[] = {
    {.data = (u8 *)gObjectEventPic_BallCushion, .size = sizeof gObjectEventPic_BallCushion},
};

const struct SpriteFrameImage gObjectEventPicTable_GrassCushion[] = {
    {.data = (u8 *)gObjectEventPic_GrassCushion, .size = sizeof gObjectEventPic_GrassCushion},
};

const struct SpriteFrameImage gObjectEventPicTable_FireCushion[] = {
    {.data = (u8 *)gObjectEventPic_FireCushion, .size = sizeof gObjectEventPic_FireCushion},
};

const struct SpriteFrameImage gObjectEventPicTable_WaterCushion[] = {
    {.data = (u8 *)gObjectEventPic_WaterCushion, .size = sizeof gObjectEventPic_WaterCushion},
};

const struct SpriteFrameImage gObjectEventPicTable_BigSnorlaxDoll[] = {
    {.data = (u8 *)gObjectEventPic_BigSnorlaxDoll, .size = sizeof gObjectEventPic_BigSnorlaxDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_BigRhydonDoll[] = {
    {.data = (u8 *)gObjectEventPic_BigRhydonDoll, .size = sizeof gObjectEventPic_BigRhydonDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_BigLaprasDoll[] = {
    {.data = (u8 *)gObjectEventPic_BigLaprasDoll, .size = sizeof gObjectEventPic_BigLaprasDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_BigVenusaurDoll[] = {
    {.data = (u8 *)gObjectEventPic_BigVenusaurDoll, .size = sizeof gObjectEventPic_BigVenusaurDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_BigCharizardDoll[] = {
    {.data = (u8 *)gObjectEventPic_BigCharizardDoll, .size = sizeof gObjectEventPic_BigCharizardDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_BigBlastoiseDoll[] = {
    {.data = (u8 *)gObjectEventPic_BigBlastoiseDoll, .size = sizeof gObjectEventPic_BigBlastoiseDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_BigWailmerDoll[] = {
    {.data = (u8 *)gObjectEventPic_BigWailmerDoll, .size = sizeof gObjectEventPic_BigWailmerDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_BigRegirockDoll[] = {
    {.data = (u8 *)gObjectEventPic_BigRegirockDoll, .size = sizeof gObjectEventPic_BigRegirockDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_BigRegiceDoll[] = {
    {.data = (u8 *)gObjectEventPic_BigRegiceDoll, .size = sizeof gObjectEventPic_BigRegiceDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_BigRegisteelDoll[] = {
    {.data = (u8 *)gObjectEventPic_BigRegisteelDoll, .size = sizeof gObjectEventPic_BigRegisteelDoll},
};

const struct SpriteFrameImage gObjectEventPicTable_LatiasLatios[] = {
    {.data = (u8 *)gObjectEventPic_LatiasLatios + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LatiasLatios + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LatiasLatios + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LatiasLatios + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LatiasLatios + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LatiasLatios + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LatiasLatios + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LatiasLatios + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LatiasLatios + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_GameboyKid[] = {
    {.data = (u8 *)gObjectEventPic_GameboyKid + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GameboyKid + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GameboyKid + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GameboyKid + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GameboyKid + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GameboyKid + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GameboyKid + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GameboyKid + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GameboyKid + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_ContestJudge[] = {
    {.data = (u8 *)gObjectEventPic_ContestJudge + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ContestJudge + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ContestJudge + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ContestJudge + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ContestJudge + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ContestJudge + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ContestJudge + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ContestJudge + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ContestJudge + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_BrendanWatering[] = {
    {.data = (u8 *)gObjectEventPic_BrendanWatering + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanWatering + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanWatering + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanWatering + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanWatering + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanWatering + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanWatering + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanWatering + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BrendanWatering + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_MayWatering[] = {
    {.data = (u8 *)gObjectEventPic_MayWatering + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayWatering + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayWatering + (4 * 4 * 4 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayWatering + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayWatering + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayWatering + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayWatering + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayWatering + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MayWatering + (4 * 4 * 5 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_BrendanDecorating[] = {
    {.data = (u8 *)gObjectEventPic_BrendanDecorating, .size = sizeof gObjectEventPic_BrendanDecorating},
};

const struct SpriteFrameImage gObjectEventPicTable_MayDecorating[] = {
    {.data = (u8 *)gObjectEventPic_MayDecorating, .size = sizeof gObjectEventPic_MayDecorating},
};

const struct SpriteFrameImage gObjectEventPicTable_Archie[] = {
    {.data = (u8 *)gObjectEventPic_Archie + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Archie + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Archie + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Archie + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Archie + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Archie + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Archie + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Archie + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Archie + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Maxie[] = {
    {.data = (u8 *)gObjectEventPic_Maxie + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Maxie + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Maxie + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Maxie + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Maxie + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Maxie + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Maxie + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Maxie + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Maxie + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_KyogreFront[] = {
    {.data = (u8 *)gObjectEventPic_Kyogre + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kyogre + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kyogre + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kyogre + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kyogre + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kyogre + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kyogre + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kyogre + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kyogre + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_GroudonFront[] = {
    {.data = (u8 *)gObjectEventPic_Groudon + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Groudon + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Groudon + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Groudon + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Groudon + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Groudon + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Groudon + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Groudon + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Groudon + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_KyogreSide[] = {
    {.data = (u8 *)gObjectEventPic_Kyogre + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kyogre + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kyogre + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kyogre + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kyogre + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kyogre + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kyogre + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kyogre + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kyogre + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_GroudonSide[] = {
    {.data = (u8 *)gObjectEventPic_Groudon + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Groudon + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Groudon + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Groudon + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Groudon + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Groudon + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Groudon + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Groudon + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Groudon + (4 * 4 * 3 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Fossil[] = {
    {.data = (u8 *)gObjectEventPic_Fossil, .size = sizeof gObjectEventPic_Fossil},
};

const struct SpriteFrameImage gObjectEventPicTable_Regi[] = {
    {.data = (u8 *)gObjectEventPic_Regi, .size = sizeof gObjectEventPic_Regi},
    {.data = (u8 *)gObjectEventPic_Regi, .size = sizeof gObjectEventPic_Regi},
    {.data = (u8 *)gObjectEventPic_Regi, .size = sizeof gObjectEventPic_Regi},
    {.data = (u8 *)gObjectEventPic_Regi, .size = sizeof gObjectEventPic_Regi},
    {.data = (u8 *)gObjectEventPic_Regi, .size = sizeof gObjectEventPic_Regi},
    {.data = (u8 *)gObjectEventPic_Regi, .size = sizeof gObjectEventPic_Regi},
    {.data = (u8 *)gObjectEventPic_Regi, .size = sizeof gObjectEventPic_Regi},
    {.data = (u8 *)gObjectEventPic_Regi, .size = sizeof gObjectEventPic_Regi},
    {.data = (u8 *)gObjectEventPic_Regi, .size = sizeof gObjectEventPic_Regi},
};

const struct SpriteFrameImage gObjectEventPicTable_Skitty[] = {
    {.data = (u8 *)gObjectEventPic_Skitty + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Skitty + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Skitty + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Skitty + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Skitty + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Skitty + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Skitty + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Skitty + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Skitty + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Kecleon[] = {
    {.data = (u8 *)gObjectEventPic_Kecleon + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kecleon + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kecleon + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kecleon + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kecleon + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kecleon + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kecleon + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kecleon + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kecleon + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Rayquaza[] = {
    {.data = (u8 *)gObjectEventPic_Rayquaza + (8 * 8 * 0 * 64)/2, .size = (8 * 8 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Rayquaza + (8 * 8 * 1 * 64)/2, .size = (8 * 8 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Rayquaza + (8 * 8 * 2 * 64)/2, .size = (8 * 8 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Rayquaza + (8 * 8 * 3 * 64)/2, .size = (8 * 8 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Rayquaza + (8 * 8 * 4 * 64)/2, .size = (8 * 8 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_RayquazaStill[] = {
    {.data = (u8 *)gObjectEventPic_RayquazaStill, .size = sizeof gObjectEventPic_RayquazaStill},
    {.data = (u8 *)gObjectEventPic_RayquazaStill, .size = sizeof gObjectEventPic_RayquazaStill},
    {.data = (u8 *)gObjectEventPic_RayquazaStill, .size = sizeof gObjectEventPic_RayquazaStill},
    {.data = (u8 *)gObjectEventPic_RayquazaStill, .size = sizeof gObjectEventPic_RayquazaStill},
    {.data = (u8 *)gObjectEventPic_RayquazaStill, .size = sizeof gObjectEventPic_RayquazaStill},
    {.data = (u8 *)gObjectEventPic_RayquazaStill, .size = sizeof gObjectEventPic_RayquazaStill},
    {.data = (u8 *)gObjectEventPic_RayquazaStill, .size = sizeof gObjectEventPic_RayquazaStill},
    {.data = (u8 *)gObjectEventPic_RayquazaStill, .size = sizeof gObjectEventPic_RayquazaStill},
    {.data = (u8 *)gObjectEventPic_RayquazaStill, .size = sizeof gObjectEventPic_RayquazaStill},
};

const struct SpriteFrameImage gObjectEventPicTable_Zigzagoon[] = {
    {.data = (u8 *)gObjectEventPic_Zigzagoon + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Zigzagoon + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Zigzagoon + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Zigzagoon + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Zigzagoon + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Zigzagoon + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Zigzagoon + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Zigzagoon + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Zigzagoon + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Pikachu[] = {
    {.data = (u8 *)gObjectEventPic_Pikachu + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pikachu + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pikachu + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pikachu + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pikachu + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pikachu + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pikachu + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pikachu + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Pikachu + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Azumarill[] = {
    {.data = (u8 *)gObjectEventPic_Azumarill + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Azumarill + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Azumarill + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Azumarill + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Azumarill + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Azumarill + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Azumarill + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Azumarill + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Azumarill + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Wingull[] = {
    {.data = (u8 *)gObjectEventPic_Wingull + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wingull + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wingull + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wingull + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wingull + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wingull + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wingull + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wingull + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Wingull + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_TuberMSwimming[] = {
    {.data = (u8 *)gObjectEventPic_TuberMSwimming + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMSwimming + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMSwimming + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMSwimming + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMSwimming + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMSwimming + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMSwimming + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMSwimming + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TuberMSwimming + (2 * 2 * 8 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Azurill[] = {
    {.data = (u8 *)gObjectEventPic_Azurill + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Azurill + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Azurill + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Azurill + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Azurill + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Azurill + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Azurill + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Azurill + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Azurill + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Mom[] = {
    {.data = (u8 *)gObjectEventPic_Mom + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mom + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mom + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mom + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mom + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mom + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mom + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mom + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mom + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Scott[] = {
    {.data = (u8 *)gObjectEventPic_Scott + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scott + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scott + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scott + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scott + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scott + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scott + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scott + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Scott + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Juan[] = {
    {.data = (u8 *)gObjectEventPic_Juan + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Juan + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Juan + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Juan + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Juan + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Juan + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Juan + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Juan + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Juan + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_MysteryEventDeliveryman[] = {
    {.data = (u8 *)gObjectEventPic_MysteryEventDeliveryman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MysteryEventDeliveryman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MysteryEventDeliveryman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MysteryEventDeliveryman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MysteryEventDeliveryman + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MysteryEventDeliveryman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MysteryEventDeliveryman + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MysteryEventDeliveryman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MysteryEventDeliveryman + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Statue[] = {
    {.data = (u8 *)gObjectEventPic_Statue, .size = sizeof gObjectEventPic_Statue},
};

const struct SpriteFrameImage gObjectEventPicTable_Dusclops[] = {
    {.data = (u8 *)gObjectEventPic_Dusclops + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Dusclops + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Dusclops + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Dusclops + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Dusclops + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Dusclops + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Dusclops + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Dusclops + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Dusclops + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Kirlia[] = {
    {.data = (u8 *)gObjectEventPic_Kirlia + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kirlia + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kirlia + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kirlia + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kirlia + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kirlia + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kirlia + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kirlia + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Kirlia + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_UnionRoomAttendant[] = {
    {.data = (u8 *)gObjectEventPic_UnionRoomAttendant + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnionRoomAttendant + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnionRoomAttendant + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnionRoomAttendant + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnionRoomAttendant + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnionRoomAttendant + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnionRoomAttendant + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnionRoomAttendant + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_UnionRoomAttendant + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Sudowoodo[] = {
    {.data = (u8 *)gObjectEventPic_Sudowoodo + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sudowoodo + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sudowoodo + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sudowoodo + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sudowoodo + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sudowoodo + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sudowoodo + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sudowoodo + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Sudowoodo + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Mew[] = {
    {.data = (u8 *)gObjectEventPic_Mew + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mew + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mew + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mew + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mew + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mew + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mew + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mew + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Mew + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Red[] = {
    {.data = (u8 *)gObjectEventPic_Red + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Red + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Red + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Red + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Red + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Red + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Red + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Red + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Red + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Leaf[] = {
    {.data = (u8 *)gObjectEventPic_Leaf + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Leaf + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Leaf + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Leaf + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Leaf + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Leaf + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Leaf + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Leaf + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Leaf + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Deoxys[] = {
    {.data = (u8 *)gObjectEventPic_Deoxys + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Deoxys + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Deoxys + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Deoxys + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Deoxys + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Deoxys + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Deoxys + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Deoxys + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Deoxys + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_BirthIslandStone[] = {
    {.data = (u8 *)gObjectEventPic_BirthIslandStone, .size = sizeof gObjectEventPic_BirthIslandStone},
};

const struct SpriteFrameImage gObjectEventPicTable_Anabel[] = {
    {.data = (u8 *)gObjectEventPic_Anabel + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Anabel + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Anabel + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Anabel + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Anabel + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Anabel + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Anabel + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Anabel + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Anabel + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Tucker[] = {
    {.data = (u8 *)gObjectEventPic_Tucker + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Tucker + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Tucker + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Tucker + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Tucker + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Tucker + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Tucker + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Tucker + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Tucker + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Spenser[] = {
    {.data = (u8 *)gObjectEventPic_Spenser + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Spenser + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Spenser + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Spenser + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Spenser + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Spenser + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Spenser + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Spenser + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Spenser + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Greta[] = {
    {.data = (u8 *)gObjectEventPic_Greta + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Greta + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Greta + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Greta + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Greta + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Greta + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Greta + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Greta + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Greta + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Noland[] = {
    {.data = (u8 *)gObjectEventPic_Noland + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Noland + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Noland + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Noland + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Noland + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Noland + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Noland + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Noland + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Noland + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Lucy[] = {
    {.data = (u8 *)gObjectEventPic_Lucy + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lucy + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lucy + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lucy + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lucy + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lucy + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lucy + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lucy + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lucy + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Brandon[] = {
    {.data = (u8 *)gObjectEventPic_Brandon + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brandon + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brandon + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brandon + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brandon + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brandon + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brandon + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brandon + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Brandon + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_Lugia[] = {
    {.data = (u8 *)gObjectEventPic_Lugia + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lugia + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lugia + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lugia + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lugia + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lugia + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lugia + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lugia + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_Lugia + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_HoOh[] = {
    {.data = (u8 *)gObjectEventPic_HoOh + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HoOh + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HoOh + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HoOh + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HoOh + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HoOh + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HoOh + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HoOh + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HoOh + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_RubySapphireBrendan[] = {
    {.data = (u8 *)gObjectEventPic_RubySapphireBrendanNormal + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireBrendanNormal + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireBrendanNormal + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireBrendanNormal + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireBrendanNormal + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireBrendanNormal + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireBrendanNormal + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireBrendanNormal + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireBrendanNormal + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteFrameImage gObjectEventPicTable_RubySapphireMay[] = {
    {.data = (u8 *)gObjectEventPic_RubySapphireMayNormal + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireMayNormal + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireMayNormal + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireMayNormal + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireMayNormal + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireMayNormal + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireMayNormal + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireMayNormal + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RubySapphireMayNormal + (2 * 4 * 8 * 64)/2, .size = (2 * 4 * 64)/2},
};
# 440 "src/event_object_movement.c" 2
# 1 "src/data/object_events/object_event_anims.h" 1
const union AnimCmd gObjectEventImageAnim_StayStill[] =
{
    {.frame = {0, 8}},
    {.frame = {0, 8}},
    {.frame = {0, 8}},
    {.frame = {0, 8}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpFaceSouth[] =
{
    {.frame = {0, 16}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpFaceNorth[] =
{
    {.frame = {1, 16}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpFaceWest[] =
{
    {.frame = {2, 16}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpFaceEast[] =
{
    {.frame = {2, 16, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpGoSouth[] =
{
    {.frame = {3, 8}},
    {.frame = {0, 8}},
    {.frame = {3, 8, .hFlip = 1}},
    {.frame = {0, 8}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpGoNorth[] =
{
    {.frame = {4, 8}},
    {.frame = {1, 8}},
    {.frame = {4, 8, .hFlip = 1}},
    {.frame = {1, 8}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpGoWest[] =
{
    {.frame = {5, 8}},
    {.frame = {2, 8}},
    {.frame = {6, 8}},
    {.frame = {2, 8}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpGoEast[] =
{
    {.frame = {5, 8, .hFlip = 1}},
    {.frame = {2, 8, .hFlip = 1}},
    {.frame = {6, 8, .hFlip = 1}},
    {.frame = {2, 8, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpGoFastSouth[] =
{
    {.frame = {3, 4}},
    {.frame = {0, 4}},
    {.frame = {3, 4, .hFlip = 1}},
    {.frame = {0, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpGoFastNorth[] =
{
    {.frame = {4, 4}},
    {.frame = {1, 4}},
    {.frame = {4, 4, .hFlip = 1}},
    {.frame = {1, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpGoFastWest[] =
{
    {.frame = {5, 4}},
    {.frame = {2, 4}},
    {.frame = {6, 4}},
    {.frame = {2, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpGoFastEast[] =
{
    {.frame = {5, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.frame = {6, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpGoFasterSouth[] =
{
    {.frame = {3, 2}},
    {.frame = {0, 2}},
    {.frame = {3, 2, .hFlip = 1}},
    {.frame = {0, 2}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpGoFasterNorth[] =
{
    {.frame = {4, 2}},
    {.frame = {1, 2}},
    {.frame = {4, 2, .hFlip = 1}},
    {.frame = {1, 2}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpGoFasterWest[] =
{
    {.frame = {5, 2}},
    {.frame = {2, 2}},
    {.frame = {6, 2}},
    {.frame = {2, 2}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpGoFasterEast[] =
{
    {.frame = {5, 2, .hFlip = 1}},
    {.frame = {2, 2, .hFlip = 1}},
    {.frame = {6, 2, .hFlip = 1}},
    {.frame = {2, 2, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpGoFastestSouth[] =
{
    {.frame = {3, 1}},
    {.frame = {0, 1}},
    {.frame = {3, 1, .hFlip = 1}},
    {.frame = {0, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpGoFastestNorth[] =
{
    {.frame = {4, 1}},
    {.frame = {1, 1}},
    {.frame = {4, 1, .hFlip = 1}},
    {.frame = {1, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpGoFastestWest[] =
{
    {.frame = {5, 1}},
    {.frame = {2, 1}},
    {.frame = {6, 1}},
    {.frame = {2, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_QuintyPlumpGoFastestEast[] =
{
    {.frame = {5, 1, .hFlip = 1}},
    {.frame = {2, 1, .hFlip = 1}},
    {.frame = {6, 1, .hFlip = 1}},
    {.frame = {2, 1, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_FaceSouth[] =
{
    {.frame = {0, 16}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_FaceNorth[] =
{
    {.frame = {1, 16}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_FaceWest[] =
{
    {.frame = {2, 16}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_FaceEast[] =
{
    {.frame = {2, 16, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_GoSouth[] =
{
    {.frame = {3, 8}},
    {.frame = {0, 8}},
    {.frame = {4, 8}},
    {.frame = {0, 8}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_GoNorth[] =
{
    {.frame = {5, 8}},
    {.frame = {1, 8}},
    {.frame = {6, 8}},
    {.frame = {1, 8}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_GoWest[] =
{
    {.frame = {7, 8}},
    {.frame = {2, 8}},
    {.frame = {8, 8}},
    {.frame = {2, 8}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_GoEast[] =
{
    {.frame = {7, 8, .hFlip = 1}},
    {.frame = {2, 8, .hFlip = 1}},
    {.frame = {8, 8, .hFlip = 1}},
    {.frame = {2, 8, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_GoFastSouth[] =
{
    {.frame = {3, 4}},
    {.frame = {0, 4}},
    {.frame = {4, 4}},
    {.frame = {0, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_GoFastNorth[] =
{
    {.frame = {5, 4}},
    {.frame = {1, 4}},
    {.frame = {6, 4}},
    {.frame = {1, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_GoFastWest[] =
{
    {.frame = {7, 4}},
    {.frame = {2, 4}},
    {.frame = {8, 4}},
    {.frame = {2, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_GoFastEast[] =
{
    {.frame = {7, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.frame = {8, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_GoFasterSouth[] =
{
    {.frame = {3, 2}},
    {.frame = {0, 2}},
    {.frame = {4, 2}},
    {.frame = {0, 2}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_GoFasterNorth[] =
{
    {.frame = {5, 2}},
    {.frame = {1, 2}},
    {.frame = {6, 2}},
    {.frame = {1, 2}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_GoFasterWest[] =
{
    {.frame = {7, 2}},
    {.frame = {2, 2}},
    {.frame = {8, 2}},
    {.frame = {2, 2}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_GoFasterEast[] =
{
    {.frame = {7, 2, .hFlip = 1}},
    {.frame = {2, 2, .hFlip = 1}},
    {.frame = {8, 2, .hFlip = 1}},
    {.frame = {2, 2, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_GoFastestSouth[] =
{
    {.frame = {3, 1}},
    {.frame = {0, 1}},
    {.frame = {4, 1}},
    {.frame = {0, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_GoFastestNorth[] =
{
    {.frame = {5, 1}},
    {.frame = {1, 1}},
    {.frame = {6, 1}},
    {.frame = {1, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_GoFastestWest[] =
{
    {.frame = {7, 1}},
    {.frame = {2, 1}},
    {.frame = {8, 1}},
    {.frame = {2, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_GoFastestEast[] =
{
    {.frame = {7, 1, .hFlip = 1}},
    {.frame = {2, 1, .hFlip = 1}},
    {.frame = {8, 1, .hFlip = 1}},
    {.frame = {2, 1, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_RunSouth[] =
{
    {.frame = {12, 5}},
    {.frame = {9, 3}},
    {.frame = {13, 5}},
    {.frame = {9, 3}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_RunNorth[] =
{
    {.frame = {14, 5}},
    {.frame = {10, 3}},
    {.frame = {15, 5}},
    {.frame = {10, 3}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_RunWest[] =
{
    {.frame = {16, 5}},
    {.frame = {11, 3}},
    {.frame = {17, 5}},
    {.frame = {11, 3}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_RunEast[] =
{
    {.frame = {16, 5, .hFlip = 1}},
    {.frame = {11, 3, .hFlip = 1}},
    {.frame = {17, 5, .hFlip = 1}},
    {.frame = {11, 3, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_FieldMove[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {4, 8}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_GetOnOffSurfBlobSouth[] =
{
    {.frame = {9, 32}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_GetOnOffSurfBlobNorth[] =
{
    {.frame = {10, 32}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_GetOnOffSurfBlobWest[] =
{
    {.frame = {11, 32}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_GetOnOffSurfBlobEast[] =
{
    {.frame = {11, 32, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_BunnyHoppyBackWheelSouth[] =
{
    {.frame = {9, 4}},
    {.frame = {10, 4}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_BunnyHoppyBackWheelNorth[] =
{
    {.frame = {13, 4}},
    {.frame = {14, 4}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_BunnyHoppyBackWheelWest[] =
{
    {.frame = {17, 4}},
    {.frame = {18, 4}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_BunnyHoppyBackWheelEast[] =
{
    {.frame = {17, 4, .hFlip = 1}},
    {.frame = {18, 4, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_BunnyHoppyFrontWheelSouth[] =
{
    {.frame = {11, 4}},
    {.frame = {12, 4}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_BunnyHoppyFrontWheelNorth[] =
{
    {.frame = {15, 4}},
    {.frame = {16, 4}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_BunnyHoppyFrontWheelWest[] =
{
    {.frame = {19, 4}},
    {.frame = {20, 4}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_BunnyHoppyFrontWheelEast[] =
{
    {.frame = {19, 4, .hFlip = 1}},
    {.frame = {20, 4, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_StandingWheelieBackWheelSouth[] =
{
    {.frame = {9, 4}},
    {.frame = {0, 4}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_StandingWheelieBackWheelNorth[] =
{
    {.frame = {13, 4}},
    {.frame = {1, 4}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_StandingWheelieBackWheelWest[] =
{
    {.frame = {17, 4}},
    {.frame = {2, 4}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_StandingWheelieBackWheelEast[] =
{
    {.frame = {17, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_StandingWheelieFrontWheelSouth[] =
{
    {.frame = {11, 4}},
    {.frame = {0, 4}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_StandingWheelieFrontWheelNorth[] =
{
    {.frame = {15, 4}},
    {.frame = {1, 4}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_StandingWheelieFrontWheelWest[] =
{
    {.frame = {19, 4}},
    {.frame = {2, 4}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_StandingWheelieFrontWheelEast[] =
{
    {.frame = {19, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_MovingWheelieSouth[] =
{
    {.frame = {21, 4}},
    {.frame = {10, 4}},
    {.frame = {22, 4}},
    {.frame = {10, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_MovingWheelieNorth[] =
{
    {.frame = {23, 4}},
    {.frame = {14, 4}},
    {.frame = {24, 4}},
    {.frame = {14, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_MovingWheelieWest[] =
{
    {.frame = {25, 4}},
    {.frame = {18, 4}},
    {.frame = {26, 4}},
    {.frame = {18, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_MovingWheelieEast[] =
{
    {.frame = {25, 4, .hFlip = 1}},
    {.frame = {18, 4, .hFlip = 1}},
    {.frame = {26, 4, .hFlip = 1}},
    {.frame = {18, 4, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_BerryTreeStage0[] =
{
    {.frame = {0, 32}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_BerryTreeStage1[] =
{
    {.frame = {1, 32}},
    {.frame = {2, 32}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_BerryTreeStage2[] =
{
    {.frame = {3, 48}},
    {.frame = {4, 48}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_BerryTreeStage3[] =
{
    {.frame = {5, 32}},
    {.frame = {5, 32}},
    {.frame = {6, 32}},
    {.frame = {6, 32}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_BerryTreeStage4[] =
{
    {.frame = {7, 48}},
    {.frame = {7, 48}},
    {.frame = {8, 48}},
    {.frame = {8, 48}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_NurseBow[] =
{
    {.frame = {0, 8}},
    {.frame = {9, 32}},
    {.frame = {0, 8}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_RockBreak[] =
{
    {.frame = {0, 8}},
    {.frame = {1, 8}},
    {.frame = {2, 8}},
    {.frame = {3, 8}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_TreeCut[] =
{
    {.frame = {0, 6}},
    {.frame = {1, 6}},
    {.frame = {2, 6}},
    {.frame = {3, 6}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_TakeOutRodSouth[] =
{
    {.frame = {8, 4}},
    {.frame = {9, 4}},
    {.frame = {10, 4}},
    {.frame = {11, 4}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_TakeOutRodNorth[] =
{
    {.frame = {4, 4}},
    {.frame = {5, 4}},
    {.frame = {6, 4}},
    {.frame = {7, 4}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_TakeOutRodWest[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_TakeOutRodEast[] =
{
    {.frame = {0, 4, .hFlip = 1}},
    {.frame = {1, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.frame = {3, 4, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_PutAwayRodSouth[] =
{
    {.frame = {11, 4}},
    {.frame = {10, 6}},
    {.frame = {9, 6}},
    {.frame = {8, 6}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_PutAwayRodNorth[] =
{
    {.frame = {7, 4}},
    {.frame = {6, 6}},
    {.frame = {5, 6}},
    {.frame = {4, 6}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_PutAwayRodWest[] =
{
    {.frame = {3, 4}},
    {.frame = {2, 4}},
    {.frame = {1, 4}},
    {.frame = {0, 4}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_PutAwayRodEast[] =
{
    {.frame = {3, 4, .hFlip = 1}},
    {.frame = {2, 4, .hFlip = 1}},
    {.frame = {1, 4, .hFlip = 1}},
    {.frame = {0, 4, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd gObjectEventImageAnim_HookedPokemonSouth[] =
{
    {.frame = {10, 6}},
    {.frame = {11, 6}},
    {.loop = {.type = -3, .count = 1}},
    {.frame = {11, 30}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_HookedPokemonNorth[] =
{
    {.frame = {6, 6}},
    {.frame = {7, 6}},
    {.loop = {.type = -3, .count = 1}},
    {.frame = {7, 30}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_HookedPokemonWest[] =
{
    {.frame = {2, 6}},
    {.frame = {3, 6}},
    {.loop = {.type = -3, .count = 1}},
    {.frame = {3, 30}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_HookedPokemonEast[] =
{
    {.frame = {2, 6, .hFlip = 1}},
    {.frame = {3, 6, .hFlip = 1}},
    {.loop = {.type = -3, .count = 1}},
    {.frame = {3, 30, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AffineAnimCmd gObjectEventRotScalAnim_8508FD8[] =
{
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 1, .duration = 1}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 1}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 1}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 1}},
    {.loop = {.type = 0x7FFD, .count = 7}},
    {.jump = {.type = 0x7FFE, .target = 0}},
};

const union AffineAnimCmd gObjectEventRotScalAnim_8509008[] =
{
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = -1, .duration = 1}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 1}},
    {.loop = {.type = 0x7FFD, .count = 15}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 1, .duration = 1}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 1}},
    {.loop = {.type = 0x7FFD, .count = 15}},
    {.jump = {.type = 0x7FFE, .target = 0}},
};

const union AffineAnimCmd gObjectEventRotScalAnim_8509040[] =
{
    {.frame = {.xScale = 0x100, .yScale = 0x100, .rotation = 10, .duration = 0}},
    {.type = 0x7FFF},
};

const union AffineAnimCmd gObjectEventRotScalAnim_8509050[] =
{
    {.frame = {.xScale = 0x100, .yScale = 0x100, .rotation = 10, .duration = 0}},
    {.type = 0x7FFF},
};

const union AffineAnimCmd gObjectEventRotScalAnim_8509060[] =
{
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = -1, .duration = 1}},
    {.loop = {.type = 0x7FFD, .count = 8}},
    {.type = 0x7FFF},
};

const union AffineAnimCmd gObjectEventRotScalAnim_8509078[] =
{
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 1, .duration = 1}},
    {.loop = {.type = 0x7FFD, .count = 8}},
    {.type = 0x7FFF},
};

const union AnimCmd gObjectEventImageAnim_HoOhFlapWings[] =
{
    {.frame = {3, 8}},
    {.frame = {4, 8}},
    {.frame = {3, 8}},
    {.frame = {4, 8}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_HoOhStayStill[] =
{
    {.frame = {3, 16}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd *const gObjectEventImageAnimTable_Inanimate[] = {
    gObjectEventImageAnim_StayStill,
};

const union AnimCmd *const gObjectEventImageAnimTable_QuintyPlump[] = {
    gObjectEventImageAnim_QuintyPlumpFaceSouth,
    gObjectEventImageAnim_QuintyPlumpFaceNorth,
    gObjectEventImageAnim_QuintyPlumpFaceWest,
    gObjectEventImageAnim_QuintyPlumpFaceEast,
    gObjectEventImageAnim_QuintyPlumpGoSouth,
    gObjectEventImageAnim_QuintyPlumpGoNorth,
    gObjectEventImageAnim_QuintyPlumpGoWest,
    gObjectEventImageAnim_QuintyPlumpGoEast,
    gObjectEventImageAnim_QuintyPlumpGoFastSouth,
    gObjectEventImageAnim_QuintyPlumpGoFastNorth,
    gObjectEventImageAnim_QuintyPlumpGoFastWest,
    gObjectEventImageAnim_QuintyPlumpGoFastEast,
    gObjectEventImageAnim_QuintyPlumpGoFasterSouth,
    gObjectEventImageAnim_QuintyPlumpGoFasterNorth,
    gObjectEventImageAnim_QuintyPlumpGoFasterWest,
    gObjectEventImageAnim_QuintyPlumpGoFasterEast,
    gObjectEventImageAnim_QuintyPlumpGoFastestSouth,
    gObjectEventImageAnim_QuintyPlumpGoFastestNorth,
    gObjectEventImageAnim_QuintyPlumpGoFastestWest,
    gObjectEventImageAnim_QuintyPlumpGoFastestEast,
};

const union AnimCmd *const gObjectEventImageAnimTable_Standard[] = {
    gObjectEventImageAnim_FaceSouth,
    gObjectEventImageAnim_FaceNorth,
    gObjectEventImageAnim_FaceWest,
    gObjectEventImageAnim_FaceEast,
    gObjectEventImageAnim_GoSouth,
    gObjectEventImageAnim_GoNorth,
    gObjectEventImageAnim_GoWest,
    gObjectEventImageAnim_GoEast,
    gObjectEventImageAnim_GoFastSouth,
    gObjectEventImageAnim_GoFastNorth,
    gObjectEventImageAnim_GoFastWest,
    gObjectEventImageAnim_GoFastEast,
    gObjectEventImageAnim_GoFasterSouth,
    gObjectEventImageAnim_GoFasterNorth,
    gObjectEventImageAnim_GoFasterWest,
    gObjectEventImageAnim_GoFasterEast,
    gObjectEventImageAnim_GoFastestSouth,
    gObjectEventImageAnim_GoFastestNorth,
    gObjectEventImageAnim_GoFastestWest,
    gObjectEventImageAnim_GoFastestEast,
};

const union AnimCmd *const gObjectEventImageAnimTable_HoOh[] = {
    gObjectEventImageAnim_FaceSouth,
    gObjectEventImageAnim_FaceNorth,
    gObjectEventImageAnim_FaceWest,
    gObjectEventImageAnim_FaceEast,
    gObjectEventImageAnim_HoOhFlapWings,
    gObjectEventImageAnim_HoOhStayStill,
    gObjectEventImageAnim_GoWest,
    gObjectEventImageAnim_GoEast,
    gObjectEventImageAnim_GoFastSouth,
    gObjectEventImageAnim_GoFastNorth,
    gObjectEventImageAnim_GoFastWest,
    gObjectEventImageAnim_GoFastEast,
    gObjectEventImageAnim_GoFasterSouth,
    gObjectEventImageAnim_GoFasterNorth,
    gObjectEventImageAnim_GoFasterWest,
    gObjectEventImageAnim_GoFasterEast,
    gObjectEventImageAnim_GoFastestSouth,
    gObjectEventImageAnim_GoFastestNorth,
    gObjectEventImageAnim_GoFastestWest,
    gObjectEventImageAnim_GoFastestEast,
};

const union AnimCmd *const gObjectEventImageAnimTable_Groudon3[] = {
    gObjectEventImageAnim_FaceSouth,
    gObjectEventImageAnim_FaceNorth,
    gObjectEventImageAnim_FaceWest,
    gObjectEventImageAnim_FaceEast,
    gObjectEventImageAnim_GoSouth,
    gObjectEventImageAnim_GoEast,
    gObjectEventImageAnim_GoWest,
    gObjectEventImageAnim_GoEast,
    gObjectEventImageAnim_GoFastSouth,
    gObjectEventImageAnim_GoFastEast,
    gObjectEventImageAnim_GoFastWest,
    gObjectEventImageAnim_GoFastEast,
    gObjectEventImageAnim_GoFasterSouth,
    gObjectEventImageAnim_GoFasterEast,
    gObjectEventImageAnim_GoFasterWest,
    gObjectEventImageAnim_GoFasterEast,
    gObjectEventImageAnim_GoFastestSouth,
    gObjectEventImageAnim_GoFastestEast,
    gObjectEventImageAnim_GoFastestWest,
    gObjectEventImageAnim_GoFastestEast,
};

const union AnimCmd gObjectEventImageAnim_85091F0[] =
{
    {.frame = {1, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_85091F8[] =
{
    {.frame = {4, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_8509200[] =
{
    {.frame = {0, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_8509208[] =
{
    {.frame = {2, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_8509210[] =
{
    {.frame = {3, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_8509218[] =
{
    {.frame = {0, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_8509220[] =
{
    {.frame = {0, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_8509228[] =
{
    {.frame = {0, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gObjectEventImageAnim_8509230[] =
{
    {.frame = {3, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd *const gObjectEventImageAnimTable_Rayquaza2[] = {
    gObjectEventImageAnim_8509218,
    gObjectEventImageAnim_8509220,
    gObjectEventImageAnim_8509228,
    gObjectEventImageAnim_8509230,
    gObjectEventImageAnim_8509200,
    gObjectEventImageAnim_85091F8,
    gObjectEventImageAnim_8509208,
    gObjectEventImageAnim_8509210,
    gObjectEventImageAnim_8509200,
    gObjectEventImageAnim_85091F8,
    gObjectEventImageAnim_85091F0,
    gObjectEventImageAnim_8509210,
    gObjectEventImageAnim_8509200,
    gObjectEventImageAnim_85091F8,
    gObjectEventImageAnim_8509208,
    gObjectEventImageAnim_8509210,
    gObjectEventImageAnim_8509200,
    gObjectEventImageAnim_85091F8,
    gObjectEventImageAnim_8509208,
    gObjectEventImageAnim_8509210,
};

const union AnimCmd *const gObjectEventImageAnimTable_BrendanMayNormal[] = {
    gObjectEventImageAnim_FaceSouth,
    gObjectEventImageAnim_FaceNorth,
    gObjectEventImageAnim_FaceWest,
    gObjectEventImageAnim_FaceEast,
    gObjectEventImageAnim_GoSouth,
    gObjectEventImageAnim_GoNorth,
    gObjectEventImageAnim_GoWest,
    gObjectEventImageAnim_GoEast,
    gObjectEventImageAnim_GoFastSouth,
    gObjectEventImageAnim_GoFastNorth,
    gObjectEventImageAnim_GoFastWest,
    gObjectEventImageAnim_GoFastEast,
    gObjectEventImageAnim_GoFasterSouth,
    gObjectEventImageAnim_GoFasterNorth,
    gObjectEventImageAnim_GoFasterWest,
    gObjectEventImageAnim_GoFasterEast,
    gObjectEventImageAnim_GoFastestSouth,
    gObjectEventImageAnim_GoFastestNorth,
    gObjectEventImageAnim_GoFastestWest,
    gObjectEventImageAnim_GoFastestEast,
    gObjectEventImageAnim_RunSouth,
    gObjectEventImageAnim_RunNorth,
    gObjectEventImageAnim_RunWest,
    gObjectEventImageAnim_RunEast,
};

const union AnimCmd *const gObjectEventImageAnimTable_AcroBike[] = {
    gObjectEventImageAnim_FaceSouth,
    gObjectEventImageAnim_FaceNorth,
    gObjectEventImageAnim_FaceWest,
    gObjectEventImageAnim_FaceEast,
    gObjectEventImageAnim_GoSouth,
    gObjectEventImageAnim_GoNorth,
    gObjectEventImageAnim_GoWest,
    gObjectEventImageAnim_GoEast,
    gObjectEventImageAnim_GoFastSouth,
    gObjectEventImageAnim_GoFastNorth,
    gObjectEventImageAnim_GoFastWest,
    gObjectEventImageAnim_GoFastEast,
    gObjectEventImageAnim_GoFasterSouth,
    gObjectEventImageAnim_GoFasterNorth,
    gObjectEventImageAnim_GoFasterWest,
    gObjectEventImageAnim_GoFasterEast,
    gObjectEventImageAnim_GoFastestSouth,
    gObjectEventImageAnim_GoFastestNorth,
    gObjectEventImageAnim_GoFastestWest,
    gObjectEventImageAnim_GoFastestEast,
    gObjectEventImageAnim_BunnyHoppyBackWheelSouth,
    gObjectEventImageAnim_BunnyHoppyBackWheelNorth,
    gObjectEventImageAnim_BunnyHoppyBackWheelWest,
    gObjectEventImageAnim_BunnyHoppyBackWheelEast,
    gObjectEventImageAnim_BunnyHoppyFrontWheelSouth,
    gObjectEventImageAnim_BunnyHoppyFrontWheelNorth,
    gObjectEventImageAnim_BunnyHoppyFrontWheelWest,
    gObjectEventImageAnim_BunnyHoppyFrontWheelEast,
    gObjectEventImageAnim_StandingWheelieBackWheelSouth,
    gObjectEventImageAnim_StandingWheelieBackWheelNorth,
    gObjectEventImageAnim_StandingWheelieBackWheelWest,
    gObjectEventImageAnim_StandingWheelieBackWheelEast,
    gObjectEventImageAnim_StandingWheelieFrontWheelSouth,
    gObjectEventImageAnim_StandingWheelieFrontWheelNorth,
    gObjectEventImageAnim_StandingWheelieFrontWheelWest,
    gObjectEventImageAnim_StandingWheelieFrontWheelEast,
    gObjectEventImageAnim_MovingWheelieSouth,
    gObjectEventImageAnim_MovingWheelieNorth,
    gObjectEventImageAnim_MovingWheelieWest,
    gObjectEventImageAnim_MovingWheelieEast,
};

const union AnimCmd *const gObjectEventImageAnimTable_Surfing[] = {
    gObjectEventImageAnim_FaceSouth,
    gObjectEventImageAnim_FaceNorth,
    gObjectEventImageAnim_FaceWest,
    gObjectEventImageAnim_FaceEast,
    gObjectEventImageAnim_GoSouth,
    gObjectEventImageAnim_GoNorth,
    gObjectEventImageAnim_GoWest,
    gObjectEventImageAnim_GoEast,
    gObjectEventImageAnim_GoFastSouth,
    gObjectEventImageAnim_GoFastNorth,
    gObjectEventImageAnim_GoFastWest,
    gObjectEventImageAnim_GoFastEast,
    gObjectEventImageAnim_GoFasterSouth,
    gObjectEventImageAnim_GoFasterNorth,
    gObjectEventImageAnim_GoFasterWest,
    gObjectEventImageAnim_GoFasterEast,
    gObjectEventImageAnim_GoFastestSouth,
    gObjectEventImageAnim_GoFastestNorth,
    gObjectEventImageAnim_GoFastestWest,
    gObjectEventImageAnim_GoFastestEast,
    gObjectEventImageAnim_GetOnOffSurfBlobSouth,
    gObjectEventImageAnim_GetOnOffSurfBlobNorth,
    gObjectEventImageAnim_GetOnOffSurfBlobWest,
    gObjectEventImageAnim_GetOnOffSurfBlobEast,
};

const union AnimCmd *const gObjectEventImageAnimTable_Nurse[] = {
    gObjectEventImageAnim_FaceSouth,
    gObjectEventImageAnim_FaceNorth,
    gObjectEventImageAnim_FaceWest,
    gObjectEventImageAnim_FaceEast,
    gObjectEventImageAnim_GoSouth,
    gObjectEventImageAnim_GoNorth,
    gObjectEventImageAnim_GoWest,
    gObjectEventImageAnim_GoEast,
    gObjectEventImageAnim_GoFastSouth,
    gObjectEventImageAnim_GoFastNorth,
    gObjectEventImageAnim_GoFastWest,
    gObjectEventImageAnim_GoFastEast,
    gObjectEventImageAnim_GoFasterSouth,
    gObjectEventImageAnim_GoFasterNorth,
    gObjectEventImageAnim_GoFasterWest,
    gObjectEventImageAnim_GoFasterEast,
    gObjectEventImageAnim_GoFastestSouth,
    gObjectEventImageAnim_GoFastestNorth,
    gObjectEventImageAnim_GoFastestWest,
    gObjectEventImageAnim_GoFastestEast,
    gObjectEventImageAnim_NurseBow,
};

const union AnimCmd *const gObjectEventImageAnimTable_FieldMove[] = {
    gObjectEventImageAnim_FieldMove,
};

const union AnimCmd *const gObjectEventImageAnimTable_BerryTree[] = {
    gObjectEventImageAnim_BerryTreeStage0,
    gObjectEventImageAnim_BerryTreeStage1,
    gObjectEventImageAnim_BerryTreeStage2,
    gObjectEventImageAnim_BerryTreeStage3,
    gObjectEventImageAnim_BerryTreeStage4,
};

const union AnimCmd *const gObjectEventImageAnimTable_BreakableRock[] = {
    gObjectEventImageAnim_StayStill,
    gObjectEventImageAnim_RockBreak,
};

const union AnimCmd *const gObjectEventImageAnimTable_CuttableTree[] = {
    gObjectEventImageAnim_StayStill,
    gObjectEventImageAnim_TreeCut,
};

const union AnimCmd *const gObjectEventImageAnimTable_Fishing[] = {
    gObjectEventImageAnim_TakeOutRodSouth,
    gObjectEventImageAnim_TakeOutRodNorth,
    gObjectEventImageAnim_TakeOutRodWest,
    gObjectEventImageAnim_TakeOutRodEast,
    gObjectEventImageAnim_PutAwayRodSouth,
    gObjectEventImageAnim_PutAwayRodNorth,
    gObjectEventImageAnim_PutAwayRodWest,
    gObjectEventImageAnim_PutAwayRodEast,
    gObjectEventImageAnim_HookedPokemonSouth,
    gObjectEventImageAnim_HookedPokemonNorth,
    gObjectEventImageAnim_HookedPokemonWest,
    gObjectEventImageAnim_HookedPokemonEast,
};

const union AffineAnimCmd *const gObjectEventRotScalAnimTable_KyogreGroudon[] = {
    gObjectEventRotScalAnim_8508FD8,
    gObjectEventRotScalAnim_8509008,
    gObjectEventRotScalAnim_8509050,
    gObjectEventRotScalAnim_8509040,
    gObjectEventRotScalAnim_8509078,
    gObjectEventRotScalAnim_8509060,
};

const struct UnkStruct_085094AC gUnknown_085094AC[] = {
    {
        .anims = gObjectEventImageAnimTable_QuintyPlump,
        .animPos = {1, 3, 0, 2},
    },
    {
        .anims = gObjectEventImageAnimTable_Standard,
        .animPos = {1, 3, 0, 2},
    },
    {
        .anims = gObjectEventImageAnimTable_BrendanMayNormal,
        .animPos = {1, 3, 0, 2},
    },
    {
        .anims = gObjectEventImageAnimTable_AcroBike,
        .animPos = {1, 3, 0, 2},
    },
    {
        .anims = gObjectEventImageAnimTable_Surfing,
        .animPos = {1, 3, 0, 2},
    },
    {
        .anims = gObjectEventImageAnimTable_Nurse,
        .animPos = {1, 3, 0, 2},
    },
    {
        .anims = gObjectEventImageAnimTable_Fishing,
        .animPos = {1, 3, 0, 2},
    },
    {
        ((void *)0),
        {0, 0, 0, 0},
    },
};
# 441 "src/event_object_movement.c" 2
# 1 "src/data/object_events/base_oam.h" 1
const struct OamData gObjectEventBaseOam_8x8 = {
    .shape = (((0 << 2) | (0)) & 0x03),
    .size = ((((0 << 2) | (0)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gObjectEventBaseOam_16x8 = {
    .shape = (((0 << 2) | (1)) & 0x03),
    .size = ((((0 << 2) | (1)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gObjectEventBaseOam_16x16 = {
    .shape = (((1 << 2) | (0)) & 0x03),
    .size = ((((1 << 2) | (0)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gObjectEventBaseOam_32x8 = {
    .shape = (((1 << 2) | (1)) & 0x03),
    .size = ((((1 << 2) | (1)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gObjectEventBaseOam_64x32 = {
    .shape = (((3 << 2) | (1)) & 0x03),
    .size = ((((3 << 2) | (1)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gObjectEventBaseOam_16x32 = {
    .shape = (((2 << 2) | (2)) & 0x03),
    .size = ((((2 << 2) | (2)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gObjectEventBaseOam_32x32 = {
    .shape = (((2 << 2) | (0)) & 0x03),
    .size = ((((2 << 2) | (0)) >> 2) & 0x03),
    .priority = 2
};

const struct OamData gObjectEventBaseOam_64x64 = {
    .shape = (((3 << 2) | (0)) & 0x03),
    .size = ((((3 << 2) | (0)) >> 2) & 0x03),
    .priority = 2
};
# 442 "src/event_object_movement.c" 2
# 1 "src/data/object_events/object_event_subsprites.h" 1
const struct Subsprite gObjectEventSpriteOamTable_16x16_0[] = {
    {
        .x = -8,
        .y = -8,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_16x16_1[] = {
    {
        .x = -8,
        .y = -8,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    }
};

const struct Subsprite gObjectEventSpriteOamTable_16x16_2[] = {
    {
        .x = -8,
        .y = -8,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -8,
        .y = 0,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 2,
        .priority = 3
    }
};

const struct Subsprite gObjectEventSpriteOamTable_16x16_3[] = {
    {
        .x = -8,
        .y = -8,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -8,
        .y = -8,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 3
    }
};

const struct Subsprite gObjectEventSpriteOamTable_16x16_4[] = {
    {
        .x = -8,
        .y = -8,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    },
    {
        .x = -8,
        .y = -8,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 3
    }
};

const struct SubspriteTable gObjectEventSpriteOamTables_16x16[] = {
    {0, ((void *)0)},
    {1, gObjectEventSpriteOamTable_16x16_0},
    {1, gObjectEventSpriteOamTable_16x16_1},
    {2, gObjectEventSpriteOamTable_16x16_2},
    {2, gObjectEventSpriteOamTable_16x16_3},
    {2, gObjectEventSpriteOamTable_16x16_4}
};

const struct Subsprite gObjectEventSpriteOamTable_16x32_0[] = {
    {
        .x = -8,
        .y = -16,
        .shape = (((2 << 2) | (2)) & 0x03),
        .size = ((((2 << 2) | (2)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_16x32_1[] = {
    {
        .x = -8,
        .y = -16,
        .shape = (((2 << 2) | (2)) & 0x03),
        .size = ((((2 << 2) | (2)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    }
};

const struct Subsprite gObjectEventSpriteOamTable_16x32_2[] = {
    {
        .x = -8,
        .y = -16,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -8,
        .y = 0,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 2
    },
    {
        .x = -8,
        .y = 8,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 6,
        .priority = 3
    }
};

const struct Subsprite gObjectEventSpriteOamTable_16x32_3[] = {
    {
        .x = -8,
        .y = -16,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -8,
        .y = 0,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 3
    }
};

const struct Subsprite gObjectEventSpriteOamTable_16x32_4[] = {
    {
        .x = -8,
        .y = -16,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    },
    {
        .x = -8,
        .y = 0,
        .shape = (((1 << 2) | (0)) & 0x03),
        .size = ((((1 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 3
    }
};

const struct SubspriteTable gObjectEventSpriteOamTables_16x32[] = {
    {0, ((void *)0)},
    {1, gObjectEventSpriteOamTable_16x32_0},
    {1, gObjectEventSpriteOamTable_16x32_1},
    {3, gObjectEventSpriteOamTable_16x32_2},
    {2, gObjectEventSpriteOamTable_16x32_3},
    {2, gObjectEventSpriteOamTable_16x32_4}
};

const struct Subsprite gObjectEventSpriteOamTable_32x32_0[] = {
    {
        .x = -16,
        .y = -16,
        .shape = (((2 << 2) | (0)) & 0x03),
        .size = ((((2 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_32x32_1[] = {
    {
        .x = -16,
        .y = -16,
        .shape = (((2 << 2) | (0)) & 0x03),
        .size = ((((2 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    }
};

const struct Subsprite gObjectEventSpriteOamTable_32x32_2[] = {
    {
        .x = -16,
        .y = -16,
        .shape = (((2 << 2) | (1)) & 0x03),
        .size = ((((2 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -16,
        .y = 0,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 2
    },
    {
        .x = -16,
        .y = 8,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 12,
        .priority = 3
    }
};

const struct Subsprite gObjectEventSpriteOamTable_32x32_3[] = {
    {
        .x = -16,
        .y = -16,
        .shape = (((2 << 2) | (1)) & 0x03),
        .size = ((((2 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -16,
        .y = 0,
        .shape = (((2 << 2) | (1)) & 0x03),
        .size = ((((2 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 3
    }
};

const struct Subsprite gObjectEventSpriteOamTable_32x32_4[] = {
    {
        .x = -16,
        .y = -16,
        .shape = (((2 << 2) | (1)) & 0x03),
        .size = ((((2 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    },
    {
        .x = -16,
        .y = 0,
        .shape = (((2 << 2) | (1)) & 0x03),
        .size = ((((2 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 3
    }
};

const struct SubspriteTable gObjectEventSpriteOamTables_32x32[] = {
    {0, ((void *)0)},
    {1, gObjectEventSpriteOamTable_32x32_0},
    {1, gObjectEventSpriteOamTable_32x32_1},
    {3, gObjectEventSpriteOamTable_32x32_2},
    {2, gObjectEventSpriteOamTable_32x32_3},
    {2, gObjectEventSpriteOamTable_32x32_4}
};

const struct Subsprite gObjectEventSpriteOamTable_48x48[] = {
    {
        .x = -24,
        .y = -24,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = 8,
        .y = -24,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 2
    },
    {
        .x = -24,
        .y = -16,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 6,
        .priority = 2
    },
    {
        .x = 8,
        .y = -16,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 10,
        .priority = 2
    },
    {
        .x = -24,
        .y = -8,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 12,
        .priority = 2
    },
    {
        .x = 8,
        .y = -8,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 16,
        .priority = 2
    },
    {
        .x = -24,
        .y = 0,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 18,
        .priority = 2
    },
    {
        .x = 8,
        .y = 0,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 22,
        .priority = 2
    },
    {
        .x = -24,
        .y = 8,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 24,
        .priority = 2
    },
    {
        .x = 8,
        .y = 8,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 28,
        .priority = 2
    },
    {
        .x = -24,
        .y = 16,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 30,
        .priority = 2
    },
    {
        .x = 8,
        .y = 16,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 34,
        .priority = 2
    }
};

const struct SubspriteTable gObjectEventSpriteOamTables_48x48[] = {
    {12, gObjectEventSpriteOamTable_48x48},
    {12, gObjectEventSpriteOamTable_48x48},
    {12, gObjectEventSpriteOamTable_48x48},
    {12, gObjectEventSpriteOamTable_48x48},
    {12, gObjectEventSpriteOamTable_48x48},
    {12, gObjectEventSpriteOamTable_48x48}
};

const struct Subsprite gObjectEventSpriteOamTable_64x32_0[] = {
    {
        .x = -32,
        .y = -16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_64x32_1[] = {
    {
        .x = -32,
        .y = -16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    }
};

const struct Subsprite gObjectEventSpriteOamTable_64x32_2[] = {
    {
        .x = -32,
        .y = -16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_64x32_3[] = {
    {
        .x = -32,
        .y = -16,
        .shape = (((3 << 2) | (1)) & 0x03),
        .size = ((((3 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    }
};


const struct SubspriteTable gObjectEventSpriteOamTables_64x32[] = {
    {0, ((void *)0)},
    {1, gObjectEventSpriteOamTable_64x32_0},
    {1, gObjectEventSpriteOamTable_64x32_1},
    {1, gObjectEventSpriteOamTable_64x32_2},
    {1, gObjectEventSpriteOamTable_64x32_3},
    {1, gObjectEventSpriteOamTable_64x32_3}
};

const struct Subsprite gObjectEventSpriteOamTable_64x64_0[] = {
    {
        .x = -32,
        .y = -32,
        .shape = (((3 << 2) | (0)) & 0x03),
        .size = ((((3 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_64x64_1[] = {
    {
        .x = -32,
        .y = -32,
        .shape = (((3 << 2) | (0)) & 0x03),
        .size = ((((3 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    }
};

const struct Subsprite gObjectEventSpriteOamTable_64x64_2[] = {
    {
        .x = -32,
        .y = -32,
        .shape = (((3 << 2) | (0)) & 0x03),
        .size = ((((3 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_64x64_3[] = {
    {
        .x = -32,
        .y = -32,
        .shape = (((3 << 2) | (0)) & 0x03),
        .size = ((((3 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    }
};

const struct SubspriteTable gObjectEventSpriteOamTables_64x64[] = {
    {0, ((void *)0)},
    {1, gObjectEventSpriteOamTable_64x64_0},
    {1, gObjectEventSpriteOamTable_64x64_1},
    {1, gObjectEventSpriteOamTable_64x64_2},
    {1, gObjectEventSpriteOamTable_64x64_3},
    {1, gObjectEventSpriteOamTable_64x64_3}
};

const struct Subsprite gObjectEventSpriteOamTable_96x40_0[] = {
    {
        .x = -48,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 2
    },
    {
        .x = 16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 2
    },
    {
        .x = -48,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 12,
        .priority = 2
    },
    {
        .x = -16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 16,
        .priority = 2
    },
    {
        .x = 16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 20,
        .priority = 2
    },
    {
        .x = -48,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 24,
        .priority = 2
    },
    {
        .x = -16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 28,
        .priority = 2
    },
    {
        .x = 16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 32,
        .priority = 2
    },
    {
        .x = -48,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 36,
        .priority = 2
    },
    {
        .x = -16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 40,
        .priority = 2
    },
    {
        .x = 16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 44,
        .priority = 2
    },
    {
        .x = -48,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 48,
        .priority = 2
    },
    {
        .x = -16,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 52,
        .priority = 2
    },
    {
        .x = 16,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 56,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_96x40_1[] = {
    {
        .x = -48,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    },
    {
        .x = -16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 1
    },
    {
        .x = 16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 1
    },
    {
        .x = -48,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 12,
        .priority = 1
    },
    {
        .x = -16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 16,
        .priority = 1
    },
    {
        .x = 16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 20,
        .priority = 1
    },
    {
        .x = -48,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 24,
        .priority = 1
    },
    {
        .x = -16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 28,
        .priority = 1
    },
    {
        .x = 16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 32,
        .priority = 1
    },
    {
        .x = -48,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 36,
        .priority = 1
    },
    {
        .x = -16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 40,
        .priority = 1
    },
    {
        .x = 16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 44,
        .priority = 1
    },
    {
        .x = -48,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 48,
        .priority = 1
    },
    {
        .x = -16,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 52,
        .priority = 1
    },
    {
        .x = 16,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 56,
        .priority = 1
    }
};

const struct Subsprite gObjectEventSpriteOamTable_96x40_2[] = {
    {
        .x = -48,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 2
    },
    {
        .x = 16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 2
    },
    {
        .x = -48,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 12,
        .priority = 2
    },
    {
        .x = -16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 16,
        .priority = 2
    },
    {
        .x = 16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 20,
        .priority = 2
    },
    {
        .x = -48,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 24,
        .priority = 2
    },
    {
        .x = -16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 28,
        .priority = 2
    },
    {
        .x = 16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 32,
        .priority = 2
    },
    {
        .x = -48,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 36,
        .priority = 2
    },
    {
        .x = -16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 40,
        .priority = 2
    },
    {
        .x = 16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 44,
        .priority = 2
    },
    {
        .x = -48,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 48,
        .priority = 2
    },
    {
        .x = -16,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 52,
        .priority = 2
    },
    {
        .x = 16,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 56,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_96x40_3[] = {
    {
        .x = -48,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    },
    {
        .x = -16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 1
    },
    {
        .x = 16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 1
    },
    {
        .x = -48,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 12,
        .priority = 1
    },
    {
        .x = -16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 16,
        .priority = 1
    },
    {
        .x = 16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 20,
        .priority = 1
    },
    {
        .x = -48,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 24,
        .priority = 2
    },
    {
        .x = -16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 28,
        .priority = 2
    },
    {
        .x = 16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 32,
        .priority = 2
    },
    {
        .x = -48,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 36,
        .priority = 2
    },
    {
        .x = -16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 40,
        .priority = 2
    },
    {
        .x = 16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 44,
        .priority = 2
    },
    {
        .x = -48,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 48,
        .priority = 2
    },
    {
        .x = -16,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 52,
        .priority = 2
    },
    {
        .x = 16,
        .y = 12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 56,
        .priority = 2
    }
};


const struct SubspriteTable gObjectEventSpriteOamTables_96x40[] = {
    {15, gObjectEventSpriteOamTable_96x40_0},
    {15, gObjectEventSpriteOamTable_96x40_0},
    {15, gObjectEventSpriteOamTable_96x40_1},
    {15, gObjectEventSpriteOamTable_96x40_2},
    {15, gObjectEventSpriteOamTable_96x40_3},
    {15, gObjectEventSpriteOamTable_96x40_3}
};

const struct Subsprite gObjectEventSpriteOamTable_88x32_0[] = {
    {
        .x = -48,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 2
    },
    {
        .x = 16,
        .y = -20,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 2
    },
    {
        .x = 32,
        .y = -20,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 10,
        .priority = 2
    },
    {
        .x = -48,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 11,
        .priority = 2
    },
    {
        .x = -16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 15,
        .priority = 2
    },
    {
        .x = 16,
        .y = -12,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 19,
        .priority = 2
    },
    {
        .x = 32,
        .y = -12,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 21,
        .priority = 2
    },
    {
        .x = -48,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 22,
        .priority = 2
    },
    {
        .x = -16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 26,
        .priority = 2
    },
    {
        .x = 16,
        .y = -4,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 30,
        .priority = 2
    },
    {
        .x = 32,
        .y = -4,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 32,
        .priority = 2
    },
    {
        .x = -48,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 33,
        .priority = 2
    },
    {
        .x = -16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 37,
        .priority = 2
    },
    {
        .x = 16,
        .y = 4,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 41,
        .priority = 2
    },
    {
        .x = 32,
        .y = 4,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 43,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_88x32_1[] = {
    {
        .x = -48,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    },
    {
        .x = -16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 1
    },
    {
        .x = 16,
        .y = -20,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 1
    },
    {
        .x = 32,
        .y = -20,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 10,
        .priority = 1
    },
    {
        .x = -48,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 11,
        .priority = 1
    },
    {
        .x = -16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 15,
        .priority = 1
    },
    {
        .x = 16,
        .y = -12,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 19,
        .priority = 1
    },
    {
        .x = 32,
        .y = -12,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 21,
        .priority = 1
    },
    {
        .x = -48,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 22,
        .priority = 1
    },
    {
        .x = -16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 26,
        .priority = 1
    },
    {
        .x = 16,
        .y = -4,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 30,
        .priority = 1
    },
    {
        .x = 32,
        .y = -4,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 32,
        .priority = 1
    },
    {
        .x = -48,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 33,
        .priority = 1
    },
    {
        .x = -16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 37,
        .priority = 1
    },
    {
        .x = 16,
        .y = 4,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 41,
        .priority = 1
    },
    {
        .x = 32,
        .y = 4,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 43,
        .priority = 1
    }
};

const struct Subsprite gObjectEventSpriteOamTable_88x32_2[] = {
    {
        .x = -48,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 2
    },
    {
        .x = -16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 2
    },
    {
        .x = 16,
        .y = -20,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 2
    },
    {
        .x = 32,
        .y = -20,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 10,
        .priority = 2
    },
    {
        .x = -48,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 11,
        .priority = 2
    },
    {
        .x = -16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 15,
        .priority = 2
    },
    {
        .x = 16,
        .y = -12,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 19,
        .priority = 2
    },
    {
        .x = 32,
        .y = -12,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 21,
        .priority = 2
    },
    {
        .x = -48,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 22,
        .priority = 2
    },
    {
        .x = -16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 26,
        .priority = 2
    },
    {
        .x = 16,
        .y = -4,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 30,
        .priority = 2
    },
    {
        .x = 32,
        .y = -4,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 32,
        .priority = 2
    },
    {
        .x = -48,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 33,
        .priority = 2
    },
    {
        .x = -16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 37,
        .priority = 2
    },
    {
        .x = 16,
        .y = 4,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 41,
        .priority = 2
    },
    {
        .x = 32,
        .y = 4,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 43,
        .priority = 2
    }
};

const struct Subsprite gObjectEventSpriteOamTable_88x32_3[] = {
    {
        .x = -48,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 0,
        .priority = 1
    },
    {
        .x = -16,
        .y = -20,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 4,
        .priority = 1
    },
    {
        .x = 16,
        .y = -20,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 8,
        .priority = 1
    },
    {
        .x = 32,
        .y = -20,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 10,
        .priority = 1
    },
    {
        .x = -48,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 11,
        .priority = 1
    },
    {
        .x = -16,
        .y = -12,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 15,
        .priority = 1
    },
    {
        .x = 16,
        .y = -12,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 19,
        .priority = 1
    },
    {
        .x = 32,
        .y = -12,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 21,
        .priority = 1
    },
    {
        .x = -48,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 22,
        .priority = 2
    },
    {
        .x = -16,
        .y = -4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 26,
        .priority = 2
    },
    {
        .x = 16,
        .y = -4,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 30,
        .priority = 2
    },
    {
        .x = 32,
        .y = -4,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 32,
        .priority = 2
    },
    {
        .x = -48,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 33,
        .priority = 2
    },
    {
        .x = -16,
        .y = 4,
        .shape = (((1 << 2) | (1)) & 0x03),
        .size = ((((1 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 37,
        .priority = 2
    },
    {
        .x = 16,
        .y = 4,
        .shape = (((0 << 2) | (1)) & 0x03),
        .size = ((((0 << 2) | (1)) >> 2) & 0x03),
        .tileOffset = 41,
        .priority = 2
    },
    {
        .x = 32,
        .y = 4,
        .shape = (((0 << 2) | (0)) & 0x03),
        .size = ((((0 << 2) | (0)) >> 2) & 0x03),
        .tileOffset = 43,
        .priority = 2
    }
};


const struct SubspriteTable gObjectEventSpriteOamTables_88x32[] = {
    {16, gObjectEventSpriteOamTable_88x32_0},
    {16, gObjectEventSpriteOamTable_88x32_0},
    {16, gObjectEventSpriteOamTable_88x32_1},
    {16, gObjectEventSpriteOamTable_88x32_2},
    {16, gObjectEventSpriteOamTable_88x32_3},
    {16, gObjectEventSpriteOamTable_88x32_3}
};
# 443 "src/event_object_movement.c" 2
# 1 "src/data/object_events/object_event_graphics_info.h" 1
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BrendanNormal = {0xFFFF, 0x1100, 0x1102, 512, 16, 32, 0, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_BrendanMayNormal, gObjectEventPicTable_BrendanNormal, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BrendanMachBike = {0xFFFF, 0x1100, 0x1102, 512, 32, 32, 0, 1, 0, 0, 2, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_BrendanMachBike, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BrendanAcroBike = {0xFFFF, 0x1100, 0x1102, 512, 32, 32, 0, 1, 0, 0, 2, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_AcroBike, gObjectEventPicTable_BrendanAcroBike, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BrendanSurfing = {0xFFFF, 0x1100, 0x11FF, 512, 32, 32, 0, 1, 0, 1, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Surfing, gObjectEventPicTable_BrendanSurfing, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BrendanFieldMove = {0xFFFF, 0x1100, 0x1102, 512, 32, 32, 0, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_FieldMove, gObjectEventPicTable_BrendanFieldMove, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_QuintyPlump = {0xFFFF, 0x110B, 0x11FF, 512, 32, 32, 10, 2, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_QuintyPlump, gObjectEventPicTable_QuintyPlump, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_NinjaBoy = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_NinjaBoy, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Twin = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Twin, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Boy1 = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Boy1, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Girl1 = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Girl1, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Boy2 = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Boy2, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Girl2 = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Girl2, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LittleBoy = {0xFFFF, 0x1106, 0x11FF, 128, 16, 16, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_LittleBoy, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LittleGirl = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_LittleGirl, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Boy3 = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Boy3, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Girl3 = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Girl3, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RichBoy = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_RichBoy, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Woman1 = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Woman1, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_FatMan = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_FatMan, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_PokefanF = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_PokefanF, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Man1 = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Man1, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Woman2 = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Woman2, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ExpertM = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_ExpertM, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ExpertF = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_ExpertF, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Man2 = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Man2, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Woman3 = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Woman3, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_PokefanM = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_PokefanM, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Woman4 = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Woman4, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Cook = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Cook, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LinkReceptionist = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_LinkReceptionist, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_OldMan = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_OldMan, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_OldWoman = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_OldWoman, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Camper = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Camper, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Picnicker = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Picnicker, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Man3 = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Man3, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Woman5 = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Woman5, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Youngster = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Youngster, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BugCatcher = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_BugCatcher, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_PsychicM = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_PsychicM, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SchoolKidM = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_SchoolKidM, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Maniac = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Maniac, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_HexManiac = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_HexManiac, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Rayquaza1 = {0xFFFF, 0x1105, 0x11FF, 2048, 64, 64, 4, 1, 0, 1, 1, &gObjectEventBaseOam_64x64, gObjectEventSpriteOamTables_64x64, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_RayquazaStill, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SwimmerM = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_SwimmerM, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SwimmerF = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_SwimmerF, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BlackBelt = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_BlackBelt, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Beauty = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Beauty, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Scientist1 = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Scientist1, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Lass = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Lass, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Gentleman = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Gentleman, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Sailor = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Sailor, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Fisherman = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Fisherman, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RunningTriathleteM = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_RunningTriathleteM, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RunningTriathleteF = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_RunningTriathleteF, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TuberF = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_TuberF, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TuberM = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_TuberM, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Hiker = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Hiker, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_CyclingTriathleteM = {0xFFFF, 0x1105, 0x11FF, 512, 32, 32, 4, 1, 0, 0, 2, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_AcroBike, gObjectEventPicTable_CyclingTriathleteM, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_CyclingTriathleteF = {0xFFFF, 0x1103, 0x11FF, 512, 32, 32, 2, 1, 0, 0, 2, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_AcroBike, gObjectEventPicTable_CyclingTriathleteF, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Nurse = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Nurse, gObjectEventPicTable_Nurse, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ItemBall = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_ItemBall, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BerryTree = {0xFFFF, 0x1103, 0x11FF, 256, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, ((void *)0), gObjectEventImageAnimTable_BerryTree, gObjectEventPicTable_PechaBerryTree, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BerryTreeEarlyStages = {0xFFFF, 0x1103, 0x11FF, 256, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_BerryTree, gObjectEventPicTable_PechaBerryTree, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BerryTreeLateStages = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_BerryTree, gObjectEventPicTable_PechaBerryTree, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ProfBirch = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_ProfBirch, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Man4 = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Man4, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Man5 = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Man5, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ReporterM = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_ReporterM, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ReporterF = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_ReporterF, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Bard = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_MauvilleOldMan1, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Hipster = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_MauvilleOldMan1, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Trader = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_MauvilleOldMan1, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Storyteller = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_MauvilleOldMan2, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Giddy = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_MauvilleOldMan2, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnusedMauvilleOldMan1 = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_MauvilleOldMan2, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnusedMauvilleOldMan2 = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_MauvilleOldMan2, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnusedNatuDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_UnusedNatuDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnusedMagnemiteDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_UnusedMagnemiteDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnusedSquirtleDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_UnusedSquirtleDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnusedWooperDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_UnusedWooperDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnusedPikachuDoll = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_UnusedPikachuDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnusedPorygon2Doll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_UnusedPorygon2Doll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_CuttableTree = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_CuttableTree, gObjectEventPicTable_CuttableTree, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MartEmployee = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_MartEmployee, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RooftopSaleWoman = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_RooftopSaleWoman, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Teala = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Teala, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BreakableRock = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_BreakableRock, gObjectEventPicTable_BreakableRock, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_PushableBoulder = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_PushableBoulder, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MrBrineysBoat = {0xFFFF, 0x1105, 0x11FF, 512, 32, 32, 4, 1, 0, 0, 0, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_MrBrineysBoat, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MayNormal = {0xFFFF, 0x1110, 0x1102, 512, 16, 32, 0, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_BrendanMayNormal, gObjectEventPicTable_MayNormal, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MayMachBike = {0xFFFF, 0x1110, 0x1102, 512, 32, 32, 0, 1, 0, 0, 2, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_MayMachBike, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MayAcroBike = {0xFFFF, 0x1110, 0x1102, 512, 32, 32, 0, 1, 0, 0, 2, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_AcroBike, gObjectEventPicTable_MayAcroBike, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MaySurfing = {0xFFFF, 0x1110, 0x11FF, 512, 32, 32, 0, 1, 0, 1, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Surfing, gObjectEventPicTable_MaySurfing, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MayFieldMove = {0xFFFF, 0x1110, 0x1102, 512, 32, 32, 0, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_FieldMove, gObjectEventPicTable_MayFieldMove, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Truck = {0xFFFF, 0x110D, 0x11FF, 1152, 48, 48, 10, 1, 1, 0, 0, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_48x48, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_Truck, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_VigorothCarryingBox = {0xFFFF, 0x110E, 0x11FF, 512, 32, 32, 10, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_VigorothCarryingBox, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_VigorothFacingAway = {0xFFFF, 0x110E, 0x11FF, 512, 32, 32, 10, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_VigorothFacingAway, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BirchsBag = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_BirchsBag, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_EnemyZigzagoon = {0xFFFF, 0x110F, 0x11FF, 512, 32, 32, 10, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_EnemyZigzagoon, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Poochyena = {0xFFFF, 0x111C, 0x11FF, 512, 32, 32, 10, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Poochyena, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Artist = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Artist, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalBrendanNormal = {0xFFFF, 0x1100, 0x1102, 256, 16, 32, 10, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_BrendanMayNormal, gObjectEventPicTable_BrendanNormal, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalBrendanMachBike = {0xFFFF, 0x1100, 0x1102, 512, 32, 32, 10, 1, 0, 0, 2, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_BrendanMachBike, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalBrendanAcroBike = {0xFFFF, 0x1100, 0x1102, 512, 32, 32, 10, 1, 0, 0, 2, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_AcroBike, gObjectEventPicTable_BrendanAcroBike, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalBrendanSurfing = {0xFFFF, 0x1100, 0x11FF, 512, 32, 32, 10, 1, 0, 1, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Surfing, gObjectEventPicTable_BrendanSurfing, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalBrendanFieldMove = {0xFFFF, 0x1100, 0x1102, 512, 32, 32, 10, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_FieldMove, gObjectEventPicTable_BrendanFieldMove, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalMayNormal = {0xFFFF, 0x1110, 0x1102, 256, 16, 32, 10, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_BrendanMayNormal, gObjectEventPicTable_MayNormal, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalMayMachBike = {0xFFFF, 0x1110, 0x1102, 512, 32, 32, 10, 1, 0, 0, 2, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_MayMachBike, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalMayAcroBike = {0xFFFF, 0x1110, 0x1102, 512, 32, 32, 10, 1, 0, 0, 2, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_AcroBike, gObjectEventPicTable_MayAcroBike, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalMaySurfing = {0xFFFF, 0x1110, 0x11FF, 512, 32, 32, 10, 1, 0, 1, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Surfing, gObjectEventPicTable_MaySurfing, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RivalMayFieldMove = {0xFFFF, 0x1110, 0x1102, 512, 32, 32, 10, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_FieldMove, gObjectEventPicTable_MayFieldMove, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Cameraman = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Cameraman, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BrendanUnderwater = {0xFFFF, 0x1115, 0x11FF, 512, 32, 32, 0, 1, 0, 1, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_BrendanUnderwater, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MayUnderwater = {0xFFFF, 0x1115, 0x11FF, 512, 32, 32, 10, 1, 0, 1, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_MayUnderwater, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MovingBox = {0xFFFF, 0x1112, 0x11FF, 128, 16, 16, 10, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_MovingBox, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_CableCar = {0xFFFF, 0x1113, 0x11FF, 2048, 64, 64, 10, 1, 1, 0, 0, &gObjectEventBaseOam_64x64, gObjectEventSpriteOamTables_64x64, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_CableCar, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Scientist2 = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Scientist2, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_DevonEmployee = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_DevonEmployee, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_AquaMemberM = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_AquaMemberM, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_AquaMemberF = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_AquaMemberF, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MagmaMemberM = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_MagmaMemberM, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MagmaMemberF = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_MagmaMemberF, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Sidney = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Sidney, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Phoebe = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Phoebe, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Glacia = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Glacia, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Drake = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Drake, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Roxanne = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Roxanne, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Brawly = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Brawly, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Wattson = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Wattson, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Flannery = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Flannery, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Norman = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Norman, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Winona = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Winona, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Liza = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Liza, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Tate = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Tate, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Wallace = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Wallace, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Steven = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Steven, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Wally = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Wally, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RubySapphireLittleBoy = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_RubySapphireLittleBoy, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BrendanFishing = {0xFFFF, 0x1100, 0x1102, 512, 32, 32, 0, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Fishing, gObjectEventPicTable_BrendanFishing, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MayFishing = {0xFFFF, 0x1110, 0x1102, 512, 32, 32, 0, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Fishing, gObjectEventPicTable_MayFishing, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_HotSpringsOldWoman = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_HotSpringsOldWoman, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SSTidal = {0xFFFF, 0x1114, 0x11FF, 1920, 96, 40, 10, 1, 0, 0, 0, &gObjectEventBaseOam_8x8, gObjectEventSpriteOamTables_96x40, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_SSTidal, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SubmarineShadow = {0xFFFF, 0x111B, 0x11FF, 1408, 88, 32, 10, 1, 0, 0, 0, &gObjectEventBaseOam_8x8, gObjectEventSpriteOamTables_88x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_SubmarineShadow, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_PichuDoll = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_PichuDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_PikachuDoll = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_PikachuDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MarillDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_MarillDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TogepiDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_TogepiDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_CyndaquilDoll = {0xFFFF, 0x1106, 0x11FF, 128, 16, 16, 5, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_CyndaquilDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ChikoritaDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_ChikoritaDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TotodileDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_TotodileDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_JigglypuffDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_JigglypuffDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MeowthDoll = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_MeowthDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ClefairyDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_ClefairyDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_DittoDoll = {0xFFFF, 0x1106, 0x11FF, 128, 16, 16, 5, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_DittoDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SmoochumDoll = {0xFFFF, 0x1106, 0x11FF, 128, 16, 16, 5, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_SmoochumDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TreeckoDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_TreeckoDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TorchicDoll = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_TorchicDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MudkipDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_MudkipDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_DuskullDoll = {0xFFFF, 0x1106, 0x11FF, 128, 16, 16, 5, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_DuskullDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_WynautDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_WynautDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BaltoyDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_BaltoyDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_KecleonDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_KecleonDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_AzurillDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_AzurillDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SkittyDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_SkittyDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SwabluDoll = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_SwabluDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GulpinDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_GulpinDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LotadDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_LotadDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SeedotDoll = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_SeedotDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_PikaCushion = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_PikaCushion, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RoundCushion = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_RoundCushion, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_KissCushion = {0xFFFF, 0x1106, 0x11FF, 128, 16, 16, 5, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_KissCushion, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ZigzagCushion = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_ZigzagCushion, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_SpinCushion = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_SpinCushion, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_DiamondCushion = {0xFFFF, 0x1106, 0x11FF, 128, 16, 16, 5, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_DiamondCushion, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BallCushion = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_BallCushion, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GrassCushion = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_GrassCushion, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_FireCushion = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_FireCushion, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_WaterCushion = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_WaterCushion, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigSnorlaxDoll = {0xFFFF, 0x1106, 0x11FF, 512, 32, 32, 5, 1, 1, 0, 0, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_BigSnorlaxDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigRhydonDoll = {0xFFFF, 0x1106, 0x11FF, 512, 32, 32, 5, 1, 1, 0, 0, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_BigRhydonDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigLaprasDoll = {0xFFFF, 0x1103, 0x11FF, 512, 32, 32, 2, 1, 1, 0, 0, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_BigLaprasDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigVenusaurDoll = {0xFFFF, 0x1105, 0x11FF, 512, 32, 32, 4, 1, 1, 0, 0, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_BigVenusaurDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigCharizardDoll = {0xFFFF, 0x1104, 0x11FF, 512, 32, 32, 3, 1, 1, 0, 0, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_BigCharizardDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigBlastoiseDoll = {0xFFFF, 0x1103, 0x11FF, 512, 32, 32, 2, 1, 1, 0, 0, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_BigBlastoiseDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigWailmerDoll = {0xFFFF, 0x1106, 0x11FF, 512, 32, 32, 5, 1, 1, 0, 0, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_BigWailmerDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigRegirockDoll = {0xFFFF, 0x1103, 0x11FF, 512, 32, 32, 2, 1, 1, 0, 0, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_BigRegirockDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigRegiceDoll = {0xFFFF, 0x1105, 0x11FF, 512, 32, 32, 4, 1, 1, 0, 0, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_BigRegiceDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BigRegisteelDoll = {0xFFFF, 0x1106, 0x11FF, 512, 32, 32, 5, 1, 1, 0, 0, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_BigRegisteelDoll, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Latias = {0xFFFF, 0x1104, 0x11FF, 512, 32, 32, 3, 1, 0, 0, 0, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_LatiasLatios, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Latios = {0xFFFF, 0x1103, 0x11FF, 512, 32, 32, 2, 1, 0, 0, 0, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_LatiasLatios, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_GameboyKid = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_GameboyKid, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_ContestJudge = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_ContestJudge, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BrendanWatering = {0xFFFF, 0x1100, 0x1102, 512, 32, 32, 0, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_BrendanWatering, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MayWatering = {0xFFFF, 0x1110, 0x1102, 512, 32, 32, 0, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_MayWatering, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BrendanDecorating = {0xFFFF, 0x1100, 0x1102, 256, 16, 32, 10, 1, 1, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_BrendanDecorating, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MayDecorating = {0xFFFF, 0x1110, 0x1102, 256, 16, 32, 10, 1, 1, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_MayDecorating, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Archie = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Archie, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Maxie = {0xFFFF, 0x1104, 0x11FF, 256, 16, 32, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Maxie, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Kyogre1 = {0xFFFF, 0x1106, 0x11FF, 512, 32, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_KyogreFront, gObjectEventRotScalAnimTable_KyogreGroudon};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Groudon1 = {0xFFFF, 0x1105, 0x11FF, 512, 32, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_GroudonFront, gObjectEventRotScalAnimTable_KyogreGroudon};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Kyogre3 = {0xFFFF, 0x1106, 0x11FF, 512, 32, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_KyogreSide, gObjectEventRotScalAnimTable_KyogreGroudon};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Groudon3 = {0xFFFF, 0x1105, 0x11FF, 512, 32, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Groudon3, gObjectEventPicTable_GroudonSide, gObjectEventRotScalAnimTable_KyogreGroudon};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Fossil = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 0, 1, 0, 0, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_Fossil, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Regirock = {0xFFFF, 0x1104, 0x11FF, 512, 32, 32, 3, 1, 1, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Regi, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Regice = {0xFFFF, 0x1105, 0x11FF, 512, 32, 32, 4, 1, 1, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Regi, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Registeel = {0xFFFF, 0x1106, 0x11FF, 512, 32, 32, 5, 1, 1, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Regi, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Skitty = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Skitty, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Kecleon1 = {0xFFFF, 0x1105, 0x11FF, 128, 16, 16, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Kecleon, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Kyogre2 = {0xFFFF, 0x1116, 0x11FF, 512, 32, 32, 10, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_KyogreFront, gObjectEventRotScalAnimTable_KyogreGroudon};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Groudon2 = {0xFFFF, 0x1118, 0x11FF, 512, 32, 32, 10, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_GroudonFront, gObjectEventRotScalAnimTable_KyogreGroudon};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Rayquaza2 = {0xFFFF, 0x1105, 0x11FF, 2048, 64, 64, 4, 1, 0, 1, 1, &gObjectEventBaseOam_64x64, gObjectEventSpriteOamTables_64x64, gObjectEventImageAnimTable_Rayquaza2, gObjectEventPicTable_Rayquaza, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Zigzagoon = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Zigzagoon, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Pikachu = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Pikachu, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Azumarill = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Azumarill, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Wingull = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Wingull, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Kecleon2 = {0xFFFF, 0x1105, 0x1102, 128, 16, 16, 10, 1, 0, 0, 1, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Kecleon, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_TuberMSwimming = {0xFFFF, 0x1104, 0x11FF, 128, 16, 16, 3, 1, 0, 0, 1, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_TuberMSwimming, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Azurill = {0xFFFF, 0x1103, 0x11FF, 128, 16, 16, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x16, gObjectEventSpriteOamTables_16x16, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Azurill, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Mom = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Mom, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LinkBrendan = {0xFFFF, 0x1110, 0x1102, 256, 16, 32, 10, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_BrendanMayNormal, gObjectEventPicTable_BrendanNormal, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_LinkMay = {0xFFFF, 0x1110, 0x1102, 256, 16, 32, 10, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_BrendanMayNormal, gObjectEventPicTable_MayNormal, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Juan = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Juan, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Scott = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Scott, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_MysteryEventDeliveryman = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_MysteryEventDeliveryman, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Statue = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 1, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_Statue, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Kirlia = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 0, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Kirlia, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Dusclops = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Dusclops, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_UnionRoomAttendant = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_UnionRoomAttendant, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Red = {0xFFFF, 0x111D, 0x11FF, 256, 16, 32, 10, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Red, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Leaf = {0xFFFF, 0x111D, 0x11FF, 256, 16, 32, 10, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Leaf, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Sudowoodo = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Sudowoodo, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Mew = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Mew, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Deoxys = {0xFFFF, 0x111E, 0x11FF, 512, 32, 32, 10, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Deoxys, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_BirthIslandStone = {0xFFFF, 0x111F, 0x11FF, 512, 32, 32, 10, 1, 1, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Inanimate, gObjectEventPicTable_BirthIslandStone, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Anabel = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Anabel, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Tucker = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Tucker, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Greta = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Greta, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Spenser = {0xFFFF, 0x1103, 0x11FF, 256, 16, 32, 2, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Spenser, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Noland = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Noland, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Lucy = {0xFFFF, 0x1106, 0x11FF, 256, 16, 32, 5, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Lucy, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Brandon = {0xFFFF, 0x1105, 0x11FF, 256, 16, 32, 4, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Brandon, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RubySapphireBrendan = {0xFFFF, 0x1122, 0x11FF, 256, 16, 32, 10, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_RubySapphireBrendan, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_RubySapphireMay = {0xFFFF, 0x1123, 0x11FF, 256, 16, 32, 10, 1, 0, 0, 1, &gObjectEventBaseOam_16x32, gObjectEventSpriteOamTables_16x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_RubySapphireMay, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_Lugia = {0xFFFF, 0x1121, 0x11FF, 512, 32, 32, 10, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_Standard, gObjectEventPicTable_Lugia, gDummySpriteAffineAnimTable};
const struct ObjectEventGraphicsInfo gObjectEventGraphicsInfo_HoOh = {0xFFFF, 0x1120, 0x11FF, 512, 32, 32, 10, 1, 0, 0, 1, &gObjectEventBaseOam_32x32, gObjectEventSpriteOamTables_32x32, gObjectEventImageAnimTable_HoOh, gObjectEventPicTable_HoOh, gDummySpriteAffineAnimTable};
# 444 "src/event_object_movement.c" 2

const struct SpritePalette sObjectEventSpritePalettes[] = {
    {gObjectEventPalette0, 0x1103},
    {gObjectEventPalette1, 0x1104},
    {gObjectEventPalette2, 0x1105},
    {gObjectEventPalette3, 0x1106},
    {gObjectEventPalette4, 0x1107},
    {gObjectEventPalette5, 0x1108},
    {gObjectEventPalette6, 0x1109},
    {gObjectEventPalette7, 0x110A},
    {gObjectEventPalette8, 0x1100},
    {gObjectEventPalette9, 0x1101},
    {gObjectEventPalette10, 0x1102},
    {gObjectEventPalette11, 0x1115},
    {gObjectEventPalette12, 0x110B},
    {gObjectEventPalette13, 0x110C},
    {gObjectEventPalette14, 0x110D},
    {gObjectEventPalette15, 0x110E},
    {gObjectEventPalette16, 0x110F},
    {gObjectEventPalette17, 0x1110},
    {gObjectEventPalette18, 0x1111},
    {gObjectEventPalette19, 0x1112},
    {gObjectEventPalette20, 0x1113},
    {gObjectEventPalette21, 0x1114},
    {gObjectEventPalette22, 0x1116},
    {gObjectEventPalette23, 0x1117},
    {gObjectEventPalette24, 0x1118},
    {gObjectEventPalette25, 0x1119},
    {gObjectEventPalette26, 0x111B},
    {gObjectEventPalette27, 0x111C},
    {gObjectEventPalette28, 0x111D},
    {gObjectEventPalette29, 0x111E},
    {gObjectEventPalette30, 0x111F},
    {gObjectEventPalette31, 0x1120},
    {gObjectEventPalette32, 0x1121},
    {gObjectEventPalette33, 0x1122},
    {gObjectEventPalette34, 0x1123},
    {((void *)0), 0x0000},
};

const u16 gPlayerReflectionPaletteTags[] = {
    0x1101,
    0x1101,
    0x1101,
    0x1101,
};

const u16 Unknown_0850BCF0[] = {
    0x1111,
    0x1111,
    0x1111,
    0x1111,
};

const u16 gPlayerUnderwaterReflectionPaletteTags[] = {
    0x1115,
    0x1115,
    0x1115,
    0x1115,
};

const struct PairedPalettes gPlayerReflectionPaletteSets[] = {
    {0x1100, gPlayerReflectionPaletteTags},
    {0x1110, Unknown_0850BCF0},
    {0x1115, gPlayerUnderwaterReflectionPaletteTags},
    {0x11FF, ((void *)0)},
};

const u16 gQuintyPlumpReflectionPaletteTags[] = {
    0x110C,
    0x110C,
    0x110C,
    0x110C,
};

const u16 gTruckReflectionPaletteTags[] = {
    0x110D,
    0x110D,
    0x110D,
    0x110D,
};

const u16 gVigorothMoverReflectionPaletteTags[] = {
    0x110E,
    0x110E,
    0x110E,
    0x110E,
};

const u16 gMovingBoxReflectionPaletteTags[] = {
    0x1112,
    0x1112,
    0x1112,
    0x1112,
};

const u16 gCableCarReflectionPaletteTags[] = {
    0x1113,
    0x1113,
    0x1113,
    0x1113,
};

const u16 gSSTidalReflectionPaletteTags[] = {
    0x1114,
    0x1114,
    0x1114,
    0x1114,
};

const u16 gSubmarineShadowReflectionPaletteTags[] = {
    0x111B,
    0x111B,
    0x111B,
    0x111B,
};

const u16 Unknown_0850BD58[] = {
    0x1117,
    0x1117,
    0x1117,
    0x1117,
};

const u16 Unknown_0850BD60[] = {
    0x1119,
    0x1119,
    0x1119,
    0x1119,
};

const u16 Unknown_0850BD68[] = {
    0x1109,
    0x1109,
    0x1109,
    0x1109,
};

const u16 gRedLeafReflectionPaletteTags[] = {
    0x111D,
    0x111D,
    0x111D,
    0x111D,
};

const struct PairedPalettes gSpecialObjectReflectionPaletteSets[] = {
    {0x1100, gPlayerReflectionPaletteTags},
    {0x1110, Unknown_0850BCF0},
    {0x110B, gQuintyPlumpReflectionPaletteTags},
    {0x110D, gTruckReflectionPaletteTags},
    {0x110E, gVigorothMoverReflectionPaletteTags},
    {0x1112, gMovingBoxReflectionPaletteTags},
    {0x1113, gCableCarReflectionPaletteTags},
    {0x1114, gSSTidalReflectionPaletteTags},
    {0x1116, Unknown_0850BD58},
    {0x1118, Unknown_0850BD60},
    {0x1105, Unknown_0850BD68},
    {0x111B, gSubmarineShadowReflectionPaletteTags},
    {0x111D, gRedLeafReflectionPaletteTags},
    {0x11FF, ((void *)0)},
};

const u16 gObjectPaletteTags0[] = {
    0x1100,
    0x1101,
    0x1103,
    0x1104,
    0x1105,
    0x1106,
    0x1107,
    0x1108,
    0x1109,
    0x110A,
};

const u16 gObjectPaletteTags1[] = {
    0x1100,
    0x1101,
    0x1103,
    0x1104,
    0x1105,
    0x1106,
    0x1107,
    0x1108,
    0x1109,
    0x110A,
};

const u16 gObjectPaletteTags2[] = {
    0x1100,
    0x1101,
    0x1103,
    0x1104,
    0x1105,
    0x1106,
    0x1107,
    0x1108,
    0x1109,
    0x110A,
};

const u16 gObjectPaletteTags3[] = {
    0x1100,
    0x1101,
    0x1103,
    0x1104,
    0x1105,
    0x1106,
    0x1107,
    0x1108,
    0x1109,
    0x110A,
};

const u16 *const gObjectPaletteTagSets[] = {
    gObjectPaletteTags0,
    gObjectPaletteTags1,
    gObjectPaletteTags2,
    gObjectPaletteTags3,
};

# 1 "src/data/object_events/berry_tree_graphics_tables.h" 1
const struct SpriteFrameImage gObjectEventPicTable_PechaBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PechaBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PechaBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PechaBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PechaBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PechaBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PechaBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Pecha[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gObjectEventPicTable_KelpsyBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_KelpsyBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_KelpsyBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_KelpsyBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_KelpsyBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_KelpsyBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_KelpsyBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Kelpsy[] = {3, 4, 2, 2, 2};

const struct SpriteFrameImage gObjectEventPicTable_WepearBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WepearBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WepearBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WepearBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WepearBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WepearBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WepearBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Wepear[] = {3, 4, 2, 2, 2};

const struct SpriteFrameImage gObjectEventPicTable_IapapaBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_IapapaBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_IapapaBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_IapapaBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_IapapaBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_IapapaBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_IapapaBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Iapapa[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gObjectEventPicTable_CheriBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CheriBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CheriBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CheriBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CheriBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CheriBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CheriBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Cheri[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gObjectEventPicTable_FigyBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FigyBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FigyBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FigyBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FigyBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FigyBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_FigyBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Figy[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gObjectEventPicTable_MagoBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagoBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagoBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagoBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagoBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagoBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_MagoBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Mago[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gObjectEventPicTable_LumBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LumBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LumBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LumBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LumBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LumBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LumBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Lum[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gObjectEventPicTable_RazzBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RazzBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RazzBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RazzBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RazzBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RazzBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RazzBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Razz[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gObjectEventPicTable_GrepaBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GrepaBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GrepaBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GrepaBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GrepaBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GrepaBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_GrepaBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Grepa[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gObjectEventPicTable_RabutaBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RabutaBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RabutaBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RabutaBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RabutaBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RabutaBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RabutaBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Rabuta[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gObjectEventPicTable_NomelBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NomelBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NomelBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NomelBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NomelBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NomelBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_NomelBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Nomel[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gObjectEventPicTable_LeppaBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LeppaBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LeppaBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LeppaBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LeppaBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LeppaBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LeppaBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Leppa[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gObjectEventPicTable_LiechiBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LiechiBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LiechiBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LiechiBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LiechiBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LiechiBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LiechiBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Liechi[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gObjectEventPicTable_HondewBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HondewBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HondewBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HondewBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HondewBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HondewBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_HondewBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Hondew[] = {3, 4, 5, 5, 5};

const struct SpriteFrameImage gObjectEventPicTable_AguavBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AguavBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AguavBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AguavBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AguavBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AguavBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AguavBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Aguav[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gObjectEventPicTable_WikiBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WikiBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WikiBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WikiBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WikiBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WikiBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_WikiBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Wiki[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gObjectEventPicTable_PomegBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PomegBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PomegBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PomegBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PomegBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PomegBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PomegBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Pomeg[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gObjectEventPicTable_RawstBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RawstBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RawstBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RawstBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RawstBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RawstBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_RawstBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Rawst[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gObjectEventPicTable_SpelonBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SpelonBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SpelonBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SpelonBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SpelonBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SpelonBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SpelonBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Spelon[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gObjectEventPicTable_ChestoBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ChestoBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ChestoBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ChestoBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ChestoBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ChestoBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_ChestoBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Chesto[] = {3, 4, 2, 2, 2};

const struct SpriteFrameImage gObjectEventPicTable_OranBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OranBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OranBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OranBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OranBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OranBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_OranBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Oran[] = {3, 4, 2, 2, 2};

const struct SpriteFrameImage gObjectEventPicTable_PersimBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PersimBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PersimBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PersimBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PersimBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PersimBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PersimBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Persim[] = {3, 4, 2, 2, 2};

const struct SpriteFrameImage gObjectEventPicTable_SitrusBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SitrusBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SitrusBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SitrusBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SitrusBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SitrusBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_SitrusBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Sitrus[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gObjectEventPicTable_AspearBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AspearBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AspearBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AspearBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AspearBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AspearBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_AspearBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Aspear[] = {3, 4, 3, 3, 3};

const struct SpriteFrameImage gObjectEventPicTable_PamtreBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PamtreBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PamtreBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PamtreBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PamtreBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PamtreBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_PamtreBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Pamtre[] = {3, 4, 2, 2, 2};

const struct SpriteFrameImage gObjectEventPicTable_CornnBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CornnBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CornnBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CornnBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CornnBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CornnBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_CornnBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Cornn[] = {3, 4, 2, 2, 2};

const struct SpriteFrameImage gObjectEventPicTable_LansatBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LansatBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LansatBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LansatBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LansatBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LansatBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_LansatBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Lansat[] = {3, 4, 2, 2, 2};

const struct SpriteFrameImage gObjectEventPicTable_DurinBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DurinBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DurinBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DurinBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DurinBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DurinBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_DurinBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Durin[] = {3, 4, 4, 4, 4};

const struct SpriteFrameImage gObjectEventPicTable_TamatoBerryTree[] = {
    {.data = (u8 *)gObjectEventPic_BerryTreeDirtPile + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_BerryTreeSprout + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TamatoBerryTree + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TamatoBerryTree + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TamatoBerryTree + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TamatoBerryTree + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TamatoBerryTree + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gObjectEventPic_TamatoBerryTree + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
};

const u8 gBerryTreePaletteSlotTable_Tamato[] = {3, 4, 2, 2, 2};

const u8 gDeadBerryTreeObjectEventGraphicsIdTable[] = {61, 61, 61, 61, 61};

const u8 gBerryTreeObjectEventGraphicsIdTable[] = {61, 61, 62, 62, 62};

const struct SpriteFrameImage *const gBerryTreePicTablePointers[] = {
    [133 - 133] = gObjectEventPicTable_CheriBerryTree,
    [134 - 133] = gObjectEventPicTable_ChestoBerryTree,
    [135 - 133] = gObjectEventPicTable_PechaBerryTree,
    [136 - 133] = gObjectEventPicTable_RawstBerryTree,
    [137 - 133] = gObjectEventPicTable_AspearBerryTree,
    [138 - 133] = gObjectEventPicTable_LeppaBerryTree,
    [139 - 133] = gObjectEventPicTable_OranBerryTree,
    [140 - 133] = gObjectEventPicTable_PersimBerryTree,
    [141 - 133] = gObjectEventPicTable_LumBerryTree,
    [142 - 133] = gObjectEventPicTable_SitrusBerryTree,
    [143 - 133] = gObjectEventPicTable_FigyBerryTree,
    [144 - 133] = gObjectEventPicTable_WikiBerryTree,
    [145 - 133] = gObjectEventPicTable_MagoBerryTree,
    [146 - 133] = gObjectEventPicTable_AguavBerryTree,
    [147 - 133] = gObjectEventPicTable_IapapaBerryTree,
    [148 - 133] = gObjectEventPicTable_RazzBerryTree,
    [149 - 133] = gObjectEventPicTable_RazzBerryTree,
    [150 - 133] = gObjectEventPicTable_MagoBerryTree,
    [151 - 133] = gObjectEventPicTable_WepearBerryTree,
    [152 - 133] = gObjectEventPicTable_IapapaBerryTree,
    [153 - 133] = gObjectEventPicTable_PomegBerryTree,
    [154 - 133] = gObjectEventPicTable_KelpsyBerryTree,
    [155 - 133] = gObjectEventPicTable_WepearBerryTree,
    [156 - 133] = gObjectEventPicTable_HondewBerryTree,
    [157 - 133] = gObjectEventPicTable_GrepaBerryTree,
    [158 - 133] = gObjectEventPicTable_TamatoBerryTree,
    [159 - 133] = gObjectEventPicTable_CornnBerryTree,
    [160 - 133] = gObjectEventPicTable_PomegBerryTree,
    [161 - 133] = gObjectEventPicTable_RabutaBerryTree,
    [162 - 133] = gObjectEventPicTable_NomelBerryTree,
    [163 - 133] = gObjectEventPicTable_SpelonBerryTree,
    [164 - 133] = gObjectEventPicTable_PamtreBerryTree,
    [165 - 133] = gObjectEventPicTable_RabutaBerryTree,
    [166 - 133] = gObjectEventPicTable_DurinBerryTree,
    [167 - 133] = gObjectEventPicTable_HondewBerryTree,
    [168 - 133] = gObjectEventPicTable_LiechiBerryTree,
    [169 - 133] = gObjectEventPicTable_HondewBerryTree,
    [170 - 133] = gObjectEventPicTable_AguavBerryTree,
    [171 - 133] = gObjectEventPicTable_PomegBerryTree,
    [172 - 133] = gObjectEventPicTable_GrepaBerryTree,
    [173 - 133] = gObjectEventPicTable_LansatBerryTree,
    [174 - 133] = gObjectEventPicTable_CornnBerryTree,
    [175 - 133] = gObjectEventPicTable_DurinBerryTree,
};

const u8 *const gBerryTreePaletteSlotTablePointers[] = {
    [133 - 133] = gBerryTreePaletteSlotTable_Cheri,
    [134 - 133] = gBerryTreePaletteSlotTable_Chesto,
    [135 - 133] = gBerryTreePaletteSlotTable_Pecha,
    [136 - 133] = gBerryTreePaletteSlotTable_Rawst,
    [137 - 133] = gBerryTreePaletteSlotTable_Aspear,
    [138 - 133] = gBerryTreePaletteSlotTable_Leppa,
    [139 - 133] = gBerryTreePaletteSlotTable_Oran,
    [140 - 133] = gBerryTreePaletteSlotTable_Persim,
    [141 - 133] = gBerryTreePaletteSlotTable_Lum,
    [142 - 133] = gBerryTreePaletteSlotTable_Sitrus,
    [143 - 133] = gBerryTreePaletteSlotTable_Figy,
    [144 - 133] = gBerryTreePaletteSlotTable_Wiki,
    [145 - 133] = gBerryTreePaletteSlotTable_Mago,
    [146 - 133] = gBerryTreePaletteSlotTable_Aguav,
    [147 - 133] = gBerryTreePaletteSlotTable_Iapapa,
    [148 - 133] = gBerryTreePaletteSlotTable_Razz,
    [149 - 133] = gBerryTreePaletteSlotTable_Razz,
    [150 - 133] = gBerryTreePaletteSlotTable_Mago,
    [151 - 133] = gBerryTreePaletteSlotTable_Wepear,
    [152 - 133] = gBerryTreePaletteSlotTable_Iapapa,
    [153 - 133] = gBerryTreePaletteSlotTable_Pomeg,
    [154 - 133] = gBerryTreePaletteSlotTable_Kelpsy,
    [155 - 133] = gBerryTreePaletteSlotTable_Wepear,
    [156 - 133] = gBerryTreePaletteSlotTable_Hondew,
    [157 - 133] = gBerryTreePaletteSlotTable_Grepa,
    [158 - 133] = gBerryTreePaletteSlotTable_Tamato,
    [159 - 133] = gBerryTreePaletteSlotTable_Cornn,
    [160 - 133] = gBerryTreePaletteSlotTable_Pomeg,
    [161 - 133] = gBerryTreePaletteSlotTable_Rabuta,
    [162 - 133] = gBerryTreePaletteSlotTable_Nomel,
    [163 - 133] = gBerryTreePaletteSlotTable_Spelon,
    [164 - 133] = gBerryTreePaletteSlotTable_Pamtre,
    [165 - 133] = gBerryTreePaletteSlotTable_Rabuta,
    [166 - 133] = gBerryTreePaletteSlotTable_Durin,
    [167 - 133] = gBerryTreePaletteSlotTable_Hondew,
    [168 - 133] = gBerryTreePaletteSlotTable_Liechi,
    [169 - 133] = gBerryTreePaletteSlotTable_Hondew,
    [170 - 133] = gBerryTreePaletteSlotTable_Aguav,
    [171 - 133] = gBerryTreePaletteSlotTable_Pomeg,
    [172 - 133] = gBerryTreePaletteSlotTable_Grepa,
    [173 - 133] = gBerryTreePaletteSlotTable_Lansat,
    [174 - 133] = gBerryTreePaletteSlotTable_Cornn,
    [175 - 133] = gBerryTreePaletteSlotTable_Durin,
};

const u8 *const gBerryTreeObjectEventGraphicsIdTablePointers[] = {
    [133 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [134 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [135 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [136 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [137 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [138 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [139 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [140 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [141 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [142 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [143 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [144 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [145 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [146 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [147 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [148 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [149 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [150 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [151 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [152 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [153 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [154 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [155 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [156 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [157 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [158 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [159 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [160 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [161 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [162 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [163 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [164 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [165 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [166 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [167 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [168 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [169 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [170 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [171 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [172 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [173 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [174 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [175 - 133] = gBerryTreeObjectEventGraphicsIdTable,

    [176 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [177 - 133] = gBerryTreeObjectEventGraphicsIdTable,
    [178 - 133] = gBerryTreeObjectEventGraphicsIdTable,
};
# 666 "src/event_object_movement.c" 2
# 1 "src/data/field_effects/field_effect_objects.h" 1
const struct SpritePalette gFieldEffectObjectPaletteInfo0 = {gFieldEffectObjectPalette0, 0x1004};

const struct SpritePalette gFieldEffectObjectPaletteInfo1 = {gFieldEffectObjectPalette1, 0x1005};

const union AnimCmd gFieldEffectObjectImageAnim_850C9D0[] =
{
    {.frame = {0, 1}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Shadow[] =
{
    gFieldEffectObjectImageAnim_850C9D0,
};

const struct SpriteFrameImage gFieldEffectObjectPicTable_ShadowSmall[] = {
    {.data = (u8 *)gFieldEffectObjectPic_ShadowSmall, .size = sizeof gFieldEffectObjectPic_ShadowSmall},
};

const struct SpriteFrameImage gFieldEffectObjectPicTable_ShadowMedium[] = {
    {.data = (u8 *)gFieldEffectObjectPic_ShadowMedium, .size = sizeof gFieldEffectObjectPic_ShadowMedium},
};

const struct SpriteFrameImage gFieldEffectObjectPicTable_ShadowLarge[] = {
    {.data = (u8 *)gFieldEffectObjectPic_ShadowLarge, .size = sizeof gFieldEffectObjectPic_ShadowLarge},
};

const struct SpriteFrameImage gFieldEffectObjectPicTable_ShadowExtraLarge[] = {
    {.data = (u8 *)gFieldEffectObjectPic_ShadowExtraLarge, .size = sizeof gFieldEffectObjectPic_ShadowExtraLarge},
};

const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowSmall = {0xFFFF, 0xFFFF, &gObjectEventBaseOam_8x8, gFieldEffectObjectImageAnimTable_Shadow, gFieldEffectObjectPicTable_ShadowSmall, gDummySpriteAffineAnimTable, UpdateShadowFieldEffect};

const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowMedium = {0xFFFF, 0xFFFF, &gObjectEventBaseOam_16x8, gFieldEffectObjectImageAnimTable_Shadow, gFieldEffectObjectPicTable_ShadowMedium, gDummySpriteAffineAnimTable, UpdateShadowFieldEffect};

const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowLarge = {0xFFFF, 0xFFFF, &gObjectEventBaseOam_32x8, gFieldEffectObjectImageAnimTable_Shadow, gFieldEffectObjectPicTable_ShadowLarge, gDummySpriteAffineAnimTable, UpdateShadowFieldEffect};

const struct SpriteTemplate gFieldEffectObjectTemplate_ShadowExtraLarge = {0xFFFF, 0xFFFF, &gObjectEventBaseOam_64x32, gFieldEffectObjectImageAnimTable_Shadow, gFieldEffectObjectPicTable_ShadowExtraLarge, gDummySpriteAffineAnimTable, UpdateShadowFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_TallGrass[] = {
    {.data = (u8 *)gFieldEffectObjectPic_TallGrass + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TallGrass + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TallGrass + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TallGrass + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TallGrass + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CA84[] =
{
    {.frame = {1, 10}},
    {.frame = {2, 10}},
    {.frame = {3, 10}},
    {.frame = {4, 10}},
    {.frame = {0, 10}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_TallGrass[] =
{
    gFieldEffectObjectImageAnim_850CA84,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_TallGrass = {0xFFFF, 0x1005, &gObjectEventBaseOam_16x16, gFieldEffectObjectImageAnimTable_TallGrass, gFieldEffectObjectPicTable_TallGrass, gDummySpriteAffineAnimTable, UpdateTallGrassFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Ripple[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Ripple + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ripple + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ripple + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ripple + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ripple + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CAE0[] =
{
    {.frame = {0, 12}},
    {.frame = {1, 9}},
    {.frame = {2, 9}},
    {.frame = {3, 9}},
    {.frame = {0, 9}},
    {.frame = {1, 9}},
    {.frame = {2, 11}},
    {.frame = {4, 11}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Ripple[] =
{
    gFieldEffectObjectImageAnim_850CAE0,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Ripple = {0xFFFF, 0x1005, &gObjectEventBaseOam_16x16, gFieldEffectObjectImageAnimTable_Ripple, gFieldEffectObjectPicTable_Ripple, gDummySpriteAffineAnimTable, WaitFieldEffectSpriteAnim};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Ash[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Ash + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ash + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ash + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ash + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Ash + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CB48[] =
{
    {.frame = {0, 12}},
    {.frame = {1, 12}},
    {.frame = {2, 8}},
    {.frame = {3, 12}},
    {.frame = {4, 12}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Ash[] =
{
    gFieldEffectObjectImageAnim_850CB48,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Ash = {0xFFFF, 0x1005, &gObjectEventBaseOam_16x16, gFieldEffectObjectImageAnimTable_Ash, gFieldEffectObjectPicTable_Ash, gDummySpriteAffineAnimTable, UpdateAshFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_SurfBlob[] = {
    {.data = (u8 *)gFieldEffectObjectPic_SurfBlob + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SurfBlob + (4 * 4 * 1 * 64)/2, .size = (4 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SurfBlob + (4 * 4 * 2 * 64)/2, .size = (4 * 4 * 64)/2},
};

const union AnimCmd gSurfBlobAnim_FaceSouth[] =
{
    {.frame = {0, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gSurfBlobAnim_FaceNorth[] =
{
    {.frame = {1, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gSurfBlobAnim_FaceWest[] =
{
    {.frame = {2, 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gSurfBlobAnim_FaceEast[] =
{
    {.frame = {2, 1, .hFlip = 1}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_SurfBlob[] =
{
    gSurfBlobAnim_FaceSouth,
    gSurfBlobAnim_FaceNorth,
    gSurfBlobAnim_FaceWest,
    gSurfBlobAnim_FaceEast,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_SurfBlob = {0xFFFF, 0xFFFF, &gObjectEventBaseOam_32x32, gFieldEffectObjectImageAnimTable_SurfBlob, gFieldEffectObjectPicTable_SurfBlob, gDummySpriteAffineAnimTable, UpdateSurfBlobFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Arrow[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Arrow + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CC1C[] =
{
    {.frame = {3, 32}},
    {.frame = {7, 32}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CC28[] =
{
    {.frame = {0, 32}},
    {.frame = {4, 32}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CC34[] =
{
    {.frame = {1, 32}},
    {.frame = {5, 32}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CC40[] =
{
    {.frame = {2, 32}},
    {.frame = {6, 32}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Arrow[] =
{
    gFieldEffectObjectImageAnim_850CC1C,
    gFieldEffectObjectImageAnim_850CC28,
    gFieldEffectObjectImageAnim_850CC34,
    gFieldEffectObjectImageAnim_850CC40,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Arrow = {0xFFFF, 0xFFFF, &gObjectEventBaseOam_16x16, gFieldEffectObjectImageAnimTable_Arrow, gFieldEffectObjectPicTable_Arrow, gDummySpriteAffineAnimTable, SpriteCallbackDummy};

const struct SpriteFrameImage gFieldEffectObjectPicTable_GroundImpactDust[] = {
    {.data = (u8 *)gFieldEffectObjectPic_GroundImpactDust + (2 * 1 * 0 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_GroundImpactDust + (2 * 1 * 1 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_GroundImpactDust + (2 * 1 * 2 * 64)/2, .size = (2 * 1 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CC8C[] =
{
    {.frame = {0, 8}},
    {.frame = {1, 8}},
    {.frame = {2, 8}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_GroundImpactDust[] =
{
    gFieldEffectObjectImageAnim_850CC8C,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_GroundImpactDust = {0xFFFF, 0x1004, &gObjectEventBaseOam_16x8, gFieldEffectObjectImageAnimTable_GroundImpactDust, gFieldEffectObjectPicTable_GroundImpactDust, gDummySpriteAffineAnimTable, sub_8156194};

const struct SpriteFrameImage gFieldEffectObjectPicTable_BikeHopTallGrass[] = {
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopTallGrass + (2 * 1 * 0 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopTallGrass + (2 * 1 * 1 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopTallGrass + (2 * 1 * 2 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopTallGrass + (2 * 1 * 3 * 64)/2, .size = (2 * 1 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CCD8[] =
{
    {.frame = {0, 8}},
    {.frame = {1, 8}},
    {.frame = {2, 8}},
    {.frame = {3, 8}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_BikeHopTallGrass[] =
{
    gFieldEffectObjectImageAnim_850CCD8,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_BikeHopTallGrass = {0xFFFF, 0x1005, &gObjectEventBaseOam_16x8, gFieldEffectObjectImageAnimTable_BikeHopTallGrass, gFieldEffectObjectPicTable_BikeHopTallGrass, gDummySpriteAffineAnimTable, sub_8156194};

const struct SpriteFrameImage gFieldEffectObjectPicTable_SandFootprints[] = {
    {.data = (u8 *)gFieldEffectObjectPic_SandFootprints + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandFootprints + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CD18[] =
{
    {.frame = {0, 1, .vFlip = 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CD20[] =
{
    {.frame = {0, 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CD28[] =
{
    {.frame = {1, 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CD30[] =
{
    {.frame = {1, 1, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_SandFootprints[] =
{
    gFieldEffectObjectImageAnim_850CD18,
    gFieldEffectObjectImageAnim_850CD18,
    gFieldEffectObjectImageAnim_850CD20,
    gFieldEffectObjectImageAnim_850CD28,
    gFieldEffectObjectImageAnim_850CD30,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_SandFootprints = {0xFFFF, 0x1004, &gObjectEventBaseOam_16x16, gFieldEffectObjectImageAnimTable_SandFootprints, gFieldEffectObjectPicTable_SandFootprints, gDummySpriteAffineAnimTable, UpdateFootprintsTireTracksFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_DeepSandFootprints[] = {
    {.data = (u8 *)gFieldEffectObjectPic_DeepSandFootprints + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_DeepSandFootprints + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CD74[] =
{
    {.frame = {0, 1, .vFlip = 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CD7C[] =
{
    {.frame = {0, 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CD84[] =
{
    {.frame = {1, 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CD8C[] =
{
    {.frame = {1, 1, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_DeepSandFootprints[] =
{
    gFieldEffectObjectImageAnim_850CD74,
    gFieldEffectObjectImageAnim_850CD74,
    gFieldEffectObjectImageAnim_850CD7C,
    gFieldEffectObjectImageAnim_850CD84,
    gFieldEffectObjectImageAnim_850CD8C,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_DeepSandFootprints = {0xFFFF, 0x1004, &gObjectEventBaseOam_16x16, gFieldEffectObjectImageAnimTable_DeepSandFootprints, gFieldEffectObjectPicTable_DeepSandFootprints, gDummySpriteAffineAnimTable, UpdateFootprintsTireTracksFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_BikeTireTracks[] = {
    {.data = (u8 *)gFieldEffectObjectPic_BikeTireTracks + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeTireTracks + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeTireTracks + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeTireTracks + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CDE0[] =
{
    {.frame = {2, 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CDE8[] =
{
    {.frame = {2, 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CDF0[] =
{
    {.frame = {1, 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CDF8[] =
{
    {.frame = {1, 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CE00[] =
{
    {.frame = {0, 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CE08[] =
{
    {.frame = {0, 1, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CE10[] =
{
    {.frame = {3, 1, .hFlip = 1}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CE18[] =
{
    {.frame = {3, 1}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_BikeTireTracks[] =
{
    gFieldEffectObjectImageAnim_850CDE0,
    gFieldEffectObjectImageAnim_850CDE0,
    gFieldEffectObjectImageAnim_850CDE8,
    gFieldEffectObjectImageAnim_850CDF0,
    gFieldEffectObjectImageAnim_850CDF8,
    gFieldEffectObjectImageAnim_850CE00,
    gFieldEffectObjectImageAnim_850CE08,
    gFieldEffectObjectImageAnim_850CE10,
    gFieldEffectObjectImageAnim_850CE18,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_BikeTireTracks = {0xFFFF, 0x1004, &gObjectEventBaseOam_16x16, gFieldEffectObjectImageAnimTable_BikeTireTracks, gFieldEffectObjectPicTable_BikeTireTracks, gDummySpriteAffineAnimTable, UpdateFootprintsTireTracksFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_BikeHopBigSplash[] = {
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopBigSplash + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopBigSplash + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopBigSplash + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopBigSplash + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CE7C[] =
{
    {.frame = {0, 8}},
    {.frame = {1, 8}},
    {.frame = {2, 8}},
    {.frame = {3, 8}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_BikeHopBigSplash[] =
{
    gFieldEffectObjectImageAnim_850CE7C,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_BikeHopBigSplash = {0xFFFF, 0x1004, &gObjectEventBaseOam_16x16, gFieldEffectObjectImageAnimTable_BikeHopBigSplash, gFieldEffectObjectPicTable_BikeHopBigSplash, gDummySpriteAffineAnimTable, sub_8156194};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Splash[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Splash + (2 * 1 * 0 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Splash + (2 * 1 * 1 * 64)/2, .size = (2 * 1 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CEBC[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CEC8[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {0, 6}},
    {.frame = {1, 6}},
    {.frame = {0, 8}},
    {.frame = {1, 8}},
    {.frame = {0, 6}},
    {.frame = {1, 6}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Splash[] =
{
    gFieldEffectObjectImageAnim_850CEBC,
    gFieldEffectObjectImageAnim_850CEC8,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Splash = {0xFFFF, 0x1004, &gObjectEventBaseOam_16x8, gFieldEffectObjectImageAnimTable_Splash, gFieldEffectObjectPicTable_Splash, gDummySpriteAffineAnimTable, UpdateSplashFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_BikeHopSmallSplash[] = {
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopSmallSplash + (2 * 1 * 0 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopSmallSplash + (2 * 1 * 1 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BikeHopSmallSplash + (2 * 1 * 2 * 64)/2, .size = (2 * 1 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CF24[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_BikeHopSmallSplash[] =
{
    gFieldEffectObjectImageAnim_850CF24,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_BikeHopSmallSplash = {0xFFFF, 0x1004, &gObjectEventBaseOam_16x8, gFieldEffectObjectImageAnimTable_BikeHopSmallSplash, gFieldEffectObjectPicTable_BikeHopSmallSplash, gDummySpriteAffineAnimTable, sub_8156194};

const struct SpriteFrameImage gFieldEffectObjectPicTable_LongGrass[] = {
    {.data = (u8 *)gFieldEffectObjectPic_LongGrass + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_LongGrass + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_LongGrass + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_LongGrass + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CF70[] =
{
    {.frame = {1, 3}},
    {.frame = {2, 3}},
    {.frame = {0, 4}},
    {.frame = {3, 4}},
    {.frame = {0, 4}},
    {.frame = {3, 4}},
    {.frame = {0, 4}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_LongGrass[] =
{
    gFieldEffectObjectImageAnim_850CF70,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_LongGrass = {0xFFFF, 0x1005, &gObjectEventBaseOam_16x16, gFieldEffectObjectImageAnimTable_LongGrass, gFieldEffectObjectPicTable_LongGrass, gDummySpriteAffineAnimTable, UpdateLongGrassFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Unknown16[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Unknown16 + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown16 + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown16 + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown16 + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown16 + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown16 + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850CFDC[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 8}},
    {.frame = {3, 8}},
    {.frame = {4, 8}},
    {.frame = {5, 8}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Unknown16[] =
{
    gFieldEffectObjectImageAnim_850CFDC,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown16 = {0xFFFF, 0x1005, &gObjectEventBaseOam_16x16, gFieldEffectObjectImageAnimTable_Unknown16, gFieldEffectObjectPicTable_Unknown16, gDummySpriteAffineAnimTable, sub_8156194};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Unknown17[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Unknown16 + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown17 + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown17 + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown17 + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown17 + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown17 + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown17 + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown17 + (2 * 2 * 6 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown17 + (2 * 2 * 7 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D05C[] =
{
    {.frame = {0, 10}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {4, 4}},
    {.frame = {5, 4}},
    {.frame = {6, 4}},
    {.frame = {7, 4}},
    {.frame = {8, 4}},
    {.jump = {.type = -2, .target = 7}},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Unknown17[] =
{
    gFieldEffectObjectImageAnim_850D05C,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown17 = {0xFFFF, 0x1005, &gObjectEventBaseOam_16x16, gFieldEffectObjectImageAnimTable_Unknown17, gFieldEffectObjectPicTable_Unknown17, gDummySpriteAffineAnimTable, WaitFieldEffectSpriteAnim};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Unknown18[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Unknown18 + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown18 + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown18 + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown18 + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D0C0[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {2, 4}},
    {.frame = {1, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Unknown18[] =
{
    gFieldEffectObjectImageAnim_850D0C0,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown18 = {0xFFFF, 0x1005, &gObjectEventBaseOam_16x16, gFieldEffectObjectImageAnimTable_Unknown18, gFieldEffectObjectPicTable_Unknown18, gDummySpriteAffineAnimTable, WaitFieldEffectSpriteAnim};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Unknown19[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Unknown19 + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown19 + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown19 + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown19 + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D118[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Unknown19[] =
{
    gFieldEffectObjectImageAnim_850D118,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown19 = {0xFFFF, 0x1004, &gObjectEventBaseOam_16x16, gFieldEffectObjectImageAnimTable_Unknown19, gFieldEffectObjectPicTable_Unknown19, gDummySpriteAffineAnimTable, WaitFieldEffectSpriteAnim};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Unknown29[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Unknown29 + (2 * 1 * 0 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown29 + (2 * 1 * 1 * 64)/2, .size = (2 * 1 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown29 + (2 * 1 * 2 * 64)/2, .size = (2 * 1 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D160[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Unknown29[] =
{
    gFieldEffectObjectImageAnim_850D160,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown29 = {0xFFFF, 0x1004, &gObjectEventBaseOam_16x8, gFieldEffectObjectImageAnimTable_Unknown29, gFieldEffectObjectPicTable_Unknown29, gDummySpriteAffineAnimTable, UpdateSandPileFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Unknown20[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Unknown20 + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown20 + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown20 + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown20 + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D1AC[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {2, 4}},
    {.frame = {1, 4}},
    {.jump = {.type = -2, .target = 0}},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Unknown20[] =
{
    gFieldEffectObjectImageAnim_850D1AC,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown20 = {0xFFFF, 0x1004, &gObjectEventBaseOam_16x16, gFieldEffectObjectImageAnimTable_Unknown20, gFieldEffectObjectPicTable_Unknown20, gDummySpriteAffineAnimTable, WaitFieldEffectSpriteAnim};

const union AffineAnimCmd gFieldEffectObjectRotScalAnim_850D1E4[] =
{
    {.frame = {.xScale = 0xFF00, .yScale = 0x100, .rotation = -128, .duration = 0}},
    {.frame = {.xScale = 0x1, .yScale = 0x0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 8}},
    {.frame = {.xScale = 0xFFFF, .yScale = 0x0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 8}},
    {.frame = {.xScale = 0xFFFF, .yScale = 0x0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 8}},
    {.frame = {.xScale = 0x1, .yScale = 0x0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 8}},
    {.jump = {.type = 0x7FFE, .target = 1}},
};

const union AffineAnimCmd gFieldEffectObjectRotScalAnim_850D234[] =
{
    {.frame = {.xScale = 0x100, .yScale = 0x100, .rotation = -128, .duration = 0}},
    {.frame = {.xScale = 0xFFFF, .yScale = 0x0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 8}},
    {.frame = {.xScale = 0x1, .yScale = 0x0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 8}},
    {.frame = {.xScale = 0x1, .yScale = 0x0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 8}},
    {.frame = {.xScale = 0xFFFF, .yScale = 0x0, .rotation = 0, .duration = 4}},
    {.frame = {.xScale = 0x0, .yScale = 0x0, .rotation = 0, .duration = 8}},
    {.jump = {.type = 0x7FFE, .target = 1}},
};

const union AffineAnimCmd *const gFieldEffectObjectRotScalAnimTable_Unknown21[] =
{
    gFieldEffectObjectRotScalAnim_850D1E4,
    gFieldEffectObjectRotScalAnim_850D234,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown21 = {0x0, 0xFFFF, &gDummyOamData, gDummySpriteAnimTable, ((void *)0), gFieldEffectObjectRotScalAnimTable_Unknown21, SpriteCallbackDummy};

const struct SpriteFrameImage gFieldEffectObjectPicTable_BerryTreeGrowthSparkle[] = {
    {.data = (u8 *)gFieldEffectObjectPic_BerryTreeGrowthSparkle + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BerryTreeGrowthSparkle + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BerryTreeGrowthSparkle + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BerryTreeGrowthSparkle + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BerryTreeGrowthSparkle + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_BerryTreeGrowthSparkle + (2 * 2 * 5 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D2D4[] =
{
    {.frame = {0, 8}},
    {.frame = {1, 8}},
    {.frame = {2, 8}},
    {.frame = {3, 8}},
    {.frame = {4, 8}},
    {.frame = {5, 8}},
    {.loop = {.type = -3, .count = 0}},
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {4, 4}},
    {.frame = {5, 4}},
    {.loop = {.type = -3, .count = 3}},
    {.frame = {0, 8}},
    {.frame = {1, 8}},
    {.frame = {2, 8}},
    {.frame = {3, 8}},
    {.frame = {4, 8}},
    {.frame = {5, 8}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_BerryTreeGrowthSparkle[] =
{
    gFieldEffectObjectImageAnim_850D2D4,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_BerryTreeGrowthSparkle = {0xFFFF, 0xFFFF, &gObjectEventBaseOam_16x16, gFieldEffectObjectImageAnimTable_BerryTreeGrowthSparkle, gFieldEffectObjectPicTable_BerryTreeGrowthSparkle, gDummySpriteAffineAnimTable, WaitFieldEffectSpriteAnim};

const struct SpriteFrameImage gFieldEffectObjectPicTable_TreeDisguise[] = {
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_TreeDisguise + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D37C[] =
{
    {.frame = {0, 16}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D384[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {4, 4}},
    {.frame = {5, 4}},
    {.frame = {6, 4}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_TreeDisguise[] =
{
    gFieldEffectObjectImageAnim_850D37C,
    gFieldEffectObjectImageAnim_850D384,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_TreeDisguise = {0xFFFF, 0xFFFF, &gObjectEventBaseOam_16x32, gFieldEffectObjectImageAnimTable_TreeDisguise, gFieldEffectObjectPicTable_TreeDisguise, gDummySpriteAffineAnimTable, UpdateDisguiseFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_MountainDisguise[] = {
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_MountainDisguise + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D3FC[] =
{
    {.frame = {0, 16}},
    {.type = -1},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D404[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 4}},
    {.frame = {4, 4}},
    {.frame = {5, 4}},
    {.frame = {6, 4}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_MountainDisguise[] =
{
    gFieldEffectObjectImageAnim_850D3FC,
    gFieldEffectObjectImageAnim_850D404,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_MountainDisguise = {0xFFFF, 0xFFFF, &gObjectEventBaseOam_16x32, gFieldEffectObjectImageAnimTable_MountainDisguise, gFieldEffectObjectPicTable_MountainDisguise, gDummySpriteAffineAnimTable, UpdateDisguiseFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_SandDisguisePlaceholder[] = {
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_SandDisguisePlaceholder + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
};

const struct SpriteTemplate gFieldEffectObjectTemplate_SandDisguisePlaceholder = {0xFFFF, 0xFFFF, &gObjectEventBaseOam_16x32, gFieldEffectObjectImageAnimTable_TreeDisguise, gFieldEffectObjectPicTable_SandDisguisePlaceholder, gDummySpriteAffineAnimTable, UpdateDisguiseFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Bird[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Bird, .size = sizeof gFieldEffectObjectPic_Bird},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D49C[] =
{
    {.frame = {0, 1}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Bird[] =
{
    gFieldEffectObjectImageAnim_850D49C,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Bird = {0xFFFF, 0xFFFF, &gObjectEventBaseOam_32x32, gFieldEffectObjectImageAnimTable_Bird, gFieldEffectObjectPicTable_Bird, gDummySpriteAffineAnimTable, SpriteCallbackDummy};

const struct SpriteFrameImage gFieldEffectObjectPicTable_ShortGrass[] = {
    {.data = (u8 *)gFieldEffectObjectPic_ShortGrass + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_ShortGrass + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D4D0[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_ShortGrass[] =
{
    gFieldEffectObjectImageAnim_850D4D0,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_ShortGrass = {0xFFFF, 0x1005, &gObjectEventBaseOam_16x16, gFieldEffectObjectImageAnimTable_ShortGrass, gFieldEffectObjectPicTable_ShortGrass, gDummySpriteAffineAnimTable, UpdateShortGrassFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_HotSpringsWater[] = {
    {.data = (u8 *)gFieldEffectObjectPic_HotSpringsWater, .size = sizeof gFieldEffectObjectPic_HotSpringsWater},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D500[] =
{
    {.frame = {0, 4}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_HotSpringsWater[] =
{
    gFieldEffectObjectImageAnim_850D500,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_HotSpringsWater = {0xFFFF, 0x1005, &gObjectEventBaseOam_16x16, gFieldEffectObjectImageAnimTable_HotSpringsWater, gFieldEffectObjectPicTable_HotSpringsWater, gDummySpriteAffineAnimTable, UpdateHotSpringsWaterFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_JumpOutOfAsh[] = {
    {.data = (u8 *)gFieldEffectObjectPic_JumpOutOfAsh + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpOutOfAsh + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpOutOfAsh + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpOutOfAsh + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_JumpOutOfAsh + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D54C[] =
{
    {.frame = {0, 6}},
    {.frame = {1, 6}},
    {.frame = {2, 6}},
    {.frame = {3, 6}},
    {.frame = {4, 6}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_JumpOutOfAsh[] =
{
    gFieldEffectObjectImageAnim_850D54C,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_JumpOutOfAsh =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x100D,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = gFieldEffectObjectImageAnimTable_JumpOutOfAsh,
    .images = gFieldEffectObjectPicTable_JumpOutOfAsh,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_PopOutOfAsh
};

const struct SpritePalette gFieldEffectObjectPaletteInfo2 = {gFieldEffectObjectPalette2, 0x100D};

const struct SpriteFrameImage gFieldEffectObjectPicTable_LavaridgeGymWarp[] = {
    {.data = (u8 *)gFieldEffectObjectPic_LavaridgeGymWarp + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_LavaridgeGymWarp + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_LavaridgeGymWarp + (2 * 2 * 2 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_LavaridgeGymWarp + (2 * 2 * 3 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_LavaridgeGymWarp + (2 * 2 * 4 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_LavaridgeGymWarp[] =
{
    {.frame = {0, 6}},
    {.frame = {1, 6}},
    {.frame = {2, 6}},
    {.frame = {3, 6}},
    {.frame = {4, 6}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_LavaridgeGymWarp[] =
{
    gFieldEffectObjectImageAnim_LavaridgeGymWarp,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_LavaridgeGymWarp =
{
    .tileTag = 0xFFFF,
    .paletteTag = 0x100D,
    .oam = &gObjectEventBaseOam_16x16,
    .anims = gFieldEffectObjectImageAnimTable_LavaridgeGymWarp,
    .images = gFieldEffectObjectPicTable_LavaridgeGymWarp,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCB_LavaridgeGymWarp
};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Bubbles[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 0 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 1 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 2 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 3 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 4 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 5 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 6 * 64)/2, .size = (2 * 4 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Bubbles + (2 * 4 * 7 * 64)/2, .size = (2 * 4 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D624[] =
{
    {.frame = {0, 4}},
    {.frame = {1, 4}},
    {.frame = {2, 4}},
    {.frame = {3, 6}},
    {.frame = {4, 6}},
    {.frame = {5, 4}},
    {.frame = {6, 4}},
    {.frame = {7, 4}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Bubbles[] =
{
    gFieldEffectObjectImageAnim_850D624,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Bubbles = {0xFFFF, 0x1004, &gObjectEventBaseOam_16x32, gFieldEffectObjectImageAnimTable_Bubbles, gFieldEffectObjectPicTable_Bubbles, gDummySpriteAffineAnimTable, UpdateBubblesFieldEffect};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Unknown35[] = {
    {.data = (u8 *)gFieldEffectObjectPic_Unknown35 + (2 * 2 * 0 * 64)/2, .size = (2 * 2 * 64)/2},
    {.data = (u8 *)gFieldEffectObjectPic_Unknown35 + (2 * 2 * 1 * 64)/2, .size = (2 * 2 * 64)/2},
};

const union AnimCmd gFieldEffectObjectImageAnim_850D674[] =
{
    {.frame = {0, 3}},
    {.frame = {1, 5}},
    {.frame = {0, 5}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Unknown35[] =
{
    gFieldEffectObjectImageAnim_850D674,
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Unknown35 = {0xFFFF, 0x100F, &gObjectEventBaseOam_16x16, gFieldEffectObjectImageAnimTable_Unknown35, gFieldEffectObjectPicTable_Unknown35, gDummySpriteAffineAnimTable, UpdateSparkleFieldEffect};

const struct SpritePalette gFieldEffectObjectPaletteInfo3 = {gFieldEffectObjectPalette3, 0x100F};

const union AnimCmd gFieldEffectObjectImageAnim_850D6A8[] = {
    {.frame = {0, 1}},
    {.type = -1},
};

const union AnimCmd *const gFieldEffectObjectImageAnimTable_Rayquaza[] = {
    gFieldEffectObjectImageAnim_850D6A8,
};

const struct SpriteFrameImage gFieldEffectObjectPicTable_Rayquaza[] = {
    {.data = (u8 *)gObjectEventPic_Rayquaza + (4 * 4 * 0 * 64)/2, .size = (4 * 4 * 64)/2},
};

const struct SpriteTemplate gFieldEffectObjectTemplate_Rayquaza = {0xFFFF, 0xFFFF, &gObjectEventBaseOam_32x32, gFieldEffectObjectImageAnimTable_Rayquaza, gFieldEffectObjectPicTable_Rayquaza, gDummySpriteAffineAnimTable, sub_8155F80};

const struct SpritePalette gFieldEffectObjectPaletteInfoUnused = {gObjectEventPalette2, 0x1011};
# 667 "src/event_object_movement.c" 2

const s16 gMovementDelaysMedium[] = {32, 64, 96, 128};
const s16 gMovementDelaysLong[] = {32, 64, 128, 192};
const s16 gMovementDelaysShort[] = {32, 48, 64, 80};

# 1 "src/data/object_events/movement_type_func_tables.h" 1
u8 (*const gMovementTypeFuncs_WanderAround[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WanderAround_Step0,
    MovementType_WanderAround_Step1,
    MovementType_WanderAround_Step2,
    MovementType_WanderAround_Step3,
    MovementType_WanderAround_Step4,
    MovementType_WanderAround_Step5,
    MovementType_WanderAround_Step6,
};

const u8 gStandardDirections[] = {1, 2, 3, 4};

u8 (*const gGetVectorDirectionFuncs[])(s16, s16, s16, s16) = {
    GetVectorDirection,
    GetLimitedVectorDirection_SouthNorth,
    GetLimitedVectorDirection_WestEast,
    GetLimitedVectorDirection_WestNorth,
    GetLimitedVectorDirection_EastNorth,
    GetLimitedVectorDirection_WestSouth,
    GetLimitedVectorDirection_EastSouth,
    GetLimitedVectorDirection_SouthNorthWest,
    GetLimitedVectorDirection_SouthNorthEast,
    GetLimitedVectorDirection_NorthWestEast,
    GetLimitedVectorDirection_SouthWestEast,
};

u8 (*const gMovementTypeFuncs_LookAround[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_LookAround_Step0,
    MovementType_LookAround_Step1,
    MovementType_LookAround_Step2,
    MovementType_LookAround_Step3,
    MovementType_LookAround_Step4,
};

u8 (*const gMovementTypeFuncs_WanderUpAndDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WanderUpAndDown_Step0,
    MovementType_WanderUpAndDown_Step1,
    MovementType_WanderUpAndDown_Step2,
    MovementType_WanderUpAndDown_Step3,
    MovementType_WanderUpAndDown_Step4,
    MovementType_WanderUpAndDown_Step5,
    MovementType_WanderUpAndDown_Step6,
};

const u8 gUpAndDownDirections[] = {1, 2};

u8 (*const gMovementTypeFuncs_WanderLeftAndRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WanderLeftAndRight_Step0,
    MovementType_WanderLeftAndRight_Step1,
    MovementType_WanderLeftAndRight_Step2,
    MovementType_WanderLeftAndRight_Step3,
    MovementType_WanderLeftAndRight_Step4,
    MovementType_WanderLeftAndRight_Step5,
    MovementType_WanderLeftAndRight_Step6,
};

const u8 gLeftAndRightDirections[] = {3, 4};

u8 (*const gMovementTypeFuncs_FaceDirection[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceDirection_Step0,
    MovementType_FaceDirection_Step1,
    MovementType_FaceDirection_Step2,
};

u8 (*const gMovementTypeFuncs_BerryTreeGrowth[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_BerryTreeGrowth_Step0,
    MovementType_BerryTreeGrowth_Step1,
    MovementType_BerryTreeGrowth_Step2,
    MovementType_BerryTreeGrowth_Step3,
    MovementType_BerryTreeGrowth_Step4,
};

u8 (*const gMovementTypeFuncs_FaceDownAndUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceDownAndUp_Step0,
    MovementType_FaceDownAndUp_Step1,
    MovementType_FaceDownAndUp_Step2,
    MovementType_FaceDownAndUp_Step3,
    MovementType_FaceDownAndUp_Step4,
};

u8 (*const gMovementTypeFuncs_FaceLeftAndRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceLeftAndRight_Step0,
    MovementType_FaceLeftAndRight_Step1,
    MovementType_FaceLeftAndRight_Step2,
    MovementType_FaceLeftAndRight_Step3,
    MovementType_FaceLeftAndRight_Step4,
};

u8 (*const gMovementTypeFuncs_FaceUpAndLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceUpAndLeft_Step0,
    MovementType_FaceUpAndLeft_Step1,
    MovementType_FaceUpAndLeft_Step2,
    MovementType_FaceUpAndLeft_Step3,
    MovementType_FaceUpAndLeft_Step4,
};

const u8 gUpAndLeftDirections[] = {2, 3};

u8 (*const gMovementTypeFuncs_FaceUpAndRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceUpAndRight_Step0,
    MovementType_FaceUpAndRight_Step1,
    MovementType_FaceUpAndRight_Step2,
    MovementType_FaceUpAndRight_Step3,
    MovementType_FaceUpAndRight_Step4,
};

const u8 gUpAndRightDirections[] = {2, 4};

u8 (*const gMovementTypeFuncs_FaceDownAndLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceDownAndLeft_Step0,
    MovementType_FaceDownAndLeft_Step1,
    MovementType_FaceDownAndLeft_Step2,
    MovementType_FaceDownAndLeft_Step3,
    MovementType_FaceDownAndLeft_Step4,
};

const u8 gDownAndLeftDirections[] = {1, 3};

u8 (*const gMovementTypeFuncs_FaceDownAndRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceDownAndRight_Step0,
    MovementType_FaceDownAndRight_Step1,
    MovementType_FaceDownAndRight_Step2,
    MovementType_FaceDownAndRight_Step3,
    MovementType_FaceDownAndRight_Step4,
};

const u8 gDownAndRightDirections[] = {1, 4};

u8 (*const gMovementTypeFuncs_FaceDownUpAndLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceDownUpAndLeft_Step0,
    MovementType_FaceDownUpAndLeft_Step1,
    MovementType_FaceDownUpAndLeft_Step2,
    MovementType_FaceDownUpAndLeft_Step3,
    MovementType_FaceDownUpAndLeft_Step4,
};

const u8 gDownUpAndLeftDirections[] = {2, 1, 3, 1};

u8 (*const gMovementTypeFuncs_FaceDownUpAndRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceDownUpAndRight_Step0,
    MovementType_FaceDownUpAndRight_Step1,
    MovementType_FaceDownUpAndRight_Step2,
    MovementType_FaceDownUpAndRight_Step3,
    MovementType_FaceDownUpAndRight_Step4,
};

const u8 gDownUpAndRightDirections[] = {1, 2, 4, 1};

u8 (*const gMovementTypeFuncs_FaceUpLeftAndRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceUpLeftAndRight_Step0,
    MovementType_FaceUpLeftAndRight_Step1,
    MovementType_FaceUpLeftAndRight_Step2,
    MovementType_FaceUpLeftAndRight_Step3,
    MovementType_FaceUpLeftAndRight_Step4,
};

const u8 gUpLeftAndRightDirections[] = {2, 3, 4, 2};

u8 (*const gMovementTypeFuncs_FaceDownLeftAndRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_FaceDownLeftAndRight_Step0,
    MovementType_FaceDownLeftAndRight_Step1,
    MovementType_FaceDownLeftAndRight_Step2,
    MovementType_FaceDownLeftAndRight_Step3,
    MovementType_FaceDownLeftAndRight_Step4,
};

const u8 gDownLeftAndRightDirections[] = {3, 4, 1, 1};

u8 (*const gMovementTypeFuncs_RotateCounterclockwise[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_RotateCounterclockwise_Step0,
    MovementType_RotateCounterclockwise_Step1,
    MovementType_RotateCounterclockwise_Step2,
    MovementType_RotateCounterclockwise_Step3,
};

const u8 gCounterclockwiseDirections[] = {1, 4, 3, 1, 2};

u8 (*const gMovementTypeFuncs_RotateClockwise[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_RotateClockwise_Step0,
    MovementType_RotateClockwise_Step1,
    MovementType_RotateClockwise_Step2,
    MovementType_RotateClockwise_Step3,
};

const u8 gClockwiseDirections[] = {1, 3, 4, 2, 1};

u8 (*const gMovementTypeFuncs_WalkBackAndForth[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkBackAndForth_Step0,
    MovementType_WalkBackAndForth_Step1,
    MovementType_WalkBackAndForth_Step2,
    MovementType_WalkBackAndForth_Step3,
};

u8 (*const gMovementTypeFuncs_WalkSequenceUpRightLeftDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceUpRightLeftDown_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gUpRightLeftDownDirections[] = {2, 4, 3, 1};

u8 (*const gMovementTypeFuncs_WalkSequenceRightLeftDownUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceRightLeftDownUp_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gRightLeftDownUpDirections[] = {4, 3, 1, 2};

u8 (*const gMovementTypeFuncs_WalkSequenceDownUpRightLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceDownUpRightLeft_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gDownUpRightLeftDirections[] = {1, 2, 4, 3};

u8 (*const gMovementTypeFuncs_WalkSequenceLeftDownUpRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceLeftDownUpRight_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gLeftDownUpRightDirections[] = {3, 1, 2, 4};

u8 (*const gMovementTypeFuncs_WalkSequenceUpLeftRightDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceUpLeftRightDown_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gUpLeftRightDownDirections[] = {2, 3, 4, 1};

u8 (*const gMovementTypeFuncs_WalkSequenceLeftRightDownUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceLeftRightDownUp_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gLeftRightDownUpDirections[] = {3, 4, 1, 2};

u8 (*const gMovementTypeFuncs_WalkSequenceDownUpLeftRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceDownUpLeftRight_Step1,
    MovementType_WalkSequence_Step2,
};

u8 (*const gMovementTypeFuncs_WalkSequenceRightDownUpLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceRightDownUpLeft_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gRightDownUpLeftDirections[] = {4, 1, 2, 3};

u8 (*const gMovementTypeFuncs_WalkSequenceLeftUpDownRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceLeftUpDownRight_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gLeftUpDownRightDirections[] = {3, 2, 1, 4};

u8 (*const gMovementTypeFuncs_WalkSequenceUpDownRightLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceUpDownRightLeft_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gUpDownRightLeftDirections[] = {2, 1, 4, 3};

u8 (*const gMovementTypeFuncs_WalkSequenceRightLeftUpDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceRightLeftUpDown_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gRightLeftUpDownDirections[] = {4, 3, 2, 1};

u8 (*const gMovementTypeFuncs_WalkSequenceDownRightLeftUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceDownRightLeftUp_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gDownRightLeftUpDirections[] = {1, 4, 3, 2};

u8 (*const gMovementTypeFuncs_WalkSequenceRightUpDownLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceRightUpDownLeft_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gRightUpDownLeftDirections[] = {4, 2, 1, 3};

u8 (*const gMovementTypeFuncs_WalkSequenceUpDownLeftRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceUpDownLeftRight_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gUpDownLeftRightDirections[] = {2, 1, 3, 4};

u8 (*const gMovementTypeFuncs_WalkSequenceLeftRightUpDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceLeftRightUpDown_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gLeftRightUpDownDirections[] = {3, 4, 2, 1};

u8 (*const gMovementTypeFuncs_WalkSequenceDownLeftRightUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceDownLeftRightUp_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gDownLeftRightUpDirections[] = {1, 3, 4, 2};

u8 (*const gMovementTypeFuncs_WalkSequenceUpLeftDownRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceUpLeftDownRight_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gUpLeftDownRightDirections[] = {2, 3, 1, 4};

u8 (*const gMovementTypeFuncs_WalkSequenceDownRightUpLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceDownRightUpLeft_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gDownRightUpLeftDirections[] = {1, 4, 2, 3};

u8 (*const gMovementTypeFuncs_WalkSequenceLeftDownRightUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceLeftDownRightUp_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gLeftDownRightUpDirections[] = {3, 1, 4, 2};

u8 (*const gMovementTypeFuncs_WalkSequenceRightUpLeftDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceRightUpLeftDown_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gRightUpLeftDownDirections[] = {4, 2, 3, 1};

u8 (*const gMovementTypeFuncs_WalkSequenceUpRightDownLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceUpRightDownLeft_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gUpRightDownLeftDirections[] = {2, 4, 1, 3};

u8 (*const gMovementTypeFuncs_WalkSequenceDownLeftUpRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceDownLeftUpRight_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gDownLeftUpRightDirections[] = {1, 3, 2, 4};

u8 (*const gMovementTypeFuncs_WalkSequenceLeftUpRightDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceLeftUpRightDown_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gLeftUpRightDownDirections[] = {3, 2, 4, 1};

u8 (*const gMovementTypeFuncs_WalkSequenceRightDownLeftUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSequence_Step0,
    MovementType_WalkSequenceRightDownLeftUp_Step1,
    MovementType_WalkSequence_Step2,
};

const u8 gRightDownLeftUpDirections[] = {4, 1, 3, 2};

u8 (*const gMovementTypeFuncs_CopyPlayer[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_CopyPlayer_Step0,
    MovementType_CopyPlayer_Step1,
    MovementType_CopyPlayer_Step2,
};

bool8 (*const gCopyPlayerMovementFuncs[])(struct ObjectEvent *, struct Sprite *, u8, bool8(u8)) = {
    CopyablePlayerMovement_None,
    CopyablePlayerMovement_FaceDirection,
    CopyablePlayerMovement_GoSpeed0,
    CopyablePlayerMovement_GoSpeed1,
    CopyablePlayerMovement_GoSpeed2,
    CopyablePlayerMovement_Slide,
    cph_IM_DIFFERENT,
    CopyablePlayerMovement_GoSpeed4,
    CopyablePlayerMovement_Jump,
    CopyablePlayerMovement_None,
    CopyablePlayerMovement_None,
};

u8 (*const gMovementTypeFuncs_CopyPlayerInGrass[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_CopyPlayer_Step0,
    MovementType_CopyPlayerInGrass_Step1,
    MovementType_CopyPlayer_Step2,
};

u8 (*const gMovementTypeFuncs_Hidden[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_Hidden_Step0,
};

u8 (*const gMovementTypeFuncs_WalkInPlace[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkInPlace_Step0,
    MovementType_MoveInPlace_Step1,
};

u8 (*const gMovementTypeFuncs_WalkSlowlyInPlace[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_WalkSlowlyInPlace_Step0,
    MovementType_MoveInPlace_Step1,
};

u8 (*const gMovementTypeFuncs_JogInPlace[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_JogInPlace_Step0,
    MovementType_MoveInPlace_Step1,
};

u8 (*const gMovementTypeFuncs_RunInPlace[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_RunInPlace_Step0,
    MovementType_MoveInPlace_Step1,
};

u8 (*const gMovementTypeFuncs_Invisible[])(struct ObjectEvent *, struct Sprite *) = {
    MovementType_Invisible_Step0,
    MovementType_Invisible_Step1,
    MovementType_Invisible_Step2,
};
# 673 "src/event_object_movement.c" 2

const u8 gFaceDirectionAnimNums[] = {
    [0] = 0,
    [1] = 0,
    [2] = 1,
    [3] = 2,
    [4] = 3,
    [5] = 0,
    [6] = 0,
    [7] = 1,
    [8] = 1,
};
const u8 gMoveDirectionAnimNums[] = {
    [0] = 4,
    [1] = 4,
    [2] = 5,
    [3] = 6,
    [4] = 7,
    [5] = 4,
    [6] = 4,
    [7] = 5,
    [8] = 5,
};
const u8 gMoveDirectionFastAnimNums[] = {
    [0] = 8,
    [1] = 8,
    [2] = 9,
    [3] = 10,
    [4] = 11,
    [5] = 8,
    [6] = 8,
    [7] = 9,
    [8] = 9,
};
const u8 gMoveDirectionFasterAnimNums[] = {
    [0] = 12,
    [1] = 12,
    [2] = 13,
    [3] = 14,
    [4] = 15,
    [5] = 12,
    [6] = 12,
    [7] = 13,
    [8] = 13,
};
const u8 gMoveDirectionFastestAnimNums[] = {
    [0] = 16,
    [1] = 16,
    [2] = 17,
    [3] = 18,
    [4] = 19,
    [5] = 16,
    [6] = 16,
    [7] = 17,
    [8] = 17,
};
const u8 gJumpSpecialDirectionAnimNums[] = {
    [0] = 20,
    [1] = 20,
    [2] = 21,
    [3] = 22,
    [4] = 23,
    [5] = 20,
    [6] = 20,
    [7] = 21,
    [8] = 21,
};
const u8 gAcroWheelieDirectionAnimNums[] = {
    [0] = 20,
    [1] = 20,
    [2] = 21,
    [3] = 22,
    [4] = 23,
    [5] = 20,
    [6] = 20,
    [7] = 21,
    [8] = 21,
};
const u8 gUnrefAnimNums_08375633[] = {
    [0] = 24,
    [1] = 24,
    [2] = 25,
    [3] = 26,
    [4] = 27,
    [5] = 24,
    [6] = 24,
    [7] = 25,
    [8] = 25,
};
const u8 gAcroEndWheelieDirectionAnimNums[] = {
    [0] = 28,
    [1] = 28,
    [2] = 29,
    [3] = 30,
    [4] = 31,
    [5] = 28,
    [6] = 28,
    [7] = 29,
    [8] = 29,
};
const u8 gAcroUnusedActionDirectionAnimNums[] = {
    [0] = 32,
    [1] = 32,
    [2] = 33,
    [3] = 34,
    [4] = 35,
    [5] = 32,
    [6] = 32,
    [7] = 33,
    [8] = 33,
};
const u8 gAcroWheeliePedalDirectionAnimNums[] = {
    [0] = 36,
    [1] = 36,
    [2] = 37,
    [3] = 38,
    [4] = 39,
    [5] = 36,
    [6] = 36,
    [7] = 37,
    [8] = 37,
};
const u8 gFishingDirectionAnimNums[] = {
    [0] = 0,
    [1] = 0,
    [2] = 1,
    [3] = 2,
    [4] = 3,
    [5] = 0,
    [6] = 0,
    [7] = 1,
    [8] = 1,
};
const u8 gFishingNoCatchDirectionAnimNums[] = {
    [0] = 4,
    [1] = 4,
    [2] = 5,
    [3] = 6,
    [4] = 7,
    [5] = 4,
    [6] = 4,
    [7] = 5,
    [8] = 5,
};
const u8 gFishingBiteDirectionAnimNums[] = {
    [0] = 8,
    [1] = 8,
    [2] = 9,
    [3] = 10,
    [4] = 11,
    [5] = 8,
    [6] = 8,
    [7] = 9,
    [8] = 9,
};
const u8 gRunningDirectionAnimNums[] = {
    [0] = 20,
    [1] = 20,
    [2] = 21,
    [3] = 22,
    [4] = 23,
    [5] = 20,
    [6] = 20,
    [7] = 21,
    [8] = 21,
};

const u8 gTrainerFacingDirectionMovementTypes[] = {
    [0] = 0x8,
    [1] = 0x8,
    [2] = 0x7,
    [3] = 0x9,
    [4] = 0xA,
    [5] = 0x8,
    [6] = 0x8,
    [7] = 0x7,
    [8] = 0x7,
};

bool8 (*const gOppositeDirectionBlockedMetatileFuncs[])(u8) = {
    MetatileBehavior_IsSouthBlocked,
    MetatileBehavior_IsNorthBlocked,
    MetatileBehavior_IsWestBlocked,
    MetatileBehavior_IsEastBlocked
};

bool8 (*const gDirectionBlockedMetatileFuncs[])(u8) = {
    MetatileBehavior_IsNorthBlocked,
    MetatileBehavior_IsSouthBlocked,
    MetatileBehavior_IsEastBlocked,
    MetatileBehavior_IsWestBlocked
};

static const struct Coords16 sDirectionToVectors[] = {
    { 0, 0},
    { 0, 1},
    { 0, -1},
    {-1, 0},
    { 1, 0},
    {-1, 1},
    { 1, 1},
    {-1, -1},
    { 1, -1}
};

const u8 gFaceDirectionMovementActions[] = {
    0x0,
    0x0,
    0x1,
    0x2,
    0x3,
};
const u8 gWalkSlowMovementActions[] = {
    0x4,
    0x4,
    0x5,
    0x6,
    0x7,
};
const u8 gWalkNormalMovementActions[] = {
    0x8,
    0x8,
    0x9,
    0xA,
    0xB,
};
const u8 gWalkFastMovementActions[] = {
    0x15,
    0x15,
    0x16,
    0x17,
    0x18,
};
const u8 gRideWaterCurrentMovementActions[] = {
    0x29,
    0x29,
    0x2A,
    0x2B,
    0x2C,
};
const u8 gWalkFastestMovementActions[] = {
    0x2D,
    0x2D,
    0x2E,
    0x2F,
    0x30,
};
const u8 gSlideMovementActions[] = {
    0x31,
    0x31,
    0x32,
    0x33,
    0x34,
};
const u8 gPlayerRunMovementActions[] = {
    0x35,
    0x35,
    0x36,
    0x37,
    0x38,
};
const u8 gJump2MovementActions[] = {
    0xC,
    0xC,
    0xD,
    0xE,
    0xF,
};
const u8 gJumpInPlaceMovementActions[] = {
    0x46,
    0x46,
    0x47,
    0x48,
    0x49,
};
const u8 gJumpInPlaceTurnAroundMovementActions[] = {
    0x4B,
    0x4B,
    0x4A,
    0x4D,
    0x4C,
};
const u8 gJumpMovementActions[] = {
    0x42,
    0x42,
    0x43,
    0x44,
    0x45,
};
const u8 gJumpSpecialMovementActions[] = {
    0x3A,
    0x3A,
    0x3B,
    0x3C,
    0x3D,
};
const u8 gWalkInPlaceSlowMovementActions[] = {
    0x19,
    0x19,
    0x1A,
    0x1B,
    0x1C,
};
const u8 gWalkInPlaceNormalMovementActions[] = {
    0x1D,
    0x1D,
    0x1E,
    0x1F,
    0x20,
};
const u8 gWalkInPlaceFastMovementActions[] = {
    0x21,
    0x21,
    0x22,
    0x23,
    0x24,
};
const u8 gWalkInPlaceFastestMovementActions[] = {
    0x25,
    0x25,
    0x26,
    0x27,
    0x28,
};
const u8 gAcroWheelieFaceDirectionMovementActions[] = {
    0x64,
    0x64,
    0x65,
    0x66,
    0x67,
};
const u8 gAcroPopWheelieFaceDirectionMovementActions[] = {
    0x68,
    0x68,
    0x69,
    0x6A,
    0x6B,
};
const u8 gAcroEndWheelieFaceDirectionMovementActions[] = {
    0x6C,
    0x6C,
    0x6D,
    0x6E,
    0x6F,
};
const u8 gAcroWheelieHopFaceDirectionMovementActions[] = {
    0x70,
    0x70,
    0x71,
    0x72,
    0x73,
};
const u8 gAcroWheelieHopDirectionMovementActions[] = {
    0x74,
    0x74,
    0x75,
    0x76,
    0x77,
};
const u8 gAcroWheelieJumpDirectionMovementActions[] = {
    0x78,
    0x78,
    0x79,
    0x7A,
    0x7B,
};
const u8 gAcroWheelieInPlaceDirectionMovementActions[] = {
    0x7C,
    0x7C,
    0x7D,
    0x7E,
    0x7F,
};
const u8 gAcroPopWheelieMoveDirectionMovementActions[] = {
    0x80,
    0x80,
    0x81,
    0x82,
    0x83,
};
const u8 gAcroWheelieMoveDirectionMovementActions[] = {
    0x84,
    0x84,
    0x85,
    0x86,
    0x87,
};
const u8 gAcroEndWheelieMoveDirectionMovementActions[] = {
    0x88,
    0x88,
    0x89,
    0x8A,
    0x8B,
};

const u8 gOppositeDirections[] = {
    2,
    1,
    4,
    3,
    8,
    7,
    6,
    5,
};

const u8 gUnknown_0850DC2F[][4] = {
    {2, 1, 4, 3},
    {1, 2, 3, 4},
    {3, 4, 2, 1},
    {4, 3, 1, 2}
};

const u8 gUnknown_0850DC3F[][4] = {
    {2, 1, 4, 3},
    {1, 2, 3, 4},
    {4, 3, 1, 2},
    {3, 4, 2, 1}
};

# 1 "src/data/object_events/movement_action_func_tables.h" 1
u8 MovementAction_FaceDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_FaceDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_PauseSpriteAnim(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_FaceUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_FaceLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_FaceRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkSlowDiagonalUpLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkSlowDiagonalUpLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkSlowDiagonalUpRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkSlowDiagonalUpRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkSlowDiagonalDownLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkSlowDiagonalDownLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkSlowDiagonalDownRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkSlowDiagonalDownRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkSlowDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkSlowDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkSlowUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkSlowUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkSlowLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkSlowLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkSlowRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkSlowRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkNormalDiagonalUpLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkNormalDiagonalUpLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkNormalDiagonalUpRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkNormalDiagonalUpRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkNormalDiagonalDownLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkNormalDiagonalDownLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkNormalDiagonalDownRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkNormalDiagonalDownRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkNormalDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkNormalDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkNormalUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkNormalUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkNormalLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkNormalLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkNormalRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkNormalRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Jump2Down_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Jump2Down_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Jump2Up_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Jump2Up_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Jump2Left_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Jump2Left_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Jump2Right_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Jump2Right_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Delay1_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Delay_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Finish(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Delay2_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Delay4_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Delay8_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Delay16_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkFastDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkFastDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkFastUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkFastUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkFastLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkFastLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkFastRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkFastRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkInPlaceSlowDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkInPlaceSlow_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkInPlaceSlowUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkInPlaceSlowLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkInPlaceSlowRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkInPlaceNormalDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkInPlace_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkInPlaceNormalUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkInPlaceNormalLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkInPlaceNormalRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkInPlaceFastDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkInPlaceFastUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkInPlaceFastLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkInPlaceFastRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkInPlaceFastestDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkInPlaceFastestUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkInPlaceFastestLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkInPlaceFastestRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_RideWaterCurrentDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_RideWaterCurrentDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_RideWaterCurrentUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_RideWaterCurrentUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_RideWaterCurrentLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_RideWaterCurrentLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_RideWaterCurrentRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_RideWaterCurrentRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkFastestDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkFastestDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkFastestUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkFastestUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkFastestLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkFastestLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkFastestRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkFastestRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_SlideDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_SlideDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_SlideUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_SlideUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_SlideLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_SlideLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_SlideRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_SlideRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_PlayerRunDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_PlayerRunDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_PlayerRunUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_PlayerRunUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_PlayerRunLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_PlayerRunLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_PlayerRunRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_PlayerRunRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_StartAnimInDirection_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WaitSpriteAnim(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpSpecialDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpSpecialDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpSpecialUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpSpecialUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpSpecialLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpSpecialLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpSpecialRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpSpecialRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_FacePlayer_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_FaceAwayPlayer_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_LockFacingDirection_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_UnlockFacingDirection_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpInPlaceDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpInPlaceDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpInPlaceUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpInPlaceUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpInPlaceLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpInPlaceLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpInPlaceRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpInPlaceRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpInPlaceDownUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpInPlaceDownUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpInPlaceUpDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpInPlaceUpDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpInPlaceLeftRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpInPlaceLeftRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpInPlaceRightLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_JumpInPlaceRightLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_FaceOriginalDirection_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_NurseJoyBowDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_EnableJumpLandingGroundEffect_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_DisableJumpLandingGroundEffect_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_DisableAnimation_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_RestoreAnimation_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_SetInvisible_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_SetVisible_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_EmoteExclamationMark_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_EmoteQuestionMark_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_EmoteHeart_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_RevealTrainer_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_RevealTrainer_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_RockSmashBreak_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_RockSmashBreak_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_RockSmashBreak_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_CutTree_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_CutTree_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_CutTree_Step2(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_SetFixedPriority_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_ClearFixedPriority_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_InitAffineAnim_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_ClearAffineAnim_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_HideReflection_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_ShowReflection_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkDownStartAffine_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkDownStartAffine_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkDownAffine_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkDownAffine_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkLeftAffine_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkLeftAffine_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkRightAffine_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_WalkRightAffine_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieFaceDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieFaceUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieFaceLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieFaceRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroPopWheelieDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroPopWheelieUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroPopWheelieLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroPopWheelieRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroEndWheelieFaceDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroEndWheelieFaceUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroEndWheelieFaceLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroEndWheelieFaceRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_UnusedAcroActionDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_UnusedAcroActionUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_UnusedAcroActionLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_UnusedAcroActionRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Figure8_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Figure8_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieHopFaceDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieHopFaceDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieHopFaceUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieHopFaceUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieHopFaceLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieHopFaceLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieHopFaceRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieHopFaceRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieHopDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieHopDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieHopUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieHopUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieHopLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieHopLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieHopRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieHopRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieJumpDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieJumpDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieJumpUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieJumpUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieJumpLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieJumpLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieJumpRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieJumpRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieInPlaceDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieInPlaceUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieInPlaceLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieInPlaceRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroPopWheelieMoveDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroPopWheelieMoveDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroPopWheelieMoveUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroPopWheelieMoveUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroPopWheelieMoveLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroPopWheelieMoveLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroPopWheelieMoveRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroPopWheelieMoveRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieMoveDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieMoveDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieMoveUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieMoveUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieMoveLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieMoveLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieMoveRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroWheelieMoveRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroEndWheelieMoveDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroEndWheelieMoveDown_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroEndWheelieMoveUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroEndWheelieMoveUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroEndWheelieMoveLeft_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroEndWheelieMoveLeft_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroEndWheelieMoveRight_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_AcroEndWheelieMoveRight_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Levitate_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_StopLevitate_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_DestroyExtraTaskIfAtTop_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_StoreAndLockAnim_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Finish(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_FreeAndUnlockAnim_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_FlyUp_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_FlyUp_Step1(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_Fly_Finish(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_FlyDown_Step0(struct ObjectEvent *, struct Sprite *);
u8 MovementAction_FlyDown_Step1(struct ObjectEvent *, struct Sprite *);

u8 (*const gMovementActionFuncs_FaceDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_FaceUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_FaceLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_FaceRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkSlowDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkSlowUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkSlowLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkSlowRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkNormalDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkNormalUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkNormalLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkNormalRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_Jump2Down[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_Jump2Up[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_Jump2Left[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_Jump2Right[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_Delay1[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_Delay2[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_Delay4[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_Delay8[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_Delay16[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkFastDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkFastUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkFastLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkFastRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceSlowDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceSlowUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceSlowLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceSlowRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceNormalDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceNormalUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceNormalLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceNormalRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceFastDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceFastUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceFastLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceFastRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceFastestDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceFastestUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceFastestLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkInPlaceFastestRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_RideWaterCurrentDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_RideWaterCurrentUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_RideWaterCurrentLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_RideWaterCurrentRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkFastestDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkFastestUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkFastestLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkFastestRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_SlideDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_SlideUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_SlideLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_SlideRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_PlayerRunDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_PlayerRunUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_PlayerRunLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_PlayerRunRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_StartAnimInDirection[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpSpecialDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpSpecialUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpSpecialLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpSpecialRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_FacePlayer[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_FaceAwayPlayer[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_LockFacingDirection[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_UnlockFacingDirection[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpInPlaceDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpInPlaceUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpInPlaceLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpInPlaceRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpInPlaceDownUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpInPlaceUpDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpInPlaceLeftRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_JumpInPlaceRightLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_FaceOriginalDirection[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_NurseJoyBowDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_EnableJumpLandingGroundEffect[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_DisableJumpLandingGroundEffect[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_DisableAnimation[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_RestoreAnimation[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_SetInvisible[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_SetVisible[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_EmoteExclamationMark[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_EmoteQuestionMark[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_EmoteHeart[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_RevealTrainer[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_RockSmashBreak[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_CutTree[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_SetFixedPriority[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_ClearFixedPriority[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_InitAffineAnim[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_ClearAffineAnim[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_HideReflection[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_ShowReflection[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkDownStartAffine[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkDownAffine[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieFaceDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieFaceUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieFaceLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieFaceRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroPopWheelieDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroPopWheelieUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroPopWheelieLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroPopWheelieRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroEndWheelieFaceDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroEndWheelieFaceUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroEndWheelieFaceLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroEndWheelieFaceRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieHopFaceDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieHopFaceUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieHopFaceLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieHopFaceRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieHopDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieHopUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieHopLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieHopRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieJumpDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieJumpUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieJumpLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieJumpRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieInPlaceDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieInPlaceUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieInPlaceLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieInPlaceRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroPopWheelieMoveDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroPopWheelieMoveUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroPopWheelieMoveLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroPopWheelieMoveRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieMoveDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieMoveUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieMoveLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroWheelieMoveRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroEndWheelieMoveDown[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroEndWheelieMoveUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroEndWheelieMoveLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_AcroEndWheelieMoveRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkNormalDiagonalUpLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkNormalDiagonalUpRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkNormalDiagonalDownLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkNormalDiagonalDownRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkSlowDiagonalUpLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkSlowDiagonalUpRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkSlowDiagonalDownLeft[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkSlowDiagonalDownRight[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_StoreAndLockAnim[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_FreeAndUnlockAnim[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkLeftAffine[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_WalkRightAffine[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_Levitate[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_StopLevitate[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_DestroyExtraTaskIfAtTop[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_Figure8[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_FlyUp[])(struct ObjectEvent *, struct Sprite *);
u8 (*const gMovementActionFuncs_FlyDown[])(struct ObjectEvent *, struct Sprite *);

u8 (*const *const gMovementActionFuncs[])(struct ObjectEvent *, struct Sprite *) = {
    [0x0] = gMovementActionFuncs_FaceDown,
    [0x1] = gMovementActionFuncs_FaceUp,
    [0x2] = gMovementActionFuncs_FaceLeft,
    [0x3] = gMovementActionFuncs_FaceRight,
    [0x4] = gMovementActionFuncs_WalkSlowDown,
    [0x5] = gMovementActionFuncs_WalkSlowUp,
    [0x6] = gMovementActionFuncs_WalkSlowLeft,
    [0x7] = gMovementActionFuncs_WalkSlowRight,
    [0x8] = gMovementActionFuncs_WalkNormalDown,
    [0x9] = gMovementActionFuncs_WalkNormalUp,
    [0xA] = gMovementActionFuncs_WalkNormalLeft,
    [0xB] = gMovementActionFuncs_WalkNormalRight,
    [0xC] = gMovementActionFuncs_Jump2Down,
    [0xD] = gMovementActionFuncs_Jump2Up,
    [0xE] = gMovementActionFuncs_Jump2Left,
    [0xF] = gMovementActionFuncs_Jump2Right,
    [0x10] = gMovementActionFuncs_Delay1,
    [0x11] = gMovementActionFuncs_Delay2,
    [0x12] = gMovementActionFuncs_Delay4,
    [0x13] = gMovementActionFuncs_Delay8,
    [0x14] = gMovementActionFuncs_Delay16,
    [0x15] = gMovementActionFuncs_WalkFastDown,
    [0x16] = gMovementActionFuncs_WalkFastUp,
    [0x17] = gMovementActionFuncs_WalkFastLeft,
    [0x18] = gMovementActionFuncs_WalkFastRight,
    [0x19] = gMovementActionFuncs_WalkInPlaceSlowDown,
    [0x1A] = gMovementActionFuncs_WalkInPlaceSlowUp,
    [0x1B] = gMovementActionFuncs_WalkInPlaceSlowLeft,
    [0x1C] = gMovementActionFuncs_WalkInPlaceSlowRight,
    [0x1D] = gMovementActionFuncs_WalkInPlaceNormalDown,
    [0x1E] = gMovementActionFuncs_WalkInPlaceNormalUp,
    [0x1F] = gMovementActionFuncs_WalkInPlaceNormalLeft,
    [0x20] = gMovementActionFuncs_WalkInPlaceNormalRight,
    [0x21] = gMovementActionFuncs_WalkInPlaceFastDown,
    [0x22] = gMovementActionFuncs_WalkInPlaceFastUp,
    [0x23] = gMovementActionFuncs_WalkInPlaceFastLeft,
    [0x24] = gMovementActionFuncs_WalkInPlaceFastRight,
    [0x25] = gMovementActionFuncs_WalkInPlaceFastestDown,
    [0x26] = gMovementActionFuncs_WalkInPlaceFastestUp,
    [0x27] = gMovementActionFuncs_WalkInPlaceFastestLeft,
    [0x28] = gMovementActionFuncs_WalkInPlaceFastestRight,
    [0x29] = gMovementActionFuncs_RideWaterCurrentDown,
    [0x2A] = gMovementActionFuncs_RideWaterCurrentUp,
    [0x2B] = gMovementActionFuncs_RideWaterCurrentLeft,
    [0x2C] = gMovementActionFuncs_RideWaterCurrentRight,
    [0x2D] = gMovementActionFuncs_WalkFastestDown,
    [0x2E] = gMovementActionFuncs_WalkFastestUp,
    [0x2F] = gMovementActionFuncs_WalkFastestLeft,
    [0x30] = gMovementActionFuncs_WalkFastestRight,
    [0x31] = gMovementActionFuncs_SlideDown,
    [0x32] = gMovementActionFuncs_SlideUp,
    [0x33] = gMovementActionFuncs_SlideLeft,
    [0x34] = gMovementActionFuncs_SlideRight,
    [0x35] = gMovementActionFuncs_PlayerRunDown,
    [0x36] = gMovementActionFuncs_PlayerRunUp,
    [0x37] = gMovementActionFuncs_PlayerRunLeft,
    [0x38] = gMovementActionFuncs_PlayerRunRight,
    [0x39] = gMovementActionFuncs_StartAnimInDirection,
    [0x3A] = gMovementActionFuncs_JumpSpecialDown,
    [0x3B] = gMovementActionFuncs_JumpSpecialUp,
    [0x3C] = gMovementActionFuncs_JumpSpecialLeft,
    [0x3D] = gMovementActionFuncs_JumpSpecialRight,
    [0x3E] = gMovementActionFuncs_FacePlayer,
    [0x3F] = gMovementActionFuncs_FaceAwayPlayer,
    [0x40] = gMovementActionFuncs_LockFacingDirection,
    [0x41] = gMovementActionFuncs_UnlockFacingDirection,
    [0x42] = gMovementActionFuncs_JumpDown,
    [0x43] = gMovementActionFuncs_JumpUp,
    [0x44] = gMovementActionFuncs_JumpLeft,
    [0x45] = gMovementActionFuncs_JumpRight,
    [0x46] = gMovementActionFuncs_JumpInPlaceDown,
    [0x47] = gMovementActionFuncs_JumpInPlaceUp,
    [0x48] = gMovementActionFuncs_JumpInPlaceLeft,
    [0x49] = gMovementActionFuncs_JumpInPlaceRight,
    [0x4A] = gMovementActionFuncs_JumpInPlaceDownUp,
    [0x4B] = gMovementActionFuncs_JumpInPlaceUpDown,
    [0x4C] = gMovementActionFuncs_JumpInPlaceLeftRight,
    [0x4D] = gMovementActionFuncs_JumpInPlaceRightLeft,
    [0x4E] = gMovementActionFuncs_FaceOriginalDirection,
    [0x4F] = gMovementActionFuncs_NurseJoyBowDown,
    [0x50] = gMovementActionFuncs_EnableJumpLandingGroundEffect,
    [0x51] = gMovementActionFuncs_DisableJumpLandingGroundEffect,
    [0x52] = gMovementActionFuncs_DisableAnimation,
    [0x53] = gMovementActionFuncs_RestoreAnimation,
    [0x54] = gMovementActionFuncs_SetInvisible,
    [0x55] = gMovementActionFuncs_SetVisible,
    [0x56] = gMovementActionFuncs_EmoteExclamationMark,
    [0x57] = gMovementActionFuncs_EmoteQuestionMark,
    [0x58] = gMovementActionFuncs_EmoteHeart,
    [0x59] = gMovementActionFuncs_RevealTrainer,
    [0x5A] = gMovementActionFuncs_RockSmashBreak,
    [0x5B] = gMovementActionFuncs_CutTree,
    [0x5C] = gMovementActionFuncs_SetFixedPriority,
    [0x5D] = gMovementActionFuncs_ClearFixedPriority,
    [0x5E] = gMovementActionFuncs_InitAffineAnim,
    [0x5F] = gMovementActionFuncs_ClearAffineAnim,
    [0x60] = gMovementActionFuncs_HideReflection,
    [0x61] = gMovementActionFuncs_ShowReflection,
    [0x62] = gMovementActionFuncs_WalkDownStartAffine,
    [0x63] = gMovementActionFuncs_WalkDownAffine,
    [0x64] = gMovementActionFuncs_AcroWheelieFaceDown,
    [0x65] = gMovementActionFuncs_AcroWheelieFaceUp,
    [0x66] = gMovementActionFuncs_AcroWheelieFaceLeft,
    [0x67] = gMovementActionFuncs_AcroWheelieFaceRight,
    [0x68] = gMovementActionFuncs_AcroPopWheelieDown,
    [0x69] = gMovementActionFuncs_AcroPopWheelieUp,
    [0x6A] = gMovementActionFuncs_AcroPopWheelieLeft,
    [0x6B] = gMovementActionFuncs_AcroPopWheelieRight,
    [0x6C] = gMovementActionFuncs_AcroEndWheelieFaceDown,
    [0x6D] = gMovementActionFuncs_AcroEndWheelieFaceUp,
    [0x6E] = gMovementActionFuncs_AcroEndWheelieFaceLeft,
    [0x6F] = gMovementActionFuncs_AcroEndWheelieFaceRight,
    [0x70] = gMovementActionFuncs_AcroWheelieHopFaceDown,
    [0x71] = gMovementActionFuncs_AcroWheelieHopFaceUp,
    [0x72] = gMovementActionFuncs_AcroWheelieHopFaceLeft,
    [0x73] = gMovementActionFuncs_AcroWheelieHopFaceRight,
    [0x74] = gMovementActionFuncs_AcroWheelieHopDown,
    [0x75] = gMovementActionFuncs_AcroWheelieHopUp,
    [0x76] = gMovementActionFuncs_AcroWheelieHopLeft,
    [0x77] = gMovementActionFuncs_AcroWheelieHopRight,
    [0x78] = gMovementActionFuncs_AcroWheelieJumpDown,
    [0x79] = gMovementActionFuncs_AcroWheelieJumpUp,
    [0x7A] = gMovementActionFuncs_AcroWheelieJumpLeft,
    [0x7B] = gMovementActionFuncs_AcroWheelieJumpRight,
    [0x7C] = gMovementActionFuncs_AcroWheelieInPlaceDown,
    [0x7D] = gMovementActionFuncs_AcroWheelieInPlaceUp,
    [0x7E] = gMovementActionFuncs_AcroWheelieInPlaceLeft,
    [0x7F] = gMovementActionFuncs_AcroWheelieInPlaceRight,
    [0x80] = gMovementActionFuncs_AcroPopWheelieMoveDown,
    [0x81] = gMovementActionFuncs_AcroPopWheelieMoveUp,
    [0x82] = gMovementActionFuncs_AcroPopWheelieMoveLeft,
    [0x83] = gMovementActionFuncs_AcroPopWheelieMoveRight,
    [0x84] = gMovementActionFuncs_AcroWheelieMoveDown,
    [0x85] = gMovementActionFuncs_AcroWheelieMoveUp,
    [0x86] = gMovementActionFuncs_AcroWheelieMoveLeft,
    [0x87] = gMovementActionFuncs_AcroWheelieMoveRight,
    [0x88] = gMovementActionFuncs_AcroEndWheelieMoveDown,
    [0x89] = gMovementActionFuncs_AcroEndWheelieMoveUp,
    [0x8A] = gMovementActionFuncs_AcroEndWheelieMoveLeft,
    [0x8B] = gMovementActionFuncs_AcroEndWheelieMoveRight,
    [0x8C] = gMovementActionFuncs_WalkNormalDiagonalUpLeft,
    [0x8D] = gMovementActionFuncs_WalkNormalDiagonalUpRight,
    [0x8E] = gMovementActionFuncs_WalkNormalDiagonalDownLeft,
    [0x8F] = gMovementActionFuncs_WalkNormalDiagonalDownRight,
    [0x90] = gMovementActionFuncs_WalkSlowDiagonalUpLeft,
    [0x91] = gMovementActionFuncs_WalkSlowDiagonalUpRight,
    [0x92] = gMovementActionFuncs_WalkSlowDiagonalDownLeft,
    [0x93] = gMovementActionFuncs_WalkSlowDiagonalDownRight,
    [0x94] = gMovementActionFuncs_StoreAndLockAnim,
    [0x95] = gMovementActionFuncs_FreeAndUnlockAnim,
    [0x96] = gMovementActionFuncs_WalkLeftAffine,
    [0x97] = gMovementActionFuncs_WalkRightAffine,
    [0x98] = gMovementActionFuncs_Levitate,
    [0x99] = gMovementActionFuncs_StopLevitate,
    [0x9A] = gMovementActionFuncs_DestroyExtraTaskIfAtTop,
    [0x9B] = gMovementActionFuncs_Figure8,
    [0x9C] = gMovementActionFuncs_FlyUp,
    [0x9D] = gMovementActionFuncs_FlyDown,
};

u8 (*const gMovementActionFuncs_FaceDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FaceDown_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_FaceUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FaceUp_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_FaceLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FaceLeft_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_FaceRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FaceRight_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gUnknown_0850DEE8[])(u8) = {
    GetMoveDirectionAnimNum,
    GetMoveDirectionFastAnimNum,
    GetMoveDirectionFastAnimNum,
    GetMoveDirectionFasterAnimNum,
    GetMoveDirectionFastestAnimNum,
};

u8 (*const gMovementActionFuncs_WalkSlowDiagonalUpLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowDiagonalUpLeft_Step0,
    MovementAction_WalkSlowDiagonalUpLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkSlowDiagonalUpRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowDiagonalUpRight_Step0,
    MovementAction_WalkSlowDiagonalUpRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkSlowDiagonalDownLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowDiagonalDownLeft_Step0,
    MovementAction_WalkSlowDiagonalDownLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkSlowDiagonalDownRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowDiagonalDownRight_Step0,
    MovementAction_WalkSlowDiagonalDownRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkSlowDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowDown_Step0,
    MovementAction_WalkSlowDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkSlowUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowUp_Step0,
    MovementAction_WalkSlowUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkSlowLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowLeft_Step0,
    MovementAction_WalkSlowLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkSlowRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkSlowRight_Step0,
    MovementAction_WalkSlowRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkNormalDiagonalUpLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkNormalDiagonalUpLeft_Step0,
    MovementAction_WalkNormalDiagonalUpLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkNormalDiagonalUpRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkNormalDiagonalUpRight_Step0,
    MovementAction_WalkNormalDiagonalUpRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkNormalDiagonalDownLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkNormalDiagonalDownLeft_Step0,
    MovementAction_WalkNormalDiagonalDownLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkNormalDiagonalDownRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkNormalDiagonalDownRight_Step0,
    MovementAction_WalkNormalDiagonalDownRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkNormalDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkNormalDown_Step0,
    MovementAction_WalkNormalDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkNormalUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkNormalUp_Step0,
    MovementAction_WalkNormalUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkNormalLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkNormalLeft_Step0,
    MovementAction_WalkNormalLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkNormalRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkNormalRight_Step0,
    MovementAction_WalkNormalRight_Step1,
    MovementAction_PauseSpriteAnim,
};

const s16 gUnknown_0850DFBC[] = {0, 1, 1};
const s16 gUnknown_0850DFC2[] = {0, 0, 1};

u8 (*const gMovementActionFuncs_Jump2Down[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Jump2Down_Step0,
    MovementAction_Jump2Down_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_Jump2Up[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Jump2Up_Step0,
    MovementAction_Jump2Up_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_Jump2Left[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Jump2Left_Step0,
    MovementAction_Jump2Left_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_Jump2Right[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Jump2Right_Step0,
    MovementAction_Jump2Right_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_Delay1[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Delay1_Step0,
    MovementAction_Delay_Step1,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_Delay2[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Delay2_Step0,
    MovementAction_Delay_Step1,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_Delay4[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Delay4_Step0,
    MovementAction_Delay_Step1,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_Delay8[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Delay8_Step0,
    MovementAction_Delay_Step1,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_Delay16[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Delay16_Step0,
    MovementAction_Delay_Step1,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_WalkFastDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkFastDown_Step0,
    MovementAction_WalkFastDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkFastUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkFastUp_Step0,
    MovementAction_WalkFastUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkFastLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkFastLeft_Step0,
    MovementAction_WalkFastLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkFastRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkFastRight_Step0,
    MovementAction_WalkFastRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceSlowDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceSlowDown_Step0,
    MovementAction_WalkInPlaceSlow_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceSlowUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceSlowUp_Step0,
    MovementAction_WalkInPlaceSlow_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceSlowLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceSlowLeft_Step0,
    MovementAction_WalkInPlaceSlow_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceSlowRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceSlowRight_Step0,
    MovementAction_WalkInPlaceSlow_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceNormalDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceNormalDown_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceNormalUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceNormalUp_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceNormalLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceNormalLeft_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceNormalRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceNormalRight_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceFastDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastDown_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceFastUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastUp_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceFastLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastLeft_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceFastRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastRight_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceFastestDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastestDown_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceFastestUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastestUp_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceFastestLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastestLeft_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkInPlaceFastestRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkInPlaceFastestRight_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_RideWaterCurrentDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RideWaterCurrentDown_Step0,
    MovementAction_RideWaterCurrentDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_RideWaterCurrentUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RideWaterCurrentUp_Step0,
    MovementAction_RideWaterCurrentUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_RideWaterCurrentLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RideWaterCurrentLeft_Step0,
    MovementAction_RideWaterCurrentLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_RideWaterCurrentRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RideWaterCurrentRight_Step0,
    MovementAction_RideWaterCurrentRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkFastestDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkFastestDown_Step0,
    MovementAction_WalkFastestDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkFastestUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkFastestUp_Step0,
    MovementAction_WalkFastestUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkFastestLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkFastestLeft_Step0,
    MovementAction_WalkFastestLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkFastestRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkFastestRight_Step0,
    MovementAction_WalkFastestRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_SlideDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_SlideDown_Step0,
    MovementAction_SlideDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_SlideUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_SlideUp_Step0,
    MovementAction_SlideUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_SlideLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_SlideLeft_Step0,
    MovementAction_SlideLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_SlideRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_SlideRight_Step0,
    MovementAction_SlideRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_PlayerRunDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_PlayerRunDown_Step0,
    MovementAction_PlayerRunDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_PlayerRunUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_PlayerRunUp_Step0,
    MovementAction_PlayerRunUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_PlayerRunLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_PlayerRunLeft_Step0,
    MovementAction_PlayerRunLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_PlayerRunRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_PlayerRunRight_Step0,
    MovementAction_PlayerRunRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_StartAnimInDirection[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_StartAnimInDirection_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpSpecialDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpSpecialDown_Step0,
    MovementAction_JumpSpecialDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpSpecialUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpSpecialUp_Step0,
    MovementAction_JumpSpecialUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpSpecialLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpSpecialLeft_Step0,
    MovementAction_JumpSpecialLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpSpecialRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpSpecialRight_Step0,
    MovementAction_JumpSpecialRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_FacePlayer[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FacePlayer_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_FaceAwayPlayer[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FaceAwayPlayer_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_LockFacingDirection[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_LockFacingDirection_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_UnlockFacingDirection[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_UnlockFacingDirection_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpDown_Step0,
    MovementAction_JumpDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpUp_Step0,
    MovementAction_JumpUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpLeft_Step0,
    MovementAction_JumpLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpRight_Step0,
    MovementAction_JumpRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpInPlaceDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpInPlaceDown_Step0,
    MovementAction_JumpInPlaceDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpInPlaceUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpInPlaceUp_Step0,
    MovementAction_JumpInPlaceUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpInPlaceLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpInPlaceLeft_Step0,
    MovementAction_JumpInPlaceLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpInPlaceRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpInPlaceRight_Step0,
    MovementAction_JumpInPlaceRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpInPlaceDownUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpInPlaceDownUp_Step0,
    MovementAction_JumpInPlaceDownUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpInPlaceUpDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpInPlaceUpDown_Step0,
    MovementAction_JumpInPlaceUpDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpInPlaceLeftRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpInPlaceLeftRight_Step0,
    MovementAction_JumpInPlaceLeftRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_JumpInPlaceRightLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_JumpInPlaceRightLeft_Step0,
    MovementAction_JumpInPlaceRightLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_FaceOriginalDirection[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FaceOriginalDirection_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_NurseJoyBowDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_NurseJoyBowDown_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_EnableJumpLandingGroundEffect[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_EnableJumpLandingGroundEffect_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_DisableJumpLandingGroundEffect[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_DisableJumpLandingGroundEffect_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_DisableAnimation[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_DisableAnimation_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_RestoreAnimation[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RestoreAnimation_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_SetInvisible[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_SetInvisible_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_SetVisible[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_SetVisible_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_EmoteExclamationMark[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_EmoteExclamationMark_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_EmoteQuestionMark[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_EmoteQuestionMark_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_EmoteHeart[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_EmoteHeart_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_RevealTrainer[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RevealTrainer_Step0,
    MovementAction_RevealTrainer_Step1,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_RockSmashBreak[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_RockSmashBreak_Step0,
    MovementAction_RockSmashBreak_Step1,
    MovementAction_RockSmashBreak_Step2,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_CutTree[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_CutTree_Step0,
    MovementAction_CutTree_Step1,
    MovementAction_CutTree_Step2,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_SetFixedPriority[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_SetFixedPriority_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_ClearFixedPriority[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_ClearFixedPriority_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_InitAffineAnim[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_InitAffineAnim_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_ClearAffineAnim[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_ClearAffineAnim_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_HideReflection[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_HideReflection_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_ShowReflection[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_ShowReflection_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_WalkDownStartAffine[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkDownStartAffine_Step0,
    MovementAction_WalkDownStartAffine_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkDownAffine[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkDownAffine_Step0,
    MovementAction_WalkDownAffine_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkLeftAffine[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkLeftAffine_Step0,
    MovementAction_WalkLeftAffine_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_WalkRightAffine[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_WalkRightAffine_Step0,
    MovementAction_WalkRightAffine_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieFaceDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieFaceDown_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieFaceUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieFaceUp_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieFaceLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieFaceLeft_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieFaceRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieFaceRight_Step0,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroPopWheelieDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroPopWheelieDown_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroPopWheelieUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroPopWheelieUp_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroPopWheelieLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroPopWheelieLeft_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroPopWheelieRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroPopWheelieRight_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroEndWheelieFaceDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroEndWheelieFaceDown_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroEndWheelieFaceUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroEndWheelieFaceUp_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroEndWheelieFaceLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroEndWheelieFaceLeft_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroEndWheelieFaceRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroEndWheelieFaceRight_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroUnusedAcroActionDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_UnusedAcroActionDown_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroUnusedAcroActionUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_UnusedAcroActionUp_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroUnusedAcroActionLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_UnusedAcroActionLeft_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroUnusedAcroActionRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_UnusedAcroActionRight_Step0,
    MovementAction_WaitSpriteAnim,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_Figure8[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Figure8_Step0,
    MovementAction_Figure8_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieHopFaceDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieHopFaceDown_Step0,
    MovementAction_AcroWheelieHopFaceDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieHopFaceUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieHopFaceUp_Step0,
    MovementAction_AcroWheelieHopFaceUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieHopFaceLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieHopFaceLeft_Step0,
    MovementAction_AcroWheelieHopFaceLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieHopFaceRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieHopFaceRight_Step0,
    MovementAction_AcroWheelieHopFaceRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieHopDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieHopDown_Step0,
    MovementAction_AcroWheelieHopDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieHopUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieHopUp_Step0,
    MovementAction_AcroWheelieHopUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieHopLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieHopLeft_Step0,
    MovementAction_AcroWheelieHopLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieHopRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieHopRight_Step0,
    MovementAction_AcroWheelieHopRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieJumpDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieJumpDown_Step0,
    MovementAction_AcroWheelieJumpDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieJumpUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieJumpUp_Step0,
    MovementAction_AcroWheelieJumpUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieJumpLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieJumpLeft_Step0,
    MovementAction_AcroWheelieJumpLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieJumpRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieJumpRight_Step0,
    MovementAction_AcroWheelieJumpRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieInPlaceDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieInPlaceDown_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieInPlaceUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieInPlaceUp_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieInPlaceLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieInPlaceLeft_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieInPlaceRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieInPlaceRight_Step0,
    MovementAction_WalkInPlace_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroPopWheelieMoveDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroPopWheelieMoveDown_Step0,
    MovementAction_AcroPopWheelieMoveDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroPopWheelieMoveUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroPopWheelieMoveUp_Step0,
    MovementAction_AcroPopWheelieMoveUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroPopWheelieMoveLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroPopWheelieMoveLeft_Step0,
    MovementAction_AcroPopWheelieMoveLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroPopWheelieMoveRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroPopWheelieMoveRight_Step0,
    MovementAction_AcroPopWheelieMoveRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieMoveDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieMoveDown_Step0,
    MovementAction_AcroWheelieMoveDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieMoveUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieMoveUp_Step0,
    MovementAction_AcroWheelieMoveUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieMoveLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieMoveLeft_Step0,
    MovementAction_AcroWheelieMoveLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroWheelieMoveRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroWheelieMoveRight_Step0,
    MovementAction_AcroWheelieMoveRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroEndWheelieMoveDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroEndWheelieMoveDown_Step0,
    MovementAction_AcroEndWheelieMoveDown_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroEndWheelieMoveUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroEndWheelieMoveUp_Step0,
    MovementAction_AcroEndWheelieMoveUp_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroEndWheelieMoveLeft[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroEndWheelieMoveLeft_Step0,
    MovementAction_AcroEndWheelieMoveLeft_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_AcroEndWheelieMoveRight[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_AcroEndWheelieMoveRight_Step0,
    MovementAction_AcroEndWheelieMoveRight_Step1,
    MovementAction_PauseSpriteAnim,
};

u8 (*const gMovementActionFuncs_Levitate[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_Levitate_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_StopLevitate[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_StopLevitate_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_DestroyExtraTaskIfAtTop[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_DestroyExtraTaskIfAtTop_Step0,
    MovementAction_Finish,
};
# 1094 "src/event_object_movement.c" 2



static void ClearObjectEvent(struct ObjectEvent *objectEvent)
{
    *objectEvent = (struct ObjectEvent){};
    objectEvent->localId = 0xFF;
    objectEvent->mapNum = 0xFF;
    objectEvent->mapGroup = 0xFF;
    objectEvent->movementActionId = 0xFF;
}

static void ClearAllObjectEvents(void)
{
    u8 i;

    for (i = 0; i < 16; i++)
        ClearObjectEvent(&gObjectEvents[i]);
}

void ResetObjectEvents(void)
{
    ClearLinkPlayerObjectEvents();
    ClearAllObjectEvents();
    ClearPlayerAvatarInfo();
    CreateReflectionEffectSprites();
}

static void CreateReflectionEffectSprites(void)
{
    u8 spriteId = CreateSpriteAtEnd(gFieldEffectObjectTemplatePointers[21], 0, 0, 31);
    gSprites[spriteId].oam.affineMode = 1;
    InitSpriteAffineAnim(&gSprites[spriteId]);
    StartSpriteAffineAnim(&gSprites[spriteId], 0);
    gSprites[spriteId].invisible = 1;

    spriteId = CreateSpriteAtEnd(gFieldEffectObjectTemplatePointers[21], 0, 0, 31);
    gSprites[spriteId].oam.affineMode = 1;
    InitSpriteAffineAnim(&gSprites[spriteId]);
    StartSpriteAffineAnim(&gSprites[spriteId], 1);
    gSprites[spriteId].invisible = 1;
}

u8 GetFirstInactiveObjectEventId(void)
{
    u8 i;
    for (i = 0; i < 16; i++)
    {
        if (!gObjectEvents[i].active)
            break;
    }

    return i;
}

u8 GetObjectEventIdByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroupId)
{
    if (localId < 0xFF)
    {
        return GetObjectEventIdByLocalIdAndMapInternal(localId, mapNum, mapGroupId);
    }
    return GetObjectEventIdByLocalId(localId);
}

bool8 TryGetObjectEventIdByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroupId, u8 *objectEventId)
{
    *objectEventId = GetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroupId);
    if (*objectEventId == 16)
        return 1;
    else
        return 0;
}

u8 GetObjectEventIdByXY(s16 x, s16 y)
{
    u8 i;
    for (i = 0; i < 16; i++)
    {
        if (gObjectEvents[i].active && gObjectEvents[i].currentCoords.x == x && gObjectEvents[i].currentCoords.y == y)
            break;
    }

    return i;
}

static u8 GetObjectEventIdByLocalIdAndMapInternal(u8 localId, u8 mapNum, u8 mapGroupId)
{
    u8 i;
    for (i = 0; i < 16; i++)
    {
        if (gObjectEvents[i].active && gObjectEvents[i].localId == localId && gObjectEvents[i].mapNum == mapNum && gObjectEvents[i].mapGroup == mapGroupId)
            return i;
    }

    return 16;
}

static u8 GetObjectEventIdByLocalId(u8 localId)
{
    u8 i;
    for (i = 0; i < 16; i++)
    {
        if (gObjectEvents[i].active && gObjectEvents[i].localId == localId)
            return i;
    }

    return 16;
}

static u8 InitObjectEventStateFromTemplate(struct ObjectEventTemplate *template, u8 mapNum, u8 mapGroup)
{
    struct ObjectEvent *objectEvent;
    u8 objectEventId;
    s16 x;
    s16 y;

    if (GetAvailableObjectEventId(template->localId, mapNum, mapGroup, &objectEventId))
        return 16;
    objectEvent = &gObjectEvents[objectEventId];
    ClearObjectEvent(objectEvent);
    x = template->x + 7;
    y = template->y + 7;
    objectEvent->active = 1;
    objectEvent->triggerGroundEffectsOnMove = 1;
    objectEvent->graphicsId = template->graphicsId;
    objectEvent->movementType = template->movementType;
    objectEvent->localId = template->localId;
    objectEvent->mapNum = mapNum;
    objectEvent++; objectEvent--;
    objectEvent->mapGroup = mapGroup;
    objectEvent->initialCoords.x = x;
    objectEvent->initialCoords.y = y;
    objectEvent->currentCoords.x = x;
    objectEvent->currentCoords.y = y;
    objectEvent->previousCoords.x = x;
    objectEvent->previousCoords.y = y;
    objectEvent->currentElevation = template->elevation;
    objectEvent->previousElevation = template->elevation;
    objectEvent->range.as_nybbles.x = template->movementRangeX;
    objectEvent->range.as_nybbles.y = template->movementRangeY;
    objectEvent->trainerType = template->trainerType;
    objectEvent->trainerRange_berryTreeId = template->trainerRange_berryTreeId;
    objectEvent->previousMovementDirection = gInitialMovementTypeFacingDirections[template->movementType];
    SetObjectEventDirection(objectEvent, objectEvent->previousMovementDirection);
    SetObjectEventDynamicGraphicsId(objectEvent);

    asm("":::"r5", "r6");

    if (gRangedMovementTypes[objectEvent->movementType])
    {
        if (objectEvent->range.as_nybbles.x == 0)
        {
            objectEvent->range.as_nybbles.x++;
        }
        if (objectEvent->range.as_nybbles.y == 0)
        {
            objectEvent->range.as_nybbles.y++;
        }
    }
    return objectEventId;
}

u8 Unref_TryInitLocalObjectEvent(u8 localId)
{
    u8 i;
    u8 objectEventCount;
    struct ObjectEventTemplate *template;

    if (gMapHeader.events != ((void *)0))
    {
        if (InBattlePyramid())
        {
            objectEventCount = GetNumBattlePyramidObjectEvents();
        }
        else if (InTrainerHill())
        {
            objectEventCount = 2;
        }
        else
        {
            objectEventCount = gMapHeader.events->objectEventCount;
        }
        for (i = 0; i < objectEventCount; i++)
        {
            template = &gSaveBlock1Ptr->objectEventTemplates[i];
            if (template->localId == localId && !FlagGet(template->flagId))
            {
                return InitObjectEventStateFromTemplate(template, gSaveBlock1Ptr->location.mapNum, gSaveBlock1Ptr->location.mapGroup);
            }
        }
    }
    return 16;
}

static bool8 GetAvailableObjectEventId(u16 localId, u8 mapNum, u8 mapGroup, u8 *objectEventId)





{
    u8 i = 0;

    for (i = 0; i < 16; i++)
    {
        if (!gObjectEvents[i].active)
            break;
        if (gObjectEvents[i].localId == localId && gObjectEvents[i].mapNum == mapNum && gObjectEvents[i].mapGroup == mapGroup)
            return 1;
    }
    if (i >= 16)
        return 1;
    *objectEventId = i;
    do
    {
        if (gObjectEvents[i].active && gObjectEvents[i].localId == localId && gObjectEvents[i].mapNum == mapNum && gObjectEvents[i].mapGroup == mapGroup)
            return 1;
        i++;
    } while (i < 16);
    return 0;
}

static void RemoveObjectEvent(struct ObjectEvent *objectEvent)
{
    objectEvent->active = 0;
    RemoveObjectEventInternal(objectEvent);
}

void RemoveObjectEventByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 objectEventId;
    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        FlagSet(GetObjectEventFlagIdByObjectEventId(objectEventId));
        RemoveObjectEvent(&gObjectEvents[objectEventId]);
    }
}

static void RemoveObjectEventInternal(struct ObjectEvent *objectEvent)
{
    struct SpriteFrameImage image;
    image.size = GetObjectEventGraphicsInfo(objectEvent->graphicsId)->size;
    gSprites[objectEvent->spriteId].images = &image;
    DestroySprite(&gSprites[objectEvent->spriteId]);
}

void RemoveAllObjectEventsExceptPlayer(void)
{
    u8 i;

    for (i = 0; i < 16; i++)
    {
        if (i != gPlayerAvatar.objectEventId)
            RemoveObjectEvent(&gObjectEvents[i]);
    }
}

static u8 TrySetupObjectEventSprite(struct ObjectEventTemplate *objectEventTemplate, struct SpriteTemplate *spriteTemplate, u8 mapNum, u8 mapGroup, s16 cameraX, s16 cameraY)
{
    u8 spriteId;
    u8 paletteSlot;
    u8 objectEventId;
    struct Sprite *sprite;
    struct ObjectEvent *objectEvent;
    const struct ObjectEventGraphicsInfo *graphicsInfo;

    objectEventId = InitObjectEventStateFromTemplate(objectEventTemplate, mapNum, mapGroup);
    if (objectEventId == 16)
        return 16;

    objectEvent = &gObjectEvents[objectEventId];
    graphicsInfo = GetObjectEventGraphicsInfo(objectEvent->graphicsId);
    paletteSlot = graphicsInfo->paletteSlot;
    if (paletteSlot == 0)
    {
        LoadPlayerObjectReflectionPalette(graphicsInfo->paletteTag1, 0);
    }
    else if (paletteSlot == 10)
    {
        LoadSpecialObjectReflectionPalette(graphicsInfo->paletteTag1, 10);
    }
    else if (paletteSlot >= 16)
    {
        paletteSlot -= 16;
        sub_808EAB0(graphicsInfo->paletteTag1, paletteSlot);
    }

    if (objectEvent->movementType == 0x4C)
        objectEvent->invisible = 1;

    *(u16 *)&spriteTemplate->paletteTag = 0xFFFF;
    spriteId = CreateSprite(spriteTemplate, 0, 0, 0);
    if (spriteId == 64)
    {
        gObjectEvents[objectEventId].active = 0;
        return 16;
    }

    sprite = &gSprites[spriteId];
    sub_8092FF0(objectEvent->currentCoords.x + cameraX, objectEvent->currentCoords.y + cameraY, &sprite->pos1.x, &sprite->pos1.y);
    sprite->centerToCornerVecX = -(graphicsInfo->width >> 1);
    sprite->centerToCornerVecY = -(graphicsInfo->height >> 1);
    sprite->pos1.x += 8;
    sprite->pos1.y += 16 + sprite->centerToCornerVecY;
    sprite->oam.paletteNum = paletteSlot;
    sprite->coordOffsetEnabled = 1;
    sprite->data[0] = objectEventId;
    objectEvent->spriteId = spriteId;
    objectEvent->inanimate = graphicsInfo->inanimate;
    if (!objectEvent->inanimate)
        StartSpriteAnim(sprite, GetFaceDirectionAnimNum(objectEvent->facingDirection));

    SetObjectSubpriorityByZCoord(objectEvent->previousElevation, sprite, 1);
    UpdateObjectEventVisibility(objectEvent, sprite);
    return objectEventId;
}

static u8 TrySpawnObjectEventTemplate(struct ObjectEventTemplate *objectEventTemplate, u8 mapNum, u8 mapGroup, s16 cameraX, s16 cameraY)
{
    u8 objectEventId;
    struct SpriteTemplate spriteTemplate;
    struct SpriteFrameImage spriteFrameImage;
    const struct ObjectEventGraphicsInfo *graphicsInfo;
    const struct SubspriteTable *subspriteTables = ((void *)0);

    graphicsInfo = GetObjectEventGraphicsInfo(objectEventTemplate->graphicsId);
    MakeObjectTemplateFromObjectEventTemplate(objectEventTemplate, &spriteTemplate, &subspriteTables);
    spriteFrameImage.size = graphicsInfo->size;
    spriteTemplate.images = &spriteFrameImage;
    objectEventId = TrySetupObjectEventSprite(objectEventTemplate, &spriteTemplate, mapNum, mapGroup, cameraX, cameraY);
    if (objectEventId == 16)
        return 16;

    gSprites[gObjectEvents[objectEventId].spriteId].images = graphicsInfo->images;
    if (subspriteTables)
        SetSubspriteTables(&gSprites[gObjectEvents[objectEventId].spriteId], subspriteTables);

    return objectEventId;
}

u8 SpawnSpecialObjectEvent(struct ObjectEventTemplate *objectEventTemplate)
{
    s16 cameraX;
    s16 cameraY;

    GetObjectEventMovingCameraOffset(&cameraX, &cameraY);
    return TrySpawnObjectEventTemplate(objectEventTemplate, gSaveBlock1Ptr->location.mapNum, gSaveBlock1Ptr->location.mapGroup, cameraX, cameraY);
}

u8 SpawnSpecialObjectEventParameterized(u8 graphicsId, u8 movementBehavior, u8 localId, s16 x, s16 y, u8 z)
{
    struct ObjectEventTemplate objectEventTemplate;

    x -= 7;
    y -= 7;
    objectEventTemplate.localId = localId;
    objectEventTemplate.graphicsId = graphicsId;
    objectEventTemplate.inConnection = 0;
    objectEventTemplate.x = x;
    objectEventTemplate.y = y;
    objectEventTemplate.elevation = z;
    objectEventTemplate.movementType = movementBehavior;
    objectEventTemplate.movementRangeX = 0;
    objectEventTemplate.movementRangeY = 0;
    objectEventTemplate.trainerType = 0;
    objectEventTemplate.trainerRange_berryTreeId = 0;
    return SpawnSpecialObjectEvent(&objectEventTemplate);
}

u8 TrySpawnObjectEvent(u8 localId, u8 mapNum, u8 mapGroup)
{
    struct ObjectEventTemplate *objectEventTemplate;
    s16 cameraX, cameraY;

    objectEventTemplate = GetObjectEventTemplateByLocalIdAndMap(localId, mapNum, mapGroup);
    if (!objectEventTemplate)
        return 16;

    GetObjectEventMovingCameraOffset(&cameraX, &cameraY);
    return TrySpawnObjectEventTemplate(objectEventTemplate, mapNum, mapGroup, cameraX, cameraY);
}

static void MakeObjectTemplateFromObjectEventGraphicsInfo(u16 graphicsId, void (*callback)(struct Sprite *), struct SpriteTemplate *spriteTemplate, const struct SubspriteTable **subspriteTables)
{
    const struct ObjectEventGraphicsInfo *graphicsInfo = GetObjectEventGraphicsInfo(graphicsId);

    spriteTemplate->tileTag = graphicsInfo->tileTag;
    spriteTemplate->paletteTag = graphicsInfo->paletteTag1;
    spriteTemplate->oam = graphicsInfo->oam;
    spriteTemplate->anims = graphicsInfo->anims;
    spriteTemplate->images = graphicsInfo->images;
    spriteTemplate->affineAnims = graphicsInfo->affineAnims;
    spriteTemplate->callback = callback;
    *subspriteTables = graphicsInfo->subspriteTables;
}

static void MakeObjectTemplateFromObjectEventGraphicsInfoWithCallbackIndex(u16 graphicsId, u16 callbackIndex, struct SpriteTemplate *spriteTemplate, const struct SubspriteTable **subspriteTables)
{
    MakeObjectTemplateFromObjectEventGraphicsInfo(graphicsId, sMovementTypeCallbacks[callbackIndex], spriteTemplate, subspriteTables);
}

static void MakeObjectTemplateFromObjectEventTemplate(struct ObjectEventTemplate *objectEventTemplate, struct SpriteTemplate *spriteTemplate, const struct SubspriteTable **subspriteTables)
{
    MakeObjectTemplateFromObjectEventGraphicsInfoWithCallbackIndex(objectEventTemplate->graphicsId, objectEventTemplate->movementType, spriteTemplate, subspriteTables);
}

u8 AddPseudoObjectEvent(u16 graphicsId, void (*callback)(struct Sprite *), s16 x, s16 y, u8 subpriority)
{
    struct SpriteTemplate *spriteTemplate;
    const struct SubspriteTable *subspriteTables;
    struct Sprite *sprite;
    u8 spriteId;

    spriteTemplate = Alloc(sizeof(struct SpriteTemplate));
    MakeObjectTemplateFromObjectEventGraphicsInfo(graphicsId, callback, spriteTemplate, &subspriteTables);
    if (spriteTemplate->paletteTag != 0xFFFF)
    {
        LoadObjectEventPalette(spriteTemplate->paletteTag);
    }
    spriteId = CreateSprite(spriteTemplate, x, y, subpriority);
    Free(spriteTemplate);

    if (spriteId != 64 && subspriteTables != ((void *)0))
    {
        sprite = &gSprites[spriteId];
        SetSubspriteTables(sprite, subspriteTables);
        sprite->subspriteMode = SUBSPRITES_IGNORE_PRIORITY;
    }
    return spriteId;
}

u8 sprite_new(u8 graphicsId, u8 a1, s16 x, s16 y, u8 z, u8 direction)
{
    u8 spriteId;
    struct Sprite *sprite;
    struct SpriteTemplate spriteTemplate;
    const struct SubspriteTable *subspriteTables;
    const struct ObjectEventGraphicsInfo *graphicsInfo;

    graphicsInfo = GetObjectEventGraphicsInfo(graphicsId);
    MakeObjectTemplateFromObjectEventGraphicsInfo(graphicsId, UpdateObjectEventSpriteSubpriorityAndVisibility, &spriteTemplate, &subspriteTables);
    *(u16 *)&spriteTemplate.paletteTag = 0xFFFF;
    x += 7;
    y += 7;
    sub_80930E0(&x, &y, 8, 16);
    spriteId = CreateSpriteAtEnd(&spriteTemplate, x, y, 0);
    if (spriteId != 64)
    {
        sprite = &gSprites[spriteId];
        sprite->centerToCornerVecX = -(graphicsInfo->width >> 1);
        sprite->centerToCornerVecY = -(graphicsInfo->height >> 1);
        sprite->pos1.y += sprite->centerToCornerVecY;
        sprite->oam.paletteNum = graphicsInfo->paletteSlot;
        if (sprite->oam.paletteNum >= 16)
        {
            sprite->oam.paletteNum -= 16;
        }
        sprite->coordOffsetEnabled = 1;
        sprite->data[0] = a1;
        sprite->data[1] = z;
        if (graphicsInfo->paletteSlot == 10)
        {
            LoadSpecialObjectReflectionPalette(graphicsInfo->paletteTag1, graphicsInfo->paletteSlot);
        }
        else if (graphicsInfo->paletteSlot >= 16)
        {
            sub_808EAB0(graphicsInfo->paletteTag1, graphicsInfo->paletteSlot | 0xf0);
        }
        if (subspriteTables != ((void *)0))
        {
            SetSubspriteTables(sprite, subspriteTables);
            sprite->subspriteMode = SUBSPRITES_IGNORE_PRIORITY;
        }
        InitObjectPriorityByZCoord(sprite, z);
        SetObjectSubpriorityByZCoord(z, sprite, 1);
        StartSpriteAnim(sprite, GetFaceDirectionAnimNum(direction));
    }
    return spriteId;
}

void TrySpawnObjectEvents(s16 cameraX, s16 cameraY)
{
    u8 i;
    u8 objectCount;

    if (gMapHeader.events != ((void *)0))
    {
        s16 left = gSaveBlock1Ptr->pos.x - 2;
        s16 right = gSaveBlock1Ptr->pos.x + 17;
        s16 top = gSaveBlock1Ptr->pos.y;
        s16 bottom = gSaveBlock1Ptr->pos.y + 16;

        if (InBattlePyramid())
        {
            objectCount = GetNumBattlePyramidObjectEvents();
        }
        else if (InTrainerHill())
        {
            objectCount = 2;
        }
        else
        {
            objectCount = gMapHeader.events->objectEventCount;
        }

        for (i = 0; i < objectCount; i++)
        {
            struct ObjectEventTemplate *template = &gSaveBlock1Ptr->objectEventTemplates[i];
            s16 npcX = template->x + 7;
            s16 npcY = template->y + 7;

            if (top <= npcY && bottom >= npcY && left <= npcX && right >= npcX
                && !FlagGet(template->flagId))
                TrySpawnObjectEventTemplate(template, gSaveBlock1Ptr->location.mapNum, gSaveBlock1Ptr->location.mapGroup, cameraX, cameraY);
        }
    }
}

void RemoveObjectEventsOutsideView(void)
{
    u8 i, j;
    bool8 isActiveLinkPlayer;

    for (i = 0; i < 16; i++)
    {
        for (j = 0, isActiveLinkPlayer = 0; j < (size_t)(sizeof(gLinkPlayerObjectEvents) / sizeof((gLinkPlayerObjectEvents)[0])); j++)
        {
            if (gLinkPlayerObjectEvents[j].active && i == gLinkPlayerObjectEvents[j].objEventId)
                isActiveLinkPlayer = 1;
        }
        if (!isActiveLinkPlayer)
        {
            struct ObjectEvent *objectEvent = &gObjectEvents[i];

            if (objectEvent->active && !objectEvent->isPlayer)
                RemoveObjectEventIfOutsideView(objectEvent);
        }
    }
}

static void RemoveObjectEventIfOutsideView(struct ObjectEvent *objectEvent)
{
    s16 left = gSaveBlock1Ptr->pos.x - 2;
    s16 right = gSaveBlock1Ptr->pos.x + 17;
    s16 top = gSaveBlock1Ptr->pos.y;
    s16 bottom = gSaveBlock1Ptr->pos.y + 16;

    if (objectEvent->currentCoords.x >= left && objectEvent->currentCoords.x <= right
     && objectEvent->currentCoords.y >= top && objectEvent->currentCoords.y <= bottom)
        return;
    if (objectEvent->initialCoords.x >= left && objectEvent->initialCoords.x <= right
     && objectEvent->initialCoords.y >= top && objectEvent->initialCoords.y <= bottom)
        return;
    RemoveObjectEvent(objectEvent);
}

void sub_808E16C(s16 x, s16 y)
{
    u8 i;

    ClearPlayerAvatarInfo();
    for (i = 0; i < 16; i++)
    {
        if (gObjectEvents[i].active)
        {
            sub_808E1B8(i, x, y);
        }
    }
    CreateReflectionEffectSprites();
}

static void sub_808E1B8(u8 objectEventId, s16 x, s16 y)
{
    u8 spriteId;
    u8 paletteSlot;
    struct Sprite *sprite;
    struct ObjectEvent *objectEvent;
    struct SpriteTemplate spriteTemplate;
    struct SpriteFrameImage spriteFrameImage;
    const struct SubspriteTable *subspriteTables;
    const struct ObjectEventGraphicsInfo *graphicsInfo;


    for (spriteId = 0; spriteId < (size_t)(sizeof(gLinkPlayerObjectEvents) / sizeof((gLinkPlayerObjectEvents)[0])); spriteId++)
    {
        if (gLinkPlayerObjectEvents[spriteId].active && objectEventId == gLinkPlayerObjectEvents[spriteId].objEventId)
        {
            return;
        }
    }


    objectEvent = &gObjectEvents[objectEventId];
    subspriteTables = ((void *)0);
    graphicsInfo = GetObjectEventGraphicsInfo(objectEvent->graphicsId);
    spriteFrameImage.size = graphicsInfo->size;
    MakeObjectTemplateFromObjectEventGraphicsInfoWithCallbackIndex(objectEvent->graphicsId, objectEvent->movementType, &spriteTemplate, &subspriteTables);
    spriteTemplate.images = &spriteFrameImage;
    *(u16 *)&spriteTemplate.paletteTag = 0xFFFF;
    paletteSlot = graphicsInfo->paletteSlot;
    if (paletteSlot == 0)
    {
        LoadPlayerObjectReflectionPalette(graphicsInfo->paletteTag1, graphicsInfo->paletteSlot);
    }
    else if (paletteSlot == 10)
    {
        LoadSpecialObjectReflectionPalette(graphicsInfo->paletteTag1, graphicsInfo->paletteSlot);
    }
    else if (paletteSlot >= 16)
    {
        paletteSlot -= 16;
        sub_808EAB0(graphicsInfo->paletteTag1, paletteSlot);
    }
    *(u16 *)&spriteTemplate.paletteTag = 0xFFFF;
    spriteId = CreateSprite(&spriteTemplate, 0, 0, 0);
    if (spriteId != 64)
    {
        sprite = &gSprites[spriteId];
        sub_8092FF0(x + objectEvent->currentCoords.x, y + objectEvent->currentCoords.y, &sprite->pos1.x, &sprite->pos1.y);
        sprite->centerToCornerVecX = -(graphicsInfo->width >> 1);
        sprite->centerToCornerVecY = -(graphicsInfo->height >> 1);
        sprite->pos1.x += 8;
        sprite->pos1.y += 16 + sprite->centerToCornerVecY;
        sprite->images = graphicsInfo->images;
        if (objectEvent->movementType == 0xB)
        {
            SetPlayerAvatarObjectEventIdAndObjectId(objectEventId, spriteId);
            objectEvent->warpArrowSpriteId = CreateWarpArrowSprite();
        }
        if (subspriteTables != ((void *)0))
        {
            SetSubspriteTables(sprite, subspriteTables);
        }
        sprite->oam.paletteNum = paletteSlot;
        sprite->coordOffsetEnabled = 1;
        sprite->data[0] = objectEventId;
        objectEvent->spriteId = spriteId;
        if (!objectEvent->inanimate && objectEvent->movementType != 0xB)
        {
            StartSpriteAnim(sprite, GetFaceDirectionAnimNum(objectEvent->facingDirection));
        }
        sub_808E38C(objectEvent);
        SetObjectSubpriorityByZCoord(objectEvent->previousElevation, sprite, 1);
    }
}

static void sub_808E38C(struct ObjectEvent *objectEvent)
{
    objectEvent->singleMovementActive = 0;
    objectEvent->triggerGroundEffectsOnMove = 1;
    objectEvent->hasShadow = 0;
    objectEvent->hasReflection = 0;
    objectEvent->inShortGrass = 0;
    objectEvent->inShallowFlowingWater = 0;
    objectEvent->inSandPile = 0;
    objectEvent->inHotSprings = 0;
    ObjectEventClearHeldMovement(objectEvent);
}

static void SetPlayerAvatarObjectEventIdAndObjectId(u8 objectEventId, u8 spriteId)
{
    gPlayerAvatar.objectEventId = objectEventId;
    gPlayerAvatar.spriteId = spriteId;
    gPlayerAvatar.gender = GetPlayerAvatarGenderByGraphicsId(gObjectEvents[objectEventId].graphicsId);
    SetPlayerAvatarExtraStateTransition(gObjectEvents[objectEventId].graphicsId, (1 << PLAYER_AVATAR_STATE_FIELD_MOVE));
}

void ObjectEventSetGraphicsId(struct ObjectEvent *objectEvent, u8 graphicsId)
{
    const struct ObjectEventGraphicsInfo *graphicsInfo;
    struct Sprite *sprite;
    u8 paletteSlot;

    graphicsInfo = GetObjectEventGraphicsInfo(graphicsId);
    sprite = &gSprites[objectEvent->spriteId];
    paletteSlot = graphicsInfo->paletteSlot;
    if (paletteSlot == 0)
    {
        PatchObjectPalette(graphicsInfo->paletteTag1, graphicsInfo->paletteSlot);
    }
    else if (paletteSlot == 10)
    {
        LoadSpecialObjectReflectionPalette(graphicsInfo->paletteTag1, graphicsInfo->paletteSlot);
    }
    else if (paletteSlot >= 16)
    {
        paletteSlot -= 16;
        sub_808EAB0(graphicsInfo->paletteTag1, paletteSlot);
    }
    sprite->oam.shape = graphicsInfo->oam->shape;
    sprite->oam.size = graphicsInfo->oam->size;
    sprite->images = graphicsInfo->images;
    sprite->anims = graphicsInfo->anims;
    sprite->subspriteTables = graphicsInfo->subspriteTables;
    sprite->oam.paletteNum = paletteSlot;
    objectEvent->inanimate = graphicsInfo->inanimate;
    objectEvent->graphicsId = graphicsId;
    SetSpritePosToMapCoords(objectEvent->currentCoords.x, objectEvent->currentCoords.y, &sprite->pos1.x, &sprite->pos1.y);
    sprite->centerToCornerVecX = -(graphicsInfo->width >> 1);
    sprite->centerToCornerVecY = -(graphicsInfo->height >> 1);
    sprite->pos1.x += 8;
    sprite->pos1.y += 16 + sprite->centerToCornerVecY;
    if (objectEvent->trackedByCamera)
    {
        CameraObjectReset1();
    }
}

void ObjectEventSetGraphicsIdByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup, u8 graphicsId)
{
    u8 objectEventId;

    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        ObjectEventSetGraphicsId(&gObjectEvents[objectEventId], graphicsId);
    }
}

void ObjectEventTurn(struct ObjectEvent *objectEvent, u8 direction)
{
    SetObjectEventDirection(objectEvent, direction);
    if (!objectEvent->inanimate)
    {
        StartSpriteAnim(&gSprites[objectEvent->spriteId], GetFaceDirectionAnimNum(objectEvent->facingDirection));
        SeekSpriteAnim(&gSprites[objectEvent->spriteId], 0);
    }
}

void ObjectEventTurnByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup, u8 direction)
{
    u8 objectEventId;

    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        ObjectEventTurn(&gObjectEvents[objectEventId], direction);
    }
}

void PlayerObjectTurn(struct PlayerAvatar *playerAvatar, u8 direction)
{
    ObjectEventTurn(&gObjectEvents[playerAvatar->objectEventId], direction);
}

static void get_berry_tree_graphics(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 berryStage;
    u8 berryId;

    objectEvent->invisible = 1;
    sprite->invisible = 1;
    berryStage = GetStageByBerryTreeId(objectEvent->trainerRange_berryTreeId);
    if (berryStage != 0)
    {
        objectEvent->invisible = 0;
        sprite->invisible = 0;
        berryId = GetBerryTypeByBerryTreeId(objectEvent->trainerRange_berryTreeId) - 1;
        berryStage--;
        if (berryId > (((175 - 133) + 1)))
            berryId = 0;

        ObjectEventSetGraphicsId(objectEvent, gBerryTreeObjectEventGraphicsIdTablePointers[berryId][berryStage]);
        sprite->images = gBerryTreePicTablePointers[berryId];
        sprite->oam.paletteNum = gBerryTreePaletteSlotTablePointers[berryId][berryStage];
        StartSpriteAnim(sprite, berryStage);
    }
}

const struct ObjectEventGraphicsInfo *GetObjectEventGraphicsInfo(u8 graphicsId)
{
    u8 bard;

    if (graphicsId >= (239 + 1))
    {
        graphicsId = VarGetObjectEventGraphicsId(graphicsId - (239 + 1));
    }
    if (graphicsId == 69)
    {
        bard = GetCurrentMauvilleOldMan();
        return gMauvilleOldManGraphicsInfoPointers[bard];
    }

    if (graphicsId >= 239)
    {
        graphicsId = 5;
    }

    return gObjectEventGraphicsInfoPointers[graphicsId];
}

static void SetObjectEventDynamicGraphicsId(struct ObjectEvent *objectEvent)
{
    if (objectEvent->graphicsId >= (239 + 1))
    {
        objectEvent->graphicsId = VarGetObjectEventGraphicsId(objectEvent->graphicsId - (239 + 1));
    }
}

void npc_by_local_id_and_map_set_field_1_bit_x20(u8 localId, u8 mapNum, u8 mapGroup, u8 state)
{
    u8 objectEventId;

    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        gObjectEvents[objectEventId].invisible = state;
    }
}

void ObjectEventGetLocalIdAndMap(struct ObjectEvent *objectEvent, void *localId, void *mapNum, void *mapGroup)
{
    *(u8*)(localId) = objectEvent->localId;
    *(u8*)(mapNum) = objectEvent->mapNum;
    *(u8*)(mapGroup) = objectEvent->mapGroup;
}

void sub_808E75C(s16 x, s16 y)
{
    u8 objectEventId;
    struct ObjectEvent *objectEvent;

    objectEventId = GetObjectEventIdByXY(x, y);
    if (objectEventId != 16)
    {
        objectEvent = &gObjectEvents[objectEventId];
        objectEvent->triggerGroundEffectsOnMove = 1;
    }
}

void sub_808E78C(u8 localId, u8 mapNum, u8 mapGroup, u8 subpriority)
{
    u8 objectEventId;
    struct ObjectEvent *objectEvent;
    struct Sprite *sprite;

    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        objectEvent = &gObjectEvents[objectEventId];
        sprite = &gSprites[objectEvent->spriteId];
        objectEvent->fixedPriority = 1;
        sprite->subpriority = subpriority;
    }
}

void sub_808E7E4(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 objectEventId;
    struct ObjectEvent *objectEvent;

    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        objectEvent = &gObjectEvents[objectEventId];
        objectEvent->fixedPriority = 0;
        objectEvent->triggerGroundEffectsOnMove = 1;
    }
}

void sub_808E82C(u8 localId, u8 mapNum, u8 mapGroup, s16 x, s16 y)
{
    u8 objectEventId;
    struct Sprite *sprite;

    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        sprite = &gSprites[gObjectEvents[objectEventId].spriteId];
        sprite->pos2.x = x;
        sprite->pos2.y = y;
    }
}

void FreeAndReserveObjectSpritePalettes(void)
{
    FreeAllSpritePalettes();
    gReservedSpritePaletteCount = 12;
}

static void LoadObjectEventPalette(u16 paletteTag)
{
    u16 i = FindObjectEventPaletteIndexByTag(paletteTag);

    if (i != 0x11FF)
    {
        sub_808E8F4(&sObjectEventSpritePalettes[i]);
    }
}

void Unused_LoadObjectEventPaletteSet(u16 *paletteTags)
{
    u8 i;

    for (i = 0; paletteTags[i] != 0x11FF; i++)
    {
        LoadObjectEventPalette(paletteTags[i]);
    }
}

static u8 sub_808E8F4(const struct SpritePalette *spritePalette)
{
    if (IndexOfSpritePaletteTag(spritePalette->tag) != 0xFF)
    {
        return 0xFF;
    }
    return LoadSpritePalette(spritePalette);
}

void PatchObjectPalette(u16 paletteTag, u8 paletteSlot)
{
    u8 paletteIndex = FindObjectEventPaletteIndexByTag(paletteTag);

    LoadPalette(sObjectEventSpritePalettes[paletteIndex].data, 16 * paletteSlot + 0x100, 0x20);
}

void PatchObjectPaletteRange(const u16 *paletteTags, u8 minSlot, u8 maxSlot)
{
    while (minSlot < maxSlot)
    {
        PatchObjectPalette(*paletteTags, minSlot);
        paletteTags++;
        minSlot++;
    }
}

static u8 FindObjectEventPaletteIndexByTag(u16 tag)
{
    u8 i;

    for (i = 0; sObjectEventSpritePalettes[i].tag != 0x11FF; i++)
    {
        if (sObjectEventSpritePalettes[i].tag == tag)
        {
            return i;
        }
    }
    return 0xFF;
}

void LoadPlayerObjectReflectionPalette(u16 tag, u8 slot)
{
    u8 i;

    PatchObjectPalette(tag, slot);
    for (i = 0; gPlayerReflectionPaletteSets[i].tag != 0x11FF; i++)
    {
        if (gPlayerReflectionPaletteSets[i].tag == tag)
        {
            PatchObjectPalette(gPlayerReflectionPaletteSets[i].data[sCurrentReflectionType], gReflectionEffectPaletteMap[slot]);
            return;
        }
    }
}

void LoadSpecialObjectReflectionPalette(u16 tag, u8 slot)
{
    u8 i;

    sCurrentSpecialObjectPaletteTag = tag;
    PatchObjectPalette(tag, slot);
    for (i = 0; gSpecialObjectReflectionPaletteSets[i].tag != 0x11FF; i++)
    {
        if (gSpecialObjectReflectionPaletteSets[i].tag == tag)
        {
            PatchObjectPalette(gSpecialObjectReflectionPaletteSets[i].data[sCurrentReflectionType], gReflectionEffectPaletteMap[slot]);
            return;
        }
    }
}

static void sub_808EAB0(u16 tag, u8 slot)
{
    PatchObjectPalette(tag, slot);
}

void unref_sub_808EAC4(struct ObjectEvent *objectEvent, s16 x, s16 y)
{
    objectEvent->previousCoords.x = objectEvent->currentCoords.x;
    objectEvent->previousCoords.y = objectEvent->currentCoords.y;
    objectEvent->currentCoords.x += x;
    objectEvent->currentCoords.y += y;
}

void ShiftObjectEventCoords(struct ObjectEvent *objectEvent, s16 x, s16 y)
{
    objectEvent->previousCoords.x = objectEvent->currentCoords.x;
    objectEvent->previousCoords.y = objectEvent->currentCoords.y;
    objectEvent->currentCoords.x = x;
    objectEvent->currentCoords.y = y;
}

static void SetObjectEventCoords(struct ObjectEvent *objectEvent, s16 x, s16 y)
{
    objectEvent->previousCoords.x = x;
    objectEvent->previousCoords.y = y;
    objectEvent->currentCoords.x = x;
    objectEvent->currentCoords.y = y;
}

void MoveObjectEventToMapCoords(struct ObjectEvent *objectEvent, s16 x, s16 y)
{
    struct Sprite *sprite;
    const struct ObjectEventGraphicsInfo *graphicsInfo;

    sprite = &gSprites[objectEvent->spriteId];
    graphicsInfo = GetObjectEventGraphicsInfo(objectEvent->graphicsId);
    SetObjectEventCoords(objectEvent, x, y);
    SetSpritePosToMapCoords(objectEvent->currentCoords.x, objectEvent->currentCoords.y, &sprite->pos1.x, &sprite->pos1.y);
    sprite->centerToCornerVecX = -(graphicsInfo->width >> 1);
    sprite->centerToCornerVecY = -(graphicsInfo->height >> 1);
    sprite->pos1.x += 8;
    sprite->pos1.y += 16 + sprite->centerToCornerVecY;
    sub_808E38C(objectEvent);
    if (objectEvent->trackedByCamera)
        CameraObjectReset1();
}

void TryMoveObjectEventToMapCoords(u8 localId, u8 mapNum, u8 mapGroup, s16 x, s16 y)
{
    u8 objectEventId;
    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        x += 7;
        y += 7;
        MoveObjectEventToMapCoords(&gObjectEvents[objectEventId], x, y);
    }
}

void ShiftStillObjectEventCoords(struct ObjectEvent *objectEvent)
{
    ShiftObjectEventCoords(objectEvent, objectEvent->currentCoords.x, objectEvent->currentCoords.y);
}

void UpdateObjectEventCoordsForCameraUpdate(void)
{
    u8 i;
    s16 dx;
    s16 dy;

    if (gCamera.active)
    {
        dx = gCamera.x;
        dy = gCamera.y;
        for (i = 0; i < 16; i++)
        {
            if (gObjectEvents[i].active)
            {
                gObjectEvents[i].initialCoords.x -= dx;
                gObjectEvents[i].initialCoords.y -= dy;
                gObjectEvents[i].currentCoords.x -= dx;
                gObjectEvents[i].currentCoords.y -= dy;
                gObjectEvents[i].previousCoords.x -= dx;
                gObjectEvents[i].previousCoords.y -= dy;
            }
        }
    }
}

u8 GetObjectEventIdByXYZ(u16 x, u16 y, u8 z)
{
    u8 i;

    for (i = 0; i < 16; i++)
    {
        if (gObjectEvents[i].active)
        {
            if (gObjectEvents[i].currentCoords.x == x && gObjectEvents[i].currentCoords.y == y && ObjectEventDoesZCoordMatch(&gObjectEvents[i], z))
            {
                return i;
            }
        }
    }
    return 16;
}

static bool8 ObjectEventDoesZCoordMatch(struct ObjectEvent *objectEvent, u8 z)
{
    if (objectEvent->currentElevation != 0 && z != 0 && objectEvent->currentElevation != z)
    {
        return 0;
    }
    return 1;
}

void UpdateObjectEventsForCameraUpdate(s16 x, s16 y)
{
    UpdateObjectEventCoordsForCameraUpdate();
    TrySpawnObjectEvents(x, y);
    RemoveObjectEventsOutsideView();
}

u8 AddCameraObject(u8 linkedSpriteId)
{
    u8 spriteId = CreateSprite(&gCameraSpriteTemplate, 0, 0, 4);

    gSprites[spriteId].invisible = 1;
    gSprites[spriteId].data[0] = linkedSpriteId;
    return spriteId;
}

static void ObjectCB_CameraObject(struct Sprite *sprite)
{
    void (*callbacks[(size_t)(sizeof(gCameraObjectFuncs) / sizeof((gCameraObjectFuncs)[0]))])(struct Sprite *);

    memcpy(callbacks, gCameraObjectFuncs, sizeof gCameraObjectFuncs);
    callbacks[sprite->data[1]](sprite);
}

static void CameraObject_0(struct Sprite *sprite)
{
    sprite->pos1.x = gSprites[sprite->data[0]].pos1.x;
    sprite->pos1.y = gSprites[sprite->data[0]].pos1.y;
    sprite->invisible = 1;
    sprite->data[1] = 1;
    CameraObject_1(sprite);
}

static void CameraObject_1(struct Sprite *sprite)
{
    s16 x = gSprites[sprite->data[0]].pos1.x;
    s16 y = gSprites[sprite->data[0]].pos1.y;

    sprite->data[2] = x - sprite->pos1.x;
    sprite->data[3] = y - sprite->pos1.y;
    sprite->pos1.x = x;
    sprite->pos1.y = y;
}

static void CameraObject_2(struct Sprite *sprite)
{
    sprite->pos1.x = gSprites[sprite->data[0]].pos1.x;
    sprite->pos1.y = gSprites[sprite->data[0]].pos1.y;
    sprite->data[2] = 0;
    sprite->data[3] = 0;
}

static struct Sprite *FindCameraObject(void)
{
    u8 i;

    for (i = 0; i < 64; i++)
    {
        if (gSprites[i].inUse && gSprites[i].callback == ObjectCB_CameraObject)
        {
            return &gSprites[i];
        }
    }
    return ((void *)0);
}

void CameraObjectReset1(void)
{
    struct Sprite *cameraObject;

    cameraObject = FindCameraObject();
    if (cameraObject != ((void *)0))
    {
        cameraObject->data[1] = 0;
        cameraObject->callback(cameraObject);
    }
}

void CameraObjectSetFollowedObjectId(u8 objectId)
{
    struct Sprite *cameraObject;

    cameraObject = FindCameraObject();
    if (cameraObject != ((void *)0))
    {
        cameraObject->data[0] = objectId;
        CameraObjectReset1();
    }
}

u8 CameraObjectGetFollowedObjectId(void)
{
    struct Sprite *cameraObject;

    cameraObject = FindCameraObject();
    if (cameraObject == ((void *)0))
    {
        return 64;
    }
    return cameraObject->data[0];
}

void CameraObjectReset2(void)
{
    FindCameraObject()->data[1] = 2;
}

u8 CopySprite(struct Sprite *sprite, s16 x, s16 y, u8 subpriority)
{
    u8 i;

    for (i = 0; i < 64; i++)
    {
        if (!gSprites[i].inUse)
        {
            gSprites[i] = *sprite;
            gSprites[i].pos1.x = x;
            gSprites[i].pos1.y = y;
            gSprites[i].subpriority = subpriority;
            break;
        }
    }
    return i;
}

u8 CreateCopySpriteAt(struct Sprite *sprite, s16 x, s16 y, u8 subpriority)
{
    s16 i;

    for (i = 64 - 1; i > -1; i--)
    {
        if (!gSprites[i].inUse)
        {
            gSprites[i] = *sprite;
            gSprites[i].pos1.x = x;
            gSprites[i].pos1.y = y;
            gSprites[i].subpriority = subpriority;
            return i;
        }
    }
    return 64;
}

void SetObjectEventDirection(struct ObjectEvent *objectEvent, u8 direction)
{
    s8 d2;
    objectEvent->previousMovementDirection = objectEvent->facingDirection;
    if (!objectEvent->facingDirectionLocked)
    {
        d2 = direction;
        objectEvent->facingDirection = d2;
    }
    objectEvent->movementDirection = direction;
}

static const u8 *GetObjectEventScriptPointerByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup)
{
    return GetObjectEventTemplateByLocalIdAndMap(localId, mapNum, mapGroup)->script;
}

const u8 *GetObjectEventScriptPointerByObjectEventId(u8 objectEventId)
{
    return GetObjectEventScriptPointerByLocalIdAndMap(gObjectEvents[objectEventId].localId, gObjectEvents[objectEventId].mapNum, gObjectEvents[objectEventId].mapGroup);
}

static u16 GetObjectEventFlagIdByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup)
{
    return GetObjectEventTemplateByLocalIdAndMap(localId, mapNum, mapGroup)->flagId;
}

static u16 GetObjectEventFlagIdByObjectEventId(u8 objectEventId)
{
    return GetObjectEventFlagIdByLocalIdAndMap(gObjectEvents[objectEventId].localId, gObjectEvents[objectEventId].mapNum, gObjectEvents[objectEventId].mapGroup);
}


static u8 GetObjectTrainerTypeByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 objectEventId;

    if (TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        return 0xFF;
    }
    return gObjectEvents[objectEventId].trainerType;
}


static u8 GetObjectTrainerTypeByObjectEventId(u8 objectEventId)
{
    return gObjectEvents[objectEventId].trainerType;
}

u8 sub_808F0D4(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 objectEventId;

    if (TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        return 0xFF;
    }
    return gObjectEvents[objectEventId].trainerRange_berryTreeId;
}

u8 ObjectEventGetBerryTreeId(u8 objectEventId)
{
    return gObjectEvents[objectEventId].trainerRange_berryTreeId;
}

static struct ObjectEventTemplate *GetObjectEventTemplateByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup)
{
    struct ObjectEventTemplate *templates;
    const struct MapHeader *mapHeader;
    u8 count;

    if (gSaveBlock1Ptr->location.mapNum == mapNum && gSaveBlock1Ptr->location.mapGroup == mapGroup)
    {
        templates = gSaveBlock1Ptr->objectEventTemplates;
        count = gMapHeader.events->objectEventCount;
    }
    else
    {
        mapHeader = Overworld_GetMapHeaderByGroupAndId(mapGroup, mapNum);
        templates = mapHeader->events->objectEvents;
        count = mapHeader->events->objectEventCount;
    }
    return FindObjectEventTemplateByLocalId(localId, templates, count);
}

static struct ObjectEventTemplate *FindObjectEventTemplateByLocalId(u8 localId, struct ObjectEventTemplate *templates, u8 count)
{
    u8 i;

    for (i = 0; i < count; i++)
    {
        if (templates[i].localId == localId)
        {
            return &templates[i];
        }
    }
    return ((void *)0);
}

struct ObjectEventTemplate *GetBaseTemplateForObjectEvent(const struct ObjectEvent *objectEvent)
{
    int i;

    if (objectEvent->mapNum != gSaveBlock1Ptr->location.mapNum || objectEvent->mapGroup != gSaveBlock1Ptr->location.mapGroup)
    {
        return ((void *)0);
    }
    for (i = 0; i < 64; i++)
    {
        if (objectEvent->localId == gSaveBlock1Ptr->objectEventTemplates[i].localId)
        {
            return &gSaveBlock1Ptr->objectEventTemplates[i];
        }
    }
    return ((void *)0);
}

void OverrideTemplateCoordsForObjectEvent(const struct ObjectEvent *objectEvent)
{
    struct ObjectEventTemplate *objectEventTemplate;

    objectEventTemplate = GetBaseTemplateForObjectEvent(objectEvent);
    if (objectEventTemplate != ((void *)0))
    {
        objectEventTemplate->x = objectEvent->currentCoords.x - 7;
        objectEventTemplate->y = objectEvent->currentCoords.y - 7;
    }
}

static void OverrideObjectEventTemplateScript(const struct ObjectEvent *objectEvent, const u8 *script)
{
    struct ObjectEventTemplate *objectEventTemplate;

    objectEventTemplate = GetBaseTemplateForObjectEvent(objectEvent);
    if (objectEventTemplate)
        objectEventTemplate->script = script;
}

void TryOverrideTemplateCoordsForObjectEvent(const struct ObjectEvent *objectEvent, u8 movementType)
{
    struct ObjectEventTemplate *objectEventTemplate;

    objectEventTemplate = GetBaseTemplateForObjectEvent(objectEvent);
    if (objectEventTemplate != ((void *)0))
    {
        objectEventTemplate->movementType = movementType;
    }
}

void TryOverrideObjectEventTemplateCoords(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 objectEventId;
    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
        OverrideTemplateCoordsForObjectEvent(&gObjectEvents[objectEventId]);
}

void OverrideSecretBaseDecorationSpriteScript(u8 localId, u8 mapNum, u8 mapGroup, u8 decorationCategory)
{
    u8 objectEventId;
    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        switch (decorationCategory)
        {
        case DECORCAT_DOLL:
            OverrideObjectEventTemplateScript(&gObjectEvents[objectEventId], SecretBase_EventScript_DollInteract);
            break;
        case DECORCAT_CUSHION:
            OverrideObjectEventTemplateScript(&gObjectEvents[objectEventId], SecretBase_EventScript_CushionInteract);
            break;
        }
    }
}

void InitObjectEventPalettes(u8 palSlot)
{
    FreeAndReserveObjectSpritePalettes();
    sCurrentSpecialObjectPaletteTag = 0x11FF;
    sCurrentReflectionType = palSlot;
    if (palSlot == 1)
    {
        PatchObjectPaletteRange(gObjectPaletteTagSets[sCurrentReflectionType], 0, 6);
        gReservedSpritePaletteCount = 8;
    }
    else
    {
        PatchObjectPaletteRange(gObjectPaletteTagSets[sCurrentReflectionType], 0, 10);
    }
}

u16 GetObjectPaletteTag(u8 palSlot)
{
    u8 i;

    if (palSlot < 10)
    {
        return gObjectPaletteTagSets[sCurrentReflectionType][palSlot];
    }
    for (i = 0; gSpecialObjectReflectionPaletteSets[i].tag != 0x11FF; i++)
    {
        if (gSpecialObjectReflectionPaletteSets[i].tag == sCurrentSpecialObjectPaletteTag)
        {
            return gSpecialObjectReflectionPaletteSets[i].data[sCurrentReflectionType];
        }
    }
    return 0x11FF;
}

static u8 MovementType_None_callback(struct ObjectEvent *, struct Sprite *);void MovementType_None(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_None_callback);}static u8 MovementType_None_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return 0;}
static u8 MovementType_WanderAround_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WanderAround(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WanderAround_callback);}static u8 MovementType_WanderAround_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WanderAround[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_WanderAround_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_WanderAround_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_WanderAround_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (!ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        return 0;
    }
    SetMovementDelay(sprite, gMovementDelaysMedium[Random() & 3]);
    sprite->data[1] = 3;
    return 1;
}

bool8 MovementType_WanderAround_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_WanderAround_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[4];
    u8 chosenDirection;

    memcpy(directions, gStandardDirections, sizeof directions);
    chosenDirection = directions[Random() & 3];
    SetObjectEventDirection(objectEvent, chosenDirection);
    sprite->data[1] = 5;
    if (GetCollisionInDirection(objectEvent, chosenDirection))
        sprite->data[1] = 1;

    return 1;
}

bool8 MovementType_WanderAround_Step5(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkNormalMovementAction(objectEvent->movementDirection));
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 6;
    return 1;
}

bool8 MovementType_WanderAround_Step6(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 1;
    }
    return 0;
}

bool8 ObjectEventIsTrainerAndCloseToPlayer(struct ObjectEvent *objectEvent)
{
    s16 playerX;
    s16 playerY;
    s16 objX;
    s16 objY;
    s16 minX;
    s16 maxX;
    s16 minY;
    s16 maxY;

    if (!TestPlayerAvatarFlags((1 << PLAYER_AVATAR_STATE_WATERING)))
    {
        return 0;
    }
    if (objectEvent->trainerType != 1 && objectEvent->trainerType != 3)
    {
        return 0;
    }
    PlayerGetDestCoords(&playerX, &playerY);
    objX = objectEvent->currentCoords.x;
    objY = objectEvent->currentCoords.y;
    minX = objX - objectEvent->trainerRange_berryTreeId;
    minY = objY - objectEvent->trainerRange_berryTreeId;
    maxX = objX + objectEvent->trainerRange_berryTreeId;
    maxY = objY + objectEvent->trainerRange_berryTreeId;
    if (minX > playerX || maxX < playerX || minY > playerY || maxY < playerY)
    {
        return 0;
    }
    return 1;
}

u8 GetVectorDirection(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    if (absdx > absdy)
    {
        direction = 4;
        if (dx < 0)
        {
            direction = 3;
        }
    }
    else
    {
        direction = 1;
        if (dy < 0)
        {
            direction = 2;
        }
    }
    return direction;
}

u8 GetLimitedVectorDirection_SouthNorth(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = 1;
    if (dy < 0)
    {
        direction = 2;
    }
    return direction;
}

u8 GetLimitedVectorDirection_WestEast(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = 4;
    if (dx < 0)
    {
        direction = 3;
    }
    return direction;
}

u8 GetLimitedVectorDirection_WestNorth(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 1)
    {
        direction = GetLimitedVectorDirection_WestEast(dx, dy, absdx, absdy);
        if (direction == 4)
        {
            direction = 2;
        }
    }
    else if (direction == 4)
    {
        direction = GetLimitedVectorDirection_SouthNorth(dx, dy, absdx, absdy);
        if (direction == 1)
        {
            direction = 2;
        }
    }
    return direction;
}

u8 GetLimitedVectorDirection_EastNorth(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 1)
    {
        direction = GetLimitedVectorDirection_WestEast(dx, dy, absdx, absdy);
        if (direction == 3)
        {
            direction = 2;
        }
    }
    else if (direction == 3)
    {
        direction = GetLimitedVectorDirection_SouthNorth(dx, dy, absdx, absdy);
        if (direction == 1)
        {
            direction = 2;
        }
    }
    return direction;
}

u8 GetLimitedVectorDirection_WestSouth(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 2)
    {
        direction = GetLimitedVectorDirection_WestEast(dx, dy, absdx, absdy);
        if (direction == 4)
        {
            direction = 1;
        }
    }
    else if (direction == 4)
    {
        direction = GetLimitedVectorDirection_SouthNorth(dx, dy, absdx, absdy);
        if (direction == 2)
        {
            direction = 1;
        }
    }
    return direction;
}

u8 GetLimitedVectorDirection_EastSouth(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 2)
    {
        direction = GetLimitedVectorDirection_WestEast(dx, dy, absdx, absdy);
        if (direction == 3)
        {
            direction = 1;
        }
    }
    else if (direction == 3)
    {
        direction = GetLimitedVectorDirection_SouthNorth(dx, dy, absdx, absdy);
        if (direction == 2)
        {
            direction = 1;
        }
    }
    return direction;
}

u8 GetLimitedVectorDirection_SouthNorthWest(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 4)
    {
        direction = GetLimitedVectorDirection_SouthNorth(dx, dy, absdx, absdy);
    }
    return direction;
}

u8 GetLimitedVectorDirection_SouthNorthEast(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 3)
    {
        direction = GetLimitedVectorDirection_SouthNorth(dx, dy, absdx, absdy);
    }
    return direction;
}

u8 GetLimitedVectorDirection_NorthWestEast(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 1)
    {
        direction = GetLimitedVectorDirection_WestEast(dx, dy, absdx, absdy);
    }
    return direction;
}

u8 GetLimitedVectorDirection_SouthWestEast(s16 dx, s16 dy, s16 absdx, s16 absdy)
{
    u8 direction;

    direction = GetVectorDirection(dx, dy, absdx, absdy);
    if (direction == 2)
    {
        direction = GetLimitedVectorDirection_WestEast(dx, dy, absdx, absdy);
    }
    return direction;
}

u8 TryGetTrainerEncounterDirection(struct ObjectEvent *objectEvent, u8 movementType)
{
    s16 dx, dy;
    s16 absdx, absdy;

    if (!ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        return 0;
    }
    PlayerGetDestCoords(&dx, &dy);
    dx -= objectEvent->currentCoords.x;
    dy -= objectEvent->currentCoords.y;
    absdx = dx;
    absdy = dy;
    if (absdx < 0)
    {
        absdx = -absdx;
    }
    if (absdy < 0)
    {
        absdy = -absdy;
    }
    return gGetVectorDirectionFuncs[movementType](dx, dy, absdx, absdy);
}

static u8 MovementType_LookAround_callback(struct ObjectEvent *, struct Sprite *);void MovementType_LookAround(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_LookAround_callback);}static u8 MovementType_LookAround_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_LookAround[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_LookAround_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_LookAround_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_LookAround_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysMedium[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_LookAround_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_LookAround_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[4];
    memcpy(directions, gStandardDirections, sizeof directions);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_ANY);
    if (direction == 0)
        direction = directions[Random() & 3];

    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_WanderUpAndDown_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WanderUpAndDown(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WanderUpAndDown_callback);}static u8 MovementType_WanderUpAndDown_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WanderUpAndDown[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_WanderUpAndDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_WanderUpAndDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_WanderUpAndDown_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (!ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        return 0;
    }
    SetMovementDelay(sprite, gMovementDelaysMedium[Random() & 3]);
    sprite->data[1] = 3;
    return 1;
}

bool8 MovementType_WanderUpAndDown_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_WanderUpAndDown_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gUpAndDownDirections, sizeof directions);
    direction = directions[Random() & 1];
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 5;
    if (GetCollisionInDirection(objectEvent, direction))
        sprite->data[1] = 1;

    return 1;
}

bool8 MovementType_WanderUpAndDown_Step5(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkNormalMovementAction(objectEvent->movementDirection));
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 6;
    return 1;
}

bool8 MovementType_WanderUpAndDown_Step6(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 1;
    }
    return 0;
}

static u8 MovementType_WanderLeftAndRight_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WanderLeftAndRight(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WanderLeftAndRight_callback);}static u8 MovementType_WanderLeftAndRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WanderLeftAndRight[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_WanderLeftAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_WanderLeftAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_WanderLeftAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (!ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        return 0;
    }
    SetMovementDelay(sprite, gMovementDelaysMedium[Random() & 3]);
    sprite->data[1] = 3;
    return 1;
}

bool8 MovementType_WanderLeftAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_WanderLeftAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gLeftAndRightDirections, sizeof directions);
    direction = directions[Random() & 1];
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 5;
    if (GetCollisionInDirection(objectEvent, direction))
        sprite->data[1] = 1;

    return 1;
}

bool8 MovementType_WanderLeftAndRight_Step5(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkNormalMovementAction(objectEvent->movementDirection));
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 6;
    return 1;
}

bool8 MovementType_WanderLeftAndRight_Step6(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 1;
    }
    return 0;
}

static u8 MovementType_FaceDirection_callback(struct ObjectEvent *, struct Sprite *);void MovementType_FaceDirection(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceDirection_callback);}static u8 MovementType_FaceDirection_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_FaceDirection[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_FaceDirection_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceDirection_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        sprite->data[1] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceDirection_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->singleMovementActive = 0;
    return 0;
}

static bool8 ObjectEventCB2_BerryTree(struct ObjectEvent *objectEvent, struct Sprite *sprite);
extern bool8 (*const gMovementTypeFuncs_BerryTreeGrowth[])(struct ObjectEvent *objectEvent, struct Sprite *sprite);
void MovementType_BerryTreeGrowth(struct Sprite *sprite)
{
    struct ObjectEvent *objectEvent;

    objectEvent = &gObjectEvents[sprite->data[0]];
    if (!(sprite->data[7] & 1))
    {
        get_berry_tree_graphics(objectEvent, sprite);
        sprite->data[7] |= 1;
    }
    UpdateObjectEventCurrentMovement(objectEvent, sprite, ObjectEventCB2_BerryTree);
}
static bool8 ObjectEventCB2_BerryTree(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    return gMovementTypeFuncs_BerryTreeGrowth[sprite->data[1]](objectEvent, sprite);
}

bool8 MovementType_BerryTreeGrowth_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 berryStage;
    ClearObjectEventMovement(objectEvent, sprite);
    objectEvent->invisible = 1;
    sprite->invisible = 1;
    berryStage = GetStageByBerryTreeId(objectEvent->trainerRange_berryTreeId);
    if (berryStage == 0)
    {
        if (!(sprite->data[7] & 4) && sprite->animNum == 4)
        {
            gFieldEffectArguments[0] = objectEvent->currentCoords.x;
            gFieldEffectArguments[1] = objectEvent->currentCoords.y;
            gFieldEffectArguments[2] = sprite->subpriority - 1;
            gFieldEffectArguments[3] = sprite->oam.priority;
            FieldEffectStart(23);
            sprite->animNum = berryStage;
        }
        return 0;
    }
    objectEvent->invisible = 0;
    sprite->invisible = 0;
    berryStage --;
    if (sprite->animNum != berryStage)
    {
        sprite->data[1] = 2;
        return 1;
    }
    get_berry_tree_graphics(objectEvent, sprite);
    ObjectEventSetSingleMovement(objectEvent, sprite, 0x39);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_BerryTreeGrowth_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        sprite->data[1] = 0;
        return 1;
    }
    return 0;
}

bool8 MovementType_BerryTreeGrowth_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 3;
    sprite->data[2] = 0;
    sprite->data[7] |= 2;
    gFieldEffectArguments[0] = objectEvent->currentCoords.x;
    gFieldEffectArguments[1] = objectEvent->currentCoords.y;
    gFieldEffectArguments[2] = sprite->subpriority - 1;
    gFieldEffectArguments[3] = sprite->oam.priority;
    FieldEffectStart(23);
    return 1;
}

bool8 MovementType_BerryTreeGrowth_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sprite->data[2]++;
    objectEvent->invisible = (sprite->data[2] & 0x02) >> 1;
    sprite->animPaused = 1;
    if (sprite->data[2] > 64)
    {
        get_berry_tree_graphics(objectEvent, sprite);
        sprite->data[1] = 4;
        sprite->data[2] = 0;
        return 1;
    }
    return 0;
}

bool8 MovementType_BerryTreeGrowth_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sprite->data[2]++;
    objectEvent->invisible = (sprite->data[2] & 0x02) >> 1;
    sprite->animPaused = 1;
    if (sprite->data[2] > 64)
    {
        sprite->data[1] = 0;
        sprite->data[7] &= ~0x0002;
        return 1;
    }
    return 0;
}

static u8 MovementType_FaceDownAndUp_callback(struct ObjectEvent *, struct Sprite *);void MovementType_FaceDownAndUp(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceDownAndUp_callback);}static u8 MovementType_FaceDownAndUp_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_FaceDownAndUp[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_FaceDownAndUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceDownAndUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceDownAndUp_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysMedium[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceDownAndUp_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceDownAndUp_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gUpAndDownDirections, sizeof gUpAndDownDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_NORTH_SOUTH);
    if (direction == 0)
    {
        direction = directions[Random() & 1];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceLeftAndRight_callback(struct ObjectEvent *, struct Sprite *);void MovementType_FaceLeftAndRight(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceLeftAndRight_callback);}static u8 MovementType_FaceLeftAndRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_FaceLeftAndRight[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_FaceLeftAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceLeftAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceLeftAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysMedium[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceLeftAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceLeftAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gLeftAndRightDirections, sizeof gLeftAndRightDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_EAST_WEST);
    if (direction == 0)
    {
        direction = directions[Random() & 1];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceUpAndLeft_callback(struct ObjectEvent *, struct Sprite *);void MovementType_FaceUpAndLeft(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceUpAndLeft_callback);}static u8 MovementType_FaceUpAndLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_FaceUpAndLeft[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_FaceUpAndLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceUpAndLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceUpAndLeft_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceUpAndLeft_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceUpAndLeft_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gUpAndLeftDirections, sizeof gUpAndLeftDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_NORTH_WEST);
    if (direction == 0)
    {
        direction = directions[Random() & 1];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceUpAndRight_callback(struct ObjectEvent *, struct Sprite *);void MovementType_FaceUpAndRight(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceUpAndRight_callback);}static u8 MovementType_FaceUpAndRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_FaceUpAndRight[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_FaceUpAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceUpAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceUpAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceUpAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceUpAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gUpAndRightDirections, sizeof gUpAndRightDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_NORTH_EAST);
    if (direction == 0)
    {
        direction = directions[Random() & 1];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceDownAndLeft_callback(struct ObjectEvent *, struct Sprite *);void MovementType_FaceDownAndLeft(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceDownAndLeft_callback);}static u8 MovementType_FaceDownAndLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_FaceDownAndLeft[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_FaceDownAndLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceDownAndLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceDownAndLeft_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceDownAndLeft_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceDownAndLeft_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gDownAndLeftDirections, sizeof gDownAndLeftDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_SOUTH_WEST);
    if (direction == 0)
    {
        direction = directions[Random() & 1];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceDownAndRight_callback(struct ObjectEvent *, struct Sprite *);void MovementType_FaceDownAndRight(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceDownAndRight_callback);}static u8 MovementType_FaceDownAndRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_FaceDownAndRight[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_FaceDownAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceDownAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceDownAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceDownAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceDownAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[2];
    memcpy(directions, gDownAndRightDirections, sizeof gDownAndRightDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_SOUTH_EAST);
    if (direction == 0)
    {
        direction = directions[Random() & 1];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceDownUpAndLeft_callback(struct ObjectEvent *, struct Sprite *);void MovementType_FaceDownUpAndLeft(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceDownUpAndLeft_callback);}static u8 MovementType_FaceDownUpAndLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_FaceDownUpAndLeft[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_FaceDownUpAndLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceDownUpAndLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceDownUpAndLeft_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceDownUpAndLeft_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceDownUpAndLeft_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[4];
    memcpy(directions, gDownUpAndLeftDirections, sizeof gDownUpAndLeftDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_NORTH_SOUTH_WEST);
    if (direction == 0)
    {
        direction = directions[Random() & 3];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceDownUpAndRight_callback(struct ObjectEvent *, struct Sprite *);void MovementType_FaceDownUpAndRight(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceDownUpAndRight_callback);}static u8 MovementType_FaceDownUpAndRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_FaceDownUpAndRight[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_FaceDownUpAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceDownUpAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceDownUpAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceDownUpAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceDownUpAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[4];
    memcpy(directions, gDownUpAndRightDirections, sizeof gDownUpAndRightDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_NORTH_SOUTH_EAST);
    if (direction == 0)
    {
        direction = directions[Random() & 3];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceUpRightAndLeft_callback(struct ObjectEvent *, struct Sprite *);void MovementType_FaceUpRightAndLeft(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceUpRightAndLeft_callback);}static u8 MovementType_FaceUpRightAndLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_FaceUpLeftAndRight[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_FaceUpLeftAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceUpLeftAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceUpLeftAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceUpLeftAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceUpLeftAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[4];
    memcpy(directions, gUpLeftAndRightDirections, sizeof gUpLeftAndRightDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_NORTH_EAST_WEST);
    if (direction == 0)
    {
        direction = directions[Random() & 3];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_FaceDownRightAndLeft_callback(struct ObjectEvent *, struct Sprite *);void MovementType_FaceDownRightAndLeft(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_FaceDownRightAndLeft_callback);}static u8 MovementType_FaceDownRightAndLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_FaceDownLeftAndRight[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_FaceDownLeftAndRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_FaceDownLeftAndRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_FaceDownLeftAndRight_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, gMovementDelaysShort[Random() & 3]);
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_FaceDownLeftAndRight_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 4;
        return 1;
    }
    return 0;
}

bool8 MovementType_FaceDownLeftAndRight_Step4(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[4];
    memcpy(directions, gDownLeftAndRightDirections, sizeof gDownLeftAndRightDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_SOUTH_EAST_WEST);
    if (direction == 0)
    {
        direction = directions[Random() & 3];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_RotateCounterclockwise_callback(struct ObjectEvent *, struct Sprite *);void MovementType_RotateCounterclockwise(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_RotateCounterclockwise_callback);}static u8 MovementType_RotateCounterclockwise_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_RotateCounterclockwise[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_RotateCounterclockwise_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_RotateCounterclockwise_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, 48);
        sprite->data[1] = 2;
    }
    return 0;
}

bool8 MovementType_RotateCounterclockwise_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_RotateCounterclockwise_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[5];
    memcpy(directions, gCounterclockwiseDirections, sizeof gCounterclockwiseDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_ANY);
    if (direction == 0)
    {
        direction = directions[objectEvent->facingDirection];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 0;
    return 1;
}

static u8 MovementType_RotateClockwise_callback(struct ObjectEvent *, struct Sprite *);void MovementType_RotateClockwise(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_RotateClockwise_callback);}static u8 MovementType_RotateClockwise_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_RotateClockwise[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_RotateClockwise_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_RotateClockwise_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        SetMovementDelay(sprite, 48);
        sprite->data[1] = 2;
    }
    return 0;
}

bool8 MovementType_RotateClockwise_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (WaitForMovementDelay(sprite) || ObjectEventIsTrainerAndCloseToPlayer(objectEvent))
    {
        sprite->data[1] = 3;
    }
    return 0;
}

bool8 MovementType_RotateClockwise_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;
    u8 directions[5];
    memcpy(directions, gClockwiseDirections, sizeof gClockwiseDirections);
    direction = TryGetTrainerEncounterDirection(objectEvent, RUNFOLLOW_ANY);
    if (direction == 0)
    {
        direction = directions[objectEvent->facingDirection];
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 0;
    return 1;
}

static u8 MovementType_WalkBackAndForth_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkBackAndForth(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkBackAndForth_callback);}static u8 MovementType_WalkBackAndForth_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkBackAndForth[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_WalkBackAndForth_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_WalkBackAndForth_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 direction;

    direction = gInitialMovementTypeFacingDirections[objectEvent->movementType];
    if (objectEvent->directionSequenceIndex)
    {
        direction = GetOppositeDirection(direction);
    }
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_WalkBackAndForth_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    bool8 collision;
    u8 movementActionId;

    if (objectEvent->directionSequenceIndex && objectEvent->initialCoords.x == objectEvent->currentCoords.x && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 0;
        SetObjectEventDirection(objectEvent, GetOppositeDirection(objectEvent->movementDirection));
    }
    collision = GetCollisionInDirection(objectEvent, objectEvent->movementDirection);
    movementActionId = GetWalkNormalMovementAction(objectEvent->movementDirection);
    if (collision == COLLISION_OUTSIDE_RANGE)
    {
        objectEvent->directionSequenceIndex++;
        SetObjectEventDirection(objectEvent, GetOppositeDirection(objectEvent->movementDirection));
        movementActionId = GetWalkNormalMovementAction(objectEvent->movementDirection);
        collision = GetCollisionInDirection(objectEvent, objectEvent->movementDirection);
    }

    if (collision)
        movementActionId = GetWalkInPlaceNormalMovementAction(objectEvent->facingDirection);

    ObjectEventSetSingleMovement(objectEvent, sprite, movementActionId);
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 3;
    return 1;
}

bool8 MovementType_WalkBackAndForth_Step3(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 1;
    }
    return 0;
}

bool8 MovementType_WalkSequence_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    sprite->data[1] = 1;
    return 1;
}

bool8 MoveNextDirectionInSequence(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 *route)
{
    u8 collision;
    u8 movementActionId;

    if (objectEvent->directionSequenceIndex == 3 && objectEvent->initialCoords.x == objectEvent->currentCoords.x && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
        objectEvent->directionSequenceIndex = 0;

    SetObjectEventDirection(objectEvent, route[objectEvent->directionSequenceIndex]);
    movementActionId = GetWalkNormalMovementAction(objectEvent->movementDirection);
    collision = GetCollisionInDirection(objectEvent, objectEvent->movementDirection);
    if (collision == COLLISION_OUTSIDE_RANGE)
    {
        objectEvent->directionSequenceIndex++;
        SetObjectEventDirection(objectEvent, route[objectEvent->directionSequenceIndex]);
        movementActionId = GetWalkNormalMovementAction(objectEvent->movementDirection);
        collision = GetCollisionInDirection(objectEvent, objectEvent->movementDirection);
    }

    if (collision)
        movementActionId = GetWalkInPlaceNormalMovementAction(objectEvent->facingDirection);

    ObjectEventSetSingleMovement(objectEvent, sprite, movementActionId);
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

bool8 MovementType_WalkSequence_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 1;
    }
    return 0;
}

static u8 MovementType_WalkSequenceUpRightLeftDown_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceUpRightLeftDown(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceUpRightLeftDown_callback);}static u8 MovementType_WalkSequenceUpRightLeftDown_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceUpRightLeftDown[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceUpRightLeftDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gUpRightLeftDownDirections)];
    memcpy(directions, gUpRightLeftDownDirections, sizeof(gUpRightLeftDownDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceRightLeftDownUp_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceRightLeftDownUp(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceRightLeftDownUp_callback);}static u8 MovementType_WalkSequenceRightLeftDownUp_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceRightLeftDownUp[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceRightLeftDownUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gRightLeftDownUpDirections)];
    memcpy(directions, gRightLeftDownUpDirections, sizeof(gRightLeftDownUpDirections));
    if (objectEvent->directionSequenceIndex == 1 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceDownUpRightLeft_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceDownUpRightLeft(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceDownUpRightLeft_callback);}static u8 MovementType_WalkSequenceDownUpRightLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceDownUpRightLeft[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceDownUpRightLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gDownUpRightLeftDirections)];
    memcpy(directions, gDownUpRightLeftDirections, sizeof(gDownUpRightLeftDirections));
    if (objectEvent->directionSequenceIndex == 1 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceLeftDownUpRight_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceLeftDownUpRight(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceLeftDownUpRight_callback);}static u8 MovementType_WalkSequenceLeftDownUpRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceLeftDownUpRight[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceLeftDownUpRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gLeftDownUpRightDirections)];
    memcpy(directions, gLeftDownUpRightDirections, sizeof(gLeftDownUpRightDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceUpLeftRightDown_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceUpLeftRightDown(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceUpLeftRightDown_callback);}static u8 MovementType_WalkSequenceUpLeftRightDown_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceUpLeftRightDown[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceUpLeftRightDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gUpLeftRightDownDirections)];
    memcpy(directions, gUpLeftRightDownDirections, sizeof(gUpLeftRightDownDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceLeftRightDownUp_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceLeftRightDownUp(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceLeftRightDownUp_callback);}static u8 MovementType_WalkSequenceLeftRightDownUp_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceLeftRightDownUp[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceLeftRightDownUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gLeftRightDownUpDirections)];
    memcpy(directions, gLeftRightDownUpDirections, sizeof(gLeftRightDownUpDirections));
    if (objectEvent->directionSequenceIndex == 1 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceDownUpLeftRight_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceDownUpLeftRight(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceDownUpLeftRight_callback);}static u8 MovementType_WalkSequenceDownUpLeftRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceDownUpLeftRight[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceDownUpLeftRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gStandardDirections)];
    memcpy(directions, gStandardDirections, sizeof(gStandardDirections));
    if (objectEvent->directionSequenceIndex == 1 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceRightDownUpLeft_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceRightDownUpLeft(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceRightDownUpLeft_callback);}static u8 MovementType_WalkSequenceRightDownUpLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceRightDownUpLeft[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceRightDownUpLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gRightDownUpLeftDirections)];
    memcpy(directions, gRightDownUpLeftDirections, sizeof(gRightDownUpLeftDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceLeftUpDownRight_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceLeftUpDownRight(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceLeftUpDownRight_callback);}static u8 MovementType_WalkSequenceLeftUpDownRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceLeftUpDownRight[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceLeftUpDownRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gLeftUpDownRightDirections)];
    memcpy(directions, gLeftUpDownRightDirections, sizeof(gLeftUpDownRightDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceUpDownRightLeft_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceUpDownRightLeft(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceUpDownRightLeft_callback);}static u8 MovementType_WalkSequenceUpDownRightLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceUpDownRightLeft[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceUpDownRightLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gUpDownRightLeftDirections)];
    memcpy(directions, gUpDownRightLeftDirections, sizeof(gUpDownRightLeftDirections));
    if (objectEvent->directionSequenceIndex == 1 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceRightLeftUpDown_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceRightLeftUpDown(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceRightLeftUpDown_callback);}static u8 MovementType_WalkSequenceRightLeftUpDown_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceRightLeftUpDown[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceRightLeftUpDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gRightLeftUpDownDirections)];
    memcpy(directions, gRightLeftUpDownDirections, sizeof(gRightLeftUpDownDirections));
    if (objectEvent->directionSequenceIndex == 1 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceDownRightLeftUp_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceDownRightLeftUp(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceDownRightLeftUp_callback);}static u8 MovementType_WalkSequenceDownRightLeftUp_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceDownRightLeftUp[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceDownRightLeftUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gDownRightLeftUpDirections)];
    memcpy(directions, gDownRightLeftUpDirections, sizeof(gDownRightLeftUpDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceRightUpDownLeft_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceRightUpDownLeft(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceRightUpDownLeft_callback);}static u8 MovementType_WalkSequenceRightUpDownLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceRightUpDownLeft[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceRightUpDownLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gRightUpDownLeftDirections)];
    memcpy(directions, gRightUpDownLeftDirections, sizeof(gRightUpDownLeftDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceUpDownLeftRight_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceUpDownLeftRight(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceUpDownLeftRight_callback);}static u8 MovementType_WalkSequenceUpDownLeftRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceUpDownLeftRight[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceUpDownLeftRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gUpDownLeftRightDirections)];
    memcpy(directions, gUpDownLeftRightDirections, sizeof(gUpDownLeftRightDirections));
    if (objectEvent->directionSequenceIndex == 1 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceLeftRightUpDown_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceLeftRightUpDown(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceLeftRightUpDown_callback);}static u8 MovementType_WalkSequenceLeftRightUpDown_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceLeftRightUpDown[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceLeftRightUpDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gLeftRightUpDownDirections)];
    memcpy(directions, gLeftRightUpDownDirections, sizeof(gLeftRightUpDownDirections));
    if (objectEvent->directionSequenceIndex == 1 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 2;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceDownLeftRightUp_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceDownLeftRightUp(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceDownLeftRightUp_callback);}static u8 MovementType_WalkSequenceDownLeftRightUp_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceDownLeftRightUp[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceDownLeftRightUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gDownLeftRightUpDirections)];
    memcpy(directions, gDownLeftRightUpDirections, sizeof(gDownLeftRightUpDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceUpLeftDownRight_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceUpLeftDownRight(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceUpLeftDownRight_callback);}static u8 MovementType_WalkSequenceUpLeftDownRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceUpLeftDownRight[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceUpLeftDownRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gUpLeftDownRightDirections)];
    memcpy(directions, gUpLeftDownRightDirections, sizeof(gUpLeftDownRightDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceDownRightUpLeft_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceDownRightUpLeft(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceDownRightUpLeft_callback);}static u8 MovementType_WalkSequenceDownRightUpLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceDownRightUpLeft[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceDownRightUpLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gDownRightUpLeftDirections)];
    memcpy(directions, gDownRightUpLeftDirections, sizeof(gDownRightUpLeftDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceLeftDownRightUp_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceLeftDownRightUp(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceLeftDownRightUp_callback);}static u8 MovementType_WalkSequenceLeftDownRightUp_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceLeftDownRightUp[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceLeftDownRightUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gLeftDownRightUpDirections)];
    memcpy(directions, gLeftDownRightUpDirections, sizeof(gLeftDownRightUpDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceRightUpLeftDown_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceRightUpLeftDown(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceRightUpLeftDown_callback);}static u8 MovementType_WalkSequenceRightUpLeftDown_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceRightUpLeftDown[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceRightUpLeftDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gRightUpLeftDownDirections)];
    memcpy(directions, gRightUpLeftDownDirections, sizeof(gRightUpLeftDownDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceUpRightDownLeft_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceUpRightDownLeft(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceUpRightDownLeft_callback);}static u8 MovementType_WalkSequenceUpRightDownLeft_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceUpRightDownLeft[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceUpRightDownLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gUpRightDownLeftDirections)];
    memcpy(directions, gUpRightDownLeftDirections, sizeof(gUpRightDownLeftDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceDownLeftUpRight_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceDownLeftUpRight(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceDownLeftUpRight_callback);}static u8 MovementType_WalkSequenceDownLeftUpRight_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceDownLeftUpRight[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceDownLeftUpRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gDownLeftUpRightDirections)];
    memcpy(directions, gDownLeftUpRightDirections, sizeof(gDownLeftUpRightDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.y == objectEvent->currentCoords.y)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceLeftUpRightDown_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceLeftUpRightDown(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceLeftUpRightDown_callback);}static u8 MovementType_WalkSequenceLeftUpRightDown_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceLeftUpRightDown[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceLeftUpRightDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gLeftUpRightDownDirections)];
    memcpy(directions, gLeftUpRightDownDirections, sizeof(gLeftUpRightDownDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_WalkSequenceRightDownLeftUp_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSequenceRightDownLeftUp(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSequenceRightDownLeftUp_callback);}static u8 MovementType_WalkSequenceRightDownLeftUp_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSequenceRightDownLeftUp[sprite->data[1]](objectEvent, sprite);}

u8 MovementType_WalkSequenceRightDownLeftUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 directions[sizeof(gRightDownLeftUpDirections)];
    memcpy(directions, gRightDownLeftUpDirections, sizeof(gRightDownLeftUpDirections));
    if (objectEvent->directionSequenceIndex == 2 && objectEvent->initialCoords.x == objectEvent->currentCoords.x)
    {
        objectEvent->directionSequenceIndex = 3;
    }
    return MoveNextDirectionInSequence(objectEvent, sprite, directions);
}

static u8 MovementType_CopyPlayer_callback(struct ObjectEvent *, struct Sprite *);void MovementType_CopyPlayer(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_CopyPlayer_callback);}static u8 MovementType_CopyPlayer_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_CopyPlayer[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_CopyPlayer_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    if (objectEvent->directionSequenceIndex == 0)
    {
        objectEvent->directionSequenceIndex = GetPlayerFacingDirection();
    }
    sprite->data[1] = 1;
    return 1;
}

bool8 MovementType_CopyPlayer_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (gObjectEvents[gPlayerAvatar.objectEventId].movementActionId == 0xFF || gPlayerAvatar.tileTransitionState == T_TILE_CENTER)
    {
        return 0;
    }
    return gCopyPlayerMovementFuncs[PlayerGetCopyableMovement()](objectEvent, sprite, GetPlayerMovementDirection(), ((void *)0));
}

bool8 MovementType_CopyPlayer_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        objectEvent->singleMovementActive = 0;
        sprite->data[1] = 1;
    }
    return 0;
}

bool8 CopyablePlayerMovement_None(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    return 0;
}

bool8 CopyablePlayerMovement_FaceDirection(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(state_to_direction(gInitialMovementTypeFacingDirections[objectEvent->movementType], objectEvent->directionSequenceIndex, playerDirection)));
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

bool8 CopyablePlayerMovement_GoSpeed0(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;
    s16 x;
    s16 y;

    direction = playerDirection;
    if (ObjectEventIsFarawayIslandMew(objectEvent))
    {
        direction = GetMewMoveDirection();
        if (direction == 0)
        {
            direction = playerDirection;
            direction = state_to_direction(gInitialMovementTypeFacingDirections[objectEvent->movementType], objectEvent->directionSequenceIndex, direction);
            ObjectEventMoveDestCoords(objectEvent, direction, &x, &y);
            ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(direction));
            objectEvent->singleMovementActive = 1;
            sprite->data[1] = 2;
            return 1;
        }
    }
    else
    {
        direction = state_to_direction(gInitialMovementTypeFacingDirections[objectEvent->movementType], objectEvent->directionSequenceIndex, direction);
    }
    ObjectEventMoveDestCoords(objectEvent, direction, &x, &y);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkNormalMovementAction(direction));
    if (GetCollisionAtCoords(objectEvent, x, y, direction) || (tileCallback != ((void *)0) && !tileCallback(MapGridGetMetatileBehaviorAt(x, y))))
    {
        ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(direction));
    }
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

bool8 CopyablePlayerMovement_GoSpeed1(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;
    s16 x;
    s16 y;

    direction = playerDirection;
    direction = state_to_direction(gInitialMovementTypeFacingDirections[objectEvent->movementType], objectEvent->directionSequenceIndex, direction);
    ObjectEventMoveDestCoords(objectEvent, direction, &x, &y);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkFastMovementAction(direction));
    if (GetCollisionAtCoords(objectEvent, x, y, direction) || (tileCallback != ((void *)0) && !tileCallback(MapGridGetMetatileBehaviorAt(x, y))))
    {
        ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(direction));
    }
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

bool8 CopyablePlayerMovement_GoSpeed2(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;
    s16 x;
    s16 y;

    direction = playerDirection;
    direction = state_to_direction(gInitialMovementTypeFacingDirections[objectEvent->movementType], objectEvent->directionSequenceIndex, direction);
    ObjectEventMoveDestCoords(objectEvent, direction, &x, &y);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkFastestMovementAction(direction));
    if (GetCollisionAtCoords(objectEvent, x, y, direction) || (tileCallback != ((void *)0) && !tileCallback(MapGridGetMetatileBehaviorAt(x, y))))
    {
        ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(direction));
    }
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

bool8 CopyablePlayerMovement_Slide(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;
    s16 x;
    s16 y;

    direction = playerDirection;
    direction = state_to_direction(gInitialMovementTypeFacingDirections[objectEvent->movementType], objectEvent->directionSequenceIndex, direction);
    ObjectEventMoveDestCoords(objectEvent, direction, &x, &y);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetSlideMovementAction(direction));
    if (GetCollisionAtCoords(objectEvent, x, y, direction) || (tileCallback != ((void *)0) && !tileCallback(MapGridGetMetatileBehaviorAt(x, y))))
    {
        ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(direction));
    }
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

bool8 cph_IM_DIFFERENT(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;

    direction = playerDirection;
    direction = state_to_direction(gInitialMovementTypeFacingDirections[objectEvent->movementType], objectEvent->directionSequenceIndex, direction);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetJumpInPlaceMovementAction(direction));
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

bool8 CopyablePlayerMovement_GoSpeed4(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;
    s16 x;
    s16 y;

    direction = playerDirection;
    direction = state_to_direction(gInitialMovementTypeFacingDirections[objectEvent->movementType], objectEvent->directionSequenceIndex, direction);
    ObjectEventMoveDestCoords(objectEvent, direction, &x, &y);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetJumpMovementAction(direction));
    if (GetCollisionAtCoords(objectEvent, x, y, direction) || (tileCallback != ((void *)0) && !tileCallback(MapGridGetMetatileBehaviorAt(x, y))))
    {
        ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(direction));
    }
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

bool8 CopyablePlayerMovement_Jump(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 playerDirection, bool8 tileCallback(u8))
{
    u32 direction;
    s16 x;
    s16 y;

    direction = playerDirection;
    direction = state_to_direction(gInitialMovementTypeFacingDirections[objectEvent->movementType], objectEvent->directionSequenceIndex, direction);
    x = objectEvent->currentCoords.x;
    y = objectEvent->currentCoords.y;
    MoveCoordsInDirection(direction, &x, &y, 2, 2);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetJump2MovementAction(direction));
    if (GetCollisionAtCoords(objectEvent, x, y, direction) || (tileCallback != ((void *)0) && !tileCallback(MapGridGetMetatileBehaviorAt(x, y))))
    {
        ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(direction));
    }
    objectEvent->singleMovementActive = 1;
    sprite->data[1] = 2;
    return 1;
}

static u8 MovementType_CopyPlayerInGrass_callback(struct ObjectEvent *, struct Sprite *);void MovementType_CopyPlayerInGrass(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_CopyPlayerInGrass_callback);}static u8 MovementType_CopyPlayerInGrass_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_CopyPlayerInGrass[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_CopyPlayerInGrass_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (gObjectEvents[gPlayerAvatar.objectEventId].movementActionId == 0xFF || gPlayerAvatar.tileTransitionState == T_TILE_CENTER)
    {
        return 0;
    }
    return gCopyPlayerMovementFuncs[PlayerGetCopyableMovement()](objectEvent, sprite, GetPlayerMovementDirection(), MetatileBehavior_IsPokeGrass);
}

void MovementType_TreeDisguise(struct Sprite *sprite)
{
    struct ObjectEvent *objectEvent;

    objectEvent = &gObjectEvents[sprite->data[0]];
    if (objectEvent->directionSequenceIndex == 0 || (objectEvent->directionSequenceIndex == 1 && !sprite->data[7]))
    {
        ObjectEventGetLocalIdAndMap(objectEvent, &gFieldEffectArguments[0], &gFieldEffectArguments[1], &gFieldEffectArguments[2]);
        objectEvent->fieldEffectSpriteId = FieldEffectStart(28);
        objectEvent->directionSequenceIndex = 1;
        sprite->data[7]++;
    }
    UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_Disguise_Callback);
}

static bool8 MovementType_Disguise_Callback(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    return 0;
}

void MovementType_MountainDisguise(struct Sprite *sprite)
{
    struct ObjectEvent *objectEvent;

    objectEvent = &gObjectEvents[sprite->data[0]];
    if (objectEvent->directionSequenceIndex == 0 || (objectEvent->directionSequenceIndex == 1 && !sprite->data[7]))
    {
        ObjectEventGetLocalIdAndMap(objectEvent, &gFieldEffectArguments[0], &gFieldEffectArguments[1], &gFieldEffectArguments[2]);
        objectEvent->fieldEffectSpriteId = FieldEffectStart(29);
        objectEvent->directionSequenceIndex = 1;
        sprite->data[7]++;
    }
    UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_Disguise_Callback);
}

void MovementType_Hidden(struct Sprite *sprite)
{
    if (!sprite->data[7])
    {
        gObjectEvents[sprite->data[0]].fixedPriority = 1;
        sprite->subspriteMode = SUBSPRITES_IGNORE_PRIORITY;
        sprite->oam.priority = 3;
        sprite->data[7]++;
    }
    UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_Hidden_Callback);
}

static bool8 MovementType_Hidden_Callback(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    return gMovementTypeFuncs_Hidden[sprite->data[1]](objectEvent, sprite);
}

bool8 MovementType_Hidden_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    return 0;
}

bool8 MovementType_MoveInPlace_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        sprite->data[1] = 0;
    }
    return 0;
}

static u8 MovementType_WalkInPlace_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkInPlace(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkInPlace_callback);}static u8 MovementType_WalkInPlace_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkInPlace[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_WalkInPlace_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkInPlaceNormalMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_WalkSlowlyInPlace_callback(struct ObjectEvent *, struct Sprite *);void MovementType_WalkSlowlyInPlace(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_WalkSlowlyInPlace_callback);}static u8 MovementType_WalkSlowlyInPlace_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_WalkSlowlyInPlace[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_WalkSlowlyInPlace_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkInPlaceSlowMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_JogInPlace_callback(struct ObjectEvent *, struct Sprite *);void MovementType_JogInPlace(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_JogInPlace_callback);}static u8 MovementType_JogInPlace_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_JogInPlace[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_JogInPlace_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkInPlaceFastMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_RunInPlace_callback(struct ObjectEvent *, struct Sprite *);void MovementType_RunInPlace(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_RunInPlace_callback);}static u8 MovementType_RunInPlace_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_RunInPlace[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_RunInPlace_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetWalkInPlaceFastestMovementAction(objectEvent->facingDirection));
    sprite->data[1] = 1;
    return 1;
}

static u8 MovementType_Invisible_callback(struct ObjectEvent *, struct Sprite *);void MovementType_Invisible(struct Sprite *sprite){ UpdateObjectEventCurrentMovement(&gObjectEvents[sprite->data[0]], sprite, MovementType_Invisible_callback);}static u8 MovementType_Invisible_callback(struct ObjectEvent *objectEvent, struct Sprite *sprite){ return gMovementTypeFuncs_Invisible[sprite->data[1]](objectEvent, sprite);}

bool8 MovementType_Invisible_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ClearObjectEventMovement(objectEvent, sprite);
    ObjectEventSetSingleMovement(objectEvent, sprite, GetFaceDirectionMovementAction(objectEvent->facingDirection));
    objectEvent->invisible = 1;
    sprite->data[1] = 1;
    return 1;
}
bool8 MovementType_Invisible_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (ObjectEventExecSingleMovementAction(objectEvent, sprite))
    {
        sprite->data[1] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementType_Invisible_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->singleMovementActive = 0;
    return 0;
}

static void ClearObjectEventMovement(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->singleMovementActive = 0;
    objectEvent->heldMovementActive = 0;
    objectEvent->heldMovementFinished = 0;
    objectEvent->movementActionId = 0xFF;
    sprite->data[1] = 0;
}

u8 GetFaceDirectionAnimNum(u8 direction)
{
    return gFaceDirectionAnimNums[direction];
}

u8 GetMoveDirectionAnimNum(u8 direction)
{
    return gMoveDirectionAnimNums[direction];
}

u8 GetMoveDirectionFastAnimNum(u8 direction)
{
    return gMoveDirectionFastAnimNums[direction];
}

u8 GetMoveDirectionFasterAnimNum(u8 direction)
{
    return gMoveDirectionFasterAnimNums[direction];
}

u8 GetMoveDirectionFastestAnimNum(u8 direction)
{
    return gMoveDirectionFastestAnimNums[direction];
}

u8 GetJumpSpecialDirectionAnimNum(u8 direction)
{
    return gJumpSpecialDirectionAnimNums[direction];
}

u8 GetAcroWheelieDirectionAnimNum(u8 direction)
{
    return gAcroWheelieDirectionAnimNums[direction];
}

u8 Unref_GetAnimNums_08375633(u8 direction)
{
    return gUnrefAnimNums_08375633[direction];
}

u8 GetAcroEndWheelieDirectionAnimNum(u8 direction)
{
    return gAcroEndWheelieDirectionAnimNums[direction];
}

u8 GetAcroUnusedActionDirectionAnimNum(u8 direction)
{
    return gAcroUnusedActionDirectionAnimNums[direction];
}

u8 GetAcroWheeliePedalDirectionAnimNum(u8 direction)
{
    return gAcroWheeliePedalDirectionAnimNums[direction];
}

u8 GetFishingDirectionAnimNum(u8 direction)
{
    return gFishingDirectionAnimNums[direction];
}

u8 GetFishingNoCatchDirectionAnimNum(u8 direction)
{
    return gFishingNoCatchDirectionAnimNums[direction];
}

u8 GetFishingBiteDirectionAnimNum(u8 direction)
{
    return gFishingBiteDirectionAnimNums[direction];
}

u8 GetRunningDirectionAnimNum(u8 direction)
{
    return gRunningDirectionAnimNums[direction];
}

static const struct UnkStruct_085094AC *sub_8092A4C(const union AnimCmd *const *anims)
{
    const struct UnkStruct_085094AC *retval;

    for (retval = gUnknown_085094AC; retval->anims != ((void *)0); retval++)
    {
        if (retval->anims == anims)
        {
            return retval;
        }
    }
    return ((void *)0);
}

void npc_apply_anim_looping(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 animNum)
{
    const struct UnkStruct_085094AC *unk85094AC;

    if (!objectEvent->inanimate)
    {
        sprite->animNum = animNum;
        unk85094AC = sub_8092A4C(sprite->anims);
        if (unk85094AC != ((void *)0))
        {
            if (sprite->animCmdIndex == unk85094AC->animPos[0])
            {
                sprite->animCmdIndex = unk85094AC->animPos[3];
            }
            else if (sprite->animCmdIndex == unk85094AC->animPos[1])
            {
                sprite->animCmdIndex = unk85094AC->animPos[2];
            }
        }
        SeekSpriteAnim(sprite, sprite->animCmdIndex);
    }
}

void obj_npc_animation_step(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 animNum)
{
    const struct UnkStruct_085094AC *unk85094AC;

    if (!objectEvent->inanimate)
    {
        u8 animPos;

        sprite->animNum = animNum;
        unk85094AC = sub_8092A4C(sprite->anims);
        if (unk85094AC != ((void *)0))
        {
            animPos = unk85094AC->animPos[1];
            if (sprite->animCmdIndex <= unk85094AC->animPos[0])
            {
                animPos = unk85094AC->animPos[0];
            }
            SeekSpriteAnim(sprite, animPos);
        }
    }
}



u8 GetDirectionToFace(s16 x1, s16 y1, s16 x2, s16 y2)
{
    if (x1 > x2)
    {
        return 3;
    }
    if (x1 < x2)
    {
        return 4;
    }
    if (y1 > y2)
    {
        return 2;
    }
    return 1;
}

void SetTrainerMovementType(struct ObjectEvent *objectEvent, u8 movementType)
{
    objectEvent->movementType = movementType;
    objectEvent->directionSequenceIndex = 0;
    objectEvent->playerCopyableMovement = 0;
    gSprites[objectEvent->spriteId].callback = sMovementTypeCallbacks[movementType];
    gSprites[objectEvent->spriteId].data[1] = 0;
}

u8 GetTrainerFacingDirectionMovementType(u8 direction)
{
    return gTrainerFacingDirectionMovementTypes[direction];
}

static u8 GetCollisionInDirection(struct ObjectEvent *objectEvent, u8 direction)
{
    s16 x;
    s16 y;
    x = objectEvent->currentCoords.x;
    y = objectEvent->currentCoords.y;
    MoveCoords(direction, &x, &y);
    return GetCollisionAtCoords(objectEvent, x, y, direction);
}

u8 GetCollisionAtCoords(struct ObjectEvent *objectEvent, s16 x, s16 y, u32 dir)
{
    u8 direction = dir;
    if (IsCoordOutsideObjectEventMovementRange(objectEvent, x, y))
        return COLLISION_OUTSIDE_RANGE;
    else if (MapGridIsImpassableAt(x, y) || GetMapBorderIdAt(x, y) == -1 || IsMetatileDirectionallyImpassable(objectEvent, x, y, direction))
        return COLLISION_IMPASSABLE;
    else if (objectEvent->trackedByCamera && !CanCameraMoveInDirection(direction))
        return COLLISION_IMPASSABLE;
    else if (IsZCoordMismatchAt(objectEvent->currentElevation, x, y))
        return COLLISION_ELEVATION_MISMATCH;
    else if (DoesObjectCollideWithObjectAt(objectEvent, x, y))
        return COLLISION_OBJECT_EVENT;
    return COLLISION_NONE;
}

u8 GetCollisionFlagsAtCoords(struct ObjectEvent *objectEvent, s16 x, s16 y, u8 direction)
{
    u8 flags = 0;

    if (IsCoordOutsideObjectEventMovementRange(objectEvent, x, y))
        flags |= 1;
    if (MapGridIsImpassableAt(x, y) || GetMapBorderIdAt(x, y) == -1 || IsMetatileDirectionallyImpassable(objectEvent, x, y, direction) || (objectEvent->trackedByCamera && !CanCameraMoveInDirection(direction)))
        flags |= 2;
    if (IsZCoordMismatchAt(objectEvent->currentElevation, x, y))
        flags |= 4;
    if (DoesObjectCollideWithObjectAt(objectEvent, x, y))
        flags |= 8;
    return flags;
}

static bool8 IsCoordOutsideObjectEventMovementRange(struct ObjectEvent *objectEvent, s16 x, s16 y)
{
    s16 left;
    s16 right;
    s16 top;
    s16 bottom;

    if (objectEvent->range.as_nybbles.x != 0)
    {
        left = objectEvent->initialCoords.x - objectEvent->range.as_nybbles.x;
        right = objectEvent->initialCoords.x + objectEvent->range.as_nybbles.x;
        if (left > x || right < x)
        {
            return 1;
        }
    }
    if (objectEvent->range.as_nybbles.y != 0)
    {
        top = objectEvent->initialCoords.y - objectEvent->range.as_nybbles.y;
        bottom = objectEvent->initialCoords.y + objectEvent->range.as_nybbles.y;
        if (top > y || bottom < y)
        {
            return 1;
        }
    }
    return 0;
}

static bool8 IsMetatileDirectionallyImpassable(struct ObjectEvent *objectEvent, s16 x, s16 y, u8 direction)
{
    if (gOppositeDirectionBlockedMetatileFuncs[direction - 1](objectEvent->currentMetatileBehavior)
        || gDirectionBlockedMetatileFuncs[direction - 1](MapGridGetMetatileBehaviorAt(x, y)))
    {
        return 1;
    }
    return 0;
}

static bool8 DoesObjectCollideWithObjectAt(struct ObjectEvent *objectEvent, s16 x, s16 y)
{
    u8 i;
    struct ObjectEvent *curObject;

    for (i = 0; i < 16; i++)
    {
        curObject = &gObjectEvents[i];
        if (curObject->active && curObject != objectEvent)
        {
            if ((curObject->currentCoords.x == x && curObject->currentCoords.y == y) || (curObject->previousCoords.x == x && curObject->previousCoords.y == y))
            {
                if (AreZCoordsCompatible(objectEvent->currentElevation, curObject->currentElevation))
                {
                    return 1;
                }
            }
        }
    }
    return 0;
}

bool8 IsBerryTreeSparkling(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 objectEventId;

    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId)
        && gSprites[gObjectEvents[objectEventId].spriteId].data[7] & 2)
    {
        return 1;
    }

    return 0;
}

void sub_8092EF0(u8 localId, u8 mapNum, u8 mapGroup)
{
    u8 objectEventId;

    if (!TryGetObjectEventIdByLocalIdAndMap(localId, mapNum, mapGroup, &objectEventId))
    {
        gSprites[gObjectEvents[objectEventId].spriteId].data[7] |= 0x04;
    }
}

void MoveCoords(u8 direction, s16 *x, s16 *y)
{
    *x += sDirectionToVectors[direction].x;
    *y += sDirectionToVectors[direction].y;
}

void sub_8092F60(u8 direction, s16 *x, s16 *y)
{
    *x += sDirectionToVectors[direction].x << 4;
    *y += sDirectionToVectors[direction].y << 4;
}

static void MoveCoordsInDirection(u32 dir, s16 *x, s16 *y, s16 deltaX, s16 deltaY)
{
    u8 direction = dir;
    s16 dx2 = (u16)deltaX;
    s16 dy2 = (u16)deltaY;
    if (sDirectionToVectors[direction].x > 0)
        *x += dx2;
    if (sDirectionToVectors[direction].x < 0)
        *x -= dx2;
    if (sDirectionToVectors[direction].y > 0)
        *y += dy2;
    if (sDirectionToVectors[direction].y < 0)
        *y -= dy2;
}

void sub_8092FF0(s16 x, s16 y, s16 *destX, s16 *destY)
{
    *destX = (x - gSaveBlock1Ptr->pos.x) << 4;
    *destY = (y - gSaveBlock1Ptr->pos.y) << 4;
    *destX -= gTotalCameraPixelOffsetX;
    *destY -= gTotalCameraPixelOffsetY;
}

void SetSpritePosToMapCoords(s16 mapX, s16 mapY, s16 *destX, s16 *destY)
{
    s16 dx = -gTotalCameraPixelOffsetX - gFieldCamera.x;
    s16 dy = -gTotalCameraPixelOffsetY - gFieldCamera.y;
    if (gFieldCamera.x > 0)
        dx += 1 << 4;

    if (gFieldCamera.x < 0)
        dx -= 1 << 4;

    if (gFieldCamera.y > 0)
        dy += 1 << 4;

    if (gFieldCamera.y < 0)
        dy -= 1 << 4;

    *destX = ((mapX - gSaveBlock1Ptr->pos.x) << 4) + dx;
    *destY = ((mapY - gSaveBlock1Ptr->pos.y) << 4) + dy;
}

void sub_80930E0(s16 *x, s16 *y, s16 dx, s16 dy)
{
    SetSpritePosToMapCoords(*x, *y, x, y);
    *x += dx;
    *y += dy;
}

static void GetObjectEventMovingCameraOffset(s16 *x, s16 *y)
{
    *x = 0;
    *y = 0;
    if (gFieldCamera.x > 0)
    {
        (*x)++;
    }
    if (gFieldCamera.x < 0)
    {
        (*x) --;
    }
    if (gFieldCamera.y > 0)
    {
        (*y)++;
    }
    if (gFieldCamera.y < 0)
    {
        (*y) --;
    }
}

void ObjectEventMoveDestCoords(struct ObjectEvent *objectEvent, u32 direction, s16 *x, s16 *y)
{
    u8 newDirn = direction;
    *x = objectEvent->currentCoords.x;
    *y = objectEvent->currentCoords.y;
    MoveCoords(newDirn, x, y);
}

bool8 ObjectEventIsMovementOverridden(struct ObjectEvent *objectEvent)
{
    if (objectEvent->singleMovementActive || objectEvent->heldMovementActive)
        return 1;

    return 0;
}

bool8 ObjectEventIsHeldMovementActive(struct ObjectEvent *objectEvent)
{
    if (objectEvent->heldMovementActive && objectEvent->movementActionId != 0xFF)
        return 1;

    return 0;
}

bool8 ObjectEventSetHeldMovement(struct ObjectEvent *objectEvent, u8 movementActionId)
{
    if (ObjectEventIsMovementOverridden(objectEvent))
        return 1;

    UnfreezeObjectEvent(objectEvent);
    objectEvent->movementActionId = movementActionId;
    objectEvent->heldMovementActive = 1;
    objectEvent->heldMovementFinished = 0;
    gSprites[objectEvent->spriteId].data[2] = 0;
    return 0;
}

void ObjectEventForceSetHeldMovement(struct ObjectEvent *objectEvent, u8 movementActionId)
{
    ObjectEventClearHeldMovementIfActive(objectEvent);
    ObjectEventSetHeldMovement(objectEvent, movementActionId);
}

void ObjectEventClearHeldMovementIfActive(struct ObjectEvent *objectEvent)
{
    if (objectEvent->heldMovementActive)
        ObjectEventClearHeldMovement(objectEvent);
}

void ObjectEventClearHeldMovement(struct ObjectEvent *objectEvent)
{
    objectEvent->movementActionId = 0xFF;
    objectEvent->heldMovementActive = 0;
    objectEvent->heldMovementFinished = 0;
    gSprites[objectEvent->spriteId].data[1] = 0;
    gSprites[objectEvent->spriteId].data[2] = 0;
}

u8 ObjectEventCheckHeldMovementStatus(struct ObjectEvent *objectEvent)
{
    if (objectEvent->heldMovementActive)
        return objectEvent->heldMovementFinished;

    return 16;
}

u8 ObjectEventClearHeldMovementIfFinished(struct ObjectEvent *objectEvent)
{
    u8 heldMovementStatus = ObjectEventCheckHeldMovementStatus(objectEvent);
    if (heldMovementStatus != 0 && heldMovementStatus != 16)
        ObjectEventClearHeldMovementIfActive(objectEvent);

    return heldMovementStatus;
}

u8 ObjectEventGetHeldMovementActionId(struct ObjectEvent *objectEvent)
{
    if (objectEvent->heldMovementActive)
        return objectEvent->movementActionId;

    return 0xFF;
}

void UpdateObjectEventCurrentMovement(struct ObjectEvent *objectEvent, struct Sprite *sprite, bool8 (*callback)(struct ObjectEvent *, struct Sprite *))
{
    DoGroundEffects_OnSpawn(objectEvent, sprite);
    TryEnableObjectEventAnim(objectEvent, sprite);
    if (ObjectEventIsHeldMovementActive(objectEvent))
    {
        ObjectEventExecHeldMovementAction(objectEvent, sprite);
    }
    else if (!objectEvent->frozen)
    {
        while (callback(objectEvent, sprite));
    }
    DoGroundEffects_OnBeginStep(objectEvent, sprite);
    DoGroundEffects_OnFinishStep(objectEvent, sprite);
    UpdateObjectEventSpriteAnimPause(objectEvent, sprite);
    UpdateObjectEventVisibility(objectEvent, sprite);
    ObjectEventUpdateSubpriority(objectEvent, sprite);
}
# 5024 "src/event_object_movement.c"
u8 GetFaceDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gFaceDirectionMovementActions)]; direction = idx; memcpy(animIds, (gFaceDirectionMovementActions), sizeof(gFaceDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetWalkSlowMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gWalkSlowMovementActions)]; direction = idx; memcpy(animIds, (gWalkSlowMovementActions), sizeof(gWalkSlowMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetWalkNormalMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gWalkNormalMovementActions)]; direction = idx; memcpy(animIds, (gWalkNormalMovementActions), sizeof(gWalkNormalMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetWalkFastMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gWalkFastMovementActions)]; direction = idx; memcpy(animIds, (gWalkFastMovementActions), sizeof(gWalkFastMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetRideWaterCurrentMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gRideWaterCurrentMovementActions)]; direction = idx; memcpy(animIds, (gRideWaterCurrentMovementActions), sizeof(gRideWaterCurrentMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetWalkFastestMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gWalkFastestMovementActions)]; direction = idx; memcpy(animIds, (gWalkFastestMovementActions), sizeof(gWalkFastestMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetSlideMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gSlideMovementActions)]; direction = idx; memcpy(animIds, (gSlideMovementActions), sizeof(gSlideMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetPlayerRunMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gPlayerRunMovementActions)]; direction = idx; memcpy(animIds, (gPlayerRunMovementActions), sizeof(gPlayerRunMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetJump2MovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gJump2MovementActions)]; direction = idx; memcpy(animIds, (gJump2MovementActions), sizeof(gJump2MovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetJumpInPlaceMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gJumpInPlaceMovementActions)]; direction = idx; memcpy(animIds, (gJumpInPlaceMovementActions), sizeof(gJumpInPlaceMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetJumpInPlaceTurnAroundMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gJumpInPlaceTurnAroundMovementActions)]; direction = idx; memcpy(animIds, (gJumpInPlaceTurnAroundMovementActions), sizeof(gJumpInPlaceTurnAroundMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetJumpMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gJumpMovementActions)]; direction = idx; memcpy(animIds, (gJumpMovementActions), sizeof(gJumpMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetJumpSpecialMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gJumpSpecialMovementActions)]; direction = idx; memcpy(animIds, (gJumpSpecialMovementActions), sizeof(gJumpSpecialMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetWalkInPlaceSlowMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gWalkInPlaceSlowMovementActions)]; direction = idx; memcpy(animIds, (gWalkInPlaceSlowMovementActions), sizeof(gWalkInPlaceSlowMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetWalkInPlaceNormalMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gWalkInPlaceNormalMovementActions)]; direction = idx; memcpy(animIds, (gWalkInPlaceNormalMovementActions), sizeof(gWalkInPlaceNormalMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetWalkInPlaceFastMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gWalkInPlaceFastMovementActions)]; direction = idx; memcpy(animIds, (gWalkInPlaceFastMovementActions), sizeof(gWalkInPlaceFastMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetWalkInPlaceFastestMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gWalkInPlaceFastestMovementActions)]; direction = idx; memcpy(animIds, (gWalkInPlaceFastestMovementActions), sizeof(gWalkInPlaceFastestMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};

bool8 ObjectEventFaceOppositeDirection(struct ObjectEvent *objectEvent, u8 direction)
{
    return ObjectEventSetHeldMovement(objectEvent, GetFaceDirectionMovementAction(GetOppositeDirection(direction)));
}

u8 GetAcroWheelieFaceDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroWheelieFaceDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroWheelieFaceDirectionMovementActions), sizeof(gAcroWheelieFaceDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetAcroPopWheelieFaceDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroPopWheelieFaceDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroPopWheelieFaceDirectionMovementActions), sizeof(gAcroPopWheelieFaceDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetAcroEndWheelieFaceDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroEndWheelieFaceDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroEndWheelieFaceDirectionMovementActions), sizeof(gAcroEndWheelieFaceDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetAcroWheelieHopFaceDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroWheelieHopFaceDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroWheelieHopFaceDirectionMovementActions), sizeof(gAcroWheelieHopFaceDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetAcroWheelieHopDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroWheelieHopDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroWheelieHopDirectionMovementActions), sizeof(gAcroWheelieHopDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetAcroWheelieJumpDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroWheelieJumpDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroWheelieJumpDirectionMovementActions), sizeof(gAcroWheelieJumpDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetAcroWheelieInPlaceDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroWheelieInPlaceDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroWheelieInPlaceDirectionMovementActions), sizeof(gAcroWheelieInPlaceDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetAcroPopWheelieMoveDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroPopWheelieMoveDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroPopWheelieMoveDirectionMovementActions), sizeof(gAcroPopWheelieMoveDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetAcroWheelieMoveDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroWheelieMoveDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroWheelieMoveDirectionMovementActions), sizeof(gAcroWheelieMoveDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};
u8 GetAcroEndWheelieMoveDirectionMovementAction(u32 idx){ u8 direction; u8 animIds[sizeof(gAcroEndWheelieMoveDirectionMovementActions)]; direction = idx; memcpy(animIds, (gAcroEndWheelieMoveDirectionMovementActions), sizeof(gAcroEndWheelieMoveDirectionMovementActions)); if (direction > 4) direction = 0; return animIds[direction];};

u8 GetOppositeDirection(u8 direction)
{
    u8 directions[sizeof gOppositeDirections];

    memcpy(directions, gOppositeDirections, sizeof gOppositeDirections);
    if (direction < 1 || direction > (sizeof gOppositeDirections))
    {
        return direction;
    }
    return directions[direction - 1];
}

static u32 zffu_offset_calc(u8 a0, u8 a1)
{
    return gUnknown_0850DC2F[a0 - 1][a1 - 1];
}

static u32 state_to_direction(u8 a0, u32 a1, u32 a2)
{
    u32 zffuOffset;
    u8 a1_2;
    u8 a2_2;

    a1_2 = a1;
    a2_2 = a2;
    if (a1_2 == 0 || a2_2 == 0 || a1_2 > 4 || a2_2 > 4)
    {
        return 0;
    }
    zffuOffset = zffu_offset_calc(a1_2, a2);
    return gUnknown_0850DC3F[a0 - 1][zffuOffset - 1];
}

static void ObjectEventExecHeldMovementAction(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (gMovementActionFuncs[objectEvent->movementActionId][sprite->data[2]](objectEvent, sprite))
    {
        objectEvent->heldMovementFinished = 1;
    }
}

static bool8 ObjectEventExecSingleMovementAction(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (gMovementActionFuncs[objectEvent->movementActionId][sprite->data[2]](objectEvent, sprite))
    {
        objectEvent->movementActionId = 0xFF;
        sprite->data[2] = 0;
        return 1;
    }
    return 0;
}

static void ObjectEventSetSingleMovement(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 animId)
{
    objectEvent->movementActionId = animId;
    sprite->data[2] = 0;
}

static void FaceDirection(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    SetObjectEventDirection(objectEvent, direction);
    ShiftStillObjectEventCoords(objectEvent);
    obj_npc_animation_step(objectEvent, sprite, GetMoveDirectionAnimNum(objectEvent->facingDirection));
    sprite->animPaused = 1;
    sprite->data[2] = 1;
}

bool8 MovementAction_FaceDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    FaceDirection(objectEvent, sprite, 1);
    return 1;
}

bool8 MovementAction_FaceUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    FaceDirection(objectEvent, sprite, 2);
    return 1;
}

bool8 MovementAction_FaceLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    FaceDirection(objectEvent, sprite, 3);
    return 1;
}

bool8 MovementAction_FaceRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    FaceDirection(objectEvent, sprite, 4);
    return 1;
}

void npc_apply_direction(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 speed)
{
    s16 x;
    s16 y;

    x = objectEvent->currentCoords.x;
    y = objectEvent->currentCoords.y;
    SetObjectEventDirection(objectEvent, direction);
    MoveCoords(direction, &x, &y);
    ShiftObjectEventCoords(objectEvent, x, y);
    oamt_npc_ministep_reset(sprite, direction, speed);
    sprite->animPaused = 0;
    if (gLockedAnimObjectEvents != ((void *)0) && FindLockedObjectEventIndex(objectEvent) != 16)
    {
        sprite->animPaused = 1;
    }
    objectEvent->triggerGroundEffectsOnMove = 1;
    sprite->data[2] = 1;
}

void do_go_anim(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 speed)
{
    u8 (*functions[(size_t)(sizeof(gUnknown_0850DEE8) / sizeof((gUnknown_0850DEE8)[0]))])(u8);

    memcpy(functions, gUnknown_0850DEE8, sizeof gUnknown_0850DEE8);
    npc_apply_direction(objectEvent, sprite, direction, speed);
    npc_apply_anim_looping(objectEvent, sprite, functions[speed](objectEvent->facingDirection));
}

void StartRunningAnim(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    npc_apply_direction(objectEvent, sprite, direction, 1);
    npc_apply_anim_looping(objectEvent, sprite, GetRunningDirectionAnimNum(objectEvent->facingDirection));
}

bool8 npc_obj_ministep_stop_on_arrival(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (obj_npc_ministep(sprite))
    {
        ShiftStillObjectEventCoords(objectEvent);
        objectEvent->triggerGroundEffectsOnStop = 1;
        sprite->animPaused = 1;
        return 1;
    }
    return 0;
}

void sub_8093AF0(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    s16 x;
    s16 y;

    x = objectEvent->currentCoords.x;
    y = objectEvent->currentCoords.y;
    SetObjectEventDirection(objectEvent, direction);
    MoveCoords(direction, &x, &y);
    ShiftObjectEventCoords(objectEvent, x, y);
    sub_80976DC(sprite, direction);
    sprite->animPaused = 0;
    objectEvent->triggerGroundEffectsOnMove = 1;
    sprite->data[2] = 1;
}

void sub_8093B60(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    sub_8093AF0(objectEvent, sprite, direction);
    npc_apply_anim_looping(objectEvent, sprite, GetMoveDirectionAnimNum(objectEvent->facingDirection));
}

bool8 an_walk_any_2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80976EC(sprite))
    {
        ShiftStillObjectEventCoords(objectEvent);
        objectEvent->triggerGroundEffectsOnStop = 1;
        sprite->animPaused = 1;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkSlowDiagonalUpLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8093B60(objectEvent, sprite, 7);
    return MovementAction_WalkSlowDiagonalUpLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkSlowDiagonalUpLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (an_walk_any_2(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkSlowDiagonalUpRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8093B60(objectEvent, sprite, 8);
    return MovementAction_WalkSlowDiagonalUpRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkSlowDiagonalUpRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (an_walk_any_2(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkSlowDiagonalDownLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8093B60(objectEvent, sprite, 5);
    return MovementAction_WalkSlowDiagonalDownLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkSlowDiagonalDownLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (an_walk_any_2(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkSlowDiagonalDownRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8093B60(objectEvent, sprite, 6);
    return MovementAction_WalkSlowDiagonalDownRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkSlowDiagonalDownRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (an_walk_any_2(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkSlowDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8093B60(objectEvent, sprite, 1);
    return MovementAction_WalkSlowDown_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkSlowDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (an_walk_any_2(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkSlowUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8093B60(objectEvent, sprite, 2);
    return MovementAction_WalkSlowUp_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkSlowUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (an_walk_any_2(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkSlowLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8093B60(objectEvent, sprite, 3);
    return MovementAction_WalkSlowLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkSlowLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (an_walk_any_2(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkSlowRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8093B60(objectEvent, sprite, 4);
    return MovementAction_WalkSlowRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkSlowRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (an_walk_any_2(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkNormalDiagonalUpLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 7, 0);
    return MovementAction_WalkNormalDiagonalUpLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkNormalDiagonalUpLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkNormalDiagonalUpRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 8, 0);
    return MovementAction_WalkNormalDiagonalUpRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkNormalDiagonalUpRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkNormalDiagonalDownLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 5, 0);
    return MovementAction_WalkNormalDiagonalDownLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkNormalDiagonalDownLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkNormalDiagonalDownRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 6, 0);
    return MovementAction_WalkNormalDiagonalDownRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkNormalDiagonalDownRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkNormalDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 1, 0);
    return MovementAction_WalkNormalDown_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkNormalDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkNormalUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 2, 0);
    return MovementAction_WalkNormalUp_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkNormalUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkNormalLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 3, 0);
    return MovementAction_WalkNormalLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkNormalLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkNormalRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 4, 0);
    return MovementAction_WalkNormalRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkNormalRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void sub_8093FC4(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 speed, u8 a5)
{
    s16 displacements[(size_t)(sizeof(gUnknown_0850DFBC) / sizeof((gUnknown_0850DFBC)[0]))];
    s16 x;
    s16 y;

    memcpy(displacements, gUnknown_0850DFBC, sizeof gUnknown_0850DFBC);
    x = 0;
    y = 0;
    SetObjectEventDirection(objectEvent, direction);
    MoveCoordsInDirection(direction, &x, &y, displacements[speed], displacements[speed]);
    ShiftObjectEventCoords(objectEvent, objectEvent->currentCoords.x + x, objectEvent->currentCoords.y + y);
    sub_809783C(sprite, direction, speed, a5);
    sprite->data[2] = 1;
    sprite->animPaused = 0;
    objectEvent->triggerGroundEffectsOnMove = 1;
    objectEvent->disableCoveringGroundEffects = 1;
}

void maybe_shadow_1(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 speed, u8 a4)
{
    sub_8093FC4(objectEvent, sprite, direction, speed, a4);
    npc_apply_anim_looping(objectEvent, sprite, GetMoveDirectionAnimNum(objectEvent->facingDirection));
    DoShadowFieldEffect(objectEvent);
}

u8 sub_80940C4(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 callback(struct Sprite *))
{
    s16 displacements[(size_t)(sizeof(gUnknown_0850DFC2) / sizeof((gUnknown_0850DFC2)[0]))];
    s16 x;
    s16 y;
    u8 result;

    memcpy(displacements, gUnknown_0850DFC2, sizeof gUnknown_0850DFC2);
    result = callback(sprite);
    if (result == 1 && displacements[sprite->data[4]] != 0)
    {
        x = 0;
        y = 0;
        MoveCoordsInDirection(objectEvent->movementDirection, &x, &y, displacements[sprite->data[4]], displacements[sprite->data[4]]);
        ShiftObjectEventCoords(objectEvent, objectEvent->currentCoords.x + x, objectEvent->currentCoords.y + y);
        objectEvent->triggerGroundEffectsOnMove = 1;
        objectEvent->disableCoveringGroundEffects = 1;
    }
    else if (result == 0xFF)
    {
        ShiftStillObjectEventCoords(objectEvent);
        objectEvent->triggerGroundEffectsOnStop = 1;
        objectEvent->landingJump = 1;
        sprite->animPaused = 1;
    }
    return result;
}

u8 sub_8094188(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    return sub_80940C4(objectEvent, sprite, sub_809785C);
}

u8 sub_809419C(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    return sub_80940C4(objectEvent, sprite, sub_80978E4);
}

bool8 sub_80941B0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_8094188(objectEvent, sprite) == 0xFF)
    {
        return 1;
    }
    return 0;
}

bool8 sub_80941C8(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_809419C(objectEvent, sprite) == 0xFF)
    {
        return 1;
    }
    return 0;
}

bool8 sub_80941E0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    switch (sub_8094188(objectEvent, sprite))
    {
        case 255:
            return 1;
        case 1:
            SetObjectEventDirection(objectEvent, GetOppositeDirection(objectEvent->movementDirection));
            obj_npc_animation_step(objectEvent, sprite, GetMoveDirectionAnimNum(objectEvent->facingDirection));
        default:
            return 0;
    }
}

bool8 MovementAction_Jump2Down_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    maybe_shadow_1(objectEvent, sprite, 1, 2, 0);
    return MovementAction_Jump2Down_Step1(objectEvent, sprite);
}

bool8 MovementAction_Jump2Down_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_Jump2Up_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    maybe_shadow_1(objectEvent, sprite, 2, 2, 0);
    return MovementAction_Jump2Up_Step1(objectEvent, sprite);
}

bool8 MovementAction_Jump2Up_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_Jump2Left_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    maybe_shadow_1(objectEvent, sprite, 3, 2, 0);
    return MovementAction_Jump2Left_Step1(objectEvent, sprite);
}

bool8 MovementAction_Jump2Left_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_Jump2Right_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    maybe_shadow_1(objectEvent, sprite, 4, 2, 0);
    return MovementAction_Jump2Right_Step1(objectEvent, sprite);
}

bool8 MovementAction_Jump2Right_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}


void sub_8094390(struct Sprite *sprite, u16 duration)
{
    sprite->data[2] = 1;
    sprite->data[3] = duration;
}

bool8 MovementAction_Delay_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (-- sprite->data[3] == 0)
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_Delay1_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094390(sprite, 1);
    return MovementAction_Delay_Step1(objectEvent, sprite);
}

bool8 MovementAction_Delay2_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094390(sprite, 2);
    return MovementAction_Delay_Step1(objectEvent, sprite);
}

bool8 MovementAction_Delay4_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094390(sprite, 4);
    return MovementAction_Delay_Step1(objectEvent, sprite);
}

bool8 MovementAction_Delay8_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094390(sprite, 8);
    return MovementAction_Delay_Step1(objectEvent, sprite);
}

bool8 MovementAction_Delay16_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094390(sprite, 16);
    return MovementAction_Delay_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkFastDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 1, 1);
    return MovementAction_WalkFastDown_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkFastDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkFastUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 2, 1);
    return MovementAction_WalkFastUp_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkFastUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkFastLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 3, 1);
    return MovementAction_WalkFastLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkFastLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkFastRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 4, 1);
    return MovementAction_WalkFastRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkFastRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}


void sub_8094554(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 animNum, u16 duration)
{
    SetObjectEventDirection(objectEvent, direction);
    npc_apply_anim_looping(objectEvent, sprite, animNum);
    sprite->animPaused = 0;
    sprite->data[2] = 1;
    sprite->data[3] = duration;
}

bool8 MovementAction_WalkInPlace_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (-- sprite->data[3] == 0)
    {
        sprite->data[2] = 2;
        sprite->animPaused = 1;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkInPlaceSlow_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sprite->data[3] & 1)
    {
        sprite->animDelayCounter++;
    }
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkInPlaceSlowDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 1, GetMoveDirectionAnimNum(1), 32);
    return MovementAction_WalkInPlaceSlow_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkInPlaceSlowUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 2, GetMoveDirectionAnimNum(2), 32);
    return MovementAction_WalkInPlaceSlow_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkInPlaceSlowLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 3, GetMoveDirectionAnimNum(3), 32);
    return MovementAction_WalkInPlaceSlow_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkInPlaceSlowRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 4, GetMoveDirectionAnimNum(4), 32);
    return MovementAction_WalkInPlaceSlow_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkInPlaceNormalDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 1, GetMoveDirectionAnimNum(1), 16);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkInPlaceNormalUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 2, GetMoveDirectionAnimNum(2), 16);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkInPlaceNormalLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 3, GetMoveDirectionAnimNum(3), 16);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkInPlaceNormalRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 4, GetMoveDirectionAnimNum(4), 16);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkInPlaceFastDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 1, GetMoveDirectionFastAnimNum(1), 8);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkInPlaceFastUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 2, GetMoveDirectionFastAnimNum(2), 8);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkInPlaceFastLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 3, GetMoveDirectionFastAnimNum(3), 8);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkInPlaceFastRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 4, GetMoveDirectionFastAnimNum(4), 8);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkInPlaceFastestDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 1, GetMoveDirectionFasterAnimNum(1), 4);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkInPlaceFastestUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 2, GetMoveDirectionFasterAnimNum(2), 4);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkInPlaceFastestLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 3, GetMoveDirectionFasterAnimNum(3), 4);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkInPlaceFastestRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 4, GetMoveDirectionFasterAnimNum(4), 4);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

bool8 MovementAction_RideWaterCurrentDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 1, 2);
    return MovementAction_RideWaterCurrentDown_Step1(objectEvent, sprite);
}

bool8 MovementAction_RideWaterCurrentDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_RideWaterCurrentUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 2, 2);
    return MovementAction_RideWaterCurrentUp_Step1(objectEvent, sprite);
}

bool8 MovementAction_RideWaterCurrentUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_RideWaterCurrentLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 3, 2);
    return MovementAction_RideWaterCurrentLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_RideWaterCurrentLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_RideWaterCurrentRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 4, 2);
    return MovementAction_RideWaterCurrentRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_RideWaterCurrentRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkFastestDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 1, 3);
    return MovementAction_WalkFastestDown_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkFastestDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkFastestUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 2, 3);
    return MovementAction_WalkFastestUp_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkFastestUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkFastestLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 3, 3);
    return MovementAction_WalkFastestLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkFastestLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkFastestRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 4, 3);
    return MovementAction_WalkFastestRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkFastestRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_SlideDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 1, 4);
    return MovementAction_SlideDown_Step1(objectEvent, sprite);
}

bool8 MovementAction_SlideDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_SlideUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 2, 4);
    return MovementAction_SlideUp_Step1(objectEvent, sprite);
}

bool8 MovementAction_SlideUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_SlideLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 3, 4);
    return MovementAction_SlideLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_SlideLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_SlideRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 4, 4);
    return MovementAction_SlideRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_SlideRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_PlayerRunDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartRunningAnim(objectEvent, sprite, 1);
    return MovementAction_PlayerRunDown_Step1(objectEvent, sprite);
}

bool8 MovementAction_PlayerRunDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_PlayerRunUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartRunningAnim(objectEvent, sprite, 2);
    return MovementAction_PlayerRunUp_Step1(objectEvent, sprite);
}

bool8 MovementAction_PlayerRunUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_PlayerRunLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartRunningAnim(objectEvent, sprite, 3);
    return MovementAction_PlayerRunLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_PlayerRunLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_PlayerRunRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartRunningAnim(objectEvent, sprite, 4);
    return MovementAction_PlayerRunRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_PlayerRunRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void StartSpriteAnimInDirection(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 animNum)
{
    SetAndStartSpriteAnim(sprite, animNum, 0);
    SetObjectEventDirection(objectEvent, direction);
    sprite->data[2] = 1;
}

bool8 MovementAction_StartAnimInDirection_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, objectEvent->movementDirection, sprite->animNum);
    return 0;
}

bool8 MovementAction_WaitSpriteAnim(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (SpriteAnimEnded(sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void sub_8094DE4(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    sub_8093FC4(objectEvent, sprite, direction, 1, 0);
    StartSpriteAnim(sprite, GetJumpSpecialDirectionAnimNum(direction));
}

bool8 MovementAction_JumpSpecialDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094DE4(objectEvent, sprite, 1);
    return MovementAction_JumpSpecialDown_Step1(objectEvent, sprite);
}

bool8 MovementAction_JumpSpecialDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941C8(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        objectEvent->landingJump = 0;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpSpecialUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094DE4(objectEvent, sprite, 2);
    return MovementAction_JumpSpecialUp_Step1(objectEvent, sprite);
}

bool8 MovementAction_JumpSpecialUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941C8(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        objectEvent->landingJump = 0;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpSpecialLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094DE4(objectEvent, sprite, 3);
    return MovementAction_JumpSpecialLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_JumpSpecialLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941C8(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        objectEvent->landingJump = 0;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpSpecialRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094DE4(objectEvent, sprite, 4);
    return MovementAction_JumpSpecialRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_JumpSpecialRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941C8(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        objectEvent->landingJump = 0;
        return 1;
    }
    return 0;
}

bool8 MovementAction_FacePlayer_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 playerObjectId;

    if (!TryGetObjectEventIdByLocalIdAndMap(0xFF, 0, 0, &playerObjectId))
    {
        FaceDirection(objectEvent, sprite, GetDirectionToFace(objectEvent->currentCoords.x, objectEvent->currentCoords.y, gObjectEvents[playerObjectId].currentCoords.x, gObjectEvents[playerObjectId].currentCoords.y));
    }
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_FaceAwayPlayer_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u8 playerObjectId;

    if (!TryGetObjectEventIdByLocalIdAndMap(0xFF, 0, 0, &playerObjectId))
    {
        FaceDirection(objectEvent, sprite, GetOppositeDirection(GetDirectionToFace(objectEvent->currentCoords.x, objectEvent->currentCoords.y, gObjectEvents[playerObjectId].currentCoords.x, gObjectEvents[playerObjectId].currentCoords.y)));
    }
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_LockFacingDirection_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->facingDirectionLocked = 1;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_UnlockFacingDirection_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->facingDirectionLocked = 0;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_JumpDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    maybe_shadow_1(objectEvent, sprite, 1, 1, 2);
    return MovementAction_JumpDown_Step1(objectEvent, sprite);
}

bool8 MovementAction_JumpDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    maybe_shadow_1(objectEvent, sprite, 2, 1, 2);
    return MovementAction_JumpUp_Step1(objectEvent, sprite);
}

bool8 MovementAction_JumpUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    maybe_shadow_1(objectEvent, sprite, 3, 1, 2);
    return MovementAction_JumpLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_JumpLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    maybe_shadow_1(objectEvent, sprite, 4, 1, 2);
    return MovementAction_JumpRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_JumpRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpInPlaceDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    maybe_shadow_1(objectEvent, sprite, 1, 0, 0);
    return MovementAction_JumpInPlaceDown_Step1(objectEvent, sprite);
}

bool8 MovementAction_JumpInPlaceDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpInPlaceUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    maybe_shadow_1(objectEvent, sprite, 2, 0, 0);
    return MovementAction_JumpInPlaceUp_Step1(objectEvent, sprite);
}

bool8 MovementAction_JumpInPlaceUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpInPlaceLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    maybe_shadow_1(objectEvent, sprite, 3, 0, 0);
    return MovementAction_JumpInPlaceLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_JumpInPlaceLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpInPlaceRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    maybe_shadow_1(objectEvent, sprite, 4, 0, 0);
    return MovementAction_JumpInPlaceRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_JumpInPlaceRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpInPlaceDownUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    maybe_shadow_1(objectEvent, sprite, 1, 0, 2);
    return MovementAction_JumpInPlaceDownUp_Step1(objectEvent, sprite);
}

bool8 MovementAction_JumpInPlaceDownUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941E0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpInPlaceUpDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    maybe_shadow_1(objectEvent, sprite, 2, 0, 2);
    return MovementAction_JumpInPlaceUpDown_Step1(objectEvent, sprite);
}

bool8 MovementAction_JumpInPlaceUpDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941E0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpInPlaceLeftRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    maybe_shadow_1(objectEvent, sprite, 3, 0, 2);
    return MovementAction_JumpInPlaceLeftRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_JumpInPlaceLeftRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941E0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_JumpInPlaceRightLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    maybe_shadow_1(objectEvent, sprite, 4, 0, 2);
    return MovementAction_JumpInPlaceRightLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_JumpInPlaceRightLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941E0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_FaceOriginalDirection_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    FaceDirection(objectEvent, sprite, gInitialMovementTypeFacingDirections[objectEvent->movementType]);
    return 1;
}

bool8 MovementAction_NurseJoyBowDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 1, 0x14);
    return 0;
}

bool8 MovementAction_EnableJumpLandingGroundEffect_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->disableJumpLandingGroundEffect = 0;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_DisableJumpLandingGroundEffect_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->disableJumpLandingGroundEffect = 1;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_DisableAnimation_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->inanimate = 1;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_RestoreAnimation_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->inanimate = GetObjectEventGraphicsInfo(objectEvent->graphicsId)->inanimate;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_SetInvisible_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->invisible = 1;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_SetVisible_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->invisible = 0;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_EmoteExclamationMark_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventGetLocalIdAndMap(objectEvent, &gFieldEffectArguments[0], &gFieldEffectArguments[1], &gFieldEffectArguments[2]);
    FieldEffectStart(0);
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_EmoteQuestionMark_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventGetLocalIdAndMap(objectEvent, &gFieldEffectArguments[0], &gFieldEffectArguments[1], &gFieldEffectArguments[2]);
    FieldEffectStart(33);
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_EmoteHeart_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    ObjectEventGetLocalIdAndMap(objectEvent, &gFieldEffectArguments[0], &gFieldEffectArguments[1], &gFieldEffectArguments[2]);
    FieldEffectStart(46);
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_RevealTrainer_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (objectEvent->movementType == 0x3F)
    {
        sub_80B4578(objectEvent);
        return 0;
    }
    if (objectEvent->movementType != 0x39 && objectEvent->movementType != 0x3A)
    {
        sprite->data[2] = 2;
        return 1;
    }
    sub_8155D78(objectEvent);
    sprite->data[2] = 1;
    return MovementAction_RevealTrainer_Step1(objectEvent, sprite);
}

bool8 MovementAction_RevealTrainer_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_8155DA0(objectEvent))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_RockSmashBreak_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    SetAndStartSpriteAnim(sprite, 1, 0);
    sprite->data[2] = 1;
    return 0;
}

bool8 MovementAction_RockSmashBreak_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (SpriteAnimEnded(sprite))
    {
        SetMovementDelay(sprite, 32);
        sprite->data[2] = 2;
    }
    return 0;
}

bool8 MovementAction_RockSmashBreak_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->invisible ^= 1;
    if (WaitForMovementDelay(sprite))
    {
        objectEvent->invisible = 1;
        sprite->data[2] = 3;
    }
    return 0;
}

bool8 MovementAction_CutTree_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    SetAndStartSpriteAnim(sprite, 1, 0);
    sprite->data[2] = 1;
    return 0;
}

bool8 MovementAction_CutTree_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (SpriteAnimEnded(sprite))
    {
        SetMovementDelay(sprite, 32);
        sprite->data[2] = 2;
    }
    return 0;
}

bool8 MovementAction_CutTree_Step2(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->invisible ^= 1;
    if (WaitForMovementDelay(sprite))
    {
        objectEvent->invisible = 1;
        sprite->data[2] = 3;
    }
    return 0;
}

bool8 MovementAction_SetFixedPriority_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->fixedPriority = 1;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_ClearFixedPriority_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->fixedPriority = 0;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_InitAffineAnim_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sprite->oam.affineMode = 3;
    InitSpriteAffineAnim(sprite);
    sprite->affineAnimPaused = 1;
    sprite->subspriteMode = SUBSPRITES_OFF;
    return 1;
}

bool8 MovementAction_ClearAffineAnim_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    FreeOamMatrix(sprite->oam.matrixNum);
    sprite->oam.affineMode = 0;
    CalcCenterToCornerVec(sprite, sprite->oam.shape, sprite->oam.size, sprite->oam.affineMode);
    return 1;
}

bool8 MovementAction_HideReflection_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->hideReflection = 1;
    return 1;
}

bool8 MovementAction_ShowReflection_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    objectEvent->hideReflection = 0;
    return 1;
}

bool8 MovementAction_WalkDownStartAffine_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8093B60(objectEvent, sprite, 1);
    sprite->affineAnimPaused = 0;
    StartSpriteAffineAnimIfDifferent(sprite, 0);
    return MovementAction_WalkDownStartAffine_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkDownStartAffine_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (an_walk_any_2(objectEvent, sprite))
    {
        sprite->affineAnimPaused = 1;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkDownAffine_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8093B60(objectEvent, sprite, 1);
    sprite->affineAnimPaused = 0;
    ChangeSpriteAffineAnimIfDifferent(sprite, 1);
    return MovementAction_WalkDownAffine_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkDownAffine_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (an_walk_any_2(objectEvent, sprite))
    {
        sprite->affineAnimPaused = 1;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkLeftAffine_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 3, 1);
    sprite->affineAnimPaused = 0;
    ChangeSpriteAffineAnimIfDifferent(sprite, 2);
    return MovementAction_WalkLeftAffine_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkLeftAffine_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->affineAnimPaused = 1;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_WalkRightAffine_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    do_go_anim(objectEvent, sprite, 4, 1);
    sprite->affineAnimPaused = 0;
    ChangeSpriteAffineAnimIfDifferent(sprite, 3);
    return MovementAction_WalkRightAffine_Step1(objectEvent, sprite);
}

bool8 MovementAction_WalkRightAffine_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->affineAnimPaused = 1;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

static void sub_80958C0(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction)
{
    SetObjectEventDirection(objectEvent, direction);
    ShiftStillObjectEventCoords(objectEvent);
    obj_npc_animation_step(objectEvent, sprite, GetAcroWheeliePedalDirectionAnimNum(direction));
    sprite->animPaused = 1;
    sprite->data[2] = 1;
}

bool8 MovementAction_AcroWheelieFaceDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_80958C0(objectEvent, sprite, 1);
    return 1;
}

bool8 MovementAction_AcroWheelieFaceUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_80958C0(objectEvent, sprite, 2);
    return 1;
}

bool8 MovementAction_AcroWheelieFaceLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_80958C0(objectEvent, sprite, 3);
    return 1;
}

bool8 MovementAction_AcroWheelieFaceRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_80958C0(objectEvent, sprite, 4);
    return 1;
}

bool8 MovementAction_AcroPopWheelieDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 1, GetAcroWheelieDirectionAnimNum(1));
    return 0;
}

bool8 MovementAction_AcroPopWheelieUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 2, GetAcroWheelieDirectionAnimNum(2));
    return 0;
}

bool8 MovementAction_AcroPopWheelieLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 3, GetAcroWheelieDirectionAnimNum(3));
    return 0;
}

bool8 MovementAction_AcroPopWheelieRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 4, GetAcroWheelieDirectionAnimNum(4));
    return 0;
}

bool8 MovementAction_AcroEndWheelieFaceDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 1, GetAcroEndWheelieDirectionAnimNum(1));
    return 0;
}

bool8 MovementAction_AcroEndWheelieFaceUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 2, GetAcroEndWheelieDirectionAnimNum(2));
    return 0;
}

bool8 MovementAction_AcroEndWheelieFaceLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 3, GetAcroEndWheelieDirectionAnimNum(3));
    return 0;
}

bool8 MovementAction_AcroEndWheelieFaceRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 4, GetAcroEndWheelieDirectionAnimNum(4));
    return 0;
}

bool8 MovementAction_UnusedAcroActionDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 1, GetAcroUnusedActionDirectionAnimNum(1));
    return 0;
}

bool8 MovementAction_UnusedAcroActionUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 2, GetAcroUnusedActionDirectionAnimNum(2));
    return 0;
}

bool8 MovementAction_UnusedAcroActionLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 3, GetAcroUnusedActionDirectionAnimNum(3));
    return 0;
}

bool8 MovementAction_UnusedAcroActionRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    StartSpriteAnimInDirection(objectEvent, sprite, 4, GetAcroUnusedActionDirectionAnimNum(4));
    return 0;
}

void sub_8095AF0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8097750(sprite);
    sprite->animPaused = 0;
}

bool8 sub_8095B0C(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_8097758(sprite))
    {
        ShiftStillObjectEventCoords(objectEvent);
        objectEvent->triggerGroundEffectsOnStop = 1;
        sprite->animPaused = 1;
        return 1;
    }
    return 0;
}

bool8 MovementAction_Figure8_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8095AF0(objectEvent, sprite);
    sprite->data[2] = 1;
    return MovementAction_Figure8_Step1(objectEvent, sprite);
}

bool8 MovementAction_Figure8_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_8095B0C(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void sub_8095B84(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 speed, u8 a4)
{
    sub_8093FC4(objectEvent, sprite, direction, speed, a4);
    StartSpriteAnimIfDifferent(sprite, GetAcroWheelieDirectionAnimNum(direction));
    DoShadowFieldEffect(objectEvent);
}

bool8 MovementAction_AcroWheelieHopFaceDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8095B84(objectEvent, sprite, 1, 0, 1);
    return MovementAction_AcroWheelieHopFaceDown_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroWheelieHopFaceDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieHopFaceUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8095B84(objectEvent, sprite, 2, 0, 1);
    return MovementAction_AcroWheelieHopFaceUp_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroWheelieHopFaceUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieHopFaceLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8095B84(objectEvent, sprite, 3, 0, 1);
    return MovementAction_AcroWheelieHopFaceLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroWheelieHopFaceLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieHopFaceRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8095B84(objectEvent, sprite, 4, 0, 1);
    return MovementAction_AcroWheelieHopFaceRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroWheelieHopFaceRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieHopDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8095B84(objectEvent, sprite, 1, 1, 1);
    return MovementAction_AcroWheelieHopDown_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroWheelieHopDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieHopUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8095B84(objectEvent, sprite, 2, 1, 1);
    return MovementAction_AcroWheelieHopUp_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroWheelieHopUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieHopLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8095B84(objectEvent, sprite, 3, 1, 1);
    return MovementAction_AcroWheelieHopLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroWheelieHopLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieHopRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8095B84(objectEvent, sprite, 4, 1, 1);
    return MovementAction_AcroWheelieHopRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroWheelieHopRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieJumpDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8095B84(objectEvent, sprite, 1, 2, 0);
    return MovementAction_AcroWheelieJumpDown_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroWheelieJumpDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieJumpUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8095B84(objectEvent, sprite, 2, 2, 0);
    return MovementAction_AcroWheelieJumpUp_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroWheelieJumpUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieJumpLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8095B84(objectEvent, sprite, 3, 2, 0);
    return MovementAction_AcroWheelieJumpLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroWheelieJumpLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieJumpRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8095B84(objectEvent, sprite, 4, 2, 0);
    return MovementAction_AcroWheelieJumpRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroWheelieJumpRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sub_80941B0(objectEvent, sprite))
    {
        objectEvent->hasShadow = 0;
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieInPlaceDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 1, GetAcroWheeliePedalDirectionAnimNum(1), 8);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroWheelieInPlaceUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 2, GetAcroWheeliePedalDirectionAnimNum(2), 8);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroWheelieInPlaceLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 3, GetAcroWheeliePedalDirectionAnimNum(3), 8);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroWheelieInPlaceRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8094554(objectEvent, sprite, 4, GetAcroWheeliePedalDirectionAnimNum(4), 8);
    return MovementAction_WalkInPlace_Step1(objectEvent, sprite);
}

void sub_80960C8(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 speed)
{
    npc_apply_direction(objectEvent, sprite, direction, speed);
    StartSpriteAnim(sprite, GetAcroWheelieDirectionAnimNum(objectEvent->facingDirection));
    SeekSpriteAnim(sprite, 0);
}

bool8 MovementAction_AcroPopWheelieMoveDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_80960C8(objectEvent, sprite, 1, 1);
    return MovementAction_AcroPopWheelieMoveDown_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroPopWheelieMoveDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroPopWheelieMoveUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_80960C8(objectEvent, sprite, 2, 1);
    return MovementAction_AcroPopWheelieMoveUp_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroPopWheelieMoveUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroPopWheelieMoveLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_80960C8(objectEvent, sprite, 3, 1);
    return MovementAction_AcroPopWheelieMoveLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroPopWheelieMoveLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroPopWheelieMoveRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_80960C8(objectEvent, sprite, 4, 1);
    return MovementAction_AcroPopWheelieMoveRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroPopWheelieMoveRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void sub_8096200(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 speed)
{
    npc_apply_direction(objectEvent, sprite, direction, speed);
    npc_apply_anim_looping(objectEvent, sprite, GetAcroWheeliePedalDirectionAnimNum(objectEvent->facingDirection));
}

bool8 MovementAction_AcroWheelieMoveDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8096200(objectEvent, sprite, 1, 1);
    return MovementAction_AcroWheelieMoveDown_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroWheelieMoveDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieMoveUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8096200(objectEvent, sprite, 2, 1);
    return MovementAction_AcroWheelieMoveUp_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroWheelieMoveUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieMoveLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8096200(objectEvent, sprite, 3, 1);
    return MovementAction_AcroWheelieMoveLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroWheelieMoveLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroWheelieMoveRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8096200(objectEvent, sprite, 4, 1);
    return MovementAction_AcroWheelieMoveRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroWheelieMoveRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

void sub_8096330(struct ObjectEvent *objectEvent, struct Sprite *sprite, u8 direction, u8 speed)
{
    npc_apply_direction(objectEvent, sprite, direction, speed);
    StartSpriteAnim(sprite, GetAcroEndWheelieDirectionAnimNum(objectEvent->facingDirection));
    SeekSpriteAnim(sprite, 0);
}

bool8 MovementAction_AcroEndWheelieMoveDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8096330(objectEvent, sprite, 1, 1);
    return MovementAction_AcroEndWheelieMoveDown_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroEndWheelieMoveDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroEndWheelieMoveUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8096330(objectEvent, sprite, 2, 1);
    return MovementAction_AcroEndWheelieMoveUp_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroEndWheelieMoveUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroEndWheelieMoveLeft_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8096330(objectEvent, sprite, 3, 1);
    return MovementAction_AcroEndWheelieMoveLeft_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroEndWheelieMoveLeft_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_AcroEndWheelieMoveRight_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8096330(objectEvent, sprite, 4, 1);
    return MovementAction_AcroEndWheelieMoveRight_Step1(objectEvent, sprite);
}

bool8 MovementAction_AcroEndWheelieMoveRight_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (npc_obj_ministep_stop_on_arrival(objectEvent, sprite))
    {
        sprite->data[2] = 2;
        return 1;
    }
    return 0;
}

bool8 MovementAction_Levitate_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    CreateLevitateMovementTask(objectEvent);
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_StopLevitate_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    DestroyExtraMovementTask(objectEvent->warpArrowSpriteId);
    sprite->pos2.y = 0;
    sprite->data[2] = 1;
    return 1;
}

bool8 MovementAction_DestroyExtraTaskIfAtTop_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (sprite->pos2.y == 0)
    {
        DestroyExtraMovementTask(objectEvent->warpArrowSpriteId);
        sprite->data[2] = 1;
        return 1;
    }
    return 0;
}

u8 MovementAction_Finish(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    return 1;
}

bool8 MovementAction_PauseSpriteAnim(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sprite->animPaused = 1;
    return 1;
}

static void UpdateObjectEventSpriteAnimPause(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (objectEvent->disableAnim)
    {
        sprite->animPaused = 1;
    }
}

static void TryEnableObjectEventAnim(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    if (objectEvent->enableAnim)
    {
        sprite->animPaused = 0;
        objectEvent->disableAnim = 0;
        objectEvent->enableAnim = 0;
    }
}

static void UpdateObjectEventVisibility(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sub_8096530(objectEvent, sprite);
    UpdateObjEventSpriteVisibility(objectEvent, sprite);
}

static void sub_8096530(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u16 x, y;
    u16 x2, y2;
    const struct ObjectEventGraphicsInfo *graphicsInfo;

    objectEvent->offScreen = 0;
    graphicsInfo = GetObjectEventGraphicsInfo(objectEvent->graphicsId);
    if (sprite->coordOffsetEnabled)
    {
        x = sprite->pos1.x + sprite->pos2.x + sprite->centerToCornerVecX + gSpriteCoordOffsetX;
        y = sprite->pos1.y + sprite->pos2.y + sprite->centerToCornerVecY + gSpriteCoordOffsetY;
    }
    else
    {
        x = sprite->pos1.x + sprite->pos2.x + sprite->centerToCornerVecX;
        y = sprite->pos1.y + sprite->pos2.y + sprite->centerToCornerVecY;
    }
    x2 = graphicsInfo->width;
    x2 += x;
    y2 = y;
    y2 += graphicsInfo->height;
    if ((s16)x >= 0x100 || (s16)x2 < -0x10)
    {
        objectEvent->offScreen = 1;
    }
    if ((s16)y >= 0xB0 || (s16)y2 < -0x10)
    {
        objectEvent->offScreen = 1;
    }
}

static void UpdateObjEventSpriteVisibility(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sprite->invisible = 0;
    if (objectEvent->invisible || objectEvent->offScreen)
    {
        sprite->invisible = 1;
    }
}

static void GetAllGroundEffectFlags_OnSpawn(struct ObjectEvent *objEvent, u32 *flags)
{
    ObjectEventUpdateMetatileBehaviors(objEvent);
    GetGroundEffectFlags_Reflection(objEvent, flags);
    GetGroundEffectFlags_TallGrassOnSpawn(objEvent, flags);
    GetGroundEffectFlags_LongGrassOnSpawn(objEvent, flags);
    GetGroundEffectFlags_SandHeap(objEvent, flags);
    GetGroundEffectFlags_ShallowFlowingWater(objEvent, flags);
    GetGroundEffectFlags_ShortGrass(objEvent, flags);
    GetGroundEffectFlags_HotSprings(objEvent, flags);
}

static void GetAllGroundEffectFlags_OnBeginStep(struct ObjectEvent *objEvent, u32 *flags)
{
    ObjectEventUpdateMetatileBehaviors(objEvent);
    GetGroundEffectFlags_Reflection(objEvent, flags);
    GetGroundEffectFlags_TallGrassOnBeginStep(objEvent, flags);
    GetGroundEffectFlags_LongGrassOnBeginStep(objEvent, flags);
    GetGroundEffectFlags_Tracks(objEvent, flags);
    GetGroundEffectFlags_SandHeap(objEvent, flags);
    GetGroundEffectFlags_ShallowFlowingWater(objEvent, flags);
    GetGroundEffectFlags_Puddle(objEvent, flags);
    GetGroundEffectFlags_ShortGrass(objEvent, flags);
    GetGroundEffectFlags_HotSprings(objEvent, flags);
}

static void GetAllGroundEffectFlags_OnFinishStep(struct ObjectEvent *objEvent, u32 *flags)
{
    ObjectEventUpdateMetatileBehaviors(objEvent);
    GetGroundEffectFlags_ShallowFlowingWater(objEvent, flags);
    GetGroundEffectFlags_SandHeap(objEvent, flags);
    GetGroundEffectFlags_Puddle(objEvent, flags);
    GetGroundEffectFlags_Ripple(objEvent, flags);
    GetGroundEffectFlags_ShortGrass(objEvent, flags);
    GetGroundEffectFlags_HotSprings(objEvent, flags);
    GetGroundEffectFlags_Seaweed(objEvent, flags);
    GetGroundEffectFlags_JumpLanding(objEvent, flags);
}

static void ObjectEventUpdateMetatileBehaviors(struct ObjectEvent *objEvent)
{
    objEvent->previousMetatileBehavior = MapGridGetMetatileBehaviorAt(objEvent->previousCoords.x, objEvent->previousCoords.y);
    objEvent->currentMetatileBehavior = MapGridGetMetatileBehaviorAt(objEvent->currentCoords.x, objEvent->currentCoords.y);
}

static void GetGroundEffectFlags_Reflection(struct ObjectEvent *objEvent, u32 *flags)
{
    u32 reflectionFlags[2] = { (1 << 5), (1 << 4) };
    u8 type = ObjectEventCheckForReflectiveSurface(objEvent);

    if (type)
    {
        if (!objEvent->hasReflection)
        {
            objEvent->hasReflection = 0;
            objEvent->hasReflection = 1;
            *flags |= reflectionFlags[type - 1];
        }
    }
    else
    {
        objEvent->hasReflection = 0;
    }
}

static void GetGroundEffectFlags_TallGrassOnSpawn(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsTallGrass(objEvent->currentMetatileBehavior))
        *flags |= (1 << 0);
}

static void GetGroundEffectFlags_TallGrassOnBeginStep(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsTallGrass(objEvent->currentMetatileBehavior))
        *flags |= (1 << 1);
}

static void GetGroundEffectFlags_LongGrassOnSpawn(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsLongGrass(objEvent->currentMetatileBehavior))
        *flags |= (1 << 2);
}

static void GetGroundEffectFlags_LongGrassOnBeginStep(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsLongGrass(objEvent->currentMetatileBehavior))
        *flags |= (1 << 3);
}

static void GetGroundEffectFlags_Tracks(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsDeepSand(objEvent->previousMetatileBehavior))
    {
        *flags |= (1 << 8);
    }
    else if (MetatileBehavior_IsSandOrDeepSand(objEvent->previousMetatileBehavior)
             || MetatileBehavior_IsFootprints(objEvent->previousMetatileBehavior))
    {
        *flags |= (1 << 7);
    }
}

static void GetGroundEffectFlags_SandHeap(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsDeepSand(objEvent->currentMetatileBehavior)
        && MetatileBehavior_IsDeepSand(objEvent->previousMetatileBehavior))
    {
        if (!objEvent->inSandPile)
        {
            objEvent->inSandPile = 0;
            objEvent->inSandPile = 1;
            *flags |= (1 << 11);
        }
    }
    else
    {
        objEvent->inSandPile = 0;
    }
}

static void GetGroundEffectFlags_ShallowFlowingWater(struct ObjectEvent *objEvent, u32 *flags)
{
    if ((MetatileBehavior_IsShallowFlowingWater(objEvent->currentMetatileBehavior)
         && MetatileBehavior_IsShallowFlowingWater(objEvent->previousMetatileBehavior))
        || (MetatileBehavior_IsPacifidlogLog(objEvent->currentMetatileBehavior)
            && MetatileBehavior_IsPacifidlogLog(objEvent->previousMetatileBehavior)))
    {
        if (!objEvent->inShallowFlowingWater)
        {
            objEvent->inShallowFlowingWater = 0;
            objEvent->inShallowFlowingWater = 1;
            *flags |= (1 << 6);
        }
    }
    else
    {
        objEvent->inShallowFlowingWater = 0;
    }
}

static void GetGroundEffectFlags_Puddle(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsPuddle(objEvent->currentMetatileBehavior)
        && MetatileBehavior_IsPuddle(objEvent->previousMetatileBehavior))
    {
        *flags |= (1 << 10);
    }
}

static void GetGroundEffectFlags_Ripple(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_HasRipples(objEvent->currentMetatileBehavior))
        *flags |= (1 << 9);
}

static void GetGroundEffectFlags_ShortGrass(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsShortGrass(objEvent->currentMetatileBehavior)
        && MetatileBehavior_IsShortGrass(objEvent->previousMetatileBehavior))
    {
        if (!objEvent->inShortGrass)
        {
            objEvent->inShortGrass = 0;
            objEvent->inShortGrass = 1;
            *flags |= (1 << 17);
        }
    }
    else
    {
        objEvent->inShortGrass = 0;
    }
}

static void GetGroundEffectFlags_HotSprings(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsHotSprings(objEvent->currentMetatileBehavior)
        && MetatileBehavior_IsHotSprings(objEvent->previousMetatileBehavior))
    {
        if (!objEvent->inHotSprings)
        {
            objEvent->inHotSprings = 0;
            objEvent->inHotSprings = 1;
            *flags |= (1 << 18);
        }
    }
    else
    {
        objEvent->inHotSprings = 0;
    }
}

static void GetGroundEffectFlags_Seaweed(struct ObjectEvent *objEvent, u32 *flags)
{
    if (MetatileBehavior_IsSeaweed(objEvent->currentMetatileBehavior))
        *flags |= (1 << 19);
}

static void GetGroundEffectFlags_JumpLanding(struct ObjectEvent *objEvent, u32 *flags)
{
    typedef bool8 (*MetatileFunc)(u8);

    static const MetatileFunc metatileFuncs[] = {
        MetatileBehavior_IsTallGrass,
        MetatileBehavior_IsLongGrass,
        MetatileBehavior_IsPuddle,
        MetatileBehavior_IsSurfableWaterOrUnderwater,
        MetatileBehavior_IsShallowFlowingWater,
        MetatileBehavior_IsATile,
    };

    static const u32 jumpLandingFlags[] = {
        (1 << 12),
        (1 << 13),
        (1 << 14),
        (1 << 15),
        (1 << 14),
        (1 << 16),
    };

    if (objEvent->landingJump && !objEvent->disableJumpLandingGroundEffect)
    {
        u8 i;

        for (i = 0; i < (size_t)(sizeof(metatileFuncs) / sizeof((metatileFuncs)[0])); i++)
        {
            if (metatileFuncs[i](objEvent->currentMetatileBehavior))
            {
                *flags |= jumpLandingFlags[i];
                return;
            }
        }
    }
}

static u8 ObjectEventCheckForReflectiveSurface(struct ObjectEvent *objEvent)
{
    const struct ObjectEventGraphicsInfo *info = GetObjectEventGraphicsInfo(objEvent->graphicsId);


    s16 width = (info->width + 8) >> 4;
    s16 height = (info->height + 8) >> 4;
    s16 i;
    s16 j;
    u8 result;
    u8 b;
    s16 one;







    for (i = 0, one = 1; i < height; i++)
    {
        b = MapGridGetMetatileBehaviorAt(objEvent->currentCoords.x, objEvent->currentCoords.y + one + i); result = GetReflectionTypeByMetatileBehavior(b); if (result != 0) return result;
        b = MapGridGetMetatileBehaviorAt(objEvent->previousCoords.x, objEvent->previousCoords.y + one + i); result = GetReflectionTypeByMetatileBehavior(b); if (result != 0) return result;
        for (j = 1; j < width; j++)
        {
            b = MapGridGetMetatileBehaviorAt(objEvent->currentCoords.x + j, objEvent->currentCoords.y + one + i); result = GetReflectionTypeByMetatileBehavior(b); if (result != 0) return result;
            b = MapGridGetMetatileBehaviorAt(objEvent->currentCoords.x - j, objEvent->currentCoords.y + one + i); result = GetReflectionTypeByMetatileBehavior(b); if (result != 0) return result;
            b = MapGridGetMetatileBehaviorAt(objEvent->previousCoords.x + j, objEvent->previousCoords.y + one + i); result = GetReflectionTypeByMetatileBehavior(b); if (result != 0) return result;
            b = MapGridGetMetatileBehaviorAt(objEvent->previousCoords.x - j, objEvent->previousCoords.y + one + i); result = GetReflectionTypeByMetatileBehavior(b); if (result != 0) return result;
        }
    }
    return 0;


}

static u8 GetReflectionTypeByMetatileBehavior(u32 behavior)
{
    if (MetatileBehavior_IsIce(behavior))
        return 1;
    else if (MetatileBehavior_IsReflective(behavior))
        return 2;
    else
        return 0;
}

u8 GetLedgeJumpDirection(s16 x, s16 y, u8 z)
{
    static bool8 (*const unknown_08376040[])(u8) = {
        MetatileBehavior_IsJumpSouth,
        MetatileBehavior_IsJumpNorth,
        MetatileBehavior_IsJumpWest,
        MetatileBehavior_IsJumpEast,
    };

    u8 b;
    u8 index = z;

    if (index == 0)
        return 0;
    else if (index > 4)
        index -= 4;

    index--;
    b = MapGridGetMetatileBehaviorAt(x, y);

    if (unknown_08376040[index](b) == 1)
        return index + 1;

    return 0;
}

static void SetObjectEventSpriteOamTableForLongGrass(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    if (objEvent->disableCoveringGroundEffects)
        return;

    if (!MetatileBehavior_IsLongGrass(objEvent->currentMetatileBehavior))
        return;

    if (!MetatileBehavior_IsLongGrass(objEvent->previousMetatileBehavior))
        return;

    sprite->subspriteTableNum = 4;

    if (ZCoordToPriority(objEvent->previousElevation) == 1)
        sprite->subspriteTableNum = 5;
}

bool8 IsZCoordMismatchAt(u8 z, s16 x, s16 y)
{
    u8 mapZ;

    if (z == 0)
        return 0;

    mapZ = MapGridGetZCoordAt(x, y);

    if (mapZ == 0 || mapZ == 0xF)
        return 0;

    if (mapZ != z)
        return 1;

    return 0;
}

static const u8 sUnknown_08376050[] = {
    0x73, 0x73, 0x53, 0x73, 0x53, 0x73, 0x53, 0x73, 0x53, 0x73, 0x53, 0x73, 0x53, 0x00, 0x00, 0x73
};



static const u8 sObjectEventPriorities_08376060[] = {
    2, 2, 2, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 0, 0, 2
};





static const u8 sObjectEventPriorities_08376070[] = {
    1, 1, 1, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 0, 0, 1,
};

void UpdateObjectEventZCoordAndPriority(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    if (objEvent->fixedPriority)
        return;

    ObjectEventUpdateZCoord(objEvent);

    sprite->subspriteTableNum = sObjectEventPriorities_08376070[objEvent->previousElevation];
    sprite->oam.priority = sObjectEventPriorities_08376060[objEvent->previousElevation];
}

static void InitObjectPriorityByZCoord(struct Sprite *sprite, u8 z)
{
    sprite->subspriteTableNum = sObjectEventPriorities_08376070[z];
    sprite->oam.priority = sObjectEventPriorities_08376060[z];
}

u8 ZCoordToPriority(u8 z)
{
    return sObjectEventPriorities_08376060[z];
}

void ObjectEventUpdateZCoord(struct ObjectEvent *objEvent)
{
    u8 z = MapGridGetZCoordAt(objEvent->currentCoords.x, objEvent->currentCoords.y);
    u8 z2 = MapGridGetZCoordAt(objEvent->previousCoords.x, objEvent->previousCoords.y);

    if (z == 0xF || z2 == 0xF)
        return;

    objEvent->currentElevation = z;

    if (z != 0 && z != 0xF)
        objEvent->previousElevation = z;
}

void SetObjectSubpriorityByZCoord(u8 a, struct Sprite *sprite, u8 b)
{
    s32 tmp = sprite->centerToCornerVecY;
    u32 tmpa = *(u16 *)&sprite->pos1.y;
    u32 tmpb = *(u16 *)&gSpriteCoordOffsetY;
    s32 tmp2 = (tmpa - tmp) + tmpb;
    u16 tmp3 = (0x10 - ((((u32)tmp2 + 8) & 0xFF) >> 4)) * 2;
    sprite->subpriority = tmp3 + sUnknown_08376050[a] + b;
}

static void ObjectEventUpdateSubpriority(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    if (objEvent->fixedPriority)
        return;

    SetObjectSubpriorityByZCoord(objEvent->previousElevation, sprite, 1);
}

bool8 AreZCoordsCompatible(u8 a, u8 b)
{
    if (a == 0 || b == 0)
        return 1;

    if (a != b)
        return 0;

    return 1;
}

void GroundEffect_SpawnOnTallGrass(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    gFieldEffectArguments[2] = objEvent->previousElevation;
    gFieldEffectArguments[3] = 2;
    gFieldEffectArguments[4] = objEvent->localId << 8 | objEvent->mapNum;
    gFieldEffectArguments[5] = objEvent->mapGroup;
    gFieldEffectArguments[6] = (u8)gSaveBlock1Ptr->location.mapNum << 8 | (u8)gSaveBlock1Ptr->location.mapGroup;
    gFieldEffectArguments[7] = 1;
    FieldEffectStart(4);
}

void GroundEffect_StepOnTallGrass(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    gFieldEffectArguments[2] = objEvent->previousElevation;
    gFieldEffectArguments[3] = 2;
    gFieldEffectArguments[4] = objEvent->localId << 8 | objEvent->mapNum;
    gFieldEffectArguments[5] = objEvent->mapGroup;
    gFieldEffectArguments[6] = (u8)gSaveBlock1Ptr->location.mapNum << 8 | (u8)gSaveBlock1Ptr->location.mapGroup;
    gFieldEffectArguments[7] = 0;
    FieldEffectStart(4);
}

void GroundEffect_SpawnOnLongGrass(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    gFieldEffectArguments[2] = objEvent->previousElevation;
    gFieldEffectArguments[3] = 2;
    gFieldEffectArguments[4] = objEvent->localId << 8 | objEvent->mapNum;
    gFieldEffectArguments[5] = objEvent->mapGroup;
    gFieldEffectArguments[6] = (u8)gSaveBlock1Ptr->location.mapNum << 8 | (u8)gSaveBlock1Ptr->location.mapGroup;
    gFieldEffectArguments[7] = 1;
    FieldEffectStart(17);
}

void GroundEffect_StepOnLongGrass(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    gFieldEffectArguments[2] = objEvent->previousElevation;
    gFieldEffectArguments[3] = 2;
    gFieldEffectArguments[4] = (objEvent->localId << 8) | objEvent->mapNum;
    gFieldEffectArguments[5] = objEvent->mapGroup;
    gFieldEffectArguments[6] = (u8)gSaveBlock1Ptr->location.mapNum << 8 | (u8)gSaveBlock1Ptr->location.mapGroup;
    gFieldEffectArguments[7] = 0;
    FieldEffectStart(17);
}

void GroundEffect_WaterReflection(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    SetUpReflection(objEvent, sprite, 0);
}

void GroundEffect_IceReflection(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    SetUpReflection(objEvent, sprite, 1);
}

void GroundEffect_FlowingWater(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    StartFieldEffectForObjectEvent(34, objEvent);
}

static void (*const sGroundEffectTracksFuncs[])(struct ObjectEvent *objEvent, struct Sprite *sprite, u8 a) = {
    DoTracksGroundEffect_None,
    DoTracksGroundEffect_Footprints,
    DoTracksGroundEffect_BikeTireTracks,
};

void GroundEffect_SandTracks(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    const struct ObjectEventGraphicsInfo *info = GetObjectEventGraphicsInfo(objEvent->graphicsId);
    sGroundEffectTracksFuncs[info->tracks](objEvent, sprite, 0);
}

void GroundEffect_DeepSandTracks(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    const struct ObjectEventGraphicsInfo *info = GetObjectEventGraphicsInfo(objEvent->graphicsId);
    sGroundEffectTracksFuncs[info->tracks](objEvent, sprite, 1);
}

static void DoTracksGroundEffect_None(struct ObjectEvent *objEvent, struct Sprite *sprite, u8 a)
{
}

static void DoTracksGroundEffect_Footprints(struct ObjectEvent *objEvent, struct Sprite *sprite, u8 a)
{

    u16 sandFootprints_FieldEffectData[2] = {
        13,
        24
    };

    gFieldEffectArguments[0] = objEvent->previousCoords.x;
    gFieldEffectArguments[1] = objEvent->previousCoords.y;
    gFieldEffectArguments[2] = 149;
    gFieldEffectArguments[3] = 2;
    gFieldEffectArguments[4] = objEvent->facingDirection;
    FieldEffectStart(sandFootprints_FieldEffectData[a]);
}

static void DoTracksGroundEffect_BikeTireTracks(struct ObjectEvent *objEvent, struct Sprite *sprite, u8 a)
{






    static const u8 bikeTireTracks_Transitions[4][4] = {
        1, 2, 7, 8,
        1, 2, 6, 5,
        5, 8, 3, 4,
        6, 7, 3, 4,
    };

    if (objEvent->currentCoords.x != objEvent->previousCoords.x || objEvent->currentCoords.y != objEvent->previousCoords.y)
    {
        gFieldEffectArguments[0] = objEvent->previousCoords.x;
        gFieldEffectArguments[1] = objEvent->previousCoords.y;
        gFieldEffectArguments[2] = 149;
        gFieldEffectArguments[3] = 2;
        gFieldEffectArguments[4] =
            bikeTireTracks_Transitions[objEvent->previousMovementDirection][objEvent->facingDirection - 5];
        FieldEffectStart(35);
    }
}

void GroundEffect_Ripple(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    DoRippleFieldEffect(objEvent, sprite);
}

void GroundEffect_StepOnPuddle(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    StartFieldEffectForObjectEvent(15, objEvent);
}

void GroundEffect_SandHeap(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    StartFieldEffectForObjectEvent(39, objEvent);
}

void GroundEffect_JumpOnTallGrass(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    u8 spriteId;

    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    gFieldEffectArguments[2] = objEvent->previousElevation;
    gFieldEffectArguments[3] = 2;
    FieldEffectStart(12);

    spriteId = FindTallGrassFieldEffectSpriteId(
        objEvent->localId,
        objEvent->mapNum,
        objEvent->mapGroup,
        objEvent->currentCoords.x,
        objEvent->currentCoords.y);

    if (spriteId == 64)
        GroundEffect_SpawnOnTallGrass(objEvent, sprite);
}

void GroundEffect_JumpOnLongGrass(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    gFieldEffectArguments[2] = objEvent->previousElevation;
    gFieldEffectArguments[3] = 2;
    FieldEffectStart(18);
}

void GroundEffect_JumpOnShallowWater(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    gFieldEffectArguments[2] = objEvent->previousElevation;
    gFieldEffectArguments[3] = sprite->oam.priority;
    FieldEffectStart(16);
}

void GroundEffect_JumpOnWater(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    gFieldEffectArguments[2] = objEvent->previousElevation;
    gFieldEffectArguments[3] = sprite->oam.priority;
    FieldEffectStart(14);
}

void GroundEffect_JumpLandingDust(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    gFieldEffectArguments[2] = objEvent->previousElevation;
    gFieldEffectArguments[3] = sprite->oam.priority;
    FieldEffectStart(10);
}

void GroundEffect_ShortGrass(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    StartFieldEffectForObjectEvent(41, objEvent);
}

void GroundEffect_HotSprings(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    StartFieldEffectForObjectEvent(42, objEvent);
}

void GroundEffect_Seaweed(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    gFieldEffectArguments[0] = objEvent->currentCoords.x;
    gFieldEffectArguments[1] = objEvent->currentCoords.y;
    FieldEffectStart(53);
}

static void (*const sGroundEffectFuncs[])(struct ObjectEvent *objEvent, struct Sprite *sprite) = {
    GroundEffect_SpawnOnTallGrass,
    GroundEffect_StepOnTallGrass,
    GroundEffect_SpawnOnLongGrass,
    GroundEffect_StepOnLongGrass,
    GroundEffect_WaterReflection,
    GroundEffect_IceReflection,
    GroundEffect_FlowingWater,
    GroundEffect_SandTracks,
    GroundEffect_DeepSandTracks,
    GroundEffect_Ripple,
    GroundEffect_StepOnPuddle,
    GroundEffect_SandHeap,
    GroundEffect_JumpOnTallGrass,
    GroundEffect_JumpOnLongGrass,
    GroundEffect_JumpOnShallowWater,
    GroundEffect_JumpOnWater,
    GroundEffect_JumpLandingDust,
    GroundEffect_ShortGrass,
    GroundEffect_HotSprings,
    GroundEffect_Seaweed
};

static void DoFlaggedGroundEffects(struct ObjectEvent *objEvent, struct Sprite *sprite, u32 flags)
{
    u8 i;

    if (ObjectEventIsFarawayIslandMew(objEvent) == 1 && !sub_81D4A58(objEvent))
        return;

    for (i = 0; i < (size_t)(sizeof(sGroundEffectFuncs) / sizeof((sGroundEffectFuncs)[0])); i++, flags >>= 1)
        if (flags & 1)
            sGroundEffectFuncs[i](objEvent, sprite);
}

void filters_out_some_ground_effects(struct ObjectEvent *objEvent, u32 *flags)
{
    if (objEvent->disableCoveringGroundEffects)
    {
        objEvent->inShortGrass = 0;
        objEvent->inSandPile = 0;
        objEvent->inShallowFlowingWater = 0;
        objEvent->inHotSprings = 0;
        *flags &= ~((1 << 18)
                  | (1 << 17)
                  | (1 << 11)
                  | (1 << 6)
                  | (1 << 1));
    }
}

void FilterOutStepOnPuddleGroundEffectIfJumping(struct ObjectEvent *objEvent, u32 *flags)
{
    if (objEvent->landingJump)
        *flags &= ~(1 << 10);
}

static void DoGroundEffects_OnSpawn(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    u32 flags;

    if (objEvent->triggerGroundEffectsOnMove)
    {
        flags = 0;
        UpdateObjectEventZCoordAndPriority(objEvent, sprite);
        GetAllGroundEffectFlags_OnSpawn(objEvent, &flags);
        SetObjectEventSpriteOamTableForLongGrass(objEvent, sprite);
        DoFlaggedGroundEffects(objEvent, sprite, flags);
        objEvent->triggerGroundEffectsOnMove = 0;
        objEvent->disableCoveringGroundEffects = 0;
    }
}

static void DoGroundEffects_OnBeginStep(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    u32 flags;

    if (objEvent->triggerGroundEffectsOnMove)
    {
        flags = 0;
        UpdateObjectEventZCoordAndPriority(objEvent, sprite);
        GetAllGroundEffectFlags_OnBeginStep(objEvent, &flags);
        SetObjectEventSpriteOamTableForLongGrass(objEvent, sprite);
        filters_out_some_ground_effects(objEvent, &flags);
        DoFlaggedGroundEffects(objEvent, sprite, flags);
        objEvent->triggerGroundEffectsOnMove = 0;
        objEvent->disableCoveringGroundEffects = 0;
    }
}

static void DoGroundEffects_OnFinishStep(struct ObjectEvent *objEvent, struct Sprite *sprite)
{
    u32 flags;

    if (objEvent->triggerGroundEffectsOnStop)
    {
        flags = 0;
        UpdateObjectEventZCoordAndPriority(objEvent, sprite);
        GetAllGroundEffectFlags_OnFinishStep(objEvent, &flags);
        SetObjectEventSpriteOamTableForLongGrass(objEvent, sprite);
        FilterOutStepOnPuddleGroundEffectIfJumping(objEvent, &flags);
        DoFlaggedGroundEffects(objEvent, sprite, flags);
        objEvent->triggerGroundEffectsOnStop = 0;
        objEvent->landingJump = 0;
    }
}

bool8 FreezeObjectEvent(struct ObjectEvent *objectEvent)
{
    if (objectEvent->heldMovementActive || objectEvent->frozen)
    {
        return 1;
    }
    else
    {
        objectEvent->frozen = 1;
        objectEvent->spriteAnimPausedBackup = gSprites[objectEvent->spriteId].animPaused;
        objectEvent->spriteAffineAnimPausedBackup = gSprites[objectEvent->spriteId].affineAnimPaused;
        gSprites[objectEvent->spriteId].animPaused = 1;
        gSprites[objectEvent->spriteId].affineAnimPaused = 1;
        return 0;
    }
}

void FreezeObjectEvents(void)
{
    u8 i;
    for (i = 0; i < 16; i++)
        if (gObjectEvents[i].active && i != gPlayerAvatar.objectEventId)
            FreezeObjectEvent(&gObjectEvents[i]);
}

void FreezeObjectEventsExceptOne(u8 objectEventId)
{
    u8 i;
    for (i = 0; i < 16; i++)
        if (i != objectEventId && gObjectEvents[i].active && i != gPlayerAvatar.objectEventId)
            FreezeObjectEvent(&gObjectEvents[i]);
}

void UnfreezeObjectEvent(struct ObjectEvent *objectEvent)
{
    if (objectEvent->active && objectEvent->frozen)
    {
        objectEvent->frozen = 0;
        gSprites[objectEvent->spriteId].animPaused = objectEvent->spriteAnimPausedBackup;
        gSprites[objectEvent->spriteId].affineAnimPaused = objectEvent->spriteAffineAnimPausedBackup;
    }
}

void UnfreezeObjectEvents(void)
{
    u8 i;
    for (i = 0; i < 16; i++)
        if (gObjectEvents[i].active)
            UnfreezeObjectEvent(&gObjectEvents[i]);
}

static void Step1(struct Sprite *sprite, u8 dir)
{
    sprite->pos1.x += sDirectionToVectors[dir].x;
    sprite->pos1.y += sDirectionToVectors[dir].y;
}

static void Step2(struct Sprite *sprite, u8 dir)
{
    sprite->pos1.x += 2 * (u16) sDirectionToVectors[dir].x;
    sprite->pos1.y += 2 * (u16) sDirectionToVectors[dir].y;
}

static void Step3(struct Sprite *sprite, u8 dir)
{
    sprite->pos1.x += 2 * (u16) sDirectionToVectors[dir].x + (u16) sDirectionToVectors[dir].x;
    sprite->pos1.y += 2 * (u16) sDirectionToVectors[dir].y + (u16) sDirectionToVectors[dir].y;
}

static void Step4(struct Sprite *sprite, u8 dir)
{
    sprite->pos1.x += 4 * (u16) sDirectionToVectors[dir].x;
    sprite->pos1.y += 4 * (u16) sDirectionToVectors[dir].y;
}

static void Step8(struct Sprite *sprite, u8 dir)
{
    sprite->pos1.x += 8 * (u16) sDirectionToVectors[dir].x;
    sprite->pos1.y += 8 * (u16) sDirectionToVectors[dir].y;
}

static void oamt_npc_ministep_reset(struct Sprite *sprite, u8 direction, u8 a3)
{
    sprite->data[3] = direction;
    sprite->data[4] = a3;
    sprite->data[5] = 0;
}

typedef void (*SpriteStepFunc)(struct Sprite *sprite, u8 direction);

static const SpriteStepFunc gUnknown_0850E6C4[] = {
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
    Step1,
};

static const SpriteStepFunc gUnknown_0850E704[] = {
    Step2,
    Step2,
    Step2,
    Step2,
    Step2,
    Step2,
    Step2,
    Step2,
};

static const SpriteStepFunc gUnknown_0850E724[] = {
    Step2,
    Step3,
    Step3,
    Step2,
    Step3,
    Step3,
};

static const SpriteStepFunc gUnknown_0850E73C[] = {
    Step4,
    Step4,
    Step4,
    Step4,
};

static const SpriteStepFunc gUnknown_0850E74C[] = {
    Step8,
    Step8,
};

static const SpriteStepFunc *const gUnknown_0850E754[] = {
    gUnknown_0850E6C4,
    gUnknown_0850E704,
    gUnknown_0850E724,
    gUnknown_0850E73C,
    gUnknown_0850E74C,
};

static const s16 gUnknown_0850E768[] = {
    16, 8, 6, 4, 2
};

bool8 obj_npc_ministep(struct Sprite *sprite)
{
    if (sprite->data[5] >= gUnknown_0850E768[sprite->data[4]])
        return 0;

    gUnknown_0850E754[sprite->data[4]][sprite->data[5]](sprite, sprite->data[3]);

    sprite->data[5]++;

    if (sprite->data[5] < gUnknown_0850E768[sprite->data[4]])
        return 0;

    return 1;
}

void sub_80976DC(struct Sprite *sprite, u8 direction)
{
    sprite->data[3] = direction;
    sprite->data[4] = 0;
    sprite->data[5] = 0;
}

bool8 sub_80976EC(struct Sprite *sprite)
{
    if (!(sprite->data[4] & 1))
    {
        Step1(sprite, sprite->data[3]);
        sprite->data[5]++;
    }

    sprite->data[4]++;

    if (sprite->data[5] > 15)
        return 1;
    else
        return 0;
}

static const s8 gUnknown_0850E772[] = {
    1, 2, 2, 2, 2, 2, 2, 2,
    2, 2, 2, 1, 2, 2, 1, 2,
    2, 1, 2, 2, 1, 2, 1, 1,
    2, 1, 1, 2, 1, 1, 2, 1,
    1, 2, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1,
    0, 1, 1, 1, 0, 1, 1, 0,
    1, 0, 1, 0, 1, 0, 0, 0,
    0, 1, 0, 0, 0, 0, 0, 0,
};

static const s8 gUnknown_0850E7BA[] = {
     0, 0, 1, 0, 0, 1, 0, 0,
     1, 0, 1, 1, 0, 1, 1, 0,
     1, 1, 0, 1, 1, 0, 1, 1,
     0, 0, 1, 0, 0, 1, 0, 0,
     1, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, -1, 0, 0, -1, 0, 0,
    -1, 0, -1, -1, 0, -1, -1, 0,
    -1, -1, -1, -1, -1, -1, -1, -2,
};

s16 sub_8097728(s16 a1)
{
    return gUnknown_0850E7BA[a1];
}

s16 sub_809773C(s16 a1)
{
    return gUnknown_0850E772[a1];
}

void sub_8097750(struct Sprite *sprite)
{
    sprite->data[6] = 0;
    sprite->data[7] = 0;
}

bool8 sub_8097758(struct Sprite *sprite)
{
    bool8 result = 0;

    switch(sprite->data[7])
    {
        case 0:
            sprite->pos2.x += sub_809773C(sprite->data[6]);
            sprite->pos2.y += sub_8097728(sprite->data[6]);
            break;
        case 1:
            sprite->pos2.x -= sub_809773C(0x47 - sprite->data[6]);
            sprite->pos2.y += sub_8097728(0x47 - sprite->data[6]);
            break;
        case 2:
            sprite->pos2.x -= sub_809773C(sprite->data[6]);
            sprite->pos2.y += sub_8097728(sprite->data[6]);
            break;
        case 3:
            sprite->pos2.x += sub_809773C(0x47 - sprite->data[6]);
            sprite->pos2.y += sub_8097728(0x47 - sprite->data[6]);
            break;
    }
    if(++sprite->data[6] == 0x48)
    {
        sprite->data[6] = 0;
        sprite->data[7]++;
    }
    if(sprite->data[7] == 0x4)
    {
        sprite->pos2.y = 0;
        sprite->pos2.x = 0;
        result = 1;
    }
    return result;
}

static const s8 gUnknown_0850E802[] = {
    -4, -6, -8, -10, -11, -12, -12, -12, -11, -10, -9, -8, -6, -4, 0, 0
};

static const s8 gUnknown_0850E812[] = {
    0, -2, -3, -4, -5, -6, -6, -6, -5, -5, -4, -3, -2, 0, 0, 0
};

static const s8 gUnknown_0850E822[] = {
    -2, -4, -6, -8, -9, -10, -10, -10, -9, -8, -6, -5, -3, -2, 0, 0
};

static const s8 *const gUnknown_0850E834[] = {
    gUnknown_0850E802,
    gUnknown_0850E812,
    gUnknown_0850E822
};

s16 sub_8097820(s16 a1, u8 a2)
{
    return gUnknown_0850E834[a2][a1];
}

void sub_809783C(struct Sprite *sprite, u8 a2, u8 a3, u8 a4)
{
    sprite->data[3] = a2;
    sprite->data[4] = a3;
    sprite->data[5] = a4;
    sprite->data[6] = 0;
}

static const s16 gUnknown_0850E840[] = {
    16, 16, 32,
};

static const u8 gUnknown_0850E846[] = {
    0, 0, 1,
};

u8 sub_809785C(struct Sprite *sprite)
{
    s16 v5[3];
    u8 v6[3];
    u8 v2;

    memcpy(v5, gUnknown_0850E840, 6);
    memcpy(v6, gUnknown_0850E846, 3);
    v2 = 0;

    if (sprite->data[4])
        Step1(sprite, sprite->data[3]);

    sprite->pos2.y = sub_8097820(sprite->data[6] >> v6[sprite->data[4]], sprite->data[5]);

    sprite->data[6]++;

    if (sprite->data[6] == (v5[sprite->data[4]] >> 1))
        v2 = 1;

    if (sprite->data[6] >= v5[sprite->data[4]])
    {
        sprite->pos2.y = 0;
        v2 = -1;
    }

    return v2;
}

static const s16 gUnknown_0850E84A[] = {
    32, 32, 64,
};

static const u8 gUnknown_0850E850[] = {
    1, 1, 2,
};

u8 sub_80978E4(struct Sprite *sprite)
{
    s16 v5[3];
    u8 v6[3];
    u8 v2;

    memcpy(v5, gUnknown_0850E84A, 6);
    memcpy(v6, gUnknown_0850E850, 3);
    v2 = 0;

    if (sprite->data[4] && !(sprite->data[6] & 1))
        Step1(sprite, sprite->data[3]);

    sprite->pos2.y = sub_8097820(sprite->data[6] >> v6[sprite->data[4]], sprite->data[5]);

    sprite->data[6]++;

    if (sprite->data[6] == (v5[sprite->data[4]] >> 1))
        v2 = 1;

    if (sprite->data[6] >= v5[sprite->data[4]])
    {
        sprite->pos2.y = 0;
        v2 = -1;
    }

    return v2;
}

static void SetMovementDelay(struct Sprite *sprite, s16 timer)
{
    sprite->data[3] = timer;
}

static bool8 WaitForMovementDelay(struct Sprite *sprite)
{
    sprite->data[3]--;

    if (sprite->data[3] == 0)
        return 1;
    else
        return 0;
}

void SetAndStartSpriteAnim(struct Sprite *sprite, u8 animNum, u8 animCmdIndex)
{
    sprite->animNum = animNum;
    sprite->animPaused = 0;
    SeekSpriteAnim(sprite, animCmdIndex);
}

bool8 SpriteAnimEnded(struct Sprite *sprite)
{
    if (sprite->animEnded)
        return 1;
    else
        return 0;
}

void UpdateObjectEventSpriteVisibility(struct Sprite *sprite, bool8 invisible)
{
    u16 x, y;
    s16 x2, y2;

    sprite->invisible = invisible;

    if (sprite->coordOffsetEnabled)
    {
        x = sprite->pos1.x + sprite->pos2.x + sprite->centerToCornerVecX + gSpriteCoordOffsetX;
        y = sprite->pos1.y + sprite->pos2.y + sprite->centerToCornerVecY + gSpriteCoordOffsetY;
    }
    else
    {
        x = sprite->pos1.x + sprite->pos2.x + sprite->centerToCornerVecX;
        y = sprite->pos1.y + sprite->pos2.y + sprite->centerToCornerVecY;
    }

    x2 = x - (sprite->centerToCornerVecX >> 1);
    y2 = y - (sprite->centerToCornerVecY >> 1);

    if ((s16)x > 255 || x2 < -16)
        sprite->invisible = 1;
    if ((s16)y > 175 || y2 < -16)
        sprite->invisible = 1;
}

static void UpdateObjectEventSpriteSubpriorityAndVisibility(struct Sprite *sprite)
{
    sub_8097D68(sprite);
    SetObjectSubpriorityByZCoord(sprite->data[1], sprite, 1);
    UpdateObjectEventSpriteVisibility(sprite, sprite->data[2]);
}

void sub_8097AF0(void)
{
    int i;

    for(i = 0; i < 64; i++)
    {
        struct Sprite *sprite = &gSprites[i];
        if(sprite->inUse && sprite->callback == UpdateObjectEventSpriteSubpriorityAndVisibility)
            DestroySprite(sprite);
    }
}

int sub_8097B2C(u8 var)
{
    int i;

    for(i = 0; i < 64; i++)
    {
        struct Sprite *sprite = &gSprites[i];
        if(sprite->inUse && sprite->callback == UpdateObjectEventSpriteSubpriorityAndVisibility && (u8)sprite->data[0] == var)
            return i;
    }
    return 64;
}

void sub_8097B78(u8 var1, u8 var2)
{
    u8 spriteId = sub_8097B2C(var1);

    if(spriteId != 64)
        StartSpriteAnim(&gSprites[spriteId], GetFaceDirectionAnimNum(var2));
}

void sub_8097BB4(u8 var1, u8 graphicsId)
{
    int spriteId = sub_8097B2C(var1);

    if(spriteId != 64)
    {
        struct Sprite *sprite = &gSprites[spriteId];
        const struct ObjectEventGraphicsInfo *graphicsInfo = GetObjectEventGraphicsInfo(graphicsId);
        u16 tileNum = sprite->oam.tileNum;

        sprite->oam = *graphicsInfo->oam;
        sprite->oam.tileNum = tileNum;
        sprite->oam.paletteNum = graphicsInfo->paletteSlot;
        sprite->images = graphicsInfo->images;

        if(graphicsInfo->subspriteTables == ((void *)0))
        {
            sprite->subspriteTables = ((void *)0);
            sprite->subspriteTableNum = 0;
            sprite->subspriteMode = SUBSPRITES_OFF;
        }
        else
        {
            SetSubspriteTables(sprite, graphicsInfo->subspriteTables);
            sprite->subspriteMode = SUBSPRITES_IGNORE_PRIORITY;
        }
        StartSpriteAnim(sprite, 0);
    }
}

void sub_8097C44(u8 var, bool32 var2)
{
    u8 spriteId = sub_8097B2C(var);

    if(spriteId == 64)
        return;

    if(var2)
        gSprites[spriteId].data[2] = 1;
    else
        gSprites[spriteId].data[2] = 0;
}

bool32 sub_8097C8C(u8 var)
{
    u8 spriteId = sub_8097B2C(var);

    if(spriteId == 64)
        return 0;

    return (gSprites[spriteId].data[2] == 1);
}

void sub_8097CC4(u8 var1, u8 var2)
{
    u8 spriteId = sub_8097B2C(var1);

    if(spriteId != 64)
    {
        gSprites[spriteId].data[3] = var2;
        gSprites[spriteId].data[4] = 0;
    }
}

void sub_8097CF4(struct Sprite *sprite)
{
    switch(sprite->data[4])
    {
        case 0:
            sprite->pos2.y = 0;
            sprite->data[4]++;
        case 1:
            sprite->pos2.y -= 8;
            if(sprite->pos2.y == -160)
            {
                sprite->pos2.y = 0;
                sprite->data[2] = 1;
                sprite->data[3] = 0;
                sprite->data[4] = 0;
            }
    }
}

void sub_8097D30(struct Sprite *sprite)
{
    switch(sprite->data[4])
    {
        case 0:
            sprite->pos2.y = -160;
            sprite->data[4]++;
        case 1:
            sprite->pos2.y += 8;
            if(sprite->pos2.y == 0)
            {
                sprite->data[3] = 0;
                sprite->data[4] = 0;
            }
    }
}

static void sub_8097D68(struct Sprite *sprite)
{
    switch(sprite->data[3])
    {
        case 1:
            sub_8097D30(sprite);
            break;
        case 2:
            sub_8097CF4(sprite);
            break;
        case 0:
            break;
        default:
            sprite->data[3] = 0;
            break;
    }
}

bool32 sub_8097D9C(u8 var)
{
    u8 spriteId = sub_8097B2C(var);

    if(spriteId == 64)
        return 0;

    if(gSprites[spriteId].data[3] != 0)
        return 1;

    return 0;
}

u32 StartFieldEffectForObjectEvent(u8 fieldEffectId, struct ObjectEvent *objectEvent)
{
    ObjectEventGetLocalIdAndMap(objectEvent, &gFieldEffectArguments[0], &gFieldEffectArguments[1], &gFieldEffectArguments[2]);
    return FieldEffectStart(fieldEffectId);
}

void DoShadowFieldEffect(struct ObjectEvent *objectEvent)
{
    if (!objectEvent->hasShadow)
    {
        objectEvent->hasShadow = 1;
        StartFieldEffectForObjectEvent(3, objectEvent);
    }
}

static void DoRippleFieldEffect(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    const struct ObjectEventGraphicsInfo *graphicsInfo = GetObjectEventGraphicsInfo(objectEvent->graphicsId);
    gFieldEffectArguments[0] = sprite->pos1.x;
    gFieldEffectArguments[1] = sprite->pos1.y + (graphicsInfo->height >> 1) - 2;
    gFieldEffectArguments[2] = 151;
    gFieldEffectArguments[3] = 3;
    FieldEffectStart(5);
}

u8 (*const gMovementActionFuncs_StoreAndLockAnim[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_StoreAndLockAnim_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_FreeAndUnlockAnim[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FreeAndUnlockAnim_Step0,
    MovementAction_Finish,
};

u8 (*const gMovementActionFuncs_FlyUp[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FlyUp_Step0,
    MovementAction_FlyUp_Step1,
    MovementAction_Fly_Finish,
};

u8 (*const gMovementActionFuncs_FlyDown[])(struct ObjectEvent *, struct Sprite *) = {
    MovementAction_FlyDown_Step0,
    MovementAction_FlyDown_Step1,
    MovementAction_Fly_Finish,
};

u8 MovementAction_StoreAndLockAnim_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    u32 one;
    bool32 ableToStore = 0;
    if (gLockedAnimObjectEvents == ((void *)0))
    {
        gLockedAnimObjectEvents = AllocZeroed(sizeof(struct LockedAnimObjectEvents));
        gLockedAnimObjectEvents->objectEventIds[0] = objectEvent->localId;

        gLockedAnimObjectEvents->count = (one = 1);
        ableToStore = one;
    }
    else
    {
        u8 i;
        u8 firstFreeSlot;
        bool32 found;
        for (firstFreeSlot = 16, found = 0, i = 0; i < 16; i++)
        {
            if (firstFreeSlot == 16 && gLockedAnimObjectEvents->objectEventIds[i] == 0)
                firstFreeSlot = i;

            if (gLockedAnimObjectEvents->objectEventIds[i] == objectEvent->localId)
            {
                found = 1;
                break;
            }
        }

        if (!found && firstFreeSlot != 16)
        {
            gLockedAnimObjectEvents->objectEventIds[firstFreeSlot] = objectEvent->localId;
            gLockedAnimObjectEvents->count++;
            ableToStore = 1;
        }
    }

    if (ableToStore == 1)
    {
        objectEvent->inanimate = 1;
        objectEvent->facingDirectionLocked = 1;
    }

    sprite->data[2] = 1;
    return 1;
}

u8 MovementAction_FreeAndUnlockAnim_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    bool32 ableToStore;
    u8 index;

    sprite->data[2] = 1;
    if (gLockedAnimObjectEvents != ((void *)0))
    {
        ableToStore = 0;
        index = FindLockedObjectEventIndex(objectEvent);
        if (index != 16)
        {
            gLockedAnimObjectEvents->objectEventIds[index] = 0;
            gLockedAnimObjectEvents->count--;
            ableToStore = 1;
        }
        if (gLockedAnimObjectEvents->count == 0)
            { Free(gLockedAnimObjectEvents); gLockedAnimObjectEvents = ((void *)0); };
        if (ableToStore == 1)
        {
            objectEvent->inanimate = GetObjectEventGraphicsInfo(objectEvent->graphicsId)->inanimate;
            objectEvent->facingDirectionLocked = 0;
            sprite->animPaused = 0;
        }
    }

    return 1;
}

u8 FindLockedObjectEventIndex(struct ObjectEvent *objectEvent)
{
    u8 i;

    for (i = 0; i < 16; i++)
    {
        if (gLockedAnimObjectEvents->objectEventIds[i] == objectEvent->localId)
            return i;
    }
    return 16;
}

void CreateLevitateMovementTask(struct ObjectEvent *objectEvent)
{
    u8 taskId = CreateTask(ApplyLevitateMovement, 0xFF);
    struct Task *task = &gTasks[taskId];

    StoreWordInTwoHalfwords(&task->data[0], (u32)objectEvent);
    objectEvent->warpArrowSpriteId = taskId;
    task->data[3] = 0xFFFF;
}

static void ApplyLevitateMovement(u8 taskId)
{
    struct ObjectEvent *objectEvent;
    struct Sprite *sprite;
    struct Task *task = &gTasks[taskId];

    LoadWordFromTwoHalfwords(&task->data[0], (u32 *)&objectEvent);
    sprite = &gSprites[objectEvent->spriteId];

    if(!(task->data[2] & 0x3))
        sprite->pos2.y += task->data[3];

    if(!(task->data[2] & 0xF))
        task->data[3] = -task->data[3];

    task->data[2]++;
}

void DestroyExtraMovementTask(u8 taskId)
{
    struct ObjectEvent *objectEvent;
    struct Task *task = &gTasks[taskId];

    LoadWordFromTwoHalfwords(&task->data[0], (u32 *)&objectEvent);
    DestroyTask(taskId);
}

void sub_8098074(u8 var1, u8 var2)
{
    u8 i;

    for(i = 0; i < 16; i++)
    {
        if(i != var1 && i != var2 &&
            gObjectEvents[i].active && i != gPlayerAvatar.objectEventId)
                FreezeObjectEvent(&gObjectEvents[i]);
    }
}

u8 MovementAction_FlyUp_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sprite->pos2.y = 0;
    sprite->data[2]++;
    return 0;
}

u8 MovementAction_FlyUp_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sprite->pos2.y -= 8;

    if(sprite->pos2.y == -160)
        sprite->data[2]++;
    return 0;
}

u8 MovementAction_FlyDown_Step0(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sprite->pos2.y = -160;
    sprite->data[2]++;
    return 0;
}

u8 MovementAction_FlyDown_Step1(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    sprite->pos2.y += 8;

    if(!sprite->pos2.y)
        sprite->data[2]++;
    return 0;
}


u8 MovementAction_Fly_Finish(struct ObjectEvent *objectEvent, struct Sprite *sprite)
{
    return 1;
}
