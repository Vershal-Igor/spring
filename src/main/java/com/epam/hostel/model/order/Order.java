package com.epam.hostel.model.order;


import com.epam.hostel.model.entity.Entity;
import com.epam.hostel.model.room.Room;
import com.epam.hostel.model.user.User;

import java.math.BigDecimal;
import java.sql.Date;


public class Order extends Entity {
    private Date arrivalDate;
    private Date departureDate;
    private int placesAmount;
    private PayType payType;
    private float discount;
    private Status status;
    private BigDecimal finalPrice;
    private User user;
    private Long userId;
    private Room room;
    private Long roomId;

    public Date getArrivalDate() {
        return arrivalDate;
    }

    public void setArrivalDate(Date arrivalDate) {
        this.arrivalDate = arrivalDate;
    }

    public Date getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(Date departureDate) {
        this.departureDate = departureDate;
    }

    public int getPlacesAmount() {
        return placesAmount;
    }

    public void setPlacesAmount(int placesAmount) {
        this.placesAmount = placesAmount;
    }

    public PayType getPayType() {
        return payType;
    }

    public void setPayType(PayType payType) {
        this.payType = payType;
    }

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public BigDecimal getFinalPrice() {
        return finalPrice;
    }

    public void setFinalPrice(BigDecimal finalPrice) {
        this.finalPrice = finalPrice;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public Long getRoomId() {
        return roomId;
    }

    public void setRoomId(Long roomId) {
        this.roomId = roomId;
    }

    @Override
    public String toString() {
        return "Order{" +
                "arrivalDate=" + arrivalDate +
                ", departureDate=" + departureDate +
                ", placesAmount=" + placesAmount +
                ", payType=" + payType +
                ", discount=" + discount +
                ", status=" + status +
                ", finalPrice=" + finalPrice +
                ", user=" + user +
                ", userId=" + userId +
                ", room=" + room +
                ", roomId=" + roomId +
                '}';
    }
}
