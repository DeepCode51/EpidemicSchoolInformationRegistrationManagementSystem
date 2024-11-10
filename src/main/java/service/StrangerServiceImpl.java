package service;

import mapper.StrangerMapper;
import pojo.Stranger;

import java.util.List;

public class StrangerServiceImpl implements StrangerService{

    private StrangerMapper strangerMapper;

    public void setStrangerMapper(StrangerMapper strangerMapper) {
        this.strangerMapper = strangerMapper;
    }

    @Override
    public int AddStranger(Stranger stranger) {
        return strangerMapper.AddStranger(stranger);
    }

    @Override
    public int DeleteStranger(String name) {
        return strangerMapper.DeleteStranger(name);
    }

    @Override
    public List<Stranger> allStranger() {
        return strangerMapper.allStranger();
    }

    @Override
    public List<Stranger> selectStranger(String str_id) {
        return strangerMapper.selectStranger(str_id);
    }

}
