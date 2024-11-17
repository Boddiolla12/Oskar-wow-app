drop database if exists oskar_wow;

create database oskar_wow;

use oskar_wow;

create table player_class (
class_id int primary key,
class_name varchar(50),
class_roles varchar(20),
armor_type varchar(20),
resource_type varchar(20),
available_races varchar(100),
descript text,
icon_url varchar(255),
created_at timestamp,
updated_at timestamp
);

INSERT INTO player_class (
    class_id, 
    class_name, 
    class_roles, 
    armor_type, 
    resource_type, 
    available_races, 
    descript, 
    icon_url, 
    created_at, 
    updated_at
) VALUES
(1, 'Warrior', 'Tank, DPS', 'Plate', 'Rage', 'Human, Orc, Dwarf, Night Elf, Tauren, Gnome, Troll, Undead', 
    'Warriors are melee fighters highly trained in the arts of weaponry. They are strong and quick on the battlefield.', 
    'https://example.com/icons/warrior.png', 
    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, 'Mage', 'DPS', 'Cloth', 'Mana', 'Human, Gnome, Troll, Undead, Night Elf', 
    'Mages are wielders of arcane magic, capable of unleashing massive bursts of energy and freezing enemies in their tracks.', 
    'https://example.com/icons/mage.png', 
    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(3, 'Priest', 'Healer, DPS', 'Cloth', 'Mana', 'Human, Dwarf, Night Elf, Troll, Undead', 
    'Priests are versatile healers and masters of shadow magic, capable of saving allies or wreaking havoc on enemies.', 
    'https://example.com/icons/priest.png', 
    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(4, 'Rogue', 'DPS', 'Leather', 'Energy', 'Human, Orc, Dwarf, Night Elf, Troll, Gnome, Undead', 
    'Rogues are stealthy assassins who strike enemies when they least expect it, excelling in quick, precise attacks.', 
    'https://example.com/icons/rogue.png', 
    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(5, 'Paladin', 'Tank, Healer, DPS', 'Plate', 'Mana', 'Human, Dwarf, Blood Elf, Draenei', 
    'Paladins are holy knights, capable of protecting their allies, dealing damage, or healing wounds.', 
    'https://example.com/icons/paladin.png', 
    CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);




