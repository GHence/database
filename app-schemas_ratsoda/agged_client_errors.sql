
BEGIN;
DROP TABLE IF EXISTS agged_client_errors;

CREATE TABLE `agged_client_errors` (
  `created_on` datetime DEFAULT NULL,
  `RATSODA_TS` bigint(20) DEFAULT NULL,
  `timestamp` int(11) unsigned DEFAULT NULL,
  `bidder_id` int(11) unsigned DEFAULT NULL,
  `error_code` int(11) unsigned DEFAULT NULL,
  `error_id` int(11) unsigned DEFAULT NULL,
  `buyer_member_id` int(11) unsigned DEFAULT NULL,
  `seller_member_id` int(11) unsigned DEFAULT NULL,
  `creative_id` int(11) unsigned DEFAULT NULL,
  `deal_id` int(11) unsigned DEFAULT NULL,
  `ad_profile_id` int(11) unsigned DEFAULT NULL,
  `tag_id` int(11) unsigned DEFAULT NULL,
  `error_message` text,
  `error_count` int(11) unsigned DEFAULT NULL,
  KEY `agged_client_errors_bidder_id` (`bidder_id`,`created_on`) USING BTREE,
  KEY `agged_client_errors_error_id` (`error_id`,`created_on`) USING BTREE,
  KEY `agged_client_errors_buyer_member_id` (`buyer_member_id`,`created_on`) USING BTREE,
  KEY `agged_client_errors_seller_member_id` (`seller_member_id`,`created_on`) USING BTREE,
  KEY `agged_client_errors_creative_id` (`creative_id`,`created_on`) USING BTREE,
  KEY `agged_client_errors_deal_id` (`deal_id`,`created_on`) USING BTREE,
  KEY `agged_client_errors_ad_profile_id` (`ad_profile_id`,`created_on`) USING BTREE,
  KEY `agged_client_errors_tag_id` (`tag_id`,`created_on`) USING BTREE,
  KEY `timestamp` (`timestamp`,`bidder_id`,`error_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
/*!50100 PARTITION BY RANGE (DAYOFYEAR(created_on))
(PARTITION p1 VALUES LESS THAN (1) ENGINE = InnoDB,
 PARTITION p2 VALUES LESS THAN (2) ENGINE = InnoDB,
 PARTITION p3 VALUES LESS THAN (3) ENGINE = InnoDB,
 PARTITION p4 VALUES LESS THAN (4) ENGINE = InnoDB,
 PARTITION p5 VALUES LESS THAN (5) ENGINE = InnoDB,
 PARTITION p6 VALUES LESS THAN (6) ENGINE = InnoDB,
 PARTITION p7 VALUES LESS THAN (7) ENGINE = InnoDB,
 PARTITION p8 VALUES LESS THAN (8) ENGINE = InnoDB,
 PARTITION p9 VALUES LESS THAN (9) ENGINE = InnoDB,
 PARTITION p10 VALUES LESS THAN (10) ENGINE = InnoDB,
 PARTITION p11 VALUES LESS THAN (11) ENGINE = InnoDB,
 PARTITION p12 VALUES LESS THAN (12) ENGINE = InnoDB,
 PARTITION p13 VALUES LESS THAN (13) ENGINE = InnoDB,
 PARTITION p14 VALUES LESS THAN (14) ENGINE = InnoDB,
 PARTITION p15 VALUES LESS THAN (15) ENGINE = InnoDB,
 PARTITION p16 VALUES LESS THAN (16) ENGINE = InnoDB,
 PARTITION p17 VALUES LESS THAN (17) ENGINE = InnoDB,
 PARTITION p18 VALUES LESS THAN (18) ENGINE = InnoDB,
 PARTITION p19 VALUES LESS THAN (19) ENGINE = InnoDB,
 PARTITION p20 VALUES LESS THAN (20) ENGINE = InnoDB,
 PARTITION p21 VALUES LESS THAN (21) ENGINE = InnoDB,
 PARTITION p22 VALUES LESS THAN (22) ENGINE = InnoDB,
 PARTITION p23 VALUES LESS THAN (23) ENGINE = InnoDB,
 PARTITION p24 VALUES LESS THAN (24) ENGINE = InnoDB,
 PARTITION p25 VALUES LESS THAN (25) ENGINE = InnoDB,
 PARTITION p26 VALUES LESS THAN (26) ENGINE = InnoDB,
 PARTITION p27 VALUES LESS THAN (27) ENGINE = InnoDB,
 PARTITION p28 VALUES LESS THAN (28) ENGINE = InnoDB,
 PARTITION p29 VALUES LESS THAN (29) ENGINE = InnoDB,
 PARTITION p30 VALUES LESS THAN (30) ENGINE = InnoDB,
 PARTITION p31 VALUES LESS THAN (31) ENGINE = InnoDB,
 PARTITION p32 VALUES LESS THAN (32) ENGINE = InnoDB,
 PARTITION p33 VALUES LESS THAN (33) ENGINE = InnoDB,
 PARTITION p34 VALUES LESS THAN (34) ENGINE = InnoDB,
 PARTITION p35 VALUES LESS THAN (35) ENGINE = InnoDB,
 PARTITION p36 VALUES LESS THAN (36) ENGINE = InnoDB,
 PARTITION p37 VALUES LESS THAN (37) ENGINE = InnoDB,
 PARTITION p38 VALUES LESS THAN (38) ENGINE = InnoDB,
 PARTITION p39 VALUES LESS THAN (39) ENGINE = InnoDB,
 PARTITION p40 VALUES LESS THAN (40) ENGINE = InnoDB,
 PARTITION p41 VALUES LESS THAN (41) ENGINE = InnoDB,
 PARTITION p42 VALUES LESS THAN (42) ENGINE = InnoDB,
 PARTITION p43 VALUES LESS THAN (43) ENGINE = InnoDB,
 PARTITION p44 VALUES LESS THAN (44) ENGINE = InnoDB,
 PARTITION p45 VALUES LESS THAN (45) ENGINE = InnoDB,
 PARTITION p46 VALUES LESS THAN (46) ENGINE = InnoDB,
 PARTITION p47 VALUES LESS THAN (47) ENGINE = InnoDB,
 PARTITION p48 VALUES LESS THAN (48) ENGINE = InnoDB,
 PARTITION p49 VALUES LESS THAN (49) ENGINE = InnoDB,
 PARTITION p50 VALUES LESS THAN (50) ENGINE = InnoDB,
 PARTITION p51 VALUES LESS THAN (51) ENGINE = InnoDB,
 PARTITION p52 VALUES LESS THAN (52) ENGINE = InnoDB,
 PARTITION p53 VALUES LESS THAN (53) ENGINE = InnoDB,
 PARTITION p54 VALUES LESS THAN (54) ENGINE = InnoDB,
 PARTITION p55 VALUES LESS THAN (55) ENGINE = InnoDB,
 PARTITION p56 VALUES LESS THAN (56) ENGINE = InnoDB,
 PARTITION p57 VALUES LESS THAN (57) ENGINE = InnoDB,
 PARTITION p58 VALUES LESS THAN (58) ENGINE = InnoDB,
 PARTITION p59 VALUES LESS THAN (59) ENGINE = InnoDB,
 PARTITION p60 VALUES LESS THAN (60) ENGINE = InnoDB,
 PARTITION p61 VALUES LESS THAN (61) ENGINE = InnoDB,
 PARTITION p62 VALUES LESS THAN (62) ENGINE = InnoDB,
 PARTITION p63 VALUES LESS THAN (63) ENGINE = InnoDB,
 PARTITION p64 VALUES LESS THAN (64) ENGINE = InnoDB,
 PARTITION p65 VALUES LESS THAN (65) ENGINE = InnoDB,
 PARTITION p66 VALUES LESS THAN (66) ENGINE = InnoDB,
 PARTITION p67 VALUES LESS THAN (67) ENGINE = InnoDB,
 PARTITION p68 VALUES LESS THAN (68) ENGINE = InnoDB,
 PARTITION p69 VALUES LESS THAN (69) ENGINE = InnoDB,
 PARTITION p70 VALUES LESS THAN (70) ENGINE = InnoDB,
 PARTITION p71 VALUES LESS THAN (71) ENGINE = InnoDB,
 PARTITION p72 VALUES LESS THAN (72) ENGINE = InnoDB,
 PARTITION p73 VALUES LESS THAN (73) ENGINE = InnoDB,
 PARTITION p74 VALUES LESS THAN (74) ENGINE = InnoDB,
 PARTITION p75 VALUES LESS THAN (75) ENGINE = InnoDB,
 PARTITION p76 VALUES LESS THAN (76) ENGINE = InnoDB,
 PARTITION p77 VALUES LESS THAN (77) ENGINE = InnoDB,
 PARTITION p78 VALUES LESS THAN (78) ENGINE = InnoDB,
 PARTITION p79 VALUES LESS THAN (79) ENGINE = InnoDB,
 PARTITION p80 VALUES LESS THAN (80) ENGINE = InnoDB,
 PARTITION p81 VALUES LESS THAN (81) ENGINE = InnoDB,
 PARTITION p82 VALUES LESS THAN (82) ENGINE = InnoDB,
 PARTITION p83 VALUES LESS THAN (83) ENGINE = InnoDB,
 PARTITION p84 VALUES LESS THAN (84) ENGINE = InnoDB,
 PARTITION p85 VALUES LESS THAN (85) ENGINE = InnoDB,
 PARTITION p86 VALUES LESS THAN (86) ENGINE = InnoDB,
 PARTITION p87 VALUES LESS THAN (87) ENGINE = InnoDB,
 PARTITION p88 VALUES LESS THAN (88) ENGINE = InnoDB,
 PARTITION p89 VALUES LESS THAN (89) ENGINE = InnoDB,
 PARTITION p90 VALUES LESS THAN (90) ENGINE = InnoDB,
 PARTITION p91 VALUES LESS THAN (91) ENGINE = InnoDB,
 PARTITION p92 VALUES LESS THAN (92) ENGINE = InnoDB,
 PARTITION p93 VALUES LESS THAN (93) ENGINE = InnoDB,
 PARTITION p94 VALUES LESS THAN (94) ENGINE = InnoDB,
 PARTITION p95 VALUES LESS THAN (95) ENGINE = InnoDB,
 PARTITION p96 VALUES LESS THAN (96) ENGINE = InnoDB,
 PARTITION p97 VALUES LESS THAN (97) ENGINE = InnoDB,
 PARTITION p98 VALUES LESS THAN (98) ENGINE = InnoDB,
 PARTITION p99 VALUES LESS THAN (99) ENGINE = InnoDB,
 PARTITION p100 VALUES LESS THAN (100) ENGINE = InnoDB,
 PARTITION p101 VALUES LESS THAN (101) ENGINE = InnoDB,
 PARTITION p102 VALUES LESS THAN (102) ENGINE = InnoDB,
 PARTITION p103 VALUES LESS THAN (103) ENGINE = InnoDB,
 PARTITION p104 VALUES LESS THAN (104) ENGINE = InnoDB,
 PARTITION p105 VALUES LESS THAN (105) ENGINE = InnoDB,
 PARTITION p106 VALUES LESS THAN (106) ENGINE = InnoDB,
 PARTITION p107 VALUES LESS THAN (107) ENGINE = InnoDB,
 PARTITION p108 VALUES LESS THAN (108) ENGINE = InnoDB,
 PARTITION p109 VALUES LESS THAN (109) ENGINE = InnoDB,
 PARTITION p110 VALUES LESS THAN (110) ENGINE = InnoDB,
 PARTITION p111 VALUES LESS THAN (111) ENGINE = InnoDB,
 PARTITION p112 VALUES LESS THAN (112) ENGINE = InnoDB,
 PARTITION p113 VALUES LESS THAN (113) ENGINE = InnoDB,
 PARTITION p114 VALUES LESS THAN (114) ENGINE = InnoDB,
 PARTITION p115 VALUES LESS THAN (115) ENGINE = InnoDB,
 PARTITION p116 VALUES LESS THAN (116) ENGINE = InnoDB,
 PARTITION p117 VALUES LESS THAN (117) ENGINE = InnoDB,
 PARTITION p118 VALUES LESS THAN (118) ENGINE = InnoDB,
 PARTITION p119 VALUES LESS THAN (119) ENGINE = InnoDB,
 PARTITION p120 VALUES LESS THAN (120) ENGINE = InnoDB,
 PARTITION p121 VALUES LESS THAN (121) ENGINE = InnoDB,
 PARTITION p122 VALUES LESS THAN (122) ENGINE = InnoDB,
 PARTITION p123 VALUES LESS THAN (123) ENGINE = InnoDB,
 PARTITION p124 VALUES LESS THAN (124) ENGINE = InnoDB,
 PARTITION p125 VALUES LESS THAN (125) ENGINE = InnoDB,
 PARTITION p126 VALUES LESS THAN (126) ENGINE = InnoDB,
 PARTITION p127 VALUES LESS THAN (127) ENGINE = InnoDB,
 PARTITION p128 VALUES LESS THAN (128) ENGINE = InnoDB,
 PARTITION p129 VALUES LESS THAN (129) ENGINE = InnoDB,
 PARTITION p130 VALUES LESS THAN (130) ENGINE = InnoDB,
 PARTITION p131 VALUES LESS THAN (131) ENGINE = InnoDB,
 PARTITION p132 VALUES LESS THAN (132) ENGINE = InnoDB,
 PARTITION p133 VALUES LESS THAN (133) ENGINE = InnoDB,
 PARTITION p134 VALUES LESS THAN (134) ENGINE = InnoDB,
 PARTITION p135 VALUES LESS THAN (135) ENGINE = InnoDB,
 PARTITION p136 VALUES LESS THAN (136) ENGINE = InnoDB,
 PARTITION p137 VALUES LESS THAN (137) ENGINE = InnoDB,
 PARTITION p138 VALUES LESS THAN (138) ENGINE = InnoDB,
 PARTITION p139 VALUES LESS THAN (139) ENGINE = InnoDB,
 PARTITION p140 VALUES LESS THAN (140) ENGINE = InnoDB,
 PARTITION p141 VALUES LESS THAN (141) ENGINE = InnoDB,
 PARTITION p142 VALUES LESS THAN (142) ENGINE = InnoDB,
 PARTITION p143 VALUES LESS THAN (143) ENGINE = InnoDB,
 PARTITION p144 VALUES LESS THAN (144) ENGINE = InnoDB,
 PARTITION p145 VALUES LESS THAN (145) ENGINE = InnoDB,
 PARTITION p146 VALUES LESS THAN (146) ENGINE = InnoDB,
 PARTITION p147 VALUES LESS THAN (147) ENGINE = InnoDB,
 PARTITION p148 VALUES LESS THAN (148) ENGINE = InnoDB,
 PARTITION p149 VALUES LESS THAN (149) ENGINE = InnoDB,
 PARTITION p150 VALUES LESS THAN (150) ENGINE = InnoDB,
 PARTITION p151 VALUES LESS THAN (151) ENGINE = InnoDB,
 PARTITION p152 VALUES LESS THAN (152) ENGINE = InnoDB,
 PARTITION p153 VALUES LESS THAN (153) ENGINE = InnoDB,
 PARTITION p154 VALUES LESS THAN (154) ENGINE = InnoDB,
 PARTITION p155 VALUES LESS THAN (155) ENGINE = InnoDB,
 PARTITION p156 VALUES LESS THAN (156) ENGINE = InnoDB,
 PARTITION p157 VALUES LESS THAN (157) ENGINE = InnoDB,
 PARTITION p158 VALUES LESS THAN (158) ENGINE = InnoDB,
 PARTITION p159 VALUES LESS THAN (159) ENGINE = InnoDB,
 PARTITION p160 VALUES LESS THAN (160) ENGINE = InnoDB,
 PARTITION p161 VALUES LESS THAN (161) ENGINE = InnoDB,
 PARTITION p162 VALUES LESS THAN (162) ENGINE = InnoDB,
 PARTITION p163 VALUES LESS THAN (163) ENGINE = InnoDB,
 PARTITION p164 VALUES LESS THAN (164) ENGINE = InnoDB,
 PARTITION p165 VALUES LESS THAN (165) ENGINE = InnoDB,
 PARTITION p166 VALUES LESS THAN (166) ENGINE = InnoDB,
 PARTITION p167 VALUES LESS THAN (167) ENGINE = InnoDB,
 PARTITION p168 VALUES LESS THAN (168) ENGINE = InnoDB,
 PARTITION p169 VALUES LESS THAN (169) ENGINE = InnoDB,
 PARTITION p170 VALUES LESS THAN (170) ENGINE = InnoDB,
 PARTITION p171 VALUES LESS THAN (171) ENGINE = InnoDB,
 PARTITION p172 VALUES LESS THAN (172) ENGINE = InnoDB,
 PARTITION p173 VALUES LESS THAN (173) ENGINE = InnoDB,
 PARTITION p174 VALUES LESS THAN (174) ENGINE = InnoDB,
 PARTITION p175 VALUES LESS THAN (175) ENGINE = InnoDB,
 PARTITION p176 VALUES LESS THAN (176) ENGINE = InnoDB,
 PARTITION p177 VALUES LESS THAN (177) ENGINE = InnoDB,
 PARTITION p178 VALUES LESS THAN (178) ENGINE = InnoDB,
 PARTITION p179 VALUES LESS THAN (179) ENGINE = InnoDB,
 PARTITION p180 VALUES LESS THAN (180) ENGINE = InnoDB,
 PARTITION p181 VALUES LESS THAN (181) ENGINE = InnoDB,
 PARTITION p182 VALUES LESS THAN (182) ENGINE = InnoDB,
 PARTITION p183 VALUES LESS THAN (183) ENGINE = InnoDB,
 PARTITION p184 VALUES LESS THAN (184) ENGINE = InnoDB,
 PARTITION p185 VALUES LESS THAN (185) ENGINE = InnoDB,
 PARTITION p186 VALUES LESS THAN (186) ENGINE = InnoDB,
 PARTITION p187 VALUES LESS THAN (187) ENGINE = InnoDB,
 PARTITION p188 VALUES LESS THAN (188) ENGINE = InnoDB,
 PARTITION p189 VALUES LESS THAN (189) ENGINE = InnoDB,
 PARTITION p190 VALUES LESS THAN (190) ENGINE = InnoDB,
 PARTITION p191 VALUES LESS THAN (191) ENGINE = InnoDB,
 PARTITION p192 VALUES LESS THAN (192) ENGINE = InnoDB,
 PARTITION p193 VALUES LESS THAN (193) ENGINE = InnoDB,
 PARTITION p194 VALUES LESS THAN (194) ENGINE = InnoDB,
 PARTITION p195 VALUES LESS THAN (195) ENGINE = InnoDB,
 PARTITION p196 VALUES LESS THAN (196) ENGINE = InnoDB,
 PARTITION p197 VALUES LESS THAN (197) ENGINE = InnoDB,
 PARTITION p198 VALUES LESS THAN (198) ENGINE = InnoDB,
 PARTITION p199 VALUES LESS THAN (199) ENGINE = InnoDB,
 PARTITION p200 VALUES LESS THAN (200) ENGINE = InnoDB,
 PARTITION p201 VALUES LESS THAN (201) ENGINE = InnoDB,
 PARTITION p202 VALUES LESS THAN (202) ENGINE = InnoDB,
 PARTITION p203 VALUES LESS THAN (203) ENGINE = InnoDB,
 PARTITION p204 VALUES LESS THAN (204) ENGINE = InnoDB,
 PARTITION p205 VALUES LESS THAN (205) ENGINE = InnoDB,
 PARTITION p206 VALUES LESS THAN (206) ENGINE = InnoDB,
 PARTITION p207 VALUES LESS THAN (207) ENGINE = InnoDB,
 PARTITION p208 VALUES LESS THAN (208) ENGINE = InnoDB,
 PARTITION p209 VALUES LESS THAN (209) ENGINE = InnoDB,
 PARTITION p210 VALUES LESS THAN (210) ENGINE = InnoDB,
 PARTITION p211 VALUES LESS THAN (211) ENGINE = InnoDB,
 PARTITION p212 VALUES LESS THAN (212) ENGINE = InnoDB,
 PARTITION p213 VALUES LESS THAN (213) ENGINE = InnoDB,
 PARTITION p214 VALUES LESS THAN (214) ENGINE = InnoDB,
 PARTITION p215 VALUES LESS THAN (215) ENGINE = InnoDB,
 PARTITION p216 VALUES LESS THAN (216) ENGINE = InnoDB,
 PARTITION p217 VALUES LESS THAN (217) ENGINE = InnoDB,
 PARTITION p218 VALUES LESS THAN (218) ENGINE = InnoDB,
 PARTITION p219 VALUES LESS THAN (219) ENGINE = InnoDB,
 PARTITION p220 VALUES LESS THAN (220) ENGINE = InnoDB,
 PARTITION p221 VALUES LESS THAN (221) ENGINE = InnoDB,
 PARTITION p222 VALUES LESS THAN (222) ENGINE = InnoDB,
 PARTITION p223 VALUES LESS THAN (223) ENGINE = InnoDB,
 PARTITION p224 VALUES LESS THAN (224) ENGINE = InnoDB,
 PARTITION p225 VALUES LESS THAN (225) ENGINE = InnoDB,
 PARTITION p226 VALUES LESS THAN (226) ENGINE = InnoDB,
 PARTITION p227 VALUES LESS THAN (227) ENGINE = InnoDB,
 PARTITION p228 VALUES LESS THAN (228) ENGINE = InnoDB,
 PARTITION p229 VALUES LESS THAN (229) ENGINE = InnoDB,
 PARTITION p230 VALUES LESS THAN (230) ENGINE = InnoDB,
 PARTITION p231 VALUES LESS THAN (231) ENGINE = InnoDB,
 PARTITION p232 VALUES LESS THAN (232) ENGINE = InnoDB,
 PARTITION p233 VALUES LESS THAN (233) ENGINE = InnoDB,
 PARTITION p234 VALUES LESS THAN (234) ENGINE = InnoDB,
 PARTITION p235 VALUES LESS THAN (235) ENGINE = InnoDB,
 PARTITION p236 VALUES LESS THAN (236) ENGINE = InnoDB,
 PARTITION p237 VALUES LESS THAN (237) ENGINE = InnoDB,
 PARTITION p238 VALUES LESS THAN (238) ENGINE = InnoDB,
 PARTITION p239 VALUES LESS THAN (239) ENGINE = InnoDB,
 PARTITION p240 VALUES LESS THAN (240) ENGINE = InnoDB,
 PARTITION p241 VALUES LESS THAN (241) ENGINE = InnoDB,
 PARTITION p242 VALUES LESS THAN (242) ENGINE = InnoDB,
 PARTITION p243 VALUES LESS THAN (243) ENGINE = InnoDB,
 PARTITION p244 VALUES LESS THAN (244) ENGINE = InnoDB,
 PARTITION p245 VALUES LESS THAN (245) ENGINE = InnoDB,
 PARTITION p246 VALUES LESS THAN (246) ENGINE = InnoDB,
 PARTITION p247 VALUES LESS THAN (247) ENGINE = InnoDB,
 PARTITION p248 VALUES LESS THAN (248) ENGINE = InnoDB,
 PARTITION p249 VALUES LESS THAN (249) ENGINE = InnoDB,
 PARTITION p250 VALUES LESS THAN (250) ENGINE = InnoDB,
 PARTITION p251 VALUES LESS THAN (251) ENGINE = InnoDB,
 PARTITION p252 VALUES LESS THAN (252) ENGINE = InnoDB,
 PARTITION p253 VALUES LESS THAN (253) ENGINE = InnoDB,
 PARTITION p254 VALUES LESS THAN (254) ENGINE = InnoDB,
 PARTITION p255 VALUES LESS THAN (255) ENGINE = InnoDB,
 PARTITION p256 VALUES LESS THAN (256) ENGINE = InnoDB,
 PARTITION p257 VALUES LESS THAN (257) ENGINE = InnoDB,
 PARTITION p258 VALUES LESS THAN (258) ENGINE = InnoDB,
 PARTITION p259 VALUES LESS THAN (259) ENGINE = InnoDB,
 PARTITION p260 VALUES LESS THAN (260) ENGINE = InnoDB,
 PARTITION p261 VALUES LESS THAN (261) ENGINE = InnoDB,
 PARTITION p262 VALUES LESS THAN (262) ENGINE = InnoDB,
 PARTITION p263 VALUES LESS THAN (263) ENGINE = InnoDB,
 PARTITION p264 VALUES LESS THAN (264) ENGINE = InnoDB,
 PARTITION p265 VALUES LESS THAN (265) ENGINE = InnoDB,
 PARTITION p266 VALUES LESS THAN (266) ENGINE = InnoDB,
 PARTITION p267 VALUES LESS THAN (267) ENGINE = InnoDB,
 PARTITION p268 VALUES LESS THAN (268) ENGINE = InnoDB,
 PARTITION p269 VALUES LESS THAN (269) ENGINE = InnoDB,
 PARTITION p270 VALUES LESS THAN (270) ENGINE = InnoDB,
 PARTITION p271 VALUES LESS THAN (271) ENGINE = InnoDB,
 PARTITION p272 VALUES LESS THAN (272) ENGINE = InnoDB,
 PARTITION p273 VALUES LESS THAN (273) ENGINE = InnoDB,
 PARTITION p274 VALUES LESS THAN (274) ENGINE = InnoDB,
 PARTITION p275 VALUES LESS THAN (275) ENGINE = InnoDB,
 PARTITION p276 VALUES LESS THAN (276) ENGINE = InnoDB,
 PARTITION p277 VALUES LESS THAN (277) ENGINE = InnoDB,
 PARTITION p278 VALUES LESS THAN (278) ENGINE = InnoDB,
 PARTITION p279 VALUES LESS THAN (279) ENGINE = InnoDB,
 PARTITION p280 VALUES LESS THAN (280) ENGINE = InnoDB,
 PARTITION p281 VALUES LESS THAN (281) ENGINE = InnoDB,
 PARTITION p282 VALUES LESS THAN (282) ENGINE = InnoDB,
 PARTITION p283 VALUES LESS THAN (283) ENGINE = InnoDB,
 PARTITION p284 VALUES LESS THAN (284) ENGINE = InnoDB,
 PARTITION p285 VALUES LESS THAN (285) ENGINE = InnoDB,
 PARTITION p286 VALUES LESS THAN (286) ENGINE = InnoDB,
 PARTITION p287 VALUES LESS THAN (287) ENGINE = InnoDB,
 PARTITION p288 VALUES LESS THAN (288) ENGINE = InnoDB,
 PARTITION p289 VALUES LESS THAN (289) ENGINE = InnoDB,
 PARTITION p290 VALUES LESS THAN (290) ENGINE = InnoDB,
 PARTITION p291 VALUES LESS THAN (291) ENGINE = InnoDB,
 PARTITION p292 VALUES LESS THAN (292) ENGINE = InnoDB,
 PARTITION p293 VALUES LESS THAN (293) ENGINE = InnoDB,
 PARTITION p294 VALUES LESS THAN (294) ENGINE = InnoDB,
 PARTITION p295 VALUES LESS THAN (295) ENGINE = InnoDB,
 PARTITION p296 VALUES LESS THAN (296) ENGINE = InnoDB,
 PARTITION p297 VALUES LESS THAN (297) ENGINE = InnoDB,
 PARTITION p298 VALUES LESS THAN (298) ENGINE = InnoDB,
 PARTITION p299 VALUES LESS THAN (299) ENGINE = InnoDB,
 PARTITION p300 VALUES LESS THAN (300) ENGINE = InnoDB,
 PARTITION p301 VALUES LESS THAN (301) ENGINE = InnoDB,
 PARTITION p302 VALUES LESS THAN (302) ENGINE = InnoDB,
 PARTITION p303 VALUES LESS THAN (303) ENGINE = InnoDB,
 PARTITION p304 VALUES LESS THAN (304) ENGINE = InnoDB,
 PARTITION p305 VALUES LESS THAN (305) ENGINE = InnoDB,
 PARTITION p306 VALUES LESS THAN (306) ENGINE = InnoDB,
 PARTITION p307 VALUES LESS THAN (307) ENGINE = InnoDB,
 PARTITION p308 VALUES LESS THAN (308) ENGINE = InnoDB,
 PARTITION p309 VALUES LESS THAN (309) ENGINE = InnoDB,
 PARTITION p310 VALUES LESS THAN (310) ENGINE = InnoDB,
 PARTITION p311 VALUES LESS THAN (311) ENGINE = InnoDB,
 PARTITION p312 VALUES LESS THAN (312) ENGINE = InnoDB,
 PARTITION p313 VALUES LESS THAN (313) ENGINE = InnoDB,
 PARTITION p314 VALUES LESS THAN (314) ENGINE = InnoDB,
 PARTITION p315 VALUES LESS THAN (315) ENGINE = InnoDB,
 PARTITION p316 VALUES LESS THAN (316) ENGINE = InnoDB,
 PARTITION p317 VALUES LESS THAN (317) ENGINE = InnoDB,
 PARTITION p318 VALUES LESS THAN (318) ENGINE = InnoDB,
 PARTITION p319 VALUES LESS THAN (319) ENGINE = InnoDB,
 PARTITION p320 VALUES LESS THAN (320) ENGINE = InnoDB,
 PARTITION p321 VALUES LESS THAN (321) ENGINE = InnoDB,
 PARTITION p322 VALUES LESS THAN (322) ENGINE = InnoDB,
 PARTITION p323 VALUES LESS THAN (323) ENGINE = InnoDB,
 PARTITION p324 VALUES LESS THAN (324) ENGINE = InnoDB,
 PARTITION p325 VALUES LESS THAN (325) ENGINE = InnoDB,
 PARTITION p326 VALUES LESS THAN (326) ENGINE = InnoDB,
 PARTITION p327 VALUES LESS THAN (327) ENGINE = InnoDB,
 PARTITION p328 VALUES LESS THAN (328) ENGINE = InnoDB,
 PARTITION p329 VALUES LESS THAN (329) ENGINE = InnoDB,
 PARTITION p330 VALUES LESS THAN (330) ENGINE = InnoDB,
 PARTITION p331 VALUES LESS THAN (331) ENGINE = InnoDB,
 PARTITION p332 VALUES LESS THAN (332) ENGINE = InnoDB,
 PARTITION p333 VALUES LESS THAN (333) ENGINE = InnoDB,
 PARTITION p334 VALUES LESS THAN (334) ENGINE = InnoDB,
 PARTITION p335 VALUES LESS THAN (335) ENGINE = InnoDB,
 PARTITION p336 VALUES LESS THAN (336) ENGINE = InnoDB,
 PARTITION p337 VALUES LESS THAN (337) ENGINE = InnoDB,
 PARTITION p338 VALUES LESS THAN (338) ENGINE = InnoDB,
 PARTITION p339 VALUES LESS THAN (339) ENGINE = InnoDB,
 PARTITION p340 VALUES LESS THAN (340) ENGINE = InnoDB,
 PARTITION p341 VALUES LESS THAN (341) ENGINE = InnoDB,
 PARTITION p342 VALUES LESS THAN (342) ENGINE = InnoDB,
 PARTITION p343 VALUES LESS THAN (343) ENGINE = InnoDB,
 PARTITION p344 VALUES LESS THAN (344) ENGINE = InnoDB,
 PARTITION p345 VALUES LESS THAN (345) ENGINE = InnoDB,
 PARTITION p346 VALUES LESS THAN (346) ENGINE = InnoDB,
 PARTITION p347 VALUES LESS THAN (347) ENGINE = InnoDB,
 PARTITION p348 VALUES LESS THAN (348) ENGINE = InnoDB,
 PARTITION p349 VALUES LESS THAN (349) ENGINE = InnoDB,
 PARTITION p350 VALUES LESS THAN (350) ENGINE = InnoDB,
 PARTITION p351 VALUES LESS THAN (351) ENGINE = InnoDB,
 PARTITION p352 VALUES LESS THAN (352) ENGINE = InnoDB,
 PARTITION p353 VALUES LESS THAN (353) ENGINE = InnoDB,
 PARTITION p354 VALUES LESS THAN (354) ENGINE = InnoDB,
 PARTITION p355 VALUES LESS THAN (355) ENGINE = InnoDB,
 PARTITION p356 VALUES LESS THAN (356) ENGINE = InnoDB,
 PARTITION p357 VALUES LESS THAN (357) ENGINE = InnoDB,
 PARTITION p358 VALUES LESS THAN (358) ENGINE = InnoDB,
 PARTITION p359 VALUES LESS THAN (359) ENGINE = InnoDB,
 PARTITION p360 VALUES LESS THAN (360) ENGINE = InnoDB,
 PARTITION p361 VALUES LESS THAN (361) ENGINE = InnoDB,
 PARTITION p362 VALUES LESS THAN (362) ENGINE = InnoDB,
 PARTITION p363 VALUES LESS THAN (363) ENGINE = InnoDB,
 PARTITION p364 VALUES LESS THAN (364) ENGINE = InnoDB,
 PARTITION p365 VALUES LESS THAN (365) ENGINE = InnoDB,
 PARTITION p366 VALUES LESS THAN MAXVALUE ENGINE = InnoDB) 
	
