package service;

import mapper.BlackMapper;
import pojo.Black;

import java.util.List;

public class BlackServiceImpl implements BlackService{

    private BlackMapper blackMapper;

    public void setBlackMapper(BlackMapper blackMapper) {
        this.blackMapper = blackMapper;
    }

    @Override
    public List<Black> selectBlack(String id) {
        return blackMapper.selectBlack(id);
    }

    @Override
    public List<Black> allUser() {
        return blackMapper.allUser();
    }

    @Override
    public int delete(String id) {
        return blackMapper.delete(id);
    }

    @Override
    public int addBlack(Black black) {
        return blackMapper.addBlack(black);
    }
}
