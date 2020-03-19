package cn.itcast.service.impl;

import cn.itcast.dao.AddressDao;
import cn.itcast.domain.address.Address;
import cn.itcast.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddressImpl implements AddressService {

    @Autowired
    AddressDao addressDao;
    //根据id查询
    @Override
    public List<Address> findById(String uid) {
        List<Address> addresses=addressDao.findById(uid);
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
        String[] areaCodes=address.getAreaCode();
        String areaCode=areaCodes[0]+","+areaCodes[1]+","+areaCodes[2];
        address.setAreaCodes(areaCode);
        return addressDao.addAddress(address);
    }

    @Override
    public int updateAddress(Address address) {
        return 0;
    }

    @Override
    public int deleteAddress(String uid, String addressId) {
        return 0;
    }
}
