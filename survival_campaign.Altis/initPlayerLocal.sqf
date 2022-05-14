// all the different player spawn loadouts:
_playerLoadout01 = [[],[],[],["U_C_IDAP_Man_Jeans_F",[["ACE_EarPlugs",1]]],[],[],"H_Cap_blk","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
_playerLoadout02 = [[],[],[],["U_C_ArtTShirt_01_v5_F",[["ACE_EarPlugs",1]]],[],[],"H_Hat_brown","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
_playerLoadout03 = [[],[],[],["U_C_Poloshirt_salmon",[["ACE_EarPlugs",1]]],[],[],"H_MilCap_gry","",[],["ItemMap","","","ItemCompass","ItemWatch",""]];

_playerLoadoutArray = [_playerLoadout01, _playerLoadout02, _playerLoadout03];

_playerLoadout = selectRandom _playerLoadoutArray;
//copyToClipboard _playerLoadout;
player setUnitLoadout  _playerLoadout;
player setUnitTrait ["Medic", true];
player setUnitTrait ["Engineer", true];