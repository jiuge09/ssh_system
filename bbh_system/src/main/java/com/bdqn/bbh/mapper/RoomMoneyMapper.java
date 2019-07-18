package com.bdqn.bbh.mapper;

import com.bdqn.bbh.entity.RoomMoney;

import java.util.List;

public interface RoomMoneyMapper {

int addRoomMoney(RoomMoney roomMoney);

List<RoomMoney> selectById(int roomId);
}
