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
@Transactional
public class AddressServiceImpl implements AddressService {
    @Autowired
    AddressDao addressDao;
    //根据id查询
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

    //添加
    @Override
    public int addAddress(Address address) {
        Address redisAddress = this.defaults(address);
        return addressDao.addAddress(redisAddress);
    }

    //跟新地址
    @Override
    public int updateAddress(Address address) {
        Address redisAddress = this.defaults(address);
        return addressDao.updateAddress(redisAddress);
    }

    //更具addressId刪除地址
    @Override
    public int deleteAddress(String userId, int addressId,Boolean defaults) {
       int redis = addressDao.deleteAddress(addressId);
        if (defaults){
            List<Address> addresses=addressDao.findById(userId);
            if (addresses!=null){
                addresses.get(0).setDefaults(true);
                int rediss= addressDao.updateDefaults(addresses.get(0).getAddressId(),addresses.get(0).getDefaults());
                return rediss;
            }
        }
        return redis;
    }

    //修改默認地址
    @Override
    public int updateDefaults(int addressId,String userId, Boolean defaults) {
        if (defaults){
            ArrayList defaultss = addressDao.findByIdDefaults(userId,true);
            if (defaultss.size()>0){
                addressDao.updateFindDefaults(userId,false);
                int rediss= addressDao.updateDefaults(addressId,defaults);
                return rediss;
            }else {
                return 0;
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

    //添加修改方法转换存入格式方法
    public Address defaults(Address address){
        String[] areaCodes=address.getAreaCode();   //存储区域代码格式转换
        String areaCode="";
        for (String s : areaCodes){
            areaCode = areaCode+s+",";
        }
        Boolean defaults=address.getDefaults();
        if (defaults==true){        //修改默认地址
            List defaultss= addressDao.findByIdDefaults(address.getUserId(),true);
            if (defaultss.size()>0){
                addressDao.updateFindDefaults(address.getUserId(),false);
            }
        }
       //  int a=1/0;
        address.setAreaCodes(areaCode);
        return address;
    }
}
