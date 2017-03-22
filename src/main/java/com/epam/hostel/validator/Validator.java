package com.epam.hostel.validator;


public interface Validator<E> {

    boolean validate(E entity);
}
