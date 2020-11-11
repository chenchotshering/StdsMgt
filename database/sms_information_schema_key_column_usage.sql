INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'auth_group_name_key', 'sms', 'public', 'auth_group', 'name', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'auth_group_pkey', 'sms', 'public', 'auth_group', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'auth_group_permissio_permission_id_84c5c92e_fk_auth_perm', 'sms', 'public', 'auth_group_permissions', 'permission_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'auth_group_permissions_group_id_b120cbf9_fk_auth_group_id', 'sms', 'public', 'auth_group_permissions', 'group_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'auth_group_permissions_group_id_permission_id_0cd325b0_uniq', 'sms', 'public', 'auth_group_permissions', 'group_id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'auth_group_permissions_group_id_permission_id_0cd325b0_uniq', 'sms', 'public', 'auth_group_permissions', 'permission_id', 2, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'auth_group_permissions_pkey', 'sms', 'public', 'auth_group_permissions', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'django_migrations_pkey', 'sms', 'public', 'django_migrations', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'django_content_type_app_label_model_76bd3d3b_uniq', 'sms', 'public', 'django_content_type', 'app_label', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'django_content_type_app_label_model_76bd3d3b_uniq', 'sms', 'public', 'django_content_type', 'model', 2, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'django_content_type_pkey', 'sms', 'public', 'django_content_type', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'auth_permission_content_type_id_2f476e4b_fk_django_co', 'sms', 'public', 'auth_permission', 'content_type_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'auth_permission_content_type_id_codename_01ab375a_uniq', 'sms', 'public', 'auth_permission', 'content_type_id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'auth_permission_content_type_id_codename_01ab375a_uniq', 'sms', 'public', 'auth_permission', 'codename', 2, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'auth_permission_pkey', 'sms', 'public', 'auth_permission', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_customuser_username_key', 'sms', 'public', 'StdMgtApp_customuser', 'username', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_customuser_pkey', 'sms', 'public', 'StdMgtApp_customuser', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_staffs_admin_id_3d6481f4_fk_StdMgtApp_customuser_id', 'sms', 'public', 'StdMgtApp_staffs', 'admin_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_staffs_admin_id_key', 'sms', 'public', 'StdMgtApp_staffs', 'admin_id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_staffs_pkey', 'sms', 'public', 'StdMgtApp_staffs', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_subjects_course_id_id_8cd77fc7_fk_StdMgtApp', 'sms', 'public', 'StdMgtApp_subjects', 'course_id_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_subjects_pkey', 'sms', 'public', 'StdMgtApp_subjects', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_subjects_staff_id_id_3a23b250_fk_StdMgtApp', 'sms', 'public', 'StdMgtApp_subjects', 'staff_id_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_attendance_subject_id_id_11b3064a_fk_StdMgtApp', 'sms', 'public', 'StdMgtApp_attendance', 'subject_id_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_attendance_pkey', 'sms', 'public', 'StdMgtApp_attendance', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_customuser_groups_group_id_9c30c11f_fk_auth_group_id', 'sms', 'public', 'StdMgtApp_customuser_groups', 'group_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_customuser_customuser_id_1f0f2197_fk_StdMgtApp', 'sms', 'public', 'StdMgtApp_customuser_groups', 'customuser_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_customuser_gro_customuser_id_group_id_c570e7d7_uniq', 'sms', 'public', 'StdMgtApp_customuser_groups', 'customuser_id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_customuser_gro_customuser_id_group_id_c570e7d7_uniq', 'sms', 'public', 'StdMgtApp_customuser_groups', 'group_id', 2, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_customuser_groups_pkey', 'sms', 'public', 'StdMgtApp_customuser_groups', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_customuser_permission_id_9c226a1a_fk_auth_perm', 'sms', 'public', 'StdMgtApp_customuser_user_permissions', 'permission_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_customuser_customuser_id_95cc7d24_fk_StdMgtApp', 'sms', 'public', 'StdMgtApp_customuser_user_permissions', 'customuser_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_customuser_use_customuser_id_permission_dfd19041_uniq', 'sms', 'public', 'StdMgtApp_customuser_user_permissions', 'customuser_id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_customuser_use_customuser_id_permission_dfd19041_uniq', 'sms', 'public', 'StdMgtApp_customuser_user_permissions', 'permission_id', 2, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_customuser_user_permissions_pkey', 'sms', 'public', 'StdMgtApp_customuser_user_permissions', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_courses_pkey', 'sms', 'public', 'StdMgtApp_courses', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_students_course_id_id_d74839a2_fk_StdMgtApp', 'sms', 'public', 'StdMgtApp_students', 'course_id_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_students_admin_id_4230d703_fk_StdMgtApp_customuser_id', 'sms', 'public', 'StdMgtApp_students', 'admin_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_students_admin_id_key', 'sms', 'public', 'StdMgtApp_students', 'admin_id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_students_pkey', 'sms', 'public', 'StdMgtApp_students', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_notificati_student_id_id_d4e67904_fk_StdMgtApp', 'sms', 'public', 'StdMgtApp_notificationstudent', 'student_id_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_notificationstudent_pkey', 'sms', 'public', 'StdMgtApp_notificationstudent', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_notificati_staff_id_id_37e2fd3d_fk_StdMgtApp', 'sms', 'public', 'StdMgtApp_notificationstaffs', 'staff_id_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_notificationstaffs_pkey', 'sms', 'public', 'StdMgtApp_notificationstaffs', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_leaverepor_student_id_id_cf21d96b_fk_StdMgtApp', 'sms', 'public', 'StdMgtApp_leavereportstudent', 'student_id_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_leavereportstudent_pkey', 'sms', 'public', 'StdMgtApp_leavereportstudent', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_leaverepor_staff_id_id_9cfacb02_fk_StdMgtApp', 'sms', 'public', 'StdMgtApp_leavereportstaff', 'staff_id_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_leavereportstaff_pkey', 'sms', 'public', 'StdMgtApp_leavereportstaff', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_feedbackst_student_id_id_0bbe7aa2_fk_StdMgtApp', 'sms', 'public', 'StdMgtApp_feedbackstudent', 'student_id_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_feedbackstudent_pkey', 'sms', 'public', 'StdMgtApp_feedbackstudent', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_feedbackst_staff_id_id_6daaa3de_fk_StdMgtApp', 'sms', 'public', 'StdMgtApp_feedbackstaffs', 'staff_id_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_feedbackstaffs_pkey', 'sms', 'public', 'StdMgtApp_feedbackstaffs', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_attendance_student_id_id_b51a612d_fk_StdMgtApp', 'sms', 'public', 'StdMgtApp_attendancereport', 'student_id_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_attendance_attendance_id_id_35eedddc_fk_StdMgtApp', 'sms', 'public', 'StdMgtApp_attendancereport', 'attendance_id_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_attendancereport_pkey', 'sms', 'public', 'StdMgtApp_attendancereport', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_adminhod_admin_id_f0d60f3b_fk_StdMgtApp_customuser_id', 'sms', 'public', 'StdMgtApp_adminhod', 'admin_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_adminhod_admin_id_key', 'sms', 'public', 'StdMgtApp_adminhod', 'admin_id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'StdMgtApp_adminhod_pkey', 'sms', 'public', 'StdMgtApp_adminhod', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'django_admin_log_user_id_c564eba6_fk_StdMgtApp_customuser_id', 'sms', 'public', 'django_admin_log', 'user_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'django_admin_log_content_type_id_c4bce8eb_fk_django_co', 'sms', 'public', 'django_admin_log', 'content_type_id', 1, 1);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'django_admin_log_pkey', 'sms', 'public', 'django_admin_log', 'id', 1, null);
INSERT INTO information_schema.key_column_usage (constraint_catalog, constraint_schema, constraint_name, table_catalog, table_schema, table_name, column_name, ordinal_position, position_in_unique_constraint) VALUES ('sms', 'public', 'django_session_pkey', 'sms', 'public', 'django_session', 'session_key', 1, null);