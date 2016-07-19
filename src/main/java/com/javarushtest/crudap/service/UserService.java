package com.javarushtest.crudap.service;


import com.javarushtest.crudap.model.User;

import java.util.List;

public interface UserService {
    public void addUser(User user);
    public void updateUser(User user);
    public void removeUser(int id);
    public User detUserById(int id);
    public List<User> listUsers();
}
