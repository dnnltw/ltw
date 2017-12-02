/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import model.Client;

/**
 *
 * @author NguyenNgoc
 */
public interface ClientDAO {
    public void signin(Client client) throws Exception;
}
