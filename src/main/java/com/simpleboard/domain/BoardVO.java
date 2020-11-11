package com.simpleboard.domain;

import lombok.Data;

import java.sql.Date;

@Data
public class BoardVO {

    private long num;
    private String title;
    private String content;
    private String id;
    private Date regDate;
    private Date updateDate;
}
