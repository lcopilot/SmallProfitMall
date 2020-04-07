package cn.itcast.service.impl;

import cn.itcast.dao.AddressDao;
import cn.itcast.domain.address.Address;
import cn.itcast.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service("addressService")
public class AddressServiceImpl implements AddressService {
    @Autowired
    AddressDao addressDao;

    /**
     * 查询地址
     * @param userId 用户id
     * @return
     */
    @Override
    public List<Address> findById(String userId) {
        List<Address> addresses=addressDao.findById(userId);
        for (int i = 0; i <addresses.size() ; i++) {
            String areaCodes=addresses.get(i).getAreaCodes();
           String[] areaCode = areaCodes.split(",");
           addresses.get(i).setAreaCode(areaCode);
        }
        return addresses;
    }

    /**
     * 新增地址
     * @param address 地址对象
     * @return
     */
    @Override
    public int addAddress(Address address) {
        Address redisAddress = this.defaults(address);
        return  addressDao.addAddress(redisAddress);
    }

    /**
     * 跟新地址
     * @param address 地址对象
     * @return
     */
    @Override
    public int updateAddress(Address address) {
        Address redisAddress = this.defaults(address);
        return addressDao.updateAddress(redisAddress);
    }

    /**
     * 刪除地址
     * @param userId 用户id
     * @param addressId 地址id
     * @param defaults 是否为默认地址
     * @return
     */
    @Override
    public int deleteAddress(String userId, int addressId,Boolean defaults) {
       int redis = addressDao.deleteAddress(addressId);
       //删除的地址为默认地址 设置当前地址的
        if (defaults){
            List<Address> addresses=addressDao.findById(userId);
            if (addresses.size()>0){
                addresses.get(0).setDefaults(true);
                int result= addressDao.updateDefaults(addresses.get(0).getAddressId(),addresses.get(0).getDefaults());
                return result;
            }
        }
        return redis;
    }

    /**
     * 修改默認地址
     * @param addressId 地址地
     * @param userId 用户id
     * @param defaults 是否为默认地址
     * @return
     */
    @Override
    public int updateDefaults(int addressId,String userId, Boolean defaults) {
        if (defaults){
            List<String> defaultss = addressDao.findByIdDefaults(userId,true);
            if (defaultss.size()>0){
                addressDao.updateFindDefaults(userId,false);
                int rediss= addressDao.updateDefaults(addressId,defaults);
                return rediss;
            }else {
                int rediss= addressDao.updateDefaults(addressId,defaults);
                return rediss;
            }
        }else {
            List<Address> addresses=addressDao.findById(userId);
            if (addresses!=null){
                addresses.get(1).setDefaults(true);
                int rediss= addressDao.updateDefaults(addresses.get(1).getAddressId(),addresses.get(1).getDefaults());
                return rediss;
            }
            return 0;
        }
    }

    /**
     * 添加修改方法转换存入格式方法
     * @param address
     * @return
     */
    @Override
    public Address defaults(Address address){
        //存储区域代码格式转换
        String[] areaCodes=address.getAreaCode();
        String areaCode="";
        for (String s : areaCodes){
            areaCode = areaCode+s+",";
        }
        Boolean defaults=address.getDefaults();
        //修改默认地址
        if (defaults==true){
            List defaultss= addressDao.findByIdDefaults(address.getUserId(),true);
            if (defaultss.size()>0){
                addressDao.updateFindDefaults(address.getUserId(),false);
            }
        }
        address.setAreaCodes(areaCode);
        return address;
    }

    /**
     * 订单转换地址格式
     * @param address
     * @return
     */
    @Override
    public Address ordersDefaults(Address address){
        //存储区域代码格式转换
        String[] areaCodes=address.getAreaCode();
        String areaCode="";
        for (String s : areaCodes){
            areaCode = areaCode+s+",";
        }
        address.setAreaCodes(areaCode);
        return address;
    }
}
