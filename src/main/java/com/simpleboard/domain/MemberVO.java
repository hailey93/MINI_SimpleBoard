package com.simpleboard.domain;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class MemberVO {

    private String userid;
    private String userpw;
    private String userName;
    private boolean enabled;

    private Date regDate;
    private Date updateDate;
    //여러개의 사용자 권한을 가질 수 있게 설계한다.
    private List<AuthVO> authList;

}
