package com.epam.hostel.model.room;


import com.epam.hostel.model.entity.Entity;

import java.math.BigDecimal;

public class Room extends Entity {
    private byte roomPlaces;
    private BigDecimal price;

    public byte getRoomPlaces() {
        return roomPlaces;
    }

    public void setRoomPlaces(byte roomPlaces) {
        this.roomPlaces = roomPlaces;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Room{" +
                "roomPlaces=" + roomPlaces +
                ", price=" + price +
                '}';
    }
}
