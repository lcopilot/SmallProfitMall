package cn.itcast.dao;

import cn.itcast.domain.address.Address;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

//收货地址

public interface AddressDao {
    /**
     * 查询用户地址
     * @param userId 用户id
     * @return
     */
    public List<Address> findById(@Param("userId")String userId);

    /**
     * 新增用户收货地址地址
     * @param address 地址对象
     * @return 新增是否成功
     */
    public int addAddress(Address address);

    /**
     * 修改用户地址
     * @param address
     * @return
     */
    public int updateAddress(Address address);

    /**
     * 删除用户地址
     * @param addressId 地址id
     * @return
     */
    public int deleteAddress(@Param("addressId")int addressId);

    /**
     * 根据id查询默认值
     * @param userId 用户id
     * @param defaults 是否为默认值
     * @return
     */
    public List<String> findByIdDefaults(@Param("userId")String userId,@Param("defaults")Boolean defaults);

    /**
     * 修改全部默地址
     * @param userId 用户id
     * @param defaults 默认值
     * @return
     */
    public int updateFindDefaults(@Param("userId")String userId,@Param("defaults")Boolean defaults);

    /**
     * 修改默認地址
     * @param addressId
     * @param defaults
     * @return
     */
    public int updateDefaults(@Param("addressId")int addressId,@Param("defaults")Boolean defaults);


}
