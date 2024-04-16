-- use this file to map the AP item ids to your items
-- first value is the code of the target item and the second is the item type (currently only "toggle", "progressive" and "consumable" but feel free to expand for your needs!)
-- here are the SM items as an example: https://github.com/Cyb3RGER/sm_ap_tracker/blob/main/scripts/autotracking/item_mapping.lua
ITEM_MAPPING = {
    -- relics
    [0xD55CE801] = {"double", "toggle"},
    [0xD55CE802] = {"tackle", "toggle"},
    [0xD55CE803] = {"kick", "toggle"},
    [0xD55CE804] = {"push", "toggle"},
    [0xD55CE806] = {"cleansing", "toggle"},
    [0xD55CE807] = {"roc", "toggle"},
    [0xD55CE808] = {"last_keys", "consumable"},
    -- cards 
    [0xD55CE604] = {"cockatrice", "toggle"},
    [0xD55CE601] = {"serpent", "toggle"},
    [0xD55CE60A] = {"mercury", "toggle"},
    [0xD55CE60D] = {"mars", "toggle"},
}