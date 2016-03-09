package com.rh.core.util;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

import com.rh.core.comm.FileMgr;
import com.rh.core.comm.FileStorage;
import com.rh.core.util.lang.Assert;

/**
 * 锁定任务。使集群中多个应用系统之间不会同时执行指定任务。
 * @author yangjy
 * 
 */
public class TaskLock {
    /**
     * 日志
     * */
    private Logger log = Logger.getLogger(getClass());
    
    /****
     * 任务锁文件的默认保存路径
     */
    private static final String PATH = "taskLock/";

    private String dir = null;

    private String lockName = null;

    /**
     * 是否成功锁定
     */
    private boolean lockSuccess = false;

    /**
     * 
     * @param dir 目录名，如：meeting。为了避免多个任务之间，锁文件名称重复，可以增加一级目录。
     * @param lockName 锁文件的名称。
     */
    public TaskLock(String dir, String lockName) {
        super();
        this.dir = dir;
        this.lockName = lockName;
        Assert.hasText(lockName);
    }

    /**
     * 增加任务锁。
     * @return 如果成功加锁，则返回true，否则返回false。
     */
    public synchronized boolean lock() {
        lockSuccess = false;
        final String path = getPath();
        try {
            if (FileStorage.exists(path)) { //锁已存在，则不允许再加锁
                return false;
            }
            lockSuccess = FileStorage.createFile(path);
        } catch (Exception e) {
            log.debug(e.getMessage(), e);
        }
        return lockSuccess;
    }

    /**
     * 释放任务锁。
     */
    public synchronized void release() {
        if (lockSuccess) {
            try {
                FileStorage.deleteFile(getPath());
            } catch (Exception e) {
                log.info(e.getMessage(), e);
            }
        }
    }

    /**
     * 
     * @return 获取锁文件路径
     */
    private String getPath() {
        StringBuilder str = new StringBuilder();
        str.append(FileMgr.getRootPath());
        str.append(PATH);
        if (StringUtils.isNotEmpty(dir)) {
            str.append(dir);
            str.append("/");
        }
        str.append(lockName);

        return str.toString();
    }
}
