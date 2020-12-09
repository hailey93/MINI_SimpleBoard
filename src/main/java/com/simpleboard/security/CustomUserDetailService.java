package com.simpleboard.security;

import com.simpleboard.domain.CustomUser;
import com.simpleboard.domain.MemberVO;
import com.simpleboard.mapper.MemberMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

@Log4j
public class CustomUserDetailService implements UserDetailsService {

    @Setter(onMethod_={@Autowired} )
    private MemberMapper memberMapper;


    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        log.warn("Load User By UserName : "+userName);

        //여기서 userName은 userid 이다.
        MemberVO vo=memberMapper.read(userName);

        log.warn("queried by member mapper: "+vo);

        return vo==null? null: new CustomUser(vo);
    }
}
