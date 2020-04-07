package cn.itcast.service;

import cn.itcast.domain.address.Address;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AddressService {
    /**
     * 查询用户地址
     * @param userId
     * @return
     */
    public List<Address> findById(String userId);

    /**
     * 新增收货地址地址
     * @param address 地址对象
     * @return
     */
    public int addAddress(Address address);

    /**
     * 修改用户地址
     * @param address 地址对象
     * @return
     */
    public int updateAddress(Address address);

    /**
     * 删除用户地址
     * @param uid 用户id
     * @param addressId 地址id
     * @param defaults 是否为默认地址
     * @return
     */
    public int deleteAddress(String uid ,int addressId , Boolean defaults);

    /**
     * 修改默認地址
     * @param addressId 地址地
     * @param userId 用户id
     * @param defaults 是否为默认地址
     * @return
     */
    public int updateDefaults(int addressId,String userId, Boolean defaults);

    /**
     * 转换地址格式
     * @param address 地址对象
     * @return 转换后地址
     */
    public Address defaults(Address address);

    /**
     * 转换订单地址格式
     * @param address 地址对象
     * @return 修改后的地址对象
     */
    public Address ordersDefaults(Address address);
}
