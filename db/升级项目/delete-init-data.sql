--角色
delete from SY_ORG_ROLE where ROLE_CODE like 'RPUB%';
delete from SY_ORG_ROLE where ROLE_CODE in ('RGSLD','RBMLD','RCSLD','RADMIN');
--公司
delete from SY_ORG_CMPY where CMPY_CODE in ('1');
--部门
delete from SY_ORG_DEPT where DEPT_CODE in ('2');
--人员
delete from SY_ORG_USER where USER_CODE in ('3');

--菜单(超级公司的)
delete from SY_COMM_MENU where MENU_ID in ('10010__1','100__1','1001007__1','1001010__1','1001003__1','10010101__1','1001009__1',
'1001002__1','1001006__1','1001004__1','1001012__1','1001008__1','1001011__1');

--权限
delete from SY_ORG_ACL where ACL_ID in ('06jhkZQ6t9qV4NKiTjkkRz','28Gr2inDN3mri8CpLAo2Tu','2Bt17vkRdeIXZFf1L86glF','2RkZ2At0d7_VnswfDbO39T',
'0JctY83rpaWrBDyuVblIHX','0sNzmyLbhfioaw0HJMvKQV','1Er8bzOql6cav10ySqTI8K','2r4HFrvXd4OUhzQDDbnmfh','0KWeH7kMdexENu8gNCePpd',
'1wQnxIuRV8xHm-8tKfAXw3','2uVCJ9KbZeKq4Izzk2RG1y','0ybtzgpV5cGHoLc2ERAQ7W','3Kj-qlsrteypxzexz4ybrc');

--系统配置
delete from SY_COMM_CONFIG where CONF_ID in ('2Hl-azL_R9BpVizZ1erQht','1YdwEN94R1AFSWXirQDNse','2uHvWB52V8vFdfiEDjKv-r','3vrbVclXl8nH2Q15AgXdNw',
'1CifOo7gB8dGMmKeChSBq6','2KnXgA1Zt4jUmtHtm1RCvg9','0urgnF5VRePbzTA_FHqgOB','39tdSgdCpcErrEJCyKrBtx','13xePPjbxdZ9jpeNwapUd-',
'3CUtqAWHJc0E1NHXNmXY2m','0xiRlwveddtbBVx3Wa7im6','1gk-at9ZB18rD24VtMVLNV','0C-KHG7_h5ZbuChkYc9QJO','38mddJiYh40alFv1-Q_hrb',
'3XhBtM1b5dyWdB70XaVAf8','1Dp92qmhh3QqnJbuun6q0JLa','3n3FDsahV749nCaueKwger','2qRgngEHR06HBgPhh4S7jv','3Kno22Br5dgHrS-9Cqcz03',
'3xdhYCzsZ6pWY84VAlrbw_','2UYvEPNGRfqUxbashVsXl6','3ur7EmPad0oU56K5oFmRpJ','1wBp8JZB5fH8h8E4BZzGxN','0KwedmAMla2b3BNyylKbqp',
'2aisp4F0x2-rslBMgNHzqZ','2tZSUTeGh14pEFkfJNPNV_','01ItH41S5bs8QEfrzgxeUc','2uS96S2dV3yFvy1DZDFmz_','3-7v-Dlo502bTBaILCJMGH',
'0Sk6afiLpbTVBPMkN42OVF','0shYBRkGtay9JGe8bg0Vs4','3SlErOo7x20Vr6utjz6U_h','0xDtf8QqFf48zPX0B09p4B','2wHiWMNc98wqX08oXn1r4S',
'2_z_dlsS5bzX8_TUNZ7OWO','2QqPAjHQiBaipZZ5MV4Hnj6','3E9C1sUEt4QU7oVwQ_HekY','1Fan_7zvJa3bWn6reTL6C0','3I1KFNeDxaQUSth_DWs6nY',
'0PpeUOgcR6-b3SGyoln4d-','1D9tfatVd0WbWV48cRiGZN','1QKq90n-Z5lXu284Wdcmlt','0Qys0SxeN5WHnp8eouvoyE','0nBQTKx2V3hXtTi8t5ry92',
'0Ry8FhI9R6tb1tIVR5kyY1','1znOeZYSV9vbSfLguo6-3p','2YHYjc5St85EgvKdWIg4B3','06S0UehXZ3BX-tXz67wcW_','3Ds743yhB6rqrxuI5lkcbh',
'0ZQjCCF6F4Nqjq_4ncVDir','25YodUA0ZcwaZQChZfq3Cm','3N-2dIQfx1cqeiIhe6B3FS','1YwgH2BsR8lbVLAuBshRwb','2Ys1x2Xatf9ExlnmhC1ayB',
'3httR4QPp6aVASs2ydNcBP','04qecft7188FUpAQ0sOLRM','2WVi2q9cNdVUJikQ-muH-w','0BOKonRwtduVi5TZLAmYkO','0lDdFBRDF49pWhpOhtmcp9',
'3I1SRLmwl3AXBWdtC0NFIn','0isytKAcR2AV4vLmRlmlrV','1AekLH2b9a0EFZHK5KXBdU','1E5ooAJppbkqqZYpfW3hxr','1P_1NAAx9aO9FzOrgTSs8c',
'2uUJK_dol2GrsITvbTIuvz','1yPQOYPld06XLzWQL-6m3n','1sntfOwd56ko9qiccv2kvD','1cas0inflcjH4G3T8KbGUg','1aKWjepkxezaqUnyP1eBTq',
'3AnSCn4Fx9y8QK4sxdxQkw','28YAForxFeiV9BzJ-D-DQm','1YjN4Z0H10qo1A7ht0GXUN','1UMgUk9WBegrm7VUvh4jQb','39MMphMVp7dEpItz6G3KdP',
'0ucqGuO1J5h8Mhohg1Eifj','3KKHEGCc54fruHqmKsWRKZ','3nOnJgfc5atUb5eY6auv4O','3XxW7R2Ep9ha_yMpTL830o','1yOA3D3InF3creboyHWu2wi',
'3awrggXsbR0kauDbGetOZgd','3n3FDsahV749nCaueKwgzz','2YmmP32xV5qXtjaZv5ahvw','16363A7c517EPpXrgRpbjH','1HJaEn6thdKbDsc0LiDMLE',
'1XmQu8OPMh6Db6ZCMonXGJx','2gcd9CeTF3Gq1sflQxvwcQA');

--消息配置
delete from SY_COMM_MESSAGE where MSG_ID in ('39sAotTjd01q57habdOXfd','0XVBpwFn54HWYclBaiokeq','11Z6ptjr9fZbZ-npyUSIhH',
'2PiIpdHxd9kWF04h0ODuyN','2uxVqiR1F0hbKQjtT2I52B','0VxsJG3sd3obr9rnq9kYQj','1e6e1DWox0F9VUkEUtH-Kn','23dF62jFJ8eGdg-Z6yck_v',
'3JS8N1UBJ2VU-xcIAlJGl4','0j57Y0s9VffG35cSju8udW','0Ls6BFz696UWeuwbaaKanv','3yZs5GT9xfQoXS4_NoHicr','1duoHIqdt0-aVH6a3DS1ey',
'22HYwrbQh5EqlDSQz__aYs','2fJNZYEpB74auz0rkyR86_','132KBJrZt9FqvMdpxamBhd','1PEoPbiGh9bG-7JSM-E92w','1vtcTwFoB6abn5hGu1uddU',
'3AcGjO5_VeZaCnAJt3vfGD','3e6kNA3px6wFlol4m55Rc2','0ySdEgSbN8oEUWKWUkuixO','30grUKEV93R8LNA9IafEPg','3bMwvtl-x3MVk6KFbjpxGd',
'1dI79z3h9138YsJXAps89c','1UlbqxtbVferxiotQc1ES3','2GdiHWuH5d4VUEXM69jRhy','1DITzZVztfqXU1XB0xA1_e','SY_TABLE_CODE_ERROR',
'SY_PARAM_ERROR','06djdWe7RawV2WdhpyDkZH','SY_CACHE_NOT_FOUND','SY_DATABASE_ERROR','SY_DIC_CODE_ERROR','SY_DOC_STANDARD_ERROR',
'SY_EXPORT_EXCEL_ERROR','0xWTST1cJaNX0_KKTU29T0','1iSNxrVw56Fpax-bhW9BLV','1oXn7x-dZbP8765Ydh4C15','0OUIpkJid0gpL7pZRyFDL8',
'3U3MByrINbIXFn_F1YOmGD','0a4dbfMJ141UJGrpTaibSj','1Nl5_5lTB47qcDLP1252It','3YPHj0Nvp0YHvJ-qhRRJ_8','SY_USER_PREPASS_WRONG',
'SY_WF_PROC_DEF_BEGIN','SY_FILE_NOT_EXIST','SY_FILE_OPERATION_ERROR','SY_FUNC_ACL_NO','SY_IMPORT_ERROR','SY_LOGIN_COUNT_LOCKED',
'SY_LOGIN_COUNT_OVER','SY_LOGIN_ERROR','SY_LOGIN_IP_DENY','SY_LOGIN_IP_LIMIT','SY_WF_INST_ERROR','SY_LOGIN_NO_PASS',
'SY_LOGIN_NO_NAME','0jBVmn43BdREivt194dEib','1P9UyE3zpa-bOsHe-5Qy_g','24vcXcNAB5c914qYqJ1vQp','1KoEojTld3VGIdprrZ5bZx',
'39qiWN1U14QEHQdMcEGtJy','3Gz8eD4659oVEGC1qbUTSi','2sh1a63_h83ryKxg7zM03W','2lINHLtxRbXEEKlZT40DAC','1mK2zYXKh7B88lrsQQb8cl',
'3oKnWEXId8AXCeiP1wauIF','2nCWvVVlR3aqoBvB0jza-O','00ogy8-Ox3BFmfy5DjfhZ4','0JlYqfI3R0NEEbUheh4QGD','2mXLAmXkN9NUd889h8MZs2',
'0Z6MNRvQJeQHMevO0CqvnX','2ZXGlGhmBawVRSLZHTXEW4','3gsYgoRSld_XfAQ07zUSjo','32iC-5ULB1VFnd1O8WCUfo','1LgZ9Z9ud3UEuuwWDeE1OD',
'3DKlXPcDx2fF4CWYwTozBn','2LxdUuTst7E8tsczEJRZR_','3OYLoBhnBaUHf1RwO8e_Wv','25SLQnJbR8mbuv1nZx7yRj','1Rk9Safxpf9phs4xhLqIQ3',
'2W7-K-Emp6QoefBXOmYbD-','15EBl_95B3HE1yoKyy71u9','2guBIYlN995pPclK5DqFeO','2y2K0LyYl0JHIZtb9x63N5','0SeXEOzU1chUFT4-ygloMT',
'2KSWthMCNboF351kTzmLUf','1d4d4togx1wFxojoUZ5LkM');

--表达式
delete from SY_COMM_EXPRSSION where EXP_ID in ('3ZqWErdIV27a_mIMWvx9pV','0uznjDbbZ9xrm7ySN7j9bN','1WFN7Azzd3RaYjtjhlHv3a',
'0EnZ9zfi52WpDs2D1WtB7K','1JBI5UE9B6wGVBZvSyeGeX','02Gbq6sNh4NHGMnyD0vj2L','2xO_Uy4x977HrMuiPFryJv','0mm9qZbGFbHW3xQmUF7Jz6',
'0I8KVuBxJ3WqUjYNDxNNbA','3cPekhvUJbuWARxzzpOX7y','2iUUoquKx6g9awFOfi6eYL');

--审批意见 数据字典项
delete from SY_SERV_DICT_ITEM where ITEM_ID in ('1hgXxQmdV5abqZS8xWMWlg','0elOuYxph59aLVjJbdNTvH','1AhGUFrNtfnr2XxovI_4XA',
'3szFXF4CJ2YENSNivaqs1C','2bi8K_8Y94_EP_oIQkcUT_','3q3--VOQ5cgXZAybpVWdGd','1pjp4Ri5h33apM0uGGu_LK','3VbXv8GKp0oaTJ8SuGrFKa',
'3nJfw3zfh5w97afPDkehOL','05pS-F_8deQXMMdk7EcMVo');

--公共菜单
delete from SY_COMM_MENU where S_PUBLIC = 1;

--废弃的菜单
delete from SY_COMM_MENU where MENU_ID = '1lc8L3aVh0Ma48jHEw82lo';

--模板组件
delete from SY_COMM_TEMPL_COMS where S_CMPY in ('ruaho', '1');

--模板
delete from SY_COMM_TEMPL where S_CMPY in ('ruaho', '1');

--服务监控
delete from SY_COMM_MSG_LISTENER where LIS_ID in ('0avzviZUF9gpxjvrx3CTmD','19md3Q3OGZ2vosUctFymVEo');
delete from SY_SERV_LISTENER where LIS_ID in ('2SJaFRDeF0Pqou4gLKoz5W','1jnleUwX11C9DLGyCdfokC',
'30Xs937SV3SoSnDL3kFyCz','27ucquXyVaLVY3Ieb-f0Ng','3NmU2X2oh5maQKsQ4cuNKg',
'38_uzEdBJbBXBPd0DJeEq-','3aITO83nV33rpBD7ZjRakQ');

