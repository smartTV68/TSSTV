/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.List;

/**
 *
 * @author tss
 */
public class Data<T> {

    public final List<T> data;
    public final Long count;

    public Data(List<T> data, Long count) {
        this.data = data;
        this.count = count;
    }

}
