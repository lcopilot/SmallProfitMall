package cn.itcast.dao;

import cn.itcast.domain.address.Address;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
//收货地址
@Repository
public interface AddressDao {
    //查询用户地址
    public Address findById(@Param("uid")String uid);

    //新增用户收货地址地址
    public int addAddress(@Param("address")Address address);

    //修改用户地址
    public int updateAddress(@Param("address")Address address);

    //删除用户地址
    public int deleteAddress(@Param("uid")String uid ,@Param("addressId")String addressId);
}
