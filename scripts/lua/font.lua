-- Create a font, the parameter dwStyle is the aggregation of the following three situations: 0x0001-bold, 0x0002-italic, 0x0004-underlined, 0 is normal
function UI_CreateFont(font, size800, size1024, dwStyle)
    return CLU.UI_CreateFont(font, size800, size1024, dwStyle)
end
-- Single UI font: Microsoft YaHei (CJK + Latin/Cyrillic/etc. on typical Windows installs).
-- Player names / misc stay on Roboto below.
--simsun
DEFAULT_FONT = UI_CreateFont("Microsoft YaHei", 12, 12, 0) -- 0
FONT14 = UI_CreateFont("Microsoft YaHei", 14, 14, 4) -- 1
FONT16 = UI_CreateFont("Microsoft YaHei", 14, 14, 4) -- 2
FONT20 = UI_CreateFont("Microsoft YaHei", 20, 20, 1) -- 3
FONT28 = UI_CreateFont("Microsoft YaHei", 28, 28, 1) -- 4
BIGFONT = UI_CreateFont("Microsoft YaHei", 48, 48, 0) -- 5
ARIAL_FONT = UI_CreateFont("Microsoft YaHei", 12, 12, 0) -- 6

PlayerNameFont = UI_CreateFont("roboto", 14, 14, 1) -- 7
PlayerSubNamesFont = UI_CreateFont("roboto", 13, 13, 1) -- 8
MiscFonts = UI_CreateFont("roboto", 13, 13, 0) -- 9
MonstersAndNPCS = UI_CreateFont("roboto", 14, 14, 1) -- 10

LegacyFont = UI_CreateFont("simsun", 12, 12, 0) -- 11