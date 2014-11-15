
delete from src_db.player_sysmsg where `delete_flag`=1;


insert ignore into  z_gamedb.player_allowlogin select * from                src_db.player_allowlogin;
insert into         z_gamedb.player_active_chapter select * from            src_db.player_active_chapter;
insert into         z_gamedb.player_ask_friend select * from                src_db.player_ask_friend;
insert into         z_gamedb.player_award select * from                     src_db.player_award;
insert into         z_gamedb.player_base select * from                      src_db.player_base;
insert into         z_gamedb.player_buffitem select * from                  src_db.player_buffitem;
insert into         z_gamedb.player_checkpoint select * from                src_db.player_checkpoint;
insert into         z_gamedb.player_chenjiu select * from                   src_db.player_chenjiu;
insert into         z_gamedb.player_equip select * from                     src_db.player_equip;
insert into         z_gamedb.player_exp select * from                       src_db.player_exp;
insert into         z_gamedb.player_flag select * from                      src_db.player_flag;
insert into         z_gamedb.player_friend select * from                    src_db.player_friend;
insert into         z_gamedb.player_goods select * from                     src_db.player_goods;
insert into         z_gamedb.player_info select * from                      src_db.player_info;
insert into         z_gamedb.player_loginout select * from                  src_db.player_loginout;
insert into         z_gamedb.player_month_chongzhi select * from            src_db.player_month_chongzhi;
insert into         z_gamedb.player_pet select * from                       src_db.player_pet;
insert into         z_gamedb.player_pet_opened select * from                src_db.player_pet_opened;
insert into         z_gamedb.player_pvp select * from                       src_db.player_pvp;
insert into         z_gamedb.player_pvp_match select * from                 src_db.player_pvp_match;
insert into         z_gamedb.player_quest select * from                     src_db.player_quest;
insert into         z_gamedb.player_queue select * from                     src_db.player_queue;
insert into         z_gamedb.player_skill select * from                     src_db.player_skill;
insert into         z_gamedb.player_sysmsg select 0,`msg_type`,
                            `digitid`,`send_name`,`title`,
                            `content`,`award`,
                            `read_flag`,`delete_flag`,
                            `currenttime` from                              src_db.player_sysmsg;
insert into         z_gamedb.player_task select * from                      src_db.player_task;
insert into         z_gamedb.player_yuanbao select * from                   src_db.player_yuanbao;


update z_all.tbl_user set areaid=合区后id where areaid=合区前id;

