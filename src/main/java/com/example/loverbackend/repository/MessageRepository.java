package com.example.loverbackend.repository;

import com.example.loverbackend.model.Message;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface MessageRepository extends BaseRepository<Message>, JpaRepository<Message, Long> {
    @Query("SELECT m1 FROM Message m1 " +
            "WHERE (m1.fromUser.id = :userId OR m1.toUser.id = :userId) " +
            "AND m1.time = (" +
            "    SELECT MAX(m2.time) FROM Message m2 " +
            "    WHERE (m2.fromUser = m1.fromUser AND m2.toUser = m1.toUser) " +
            "    OR (m2.fromUser = m1.toUser AND m2.toUser = m1.fromUser) " +
            "    AND (m2.fromUser.id = :userId OR m2.toUser.id = :userId)" +
            ")")
    List<Message> initialStateAllChatFriends(@Param("userId") Long loggedInUserId);

    @Query(value = "SELECT m FROM Message AS m " +
            "WHERE ((m.fromUser.id = :firstUserId AND m.toUser.id = :secondUserId) " +
            "OR  (m.fromUser.id = :secondUserId AND m.toUser.id = :firstUserId)) " +
            "ORDER BY m.time")
    List<Message> findAllMessagesBetweenTwoUsers(@Param("firstUserId") Long firstUserId, @Param("secondUserId") Long secondUserId);
}
