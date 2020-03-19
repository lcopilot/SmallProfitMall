package cn.itcast.service;

import cn.itcast.domain.address.Address;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AddressService {
    //查询用户地址
    public List<Address> findById(String uid);

    //新增用户收货地址地址
    public int addAddress(Address address);

    //修改用户地址
    public int updateAddress(Address address);

    //删除用户地址
    public int deleteAddress(@Param("uid")String uid ,@Param("addressId")String addressId);
}
