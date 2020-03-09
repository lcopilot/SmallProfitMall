package cn.itcast.dao;


import cn.itcast.domain.ProductDatails.ProductBasis;
import org.apache.ibatis.annotations.Param;

public interface ProductDetailsDao {

    //根据id查询商品基础表跟价格表
    public ProductBasis findByIdBasis(@Param("ProductId") int ProductId);

    //根据id查询商品图片
    public String[] findByIdImage(@Param("ProductId") int ProductId);

    //根据id查询商品规格
    public String[] findByIdSpecification(@Param("ProductId") int ProductId);

    //根据id查询商品口味
    public String[] findByIdTaste(@Param("ProductId") int ProductId);
    //根据id查询商品颜色
    public String[] findByIdColour(@Param("ProductId") int ProductId);
    //根据id查询商品套餐
    public String[] findByIdCombo(@Param("ProductId") int ProductId);
    //根据id查询商品尺寸
    public String[] findBySize(@Param("ProductId") int ProductId);
    //根据id查询商品种类
    public String[] findByKind(@Param("ProductId") int ProductId);
}