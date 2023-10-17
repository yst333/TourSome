package org.zerock.domain;

import lombok.Data;

@Data
public class MembershipVO {

    private String id; // 사용자 id
    private String password; // 비밀번호
    private String email; // 이메일
    private String name; // 사용자 이름
    private String p_num; // 핸드폰 번호
    private String address; // 합쳐진 주소
    private String address1; // 주소
    private String address2; // 주소
    private String address3; // 주소
    private String address4; // 참고 주소
    private Character gender; // 성별
    private int age; // 나이

    public void address() {
        this.address = this.address1 + " " + this.address2 + " " + this.address3 + " " +  this.address4;
    }

}