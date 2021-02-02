package com.dags.searchforusersimplilearn.bootstrap;

import com.dags.searchforusersimplilearn.domain.User;
import com.dags.searchforusersimplilearn.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class Bootstrap implements CommandLineRunner {

    @Autowired
    UserRepository userRepository;

    @Override
    public void run(String... args) throws Exception {
        User user = new User();
        User user1 = new User();
        user.setPassword("123");
        user.setDescription("Example description");
        user.setUsername("chris");
        user1.setPassword("456");
        user1.setDescription("Second Example Description");
        user1.setUsername("foo");

        userRepository.save(user);
        userRepository.save(user1);
    }
}
