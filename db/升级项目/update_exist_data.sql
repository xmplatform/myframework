--修改菜单，主要是菜单中的单引号改成为双引号的问题
update sy_comm_menu m
   set m.menu_info = (
       select mm.menu_info from sy_comm_menu mm where mm.menu_name=m.menu_name and mm.s_public=1
       )
 where m.s_cmpy='项目的公司主键'
 and exists
       (select mm.menu_info from sy_comm_menu mm where mm.menu_name=m.menu_name and mm.s_public=1)


--修改服务标识字段 PRO_FLAG 跟之前版本不同
--自己项目的服务 PRO_FLAG=1
update sy_serv s set s.pro_flag = 1 WHERE s.s_cmpy = 项目的公司编码
--产品的服务 未被修改的PRO_FLAG=2 被项目上修改过的PRO_FLAG=3
--建议先记住修改过的点，再重新改一次，因为表结构可能发生了变化
update sy_serv s set s.pro_flag = 2 WHERE s.s_cmpy <> 项目的公司编码

--菜单的PRO_FLAG与服务的类似
update sy_serv_dict s set s.pro_flag = 1 WHERE s.s_cmpy = 项目的公司编码
update sy_serv_dict s set s.pro_flag = 2 WHERE s.s_cmpy <> 项目的公司编码

--上述修改后记得将json文件中的字段也做相应修改
