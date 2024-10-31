package com.gabcytn.JobListings.Repository;

import com.gabcytn.JobListings.Model.Job;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.Array;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

@Repository
@Lazy
public class JobRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;

    public void save (Job job) {
        // TODO (insert job to database)
    }

    public List<Job> findAll () {
        final String sqlQuery = "SELECT * FROM job ORDER BY id ASC";

        RowMapper<Job> rowMapper = new RowMapper<>() {
            @Override
            public Job mapRow(ResultSet rs, int rowNum) throws SQLException {
                Job job = new Job();
                job.setId(rs.getInt("id"));
                job.setTitle(rs.getString("title"));
                job.setDescription(rs.getString("description"));
                job.setExperience(rs.getInt("experience"));

                Array techStackArr = rs.getArray("tech_stack");
                Object[] array = (Object[]) techStackArr.getArray();
                List<String> techStackList = Arrays.stream(array).map(String::valueOf).toList();

                job.setTechStack(techStackList);

                return job;
            }
        };

        return jdbcTemplate.query(sqlQuery, rowMapper);
    }
}
