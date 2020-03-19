package cn.itcast.dao;

import cn.itcast.domain.address.Address;
import org.springframework.stereotype.Repository;
//收货地址
@Repository
public interface AddressDao {
    //新增用户收货地址地址
    public int addAddress(Address address);

}
