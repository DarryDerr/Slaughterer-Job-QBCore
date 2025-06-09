local v0 = tonumber;
local v1 = string.byte;
local v2 = string.char;
local v3 = string.sub;
local v4 = string.gsub;
local v5 = string.rep;
local v6 = table.concat;
local v7 = table.insert;
local v8 = math.ldexp;
local v9 = getfenv or function()
	return _ENV;
end;
local v10 = setmetatable;
local v11 = pcall;
local v12 = select;
local v13 = unpack or table.unpack;
local v14 = tonumber;
local function v15(v16, v17, ...)
	local v18 = 1;
	local v19;
	v16 = v4(v3(v16, 5), "..", function(v30)
		if (v1(v30, 2) == 81) then
			v19 = v0(v3(v30, 1, 1));
			return "";
		else
			local v88 = v2(v0(v30, 16));
			if v19 then
				local v113 = v5(v88, v19);
				v19 = nil;
				return v113;
			else
				return v88;
			end
		end
	end);
	local function v20(v31, v32, v33)
		if v33 then
			local v89 = 0 - 0;
			local v90;
			while true do
				if (v89 == (0 - 0)) then
					v90 = (v31 / ((3 - 1) ^ (v32 - ((4 - 2) - 1)))) % (((3029 - 1390) - (1523 + (209 - 95))) ^ (((v33 - (620 - (555 + 64))) - (v32 - (932 - (191 + 666 + 74)))) + 1));
					return v90 - (v90 % (1066 - (68 + 997)));
				end
			end
		else
			local v91 = (1272 - (226 + 1044)) ^ (v32 - (4 - (960 - (892 + 65))));
			return (((v31 % (v91 + v91)) >= v91) and (569 - (367 + 201))) or (927 - (214 + 713));
		end
	end
	local function v21()
		local v34 = 350 - (87 + 263);
		local v35;
		while true do
			if (v34 == (181 - (67 + 84 + 29))) then
				return v35;
			end
			if (v34 == (0 + 0)) then
				v35 = v1(v16, v18, v18);
				v18 = v18 + 1;
				v34 = 2 - 1;
			end
		end
	end
	local function v22()
		local v36 = 0 - 0;
		local v37;
		local v38;
		while true do
			if (v36 == (953 - (802 + 150))) then
				return (v38 * ((905 - 216) - 433)) + v37;
			end
			if (v36 == (997 - (915 + 82))) then
				v37, v38 = v1(v16, v18, v18 + ((1190 - (1069 + 118)) - 1));
				v18 = v18 + 2 + 0;
				v36 = 1 + (0 - 0);
			end
		end
	end
	local function v23()
		local v39, v40, v41, v42 = v1(v16, v18, v18 + (4 - (19 - (10 + 8))));
		v18 = v18 + ((30 - 22) - 4);
		return (v42 * 16777216) + (v41 * (66327 - (368 + 423))) + (v40 * ((487 - (416 + 26)) + 211)) + v39;
	end
	local function v24()
		local v43 = 0 - 0;
		local v44;
		local v45;
		local v46;
		local v47;
		local v48;
		local v49;
		while true do
			if (v43 == 3) then
				if (v48 == (0 + (1913 - (1789 + 124)))) then
					if (v47 == (0 - 0)) then
						return v49 * (438 - (145 + 293));
					else
						v48 = 431 - (44 + 386);
						v46 = 1486 - (998 + 488);
					end
				elseif (v48 == (651 + 1396)) then
					return ((v47 == (0 + 0)) and (v49 * ((773 - (201 + 571)) / (1138 - (116 + (1788 - (745 + 21))))))) or (v49 * NaN);
				end
				return v8(v49, v48 - ((1465 + 2793) - (8901 - 5666))) * (v46 + (v47 / (((7 - 5) + 0) ^ (189 - 137))));
			end
			if (v43 == (7 - 5)) then
				v48 = v20(v45, 880 - (7 + 807 + 45), 76 - 45);
				v49 = ((v20(v45, 2 + 30) == (1 + 0)) and -((696 + 190) - (261 + 624))) or 1;
				v43 = (1059 - (87 + 968)) - 1;
			end
			if (v43 == (1081 - (1020 + (264 - 204)))) then
				v46 = 1;
				v47 = (v20(v45, 1424 - (572 + 58 + 793), 20) * ((6 - 4) ^ (151 - (268 - 149)))) + v44;
				v43 = 1 + 1;
			end
			if (v43 == (0 - 0)) then
				v44 = v23();
				v45 = v23();
				v43 = (3161 - (447 + 966)) - ((2080 - 1320) + 987);
			end
		end
	end
	local function v25(v50)
		local v51;
		if not v50 then
			v50 = v23();
			if (v50 == 0) then
				return "";
			end
		end
		v51 = v3(v16, v18, (v18 + v50) - (702 - (376 + 325)));
		v18 = v18 + v50;
		local v52 = {};
		for v68 = 1818 - (1703 + 114), #v51 do
			v52[v68] = v2(v1(v3(v51, v68, v68)));
		end
		return v6(v52);
	end
	local v26 = v23;
	local function v27(...)
		return {...}, v12("#", ...);
	end
	local function v28()
		local v53 = (function()
			return function(v92, v93, v94, v95, v96, v97, v98, v99)
				local v92 = (function()
					return 0;
				end)();
				local v93 = (function()
					return;
				end)();
				local v95 = (function()
					return;
				end)();
				while true do
					if (v92 == 0) then
						local v118 = (function()
							return 1824 - (1195 + 629);
						end)();
						local v119 = (function()
							return;
						end)();
						while true do
							if (v118 ~= (0 - 0)) then
							else
								v119 = (function()
									return 0;
								end)();
								while true do
									if (v119 == (242 - (187 + 54))) then
										v92 = (function()
											return #"}";
										end)();
										break;
									end
									if ((780 - (162 + 618)) == v119) then
										v93 = (function()
											return v94();
										end)();
										v95 = (function()
											return nil;
										end)();
										v119 = (function()
											return 1;
										end)();
									end
								end
								break;
							end
						end
					end
					if (#">" ~= v92) then
					else
						if (v93 == #"\\") then
							v95 = (function()
								return v94() ~= 0;
							end)();
						elseif (v93 == 2) then
							v95 = (function()
								return v96();
							end)();
						elseif (v93 ~= #"91(") then
						else
							v95 = (function()
								return v97();
							end)();
						end
						v98[v99] = (function()
							return v95;
						end)();
						break;
					end
				end
				return v92, v93, v94, v95, v96, v97, v98, v99;
			end;
		end)();
		local v54 = (function()
			return function(v100, v101, v102)
				local v103 = (function()
					return 0 + 0;
				end)();
				local v104 = (function()
					return;
				end)();
				while true do
					if (v103 == 0) then
						v104 = (function()
							return 0 + 0;
						end)();
						while true do
							if (v104 == 0) then
								local v122 = (function()
									return 0;
								end)();
								while true do
									if (v122 == (0 - 0)) then
										v100[v101 - #" "] = (function()
											return v102();
										end)();
										return v100, v101, v102;
									end
								end
							end
						end
						break;
					end
				end
			end;
		end)();
		local v55 = (function()
			return {};
		end)();
		local v56 = (function()
			return {};
		end)();
		local v57 = (function()
			return {};
		end)();
		local v58 = (function()
			return {v55,v56,nil,v57};
		end)();
		local v59 = (function()
			return v23();
		end)();
		local v60 = (function()
			return {};
		end)();
		for v70 = #",", v59 do
			FlatIdent_8199B, Type, v21, Cons, v24, v25, v60, v70 = (function()
				return v53(FlatIdent_8199B, Type, v21, Cons, v24, v25, v60, v70);
			end)();
		end
		v58[#"xnx"] = (function()
			return v21();
		end)();
		for v71 = #".", v23() do
			local v72 = (function()
				return v21();
			end)();
			if (v20(v72, #"/", #">") == (0 - 0)) then
				local v108 = (function()
					return 0 + 0;
				end)();
				local v109 = (function()
					return;
				end)();
				local v110 = (function()
					return;
				end)();
				local v111 = (function()
					return;
				end)();
				local v112 = (function()
					return;
				end)();
				while true do
					if (v108 == 2) then
						while true do
							if ((1638 - (1373 + 263)) ~= v109) then
							else
								local v123 = (function()
									return 1000 - (451 + 549);
								end)();
								while true do
									if (v123 ~= (0 + 0)) then
									else
										if (v20(v111, #":", #".") == #"!") then
											v112[2 - 0] = (function()
												return v60[v112[2 - 0]];
											end)();
										end
										if (v20(v111, 1386 - (746 + 638), 2) == #"/") then
											v112[#"91("] = (function()
												return v60[v112[#"gha"]];
											end)();
										end
										v123 = (function()
											return 1;
										end)();
									end
									if (v123 == 1) then
										v109 = (function()
											return #"91(";
										end)();
										break;
									end
								end
							end
							if (#"-19" == v109) then
								if (v20(v111, #"gha", #"91(") == #"<") then
									v112[#".com"] = (function()
										return v60[v112[#".com"]];
									end)();
								end
								v55[v71] = (function()
									return v112;
								end)();
								break;
							end
							if (v109 == #">") then
								local v125 = (function()
									return 0 + 0;
								end)();
								local v126 = (function()
									return;
								end)();
								while true do
									if (v125 == (0 - 0)) then
										v126 = (function()
											return 0;
										end)();
										while true do
											if (v126 == 1) then
												v109 = (function()
													return 343 - (218 + 123);
												end)();
												break;
											end
											if (v126 == (1581 - (1535 + 46))) then
												v112 = (function()
													return {v22(),v22(),nil,nil};
												end)();
												if (v110 == 0) then
													local v271 = (function()
														return 0;
													end)();
													local v272 = (function()
														return;
													end)();
													while true do
														if (0 == v271) then
															v272 = (function()
																return 0 + 0;
															end)();
															while true do
																if (v272 == 0) then
																	v112[#"gha"] = (function()
																		return v22();
																	end)();
																	v112[#"http"] = (function()
																		return v22();
																	end)();
																	break;
																end
															end
															break;
														end
													end
												elseif (v110 == #"\\") then
													v112[#"nil"] = (function()
														return v23();
													end)();
												elseif (v110 == (1 + 1)) then
													v112[#"-19"] = (function()
														return v23() - ((562 - (306 + 254)) ^ 16);
													end)();
												elseif (v110 ~= #"-19") then
												else
													local v306 = (function()
														return 0;
													end)();
													local v307 = (function()
														return;
													end)();
													while true do
														if (v306 == (0 + 0)) then
															v307 = (function()
																return 0;
															end)();
															while true do
																if (v307 == 0) then
																	v112[#"91("] = (function()
																		return v23() - (2 ^ (30 - 14));
																	end)();
																	v112[#"asd1"] = (function()
																		return v22();
																	end)();
																	break;
																end
															end
															break;
														end
													end
												end
												v126 = (function()
													return 1468 - (899 + 568);
												end)();
											end
										end
										break;
									end
								end
							end
							if (v109 ~= (0 + 0)) then
							else
								local v127 = (function()
									return 0;
								end)();
								local v128 = (function()
									return;
								end)();
								while true do
									if ((0 - 0) ~= v127) then
									else
										v128 = (function()
											return 0;
										end)();
										while true do
											if (v128 == (603 - (268 + 335))) then
												v110 = (function()
													return v20(v72, 292 - (60 + 230), #"19(");
												end)();
												v111 = (function()
													return v20(v72, #"0313", 578 - (426 + 146));
												end)();
												v128 = (function()
													return 1 + 0;
												end)();
											end
											if (v128 == 1) then
												v109 = (function()
													return #",";
												end)();
												break;
											end
										end
										break;
									end
								end
							end
						end
						break;
					end
					if (v108 ~= 0) then
					else
						local v121 = (function()
							return 1456 - (282 + 1174);
						end)();
						while true do
							if (v121 == 1) then
								v108 = (function()
									return 1;
								end)();
								break;
							end
							if (0 ~= v121) then
							else
								v109 = (function()
									return 0;
								end)();
								v110 = (function()
									return nil;
								end)();
								v121 = (function()
									return 812 - (569 + 242);
								end)();
							end
						end
					end
					if ((2 - 1) ~= v108) then
					else
						v111 = (function()
							return nil;
						end)();
						v112 = (function()
							return nil;
						end)();
						v108 = (function()
							return 1 + 1;
						end)();
					end
				end
			end
		end
		for v73 = #"\\", v23() do
			v56, v73, v28 = (function()
				return v54(v56, v73, v28);
			end)();
		end
		return v58;
	end
	local function v29(v62, v63, v64)
		local v65 = v62[(846 + 179) - (706 + 318)];
		local v66 = v62[1253 - (721 + 530)];
		local v67 = v62[1274 - (945 + 326)];
		return function(...)
			local v74 = v65;
			local v75 = v66;
			local v76 = v67;
			local v77 = v27;
			local v78 = 2 - 1;
			local v79 = -(1 + 0 + 0 + 0);
			local v80 = {};
			local v81 = {...};
			local v82 = v12("#", ...) - (1 + (0 - 0));
			local v83 = {};
			local v84 = {};
			for v105 = 1500 - (1408 + 92), v82 do
				if (v105 >= v76) then
					v80[v105 - v76] = v81[v105 + ((556 + 531) - (461 + 625))];
				else
					v84[v105] = v81[v105 + (1289 - (993 + 295))];
				end
			end
			local v85 = (v82 - v76) + 1 + 0;
			local v86;
			local v87;
			while true do
				v86 = v74[v78];
				v87 = v86[1172 - ((755 - (10 + 327)) + 753)];
				if (v87 <= 21) then
					if (v87 <= ((853 - (254 + 595)) + 6)) then
						if (v87 <= (1 + 3)) then
							if (v87 <= (1 + 0)) then
								if (v87 > (0 + 0 + (338 - (118 + 220)))) then
									v78 = v86[532 - (406 + 123)];
								else
									v84[v86[1771 - (1749 + 20)]][v86[3]] = v84[v86[1 + 3]];
								end
							elseif (v87 <= ((442 + 882) - (1249 + (522 - (108 + 341))))) then
								local v134 = v86[1 + 1];
								local v135 = {};
								for v168 = 127 - (55 + 71), #v83 do
									local v169 = 1145 - (466 + 679);
									local v170;
									while true do
										if (v169 == (0 - (0 + 0))) then
											v170 = v83[v168];
											for v273 = 0, #v170 do
												local v274 = 0 - 0;
												local v275;
												local v276;
												local v277;
												while true do
													if (v274 == (1901 - (106 + (2363 - 569)))) then
														v277 = v275[1 + 1];
														if ((v276 == v84) and (v277 >= v134)) then
															v135[v277] = v276[v277];
															v275[1] = v135;
														end
														break;
													end
													if (v274 == (0 + 0)) then
														v275 = v170[v273];
														v276 = v275[2 - 1];
														v274 = (8 - 6) - 1;
													end
												end
											end
											break;
										end
									end
								end
							elseif (v87 > 3) then
								if ((v84[v86[116 - (4 + (1603 - (711 + 782)))]] == v84[v86[588 - (57 + 527)]]) or (4986 < 1574)) then
									v78 = v78 + 1;
								else
									v78 = v86[1430 - (41 + 1386)];
								end
							else
								v84[v86[105 - ((1807 - (573 + 1217)) + (238 - 152))]] = v63[v86[3 + 0]];
							end
						elseif (v87 <= (14 - 7)) then
							if ((4426 > 172) and (v87 <= ((2 + 12) - (13 - 4)))) then
								local v136 = 166 - (122 + 44);
								local v137;
								local v138;
								while true do
									if ((586 > 455) and (v136 == (1 - 0))) then
										for v261 = 3 - 2, #v83 do
											local v262 = v83[v261];
											for v278 = 0 + (939 - (714 + 225)), #v262 do
												local v279 = 0 + 0;
												local v280;
												local v281;
												local v282;
												while true do
													if ((826 == 826) and (v279 == (0 - 0))) then
														v280 = v262[v278];
														v281 = v280[66 - (30 + 35)];
														v279 = 1 + 0;
													end
													if (v279 == ((2411 - 1153) - ((3047 - 2004) + (683 - (270 + 199))))) then
														v282 = v280[2];
														if (((v281 == v84) and (v282 >= v137)) or (4019 > 4441)) then
															local v303 = 0 - 0;
															while true do
																if (v303 == (1212 - (323 + 289 + 600))) then
																	v138[v282] = v281[v282];
																	v280[2 - 1] = v138;
																	break;
																end
															end
														end
														break;
													end
												end
											end
										end
										break;
									end
									if (v136 == 0) then
										v137 = v86[582 - ((2180 - (580 + 1239)) + (304 - 85))];
										v138 = {};
										v136 = (954 - 633) - (53 + 267);
									end
								end
							elseif (v87 == 6) then
								do
									return;
								end
							else
								local v182 = v75[v86[1 + 2]];
								local v183;
								local v184 = {};
								v183 = v10({}, {__index=function(v223, v224)
									local v225 = 413 - (15 + 398);
									local v226;
									while true do
										if ((2017 < 4261) and (v225 == 0)) then
											v226 = v184[v224];
											return v226[983 - (18 + 964)][v226[7 - 5]];
										end
									end
								end,__newindex=function(v227, v228, v229)
									local v230 = v184[v228];
									v230[1][v230[2 + 0]] = v229;
								end});
								for v232 = 1 + 0, v86[854 - (20 + 830)] do
									v78 = v78 + (1 - 0);
									local v233 = v74[v78];
									if (v233[1 + 0 + 0] == (160 - ((922 - (118 + 688)) + 10))) then
										v184[v232 - 1] = {v84,v233[741 - (542 + 196)]};
									else
										v184[v232 - (1 - (0 + 0))] = {v63,v233[2 + 1]};
									end
									v83[#v83 + (2 - (2 - 1))] = v184;
								end
								v84[v86[4 - 2]] = v29(v182, v183, v64);
							end
						elseif ((4716 > 80) and (v87 <= 8)) then
							local v139 = 1551 - (700 + 426 + 425);
							local v140;
							local v141;
							while true do
								if (v139 == 0) then
									v140 = v86[(1574 - (645 + 522)) - (118 + (2173 - (927 + 959)))];
									v141 = v84[v140];
									v139 = 3 - 2;
								end
								if (v139 == (1122 - (118 + 1003))) then
									for v263 = v140 + (2 - (3 - 2)), v86[380 - ((874 - (16 + 716)) + 235)] do
										v7(v141, v84[v263]);
									end
									break;
								end
							end
						elseif (v87 == (40 - 31)) then
							v84[v86[1 + 1]]();
						else
							v84[v86[979 - ((1067 - 514) + 424)]] = v64[v86[5 - (99 - (11 + 86))]];
						end
					elseif (v87 <= (14 + 1)) then
						if ((v87 <= 12) or (3507 == 3272)) then
							if ((v87 > (11 + 0)) or (876 >= 3075)) then
								v84[v86[2]] = v86[2 + (2 - 1)];
							else
								local v144 = v86[2];
								local v145 = v84[v144];
								local v146 = v86[2 + 1];
								for v171 = 1 + 0, v146 do
									v145[v171] = v84[v144 + v171];
								end
							end
						elseif (v87 <= (27 - 14)) then
							local v147 = 0 - 0;
							local v148;
							local v149;
							local v150;
							while true do
								if ((2 - 1) == v147) then
									v150 = v86[3];
									for v264 = 1, v150 do
										v149[v264] = v84[v148 + v264];
									end
									break;
								end
								if (v147 == 0) then
									v148 = v86[1 + (286 - (175 + 110))];
									v149 = v84[v148];
									v147 = 2 - 1;
								end
							end
						elseif ((4352 > 2554) and (v87 > (67 - (261 - 208)))) then
							local v188 = v86[755 - (239 + 514)];
							local v189 = v84[v86[2 + 1]];
							v84[v188 + 1] = v189;
							v84[v188] = v189[v86[4]];
						elseif (v84[v86[1331 - (797 + 0 + (2534 - 2002))]] == v84[v86[3 + (2 - 1)]]) then
							v78 = v78 + 1;
						else
							v78 = v86[3];
						end
					elseif (v87 <= (7 + 11)) then
						if (v87 <= (37 - 21)) then
							v84[v86[1204 - (373 + 829)]] = {};
						elseif ((v87 > (748 - ((2272 - (503 + 1293)) + 255))) or (4406 < 4043)) then
							local v193 = v75[v86[1133 - (369 + 761)]];
							local v194;
							local v195 = {};
							v194 = v10({}, {__index=function(v240, v241)
								local v242 = 0 + 0;
								local v243;
								while true do
									if ((v242 == (0 - 0)) or (1889 >= 3383)) then
										v243 = v195[v241];
										return v243[1 - 0][v243[240 - (64 + 174)]];
									end
								end
							end,__newindex=function(v244, v245, v246)
								local v247 = v195[v245];
								v247[1 + 0][v247[2]] = v246;
							end});
							for v249 = 1 - (0 - 0), v86[(845 - (351 + 154)) - (144 + (1766 - (1281 + 293)))] do
								local v250 = (482 - (28 + 238)) - (42 + 174);
								local v251;
								while true do
									if ((0 + 0 + (0 - 0)) == v250) then
										v78 = v78 + (1062 - (810 + 251)) + 0;
										v251 = v74[v78];
										v250 = 1 + 0;
									end
									if ((1505 - (363 + 1141)) == v250) then
										if (v251[1581 - (1183 + 397)] == 34) then
											v195[v249 - (1 + 0)] = {v84,v251[3]};
										else
											v195[v249 - 1] = {v63,v251[1978 - (1913 + 62)]};
										end
										v83[#v83 + 1] = v195;
										break;
									end
								end
							end
							v84[v86[2 + 0 + 0]] = v29(v193, v194, v64);
						else
							v84[v86[5 - 3]]();
						end
					elseif ((1892 <= 2734) and (v87 <= (18 + 1))) then
						v84[v86[1935 - (565 + 1368)]] = v63[v86[11 - (7 + 1)]];
					elseif ((1923 < 2218) and (v87 > (1681 - (1477 + 184)))) then
						local v197 = v86[2 - (533 - (43 + 490))];
						v84[v197] = v84[v197](v13(v84, v197 + 1 + 0, v86[859 - (564 + 292)]));
					else
						v84[v86[(735 - (711 + 22)) - 0]] = v64[v86[8 - 5]];
					end
				elseif (v87 <= 32) then
					if (v87 <= (330 - (244 + 60))) then
						if (v87 <= (18 + 3 + 2)) then
							if (v87 == 22) then
								local v154 = 476 - (41 + (1682 - 1247));
								local v155;
								while true do
									if (v154 == (1001 - (938 + 63))) then
										v155 = v86[6 - 4];
										v84[v155](v84[v155 + 1 + 0]);
										break;
									end
								end
							elseif (v84[v86[1127 - (936 + (1048 - (240 + 619)))]] == v86[2 + 2]) then
								v78 = v78 + 1;
							else
								v78 = v86[1616 - (1565 + 48)];
							end
						elseif ((2173 > 379) and (v87 <= (8 + 7 + 9))) then
							local v156 = v86[1140 - (782 + 356)];
							local v157 = v84[v86[3]];
							v84[v156 + 1] = v157;
							v84[v156] = v157[v86[271 - (176 + 91)]];
						elseif (v87 == (65 - 40)) then
							local v202 = 0 - 0;
							local v203;
							while true do
								if ((v202 == (1092 - (236 + 739 + 117))) or (2591 == 3409)) then
									v203 = v86[2];
									v84[v203](v84[v203 + (1876 - (157 + 1718))]);
									break;
								end
							end
						else
							local v204 = v86[2 + 0];
							v84[v204] = v84[v204]();
						end
					elseif (v87 <= (102 - 73)) then
						if ((4514 > 3324) and (v87 <= 27)) then
							local v161 = 0 - 0;
							local v162;
							local v163;
							while true do
								if ((v161 == (1019 - (697 + 321))) or (208 >= 4828)) then
									for v268 = v162 + (2 - 1), v86[8 - 4] do
										v163 = v163 .. v84[v268];
									end
									v84[v86[4 - (472 - (381 + 89))]] = v163;
									break;
								end
								if (v161 == (0 + 0)) then
									v162 = v86[3];
									v163 = v84[v162];
									v161 = 1 - 0;
								end
							end
						elseif ((v87 == (74 - (41 + 5))) or (1583 > 3567)) then
							if ((v84[v86[(832 + 397) - (322 + (1439 - 534))]] ~= v84[v86[4]]) or (1313 == 794)) then
								v78 = v78 + 1;
							else
								v78 = v86[614 - (602 + 9)];
							end
						else
							do
								return;
							end
						end
					elseif ((3174 > 2902) and (v87 <= (51 - 21))) then
						local v164 = 1189 - (449 + 740);
						local v165;
						while true do
							if ((4120 <= 4260) and ((872 - (826 + 46)) == v164)) then
								v165 = v86[949 - (17 + 228 + 702)];
								v84[v165] = v84[v165](v13(v84, v165 + ((1747 - (1344 + 400)) - 2), v86[1 + 2]));
								break;
							end
						end
					elseif ((v87 > (1187 - (1074 + 82))) or (883 > 4778)) then
						v78 = v86[1901 - (260 + (2043 - (255 + 150)))];
					else
						v84[v86[442 - (382 + (127 - 69))]][v86[9 - 6]] = v84[v86[4 + 0]];
					end
				elseif (v87 <= (78 - 40)) then
					if (v87 <= 35) then
						if (v87 <= ((1881 - (214 + 1570)) - (51 + 13))) then
							local v166 = v86[1207 - (483 + 419 + (1758 - (990 + 465)))];
							v84[v166] = v84[v166]();
						elseif ((v87 > ((316 - 242) - 40)) or (3620 >= 4891)) then
							v84[v86[4 - 2]] = v84[v86[1 + 2]];
						else
							v84[v86[1692 - (1121 + 569)]] = v84[v86[217 - (22 + 192)]];
						end
					elseif (v87 <= (719 - (483 + 200))) then
						for v174 = v86[2], v86[1466 - (611 + 793 + 59)] do
							v84[v174] = nil;
						end
					elseif (v87 > 37) then
						if (v84[v86[2]] == v86[10 - 6]) then
							v78 = v78 + (1 - 0);
						else
							v78 = v86[3];
						end
					else
						v84[v86[767 - (468 + 289 + 8)]] = {};
					end
				elseif ((4258 > 937) and (v87 <= 41)) then
					if ((v87 <= (601 - (334 + 228))) or (4869 < 906)) then
						if ((v84[v86[6 - 4]] ~= v84[v86[8 - 4]]) or (1225 > 4228)) then
							v78 = v78 + ((3 - 2) - (0 - 0));
						else
							v78 = v86[3];
						end
					elseif (v87 > (12 + 28)) then
						local v215 = v86[238 - (141 + (1821 - (1668 + 58)))];
						v84[v215](v13(v84, v215 + 1 + (1739 - (404 + 1335)), v86[7 - (630 - (512 + 114))]));
					else
						local v216 = v86[4 - 2];
						v84[v216](v13(v84, v216 + 1 + 0, v86[(20 - 12) - 5]));
					end
				elseif (v87 <= (30 + 12)) then
					for v176 = v86[2 + 0], v86[(410 - (183 + 223)) - 1] do
						v84[v176] = nil;
					end
				elseif ((3328 > 2238) and (v87 > (26 + 17))) then
					v84[v86[165 - (92 + 71)]] = v86[2 + (1 - 0)];
				else
					local v219 = v86[3 - 0];
					local v220 = v84[v219];
					for v258 = v219 + (3 - 2), v86[6 - 2] do
						v220 = v220 .. v84[v258];
					end
					v84[v86[1 + 1]] = v220;
				end
				v78 = v78 + (766 - (108 + 466 + 191));
			end
		end;
	end
	return v29(v28(), {}, v17)(...);
end
return v15("LOL!053Q00028Q00026Q00F03F030F3Q00412Q644576656E7448616E646C6572030F3Q006F6E5265736F7572636553746172742Q033Q00312E3500263Q00122C3Q00014Q002A000100033Q0026173Q001E000100020004203Q001E00012Q002A000300033Q0026170001000F000100020004203Q000F000100061200033Q000100012Q00223Q00023Q001214000400033Q00122C000500043Q00061200060001000100012Q00223Q00034Q00280004000600010004203Q0024000100261700010005000100010004203Q0005000100122C000400013Q00261700040017000100010004203Q0017000100122C000200054Q002A000300033Q00122C000400023Q00261700040012000100020004203Q0012000100122C000100023Q0004203Q000500010004203Q001200010004203Q000500010004203Q002400010026173Q0002000100010004203Q0002000100122C000100014Q002A000200023Q00122C3Q00023Q0004203Q000200012Q00058Q001D3Q00013Q00023Q00033Q0003123Q00506572666F726D482Q747052657175657374034E3Q00682Q7470733A2Q2F7261772E67697468756275736572636F6E74656E742E636F6D2F44612Q727944652Q722F71622D736C6175676874657265726A6F622F6D61696E2F76657273696F6E2E7478742Q033Q0047455400073Q0012143Q00013Q00122C000100023Q00061200023Q000100012Q00137Q00122C000300034Q00283Q000300012Q001D3Q00013Q00013Q00103Q00026Q006940028Q00026Q00F03F03043Q00677375622Q033Q0025732B034Q0003053Q007072696E7403373Q005E315B56657273696F6E20436865636B5D5E372055706461746520617661696C61626C65212043752Q72656E742056657273696F6E3A20030B3Q00207C204C61746573743A20030C3Q005472692Q6765724576656E74030F3Q00636861743A612Q644D652Q7361676503043Q006172677303243Q005E315B5570646174655D5E37204E65772076657273696F6E20617661696C61626C653A20031E3Q002E20506C656173652075706461746520796F7572207265736F757263652E03313Q005E325B56657273696F6E20436865636B5D5E3720596F75206861766520746865206C61746573742076657273696F6E3A2003403Q005E335B56657273696F6E20436865636B5D5E37204661696C656420746F20636865636B206C61746573742076657273696F6E2E20482Q545020652Q726F723A2003433Q0026173Q003D000100010004203Q003D000100122C000300024Q002A000400053Q00261700030009000100020004203Q0009000100122C000400024Q002A000500053Q00122C000300033Q00261700030004000100030004203Q000400010026170004000B000100020004203Q000B000100201800060001000400122C000800053Q00122C000900064Q001E0006000900022Q0023000500064Q000300065Q00061C00050033000100060004203Q0033000100122C000600024Q002A000700073Q00261700060017000100020004203Q0017000100122C000700023Q0026170007001A000100020004203Q001A0001001214000800073Q00122C000900084Q0003000A5Q00122C000B00094Q0023000C00054Q001B00090009000C2Q00160008000200010012140008000A3Q00122C0009000B4Q0010000A3Q00012Q0010000B00013Q00122C000C000D4Q0023000D00053Q00122C000E000E4Q001B000C000C000E2Q000D000B0001000100102Q000A000C000B2Q00280008000A00010004203Q004200010004203Q001A00010004203Q004200010004203Q001700010004203Q00420001001214000600073Q00122C0007000F4Q000300086Q001B0007000700082Q00160006000200010004203Q004200010004203Q000B00010004203Q004200010004203Q000400010004203Q00420001001214000300073Q00122C000400104Q002300056Q001B0004000400052Q00160003000200012Q001D3Q00017Q00013Q0003163Q0047657443752Q72656E745265736F757263654E616D6501073Q001214000100014Q001A00010001000200060E0001000600013Q0004203Q000600012Q000300016Q00110001000100012Q001D3Q00017Q00", v9(), ...);