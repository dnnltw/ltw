/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelDAO;

import java.sql.Connection;
import java.util.ArrayList;
import model.Schedule;

/**
 *
 * @author NguyenNgoc
 */
public interface ScheduleDAO {
    public boolean addSchedule(Connection con, Schedule sale);

    public ArrayList<Schedule> getListSchedule(Connection con);
    
    public boolean editSchedule(Connection con, Schedule sale);
    
    public boolean delelteSchedule(Connection con, Schedule sale);
    
    
}
