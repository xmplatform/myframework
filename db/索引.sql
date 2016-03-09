---李延伟 2013-04-09
create index INDEX_SY_SERV_FLOW_DATA on SY_SERV_FLOW (data_id);

--create index IDX_SY_WF_TEST_USER on SY_WFE_TEST (s_user);
--create index IDX_SY_WF_TEST_MTIME on SY_WFE_TEST (s_mtime);

create index IDX_SY_COMM_ENTITY_DATA on SY_COMM_ENTITY (DATA_ID);

create index IDX_SY_COMM_TODO_OWNER on SY_COMM_TODO (OWNER_CODE);

create index IDX_SY_WFE_NODE_USERS_PI on SY_WFE_NODE_USERS (PI_ID);
create index IDX_SY_WFE_NODE_USERS_TO_USER on SY_WFE_NODE_USERS (TO_USER_ID);
create index IDX_SY_WFE_NODE_USERS_ATIME on SY_WFE_NODE_USERS (S_ATIME);  

---杨金云 2013-04-10
CREATE INDEX IDX_SY_COMM_FILE_DATA_ID ON SY_COMM_FILE (DATA_ID);
CREATE INDEX IDX_SY_COMM_MIND_DATA_ID ON SY_COMM_MIND (DATA_ID);
CREATE INDEX IDX_SY_COMM_SEND_DTL_DATA_ID ON SY_COMM_SEND_DETAIL(DATA_ID);
CREATE INDEX IDX_SY_COMM_TODO_OBJ2 ON SY_COMM_TODO (TODO_OBJECT_ID2);
CREATE INDEX IDX_SY_COMM_TODO_OBJ1 ON SY_COMM_TODO (TODO_OBJECT_ID1);
CREATE INDEX IDX_SY_SERV_COMMENT ON SY_SERV_COMMENT(DATA_ID);
CREATE INDEX IDX_SY_ORG_DEPT_CODE_PATH ON SY_ORG_DEPT(CODE_PATH);
CREATE INDEX IDX_SY_ORG_USER_DEPT ON SY_ORG_USER(DEPT_CODE);

CREATE INDEX IDX_SY_WFE_PROC_INST_HIS_DOC ON SY_WFE_PROC_INST_HIS(DOC_ID);
CREATE INDEX IDX_SY_WFE_NODE_USERS_HIS_NI ON SY_WFE_NODE_USERS_HIS(NI_ID);
CREATE INDEX IDX_SY_WFE_NODE_USERS_HIS_PID ON SY_WFE_NODE_USERS_HIS(PI_ID);
CREATE INDEX IDX_SY_COMM_TODO_HIS_OBJ2 ON SY_COMM_TODO_HIS(TODO_OBJECT_ID2);
CREATE INDEX IDX_SY_COMM_TODO_HIS_OBJ1 ON SY_COMM_TODO_HIS(TODO_OBJECT_ID1);
CREATE INDEX IDX_SY_COMM_FILE_HIS_FILEID ON SY_COMM_FILE_HIS(FILE_ID);

CREATE INDEX IDX_SY_SERV_FLOW_USER ON SY_SERV_FLOW(FLOW_ROLE_USER);


---杨金云 2013-04-10
CREATE INDEX IDX_SY_COMM_SEND_DTL_USER ON SY_COMM_SEND_DETAIL(S_USER);
--CREATE INDEX IDX_SY_COMM_SEND_DTL_RECVUSER ON SY_COMM_SEND_DETAIL(RECV_USER);


---杨金云 2013-04-15
CREATE INDEX IDX_SY_SERV_FLOW_TDEPT ON SY_SERV_FLOW (S_TDEPT);
CREATE INDEX IDX_SY_SERV_FLOW_DEPT ON SY_SERV_FLOW (S_DEPT);

---杨金云 2013-04-25
CREATE INDEX IDX_COMM_ENTITY_MTIME ON SY_COMM_ENTITY (S_MTIME);
CREATE INDEX IDX_COMM_ENTITY_ATIME ON SY_COMM_ENTITY (S_ATIME);

---杨金云 2013-04-27
CREATE INDEX IDX_SY_COMM_MIND_WFNIID ON SY_COMM_MIND(WF_NI_ID);

---李延伟 2013-05-03
create index INX_SY_ORG_USER_LOGIN on SY_ORG_USER (USER_LOGIN_NAME);
create index INX_SY_ORG_USER_CMPY on SY_ORG_USER (CMPY_CODE);

---杨金云 2013-05-08
CREATE INDEX IDX_SY_COMM_ENTITY_WFINSTID ON SY_COMM_ENTITY (S_WF_INST);

---杨金云 201305-14
CREATE INDEX IDX_SY_COMM_FILE_FILEPATH ON SY_COMM_FILE (FILE_PATH);
CREATE INDEX IDX_SY_SERV_RELATE_DATAID ON SY_SERV_RELATE(DATA_ID);

---杨金云 2013-06-26
drop index IDX_SY_COMM_SEND_DTL_RECVUSER;
CREATE INDEX IDX_SY_COMM_SEND_DTL_RCV_STATE ON SY_COMM_SEND_DETAIL(RECV_USER, SEND_STATUS);