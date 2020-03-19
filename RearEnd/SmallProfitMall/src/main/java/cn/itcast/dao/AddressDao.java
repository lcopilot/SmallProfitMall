package cn.itcast.dao;

import cn.itcast.domain.address.Address;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

//收货地址
@Repository
public interface AddressDao {
    //查询用户地址
    public List<Address> findById(@Param("userId")String userId);

    //新增用户收货地址地址
    public int addAddress(Address address);

    //修改用户地址
    public int updateAddress(Address address);

    //删除用户地址
    public int deleteAddress(@Param("userId")String userId ,@Param("addressId")String addressId);
}
