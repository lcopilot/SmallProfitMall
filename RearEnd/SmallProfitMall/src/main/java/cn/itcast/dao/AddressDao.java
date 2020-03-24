package cn.itcast.dao;

import cn.itcast.domain.address.Address;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

//收货地址

public interface AddressDao {
    //查询用户地址
    public List<Address> findById(@Param("userId")String userId);

    //新增用户收货地址地址
    public int addAddress(Address address);

    //修改用户地址
    public int updateAddress(Address address);

    //删除用户地址
    public int deleteAddress(@Param("addressId")int addressId);

    //根据id查询默认值
    public ArrayList findByIdDefaults(@Param("userId")String userId,@Param("defaults")Boolean defaults);

    //根据userId修改全部默地址
    public int updateFindDefaults(@Param("userId")String userId,@Param("defaults")Boolean defaults);

    //跟据addressId修改默認地址
    public int updateDefaults(@Param("addressId")int addressId,@Param("defaults")Boolean defaults);


}
