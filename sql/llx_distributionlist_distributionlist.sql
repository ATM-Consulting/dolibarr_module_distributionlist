-- Copyright (C) ---Put here your own copyright and developer email---
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see https://www.gnu.org/licenses/.


CREATE TABLE llx_distributionlist_distributionlist(
	-- BEGIN MODULEBUILDER FIELDS
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL,
	ref varchar(128) DEFAULT '(PROV)' NOT NULL,
    entity	integer  DEFAULT 1 NOT NULL, -- multi company id
	label varchar(255), 
	description text, 
	note_public text, 
	note_private text,
    date_creation datetime NOT NULL,
    date_valid datetime,
    tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	fk_user_creat integer NOT NULL, 
	fk_user_modif integer,
    fk_user_cloture integer,
    fk_user_valid integer,
    nb_contacts integer NOT NULL DEFAULT 0,
	import_key varchar(14), 
	status smallint NOT NULL,
	date_cloture date
	-- END MODULEBUILDER FIELDS
) ENGINE=innodb;
