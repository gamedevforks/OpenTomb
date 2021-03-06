-------- Lara's model-------
--           .=.
--          | 14|
--           \ / \
--       / |     | \
--  11  / |   7   | \  8
--     /   |     |   \
--     |    =====    |
--  12 |    =====    | 9
--     |   /  0  \   |
--  13 0  /_______\  0 10
--        |  | |  |
--        |1 | |4 |
--        |  | |  |
--        |__| |__|
--        |  | |  |
--        |2 | |5 |
--        |  | |  |
--        |__| |__|
--     3  |__| |__|  6
----------------------------

-- 0x00: no overriding / adding;
-- 0x01: overriding mesh in armed state;
-- 0x02: add mesh to slot in armed state;
-- 0x03: overriding mesh in disarmed state;
-- 0x04: add mesh to slot in disarmed state;

setEntityGhostCollisionShape(player, 0,  COLLISION_SHAPE_SPHERE, -60.0, nil, nil, 60.0, nil, nil);
setEntityGhostCollisionShape(player, 7,  COLLISION_SHAPE_BOX, -48.0, -54.0, 8.0, 48.0, 32.0, 166.0);
setEntityGhostCollisionShape(player, 1,  COLLISION_SHAPE_BOX, -32.0, -26.1, -176.0, 32.0, 29.1, -2.7);
setEntityGhostCollisionShape(player, 4,  COLLISION_SHAPE_BOX, -32.0, -27.1, -175.3, 32.0, 28.1, 1.7);
setEntityGhostCollisionShape(player, 10, COLLISION_SHAPE_SPHERE, -32.0, nil, -52.0, 16.0, nil, 0);
setEntityGhostCollisionShape(player, 13, COLLISION_SHAPE_SPHERE, -16.0, nil, -52.0, 32.0, nil, 0);
setEntityGhostCollisionShape(player, 14, COLLISION_SHAPE_SPHERE, -56.0, 0, 0, 56.0, 16.0, 64.0);

setEntityGhostCollisionShape(player, 3,  COLLISION_SHAPE_BOX, nil, nil, nil, nil, nil, nil);
setEntityGhostCollisionShape(player, 6,  COLLISION_SHAPE_BOX, nil, nil, nil, nil, nil, nil);
setEntityGhostCollisionShape(player, 2,  COLLISION_SHAPE_BOX, -30.0, -40.0, -200.0, 24.0, 16.0, 0);
setEntityGhostCollisionShape(player, 5,  COLLISION_SHAPE_BOX, -24.0, -40.0, -200.0, 30.0, 16.0, 0);
setEntityGhostCollisionShape(player, 12, COLLISION_SHAPE_BOX, nil, nil, nil, nil, nil, nil);
setEntityGhostCollisionShape(player, 9,  COLLISION_SHAPE_BOX, nil, nil, nil, nil, nil, nil);
setEntityGhostCollisionShape(player, 11, COLLISION_SHAPE_BOX, nil, nil, nil, nil, nil, nil);
setEntityGhostCollisionShape(player, 8,  COLLISION_SHAPE_BOX, nil, nil, nil, nil, nil, nil);

setHumanoidBodyParts(player);

-- creates map for left and right hands
function setDefaultModelAnimReplaceFlag(m_id)
    setModelAnimReplaceFlag(m_id, 8, 0x01);
    setModelAnimReplaceFlag(m_id, 9, 0x01);
    setModelAnimReplaceFlag(m_id, 10, 0x01);
    setModelAnimReplaceFlag(m_id, 11, 0x01);
    setModelAnimReplaceFlag(m_id, 12, 0x01);
    setModelAnimReplaceFlag(m_id, 13, 0x01);
end

if (getLevelVersion() < TR_II) then
    -- pistols
    setDefaultModelAnimReplaceFlag(1);
    setModelMeshReplaceFlag(1, 10, 0x01);
    setModelMeshReplaceFlag(1, 13, 0x01);
    setModelMeshReplaceFlag(1, 1, 0x03);
    setModelMeshReplaceFlag(1, 4, 0x03);
    
    -- shotgun
    setDefaultModelAnimReplaceFlag(2);
    setModelMeshReplaceFlag(2, 10, 0x01);
    setModelMeshReplaceFlag(2, 13, 0x01);
    setModelMeshReplaceFlag(2, 7, 0x03);

    -- auto pistols
    setDefaultModelAnimReplaceFlag(3);
    setModelMeshReplaceFlag(3, 10, 0x01);
    setModelMeshReplaceFlag(3, 13, 0x01);
    setModelMeshReplaceFlag(3, 1, 0x03);
    setModelMeshReplaceFlag(3, 4, 0x03);

    -- UZI
    setDefaultModelAnimReplaceFlag(4);
    setModelMeshReplaceFlag(4, 10, 0x01);
    setModelMeshReplaceFlag(4, 13, 0x01);
    setModelMeshReplaceFlag(4, 14, 0x01);
    setModelMeshReplaceFlag(4, 1, 0x03);
    setModelMeshReplaceFlag(4, 4, 0x03);

elseif (getLevelVersion() < TR_III) then
    -- pistols
    setDefaultModelAnimReplaceFlag(1);
    setModelMeshReplaceFlag(1, 10, 0x01);
    setModelMeshReplaceFlag(1, 13, 0x01);
    setModelMeshReplaceFlag(1, 1, 0x03);
    setModelMeshReplaceFlag(1, 4, 0x03);
    
    -- shotgun
    setDefaultModelAnimReplaceFlag(3);
    setModelMeshReplaceFlag(3, 10, 0x01);
    setModelMeshReplaceFlag(3, 13, 0x01);
    setModelMeshReplaceFlag(3, 14, 0x04);

    -- auto pistols
    setDefaultModelAnimReplaceFlag(4);
    setModelMeshReplaceFlag(4, 10, 0x01);
    setModelMeshReplaceFlag(4, 13, 0x01);
    setModelMeshReplaceFlag(4, 1, 0x03);
    setModelMeshReplaceFlag(4, 4, 0x03);

    -- UZI
    setDefaultModelAnimReplaceFlag(5);
    setModelMeshReplaceFlag(5, 10, 0x01);
    setModelMeshReplaceFlag(5, 13, 0x01);
    setModelMeshReplaceFlag(5, 14, 0x01);
    setModelMeshReplaceFlag(5, 1, 0x03);
    setModelMeshReplaceFlag(5, 4, 0x03);

    -- M16
    setDefaultModelAnimReplaceFlag(6);
    setModelMeshReplaceFlag(6, 10, 0x01);
    setModelMeshReplaceFlag(6, 14, 0x04);

    -- grenade launcher
    setDefaultModelAnimReplaceFlag(7);
    setModelMeshReplaceFlag(7, 10, 0x01);
    setModelMeshReplaceFlag(7, 14, 0x04);

    -- harpoon gun
    setDefaultModelAnimReplaceFlag(8);
    setModelMeshReplaceFlag(8, 10, 0x01);
    setModelMeshReplaceFlag(8, 14, 0x04);      -- 0x04 slot mesh model: draws with original mesh

    -- flare
    setModelAnimReplaceFlag(9, 11, 0x01);
    setModelAnimReplaceFlag(9, 12, 0x01);
    setModelAnimReplaceFlag(9, 13, 0x01);
    setModelMeshReplaceFlag(9, 13, 0x01);
elseif (getLevelVersion() < TR_IV) then
    -- pistols
    setDefaultModelAnimReplaceFlag(1);
    setModelMeshReplaceFlag(1, 10, 0x01);
    setModelMeshReplaceFlag(1, 13, 0x01);
    setModelMeshReplaceFlag(1, 1, 0x03);
    setModelMeshReplaceFlag(1, 4, 0x03);
    
    -- shotgun
    setDefaultModelAnimReplaceFlag(3);
    setModelMeshReplaceFlag(3, 10, 0x01);
    setModelMeshReplaceFlag(3, 14, 0x04);

    -- magnum
    setDefaultModelAnimReplaceFlag(4);
    setModelMeshReplaceFlag(4, 10, 0x01);
    setModelMeshReplaceFlag(4, 4, 0x03);

    -- UZI
    setDefaultModelAnimReplaceFlag(5);
    setModelMeshReplaceFlag(5, 10, 0x01);
    setModelMeshReplaceFlag(5, 13, 0x01);
    setModelMeshReplaceFlag(5, 14, 0x01);
    setModelMeshReplaceFlag(5, 1, 0x03);
    setModelMeshReplaceFlag(5, 4, 0x03);

    -- M16
    setDefaultModelAnimReplaceFlag(6);
    setModelMeshReplaceFlag(6, 10, 0x01);
    setModelMeshReplaceFlag(6, 14, 0x04);

    -- rocket launcher
    setDefaultModelAnimReplaceFlag(7);
    setModelMeshReplaceFlag(7, 10, 0x01);
    setModelMeshReplaceFlag(7, 14, 0x04);

    -- grenade launcher
    setDefaultModelAnimReplaceFlag(8);
    setModelMeshReplaceFlag(8, 10, 0x01);
    setModelMeshReplaceFlag(8, 14, 0x04);

    -- harpoon gun
    setDefaultModelAnimReplaceFlag(9);
    setModelMeshReplaceFlag(9, 10, 0x01);
    setModelMeshReplaceFlag(9, 14, 0x04);

    -- flare
    setModelAnimReplaceFlag(10, 11, 0x01);
    setModelAnimReplaceFlag(10, 12, 0x01);
    setModelAnimReplaceFlag(10, 13, 0x01);
    setModelMeshReplaceFlag(10, 13, 0x01);

elseif (getLevelVersion() <= TR_V) then
    -- pistols
    copyMeshFromModelToModel(1, 14, 1, 4);
    copyMeshFromModelToModel(1, 14, 4, 8);
    setDefaultModelAnimReplaceFlag(1);
    setModelMeshReplaceFlag(1, 10, 0x01);
    setModelMeshReplaceFlag(1, 13, 0x01);
    setModelMeshReplaceFlag(1, 1, 0x04);
    setModelMeshReplaceFlag(1, 4, 0x04);
    
    -- UZI
    copyMeshFromModelToModel(2, 15, 1, 4);
    copyMeshFromModelToModel(2, 15, 4, 8);
    setDefaultModelAnimReplaceFlag(2);
    setModelMeshReplaceFlag(2, 10, 0x01);
    setModelMeshReplaceFlag(2, 13, 0x01);
    setModelMeshReplaceFlag(2, 1, 0x04);
    setModelMeshReplaceFlag(2, 4, 0x04);

    -- shotgun
    setDefaultModelAnimReplaceFlag(3);
    setModelMeshReplaceFlag(3, 10, 0x01);
    setModelMeshReplaceFlag(3, 14, 0x04);

    -- crossbow
    setDefaultModelAnimReplaceFlag(4);
    setModelMeshReplaceFlag(4, 10, 0x01);
    setModelMeshReplaceFlag(4, 14, 0x04);

    -- grenade launcher
    setDefaultModelAnimReplaceFlag(5);
    setModelMeshReplaceFlag(5, 10, 0x01);
    setModelMeshReplaceFlag(5, 14, 0x04);

    -- magnum
    copyMeshFromModelToModel(6, 16, 4, 8);
    setDefaultModelAnimReplaceFlag(6);
    setModelMeshReplaceFlag(6, 10, 0x01);
    setModelMeshReplaceFlag(6, 4, 0x04);

    -- flare
    setModelAnimReplaceFlag(7, 11, 0x01);
    setModelAnimReplaceFlag(7, 12, 0x01);
    setModelAnimReplaceFlag(7, 13, 0x01);
    setModelMeshReplaceFlag(7, 13, 0x01);
end
          
setModelCollisionMap(0, 0, 0);              -- butt
setModelCollisionMap(0, 1, 7);              -- body
setModelCollisionMap(0, 2, 14);             -- head

setModelCollisionMap(0, 3, 1);              -- legs 1
setModelCollisionMap(0, 4, 4);
setModelCollisionMap(0, 5, 11);             -- hands 1
setModelCollisionMap(0, 6, 8);

setModelCollisionMap(0, 7, 2);              -- legs 2
setModelCollisionMap(0, 8, 5);
setModelCollisionMap(0, 9, 12);             -- hands 2
setModelCollisionMap(0, 10, 9);

setModelCollisionMap(0, 11, 3);             -- boots 3
setModelCollisionMap(0, 12, 6);
setModelCollisionMap(0, 13, 10);            -- braces 3
setModelCollisionMap(0, 14, 13);

-- Generate UV rotation texture animations for waterfalls in TR4+ versions

if (getLevelVersion() == TR_IV) then
    for i=423, 426, 1 do
        genUVRotateAnimation(i);
    end;
elseif (getLevelVersion() == TR_V) then
    for i=410, 415, 1 do
        genUVRotateAnimation(i);
    end;
end

-- Add global level tasks

addTask(checkPlayerRagdollConditions);    -- check ragdolls
addTask(checkDebugKeys);

-- Test TR_ITEMS

addItem(player, ITEM_COMPASS, 1);
addItem(player, ITEM_PASSPORT, 1);
addItem(player, ITEM_CONTROLS, 1);
addItem(player, ITEM_AUDIO, 1);
addItem(player, ITEM_PISTOL, 1);
addItem(player, ITEM_SMALL_MEDIPACK, 3);
addItem(player, ITEM_LARGE_MEDIPACK, 1);