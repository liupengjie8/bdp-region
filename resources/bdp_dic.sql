-- --------------------------------------------------------
-- Host:                         47.102.133.100
-- Server version:               5.6.12 - MySQL Community Server (GPL)
-- Server OS:                    linux-glibc2.5
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2020-03-10 13:23:52
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping structure for table rest-gamma-bdp.sys_announcement
CREATE TABLE IF NOT EXISTS `sys_announcement` (
  `id` varchar(36) NOT NULL,
  `content` varchar(100) NOT NULL,
  `enable` varchar(1) NOT NULL,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL,
  `extension` varchar(50) NOT NULL DEFAULT '',
  `dp_id` varchar(36) NOT NULL,
  `create_by` varchar(255) NOT NULL,
  `update_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table rest-gamma-bdp.sys_announcement: ~10 rows (approximately)
/*!40000 ALTER TABLE `sys_announcement` DISABLE KEYS */;
INSERT INTO `sys_announcement` (`id`, `content`, `enable`, `create_time`, `update_time`, `extension`, `dp_id`, `create_by`, `update_by`) VALUES
	('1', 'fffffff', '1', '2019-12-09 20:56:49', '2019-12-09 20:56:56', '1', '1', '', '1'),
	('11', 'fff', '1', '2019-12-09 20:22:30', '2019-12-09 20:22:48', '1', '-1', '', ''),
	('1112', 'fff', '1', '2019-12-09 20:42:00', '2019-12-09 20:42:00', '1', '1', '1', '1'),
	('111222', 'hahah', '1', '2019-11-18 19:14:42', '2019-11-18 19:14:42', '', '2', '', ''),
	('11129', 'fff', '1', '2019-12-09 20:56:45', '2019-12-09 20:56:45', '1', '1', '1', '1'),
	('1211222', 'hahah', '1', '2019-11-18 19:15:45', '2019-11-18 19:15:45', '', '2', '', ''),
	('2', '1', '1', '2019-11-08 15:06:32', '2019-11-08 15:06:32', '', '1', '', ''),
	('3', '3', '1', '2019-11-05 17:30:30', '2019-11-05 17:30:30', '', '4', '', ''),
	('4', '11111', '1', '2019-11-05 17:32:38', '2019-11-05 17:32:38', '', '3', '', ''),
	('5', '11111', '1', '2019-11-05 17:32:44', '2019-11-05 17:32:44', '232', '3', '', '');
/*!40000 ALTER TABLE `sys_announcement` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.sys_config
CREATE TABLE IF NOT EXISTS `sys_config` (
  `id` varchar(36) NOT NULL,
  `name` varchar(36) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_idx` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table rest-gamma-bdp.sys_config: ~1 rows (approximately)
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` (`id`, `name`, `value`) VALUES
	('1', 'file-server', 'http://172.16.5.155:8089');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.sys_department
CREATE TABLE IF NOT EXISTS `sys_department` (
  `id` varchar(36) NOT NULL COMMENT 'ID',
  `name` varchar(50) NOT NULL COMMENT '机构名称',
  `parent_id` varchar(36) NOT NULL COMMENT '上级机构ID',
  `branch_id` varchar(36) DEFAULT NULL,
  `section_id` varchar(36) DEFAULT NULL,
  `enable` smallint(1) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '99' COMMENT '排序序号',
  `flag` varchar(20) NOT NULL DEFAULT '' COMMENT '科室标识',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `extension` varchar(501) NOT NULL,
  `last_level_flag` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table rest-gamma-bdp.sys_department: ~26 rows (approximately)
/*!40000 ALTER TABLE `sys_department` DISABLE KEYS */;
INSERT INTO `sys_department` (`id`, `name`, `parent_id`, `branch_id`, `section_id`, `enable`, `sort`, `flag`, `create_time`, `update_time`, `extension`, `last_level_flag`) VALUES
	('0', '解放军医院组织机构', '-1', '0', '0', 1, 99, '组织机构', '2019-11-12 16:05:21', '2019-11-12 16:05:07', '', 0),
	('009b068a-499f-4ec8-945f-63147d306174', '神经门诊1组-专家组', '118aafde-6cc0-4ec0-8607-93ce90955482', NULL, NULL, 1, 1, 'dept-flag-1', '2019-11-27 17:18:06', '2019-11-27 17:14:18', '', 0),
	('1', '301总院', '0', '1', '1', 1, 1, 'dept-flag-1', '2019-11-25 11:07:39', '2019-11-08 13:59:56', '', 0),
	('10001', '呼吸科', '1', '1', '', 1, 99, '301总院呼吸科', '2019-11-12 13:38:25', '2019-11-12 13:37:24', '', 0),
	('10002', '内科', '1', '1', NULL, 1, 99, '301总院内科', '2019-11-22 20:03:26', '2019-11-12 13:39:28', '', 0),
	('10003', '内科导诊', '10002', '1', NULL, 1, 99, '301总院内科导诊', '2019-11-22 13:54:09', '2019-11-12 13:40:07', '', 0),
	('118aafde-6cc0-4ec0-8607-93ce90955482', '神经门诊1组', 'eb307676-3c98-47de-8100-a6d95019cd61', NULL, NULL, 1, 1, 'dept-flag-1', '2019-11-27 17:13:57', '2019-11-27 17:13:57', '', 0),
	('1546dfb4-a7d3-4894-9e4b-695b5bc1a41b', '001我是测试数据', '10002', NULL, NULL, 1, 1, 'dept-flag-2', '2019-11-22 20:03:22', '2019-11-22 15:33:33', '我是备注', 0),
	('2', '302分院', '0', '2', '2', 0, 1, '302分院', '2019-11-22 14:01:02', '2019-11-08 13:59:58', '222', 0),
	('3', '303分院', '4', '3', '3', 1, 1, '303分院', '2019-11-27 17:03:38', '2019-11-08 14:00:01', '', 0),
	('3de6c487-7c2f-478d-8e4a-070c27659ec5', '呼吸科', '1', NULL, NULL, 0, 1, 'dept-flag-1', '2019-11-29 12:59:55', '2019-11-25 13:34:51', '方法1', 0),
	('3f095cdf-9900-4d78-83b8-86cebe866017', '2324324', '0', NULL, NULL, 0, 1, 'dept-flag-3', '2019-11-22 13:54:38', '2019-11-15 09:07:10', '', 0),
	('4', '304分院', '0', '4', '4', 1, 0, '304分院', '2019-11-25 15:45:51', '2019-11-08 14:00:04', '', 0),
	('480eb533-432e-4931-a5bd-74ebaf3a3409', '1111', '10002', NULL, NULL, 1, 4, 'dept-flag-3', '2019-11-22 15:39:28', '2019-11-22 15:18:13', '', 0),
	('4b265f2c-1641-420a-b939-1d3e2ccfd151', '检查组', '10002', NULL, NULL, 1, 2, 'dept-flag-1', '2019-11-29 13:00:30', '2019-11-29 13:00:14', '', 0),
	('50a087f3-3d9b-41c0-9ddf-5d3157ea5e47', 'A放射科', '4b265f2c-1641-420a-b939-1d3e2ccfd151', NULL, NULL, 1, 1, 'dept-flag-1', '2019-11-29 13:00:47', '2019-11-29 13:00:47', '', 0),
	('519591a5-8506-4064-aacf-5e562ef2d223', '002我是测试2号机构', '10002', NULL, NULL, 1, 2, 'dept-flag-1', '2019-11-22 19:03:45', '2019-11-22 19:03:30', '', 0),
	('7460f4f0-2ed8-4a3c-a111-d558f15ce83d', 'B科室', '2', NULL, NULL, 0, 1, 'dept-flag-3', '2019-11-22 14:01:06', '2019-11-12 18:00:18', '222', 0),
	('8029a0d8-eb8c-4a2f-9532-5fc1daed976a', 'efefe', '0', NULL, NULL, 1, 1, 'dept-flag-1', '2019-11-29 10:10:01', '2019-11-29 10:10:01', 'fefe', 0),
	('a53f6f95-69cf-4b84-89e8-0bd09af77baf', 'B科室11', '2', NULL, NULL, 0, 0, 'dept-flag-3', '2019-11-22 14:01:05', '2019-11-20 15:56:14', 'string', 0),
	('cbbb11f2-6c65-4c28-bfe2-a86487e73c17', '123123', '10001', NULL, NULL, 0, 1, 'dept-flag-1', '2019-11-23 14:14:39', '2019-11-15 08:55:37', '', 0),
	('de951320-60ad-4f21-8af4-2fe28d263c1a', '测试部门', '0', NULL, NULL, 1, 1, 'dept-flag-1', '2019-11-27 18:45:53', '2019-11-27 18:45:53', '', 0),
	('e97476e5-d754-4c48-bbc0-c1df57560eb9', '23434', 'f99e5ca4-1c3c-4916-91d5-734d4bf3e14c', NULL, NULL, 0, 1, 'dept-flag-1', '2019-11-23 14:14:34', '2019-11-21 13:38:42', '2234324234', 0),
	('eb307676-3c98-47de-8100-a6d95019cd61', '神经科', '3', NULL, NULL, 1, 2, 'dept-flag-1', '2019-11-29 12:59:35', '2019-11-22 15:22:23', '方法', 0),
	('f99e5ca4-1c3c-4916-91d5-734d4bf3e14c', 'AAXXyy2科室', '1', NULL, NULL, 0, 1, 'dept-flag-3', '2019-11-29 12:51:21', '2019-11-12 17:58:24', '备注信息123456', 0),
	('fc629c8c-b81f-4e6d-8545-06b7d7f5e28e', 'rrt', '0', NULL, NULL, 1, 1, 'dept-flag-1', '2019-11-28 10:00:40', '2019-11-28 10:00:40', '11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111112', 0);
/*!40000 ALTER TABLE `sys_department` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.sys_dictionary_type
CREATE TABLE IF NOT EXISTS `sys_dictionary_type` (
  `id` varchar(50) NOT NULL,
  `code` varchar(50) DEFAULT NULL COMMENT '类型码',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `parent_id` varchar(50) DEFAULT NULL COMMENT '父节级字典ID',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `extension` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='字典类型表';

-- Dumping data for table rest-gamma-bdp.sys_dictionary_type: ~5 rows (approximately)
/*!40000 ALTER TABLE `sys_dictionary_type` DISABLE KEYS */;
INSERT INTO `sys_dictionary_type` (`id`, `code`, `description`, `parent_id`, `create_time`, `update_time`, `extension`) VALUES
	('1001', 'permission-element', '权限基础元素', '1000', '2020-03-06 09:54:50', '2020-03-06 11:10:36', NULL),
	('1002', 'menu-type', '菜单类型', '1000', '2020-03-06 09:54:50', '2020-03-06 11:10:36', NULL),
	('1003', 'user-group', '用户组', '1000', '2020-03-06 09:54:50', '2020-03-06 11:10:36', NULL),
	('1004', 'post-type', '职务或岗位类型', '1000', '2020-03-06 09:54:50', '2020-03-06 11:10:36', NULL),
	('1005', 'department-flag', '组织机构标志', '1000', '2020-03-06 09:54:50', '2020-03-06 11:10:36', NULL);
/*!40000 ALTER TABLE `sys_dictionary_type` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.sys_dictionary_value
CREATE TABLE IF NOT EXISTS `sys_dictionary_value` (
  `id` varchar(50) NOT NULL,
  `type_id` varchar(50) DEFAULT NULL COMMENT '字典类型ID',
  `name` varchar(200) DEFAULT NULL COMMENT '字典值name',
  `value` varchar(50) DEFAULT NULL COMMENT '字典值value',
  `sort` int(11) DEFAULT NULL COMMENT '排序号',
  `extension` varchar(500) DEFAULT NULL COMMENT '备注',
  `enable` smallint(1) DEFAULT '1' COMMENT '开关',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='字典值表';

-- Dumping data for table rest-gamma-bdp.sys_dictionary_value: ~15 rows (approximately)
/*!40000 ALTER TABLE `sys_dictionary_value` DISABLE KEYS */;
INSERT INTO `sys_dictionary_value` (`id`, `type_id`, `name`, `value`, `sort`, `extension`, `enable`) VALUES
	('10000001', '1001', '访问', 'access', 1, NULL, 1),
	('10000002', '1001', '查看', 'view', 2, NULL, 1),
	('10000003', '1001', '新增', 'add', 3, NULL, 1),
	('10000004', '1001', '删除', 'delete', 5, NULL, 1),
	('10000005', '1001', '导出', 'export', 6, NULL, 1),
	('10000006', '1001', '导入', 'import', 7, NULL, 1),
	('10000007', '1001', '设计', 'design', 8, NULL, 1),
	('10000008', '1001', '修改', 'edit', 4, NULL, 1),
	('10000009', '1003', '护士组', 'nurse-group', 1, NULL, 1),
	('10000010', '1003', '医生组', 'doctor-group', 2, NULL, 1),
	('10000011', '1004', '办公室主任', 'post-office-1', 1, NULL, 1),
	('10000012', '1004', '信息科主任', 'post-info-1', 2, NULL, 1),
	('10000013', '1005', '门诊', 'dept-flag-1', 1, NULL, 1),
	('10000014', '1005', '急诊', 'dept-flag-2', 99, '3', 1),
	('10000015', '1005', '体检', 'dept-flag-3', 3, NULL, 1);
/*!40000 ALTER TABLE `sys_dictionary_value` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.sys_menu
CREATE TABLE IF NOT EXISTS `sys_menu` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) NOT NULL DEFAULT '0' COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '菜单URL',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '类型   0：目录   1：菜单   2：操作',
  `permission_code` varchar(36) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `enable` smallint(1) NOT NULL DEFAULT '4' COMMENT '0 代表不可用； 1 代表可用',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `sys_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url_index` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=372 ROW_FORMAT=DYNAMIC COMMENT='菜单管理';

-- Dumping data for table rest-gamma-bdp.sys_menu: ~45 rows (approximately)
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` (`id`, `parent_id`, `name`, `url`, `type`, `permission_code`, `sort`, `create_time`, `update_time`, `enable`, `extension`, `sys_id`) VALUES
	('1', '-1', '系统管理', '/sys', 0, 'sys', 0, '2019-11-01 13:42:29', '2019-11-21 10:00:18', 1, '', '1'),
	('101', '1', '用户管理', '/sys/user', 1, 'sys:user', 1, '2019-11-01 13:42:29', '2019-11-21 10:00:09', 1, '', '1'),
	('10101', '101', '用户查看', '/sys/user#view', 2, 'sys:user:view', 1, '2019-11-06 15:57:31', '2019-11-21 10:00:40', 1, '', '1'),
	('10102', '101', '用户新增', '/sys/user#add', 2, 'sys:user:add', 2, '2019-11-06 16:00:38', '2019-11-21 10:00:42', 1, '', '1'),
	('10103', '101', '用户访问', '/sys/user#access', 2, 'sys:user:access', 0, '2019-11-06 16:02:30', '2019-11-21 10:00:44', 1, '', '1'),
	('10104', '101', '用户修改', '/sys/user#edit', 2, 'sys:user:edit', 3, '2019-11-06 16:03:24', '2019-11-21 10:00:45', 1, '', '1'),
	('10105', '101', '用户删除', '/sys/user#delete', 2, 'sys:user:delete', 4, '2019-11-06 16:05:03', '2019-11-21 10:00:47', 1, '', '1'),
	('10106', '101', '用户导出', '/sys/user#export', 2, 'sys:user:export', 5, '2019-11-06 16:05:39', '2019-11-21 10:00:49', 1, '', '1'),
	('10107', '101', '用户导入', '/sys/user#import', 2, 'sys:user:import', 6, '2019-11-06 16:06:13', '2019-11-21 10:00:52', 1, '', '1'),
	('10108', '101', '设计页面', '/sys/user#design', 2, 'sys:user:design', 7, '2019-11-06 16:06:50', '2019-11-21 10:00:54', 1, '', '1'),
	('102', '1', '角色管理', '/sys/role', 1, 'sys:role', 2, '2019-11-01 13:42:29', '2019-11-21 10:00:07', 1, '', '1'),
	('10201', '102', '角色查看', '/sys/role#view', 2, 'sys:role:view', 0, '2019-11-21 09:59:49', '2019-11-21 09:59:54', 1, '', '1'),
	('10202', '102', '角色新增', '/sys/role#add', 2, 'sys:role:add', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('10203', '102', '角色访问', '/sys/role#access', 2, 'sys:role:access', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('10204', '102', '角色修改', '/sys/role#edit', 2, 'sys:role:edit', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('10205', '102', '角色删除', '/sys/role#delete', 2, 'sys:role:delete', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('10206', '102', '角色导入', '/sys/role#import', 2, 'sys:role:import', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('10207', '102', '角色导出', '/sys/role#export', 2, 'sys:role:export', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('10208', '102', '设计页面', '/sys/role#design', 2, 'sys:role:design', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('103', '1', '机构管理', '/sys/dept', 1, 'sys:dept', 3, '2019-11-01 13:42:29', '2019-11-21 10:00:05', 1, '', '1'),
	('10301', '103', '机构查看', '/sys/dept#view', 2, 'sys:dept:view', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('10302', '103', '机构新增', '/sys/dept#add', 2, 'sys:dept:add', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('10303', '103', '机构访问', '/sys/dept#access', 2, 'sys:dept:access', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('10304', '103', '机构修改', '/sys/dept#edit', 2, 'sys:dept:edit', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('10305', '103', '机构删除', '/sys/dept#delete', 2, 'sys:dept:delete', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('10306', '103', '机构导入', '/sys/dept#import', 2, 'sys:dept:import', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('10307', '103', '机构导出', '/sys/dept#export', 2, 'sys:dept:export', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('10308', '103', '设计页面', '/sys/dept#design', 2, 'sys:dept:design', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('104', '1', '字典管理', '/sys/dict', 1, 'sys:dict', 4, '2019-11-21 09:59:49', '2020-03-09 09:23:20', 1, '', '1'),
	('10401', '104', '字典查看', '/sys/dict#view', 2, 'sys:dict:view', 1, '2019-11-21 09:59:49', '2020-03-09 09:23:42', 1, '', '1'),
	('10402', '104', '字典修改', '/sys/dict#edit', 2, 'sys:dict:edit', 2, '2019-11-21 09:59:49', '2020-03-09 09:23:47', 1, '', '1'),
	('10403', '104', '字典新增', '/sys/dict#add', 2, 'sys:dict:add', 3, '2019-11-21 09:59:49', '2020-03-09 09:23:48', 1, '', '1'),
	('10405', '104', '字典删除', '/sys/dict#delete', 2, 'sys:dict:delete', 4, '2019-11-21 09:59:49', '2020-03-09 12:25:24', 1, '', '1'),
	('105', '1', '日志管理', '/sys/log', 1, 'sys:log', 5, '2019-11-21 09:59:49', '2020-03-09 12:25:26', 1, '', '1'),
	('10501', '105', '日志查看', '/sys/log#view', 2, 'sys:log:view', 1, '2019-11-21 09:59:49', '2020-03-09 12:25:02', 1, '', '1'),
	('91', '-1', '开发工具', '/tool', 0, 'tool', 0, '2019-12-23 14:30:09', '2019-12-23 14:30:12', 1, '', '1'),
	('9101', '91', '代码生成', '/tool/generator', 1, 'tool:generator', 1, '2019-12-23 14:32:36', '2019-12-23 14:32:39', 1, '', '1'),
	('910101', '9101', '设计页面', '/tool/generator#design', 2, 'tool:generator:design', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('910102', '9101', '访问页面', '/tool/generator#access', 2, 'tool:generator:access', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('910103', '9101', '查看权限', '/tool/generator#view', 2, 'tool:generator:view', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('910104', '9101', '新增权限', '/tool/generator#add', 2, 'tool:generator:add', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('910105', '9101', '修改权限', '/tool/generator#edit', 2, 'tool:generator:edit', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('910106', '9101', '删除权限', '/tool/generator#delete', 2, 'tool:generator:delete', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('910107', '9101', '导出权限', '/tool/generator#export', 2, 'tool:generator:export', 1, '2019-11-21 09:59:49', '2019-11-21 09:59:49', 1, '', '1'),
	('910108', '9101', '导入权限', '/tool/generator#import', 2, 'tool:generator:import', 1, '2019-11-21 09:59:49', '2019-12-23 14:50:40', 1, '', '1');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.sys_operation_log
CREATE TABLE IF NOT EXISTS `sys_operation_log` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `user_id` varchar(50) NOT NULL COMMENT '用户主键',
  `operation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  `client_ip` varchar(50) NOT NULL COMMENT '客户端IP',
  `module` varchar(100) NOT NULL COMMENT '功能模块',
  `operation_type` varchar(100) NOT NULL COMMENT '操作类型',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `dp_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_operation_time` (`operation_time`),
  KEY `idx_user_name` (`user_name`),
  KEY `idx_module` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统操作日志';

-- Dumping data for table rest-gamma-bdp.sys_operation_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `sys_operation_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_operation_log` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.sys_operation_param
CREATE TABLE IF NOT EXISTS `sys_operation_param` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `log_id` varchar(50) NOT NULL COMMENT '日志主键',
  `request_param` text COMMENT '请求参数',
  `response_param` text COMMENT '响应结果',
  `dp_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统操作参数记录';

-- Dumping data for table rest-gamma-bdp.sys_operation_param: ~0 rows (approximately)
/*!40000 ALTER TABLE `sys_operation_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_operation_param` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.sys_permission_dependency
CREATE TABLE IF NOT EXISTS `sys_permission_dependency` (
  `id` varchar(36) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dependency` varchar(200) NOT NULL,
  `extension` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table rest-gamma-bdp.sys_permission_dependency: ~2 rows (approximately)
/*!40000 ALTER TABLE `sys_permission_dependency` DISABLE KEYS */;
INSERT INTO `sys_permission_dependency` (`id`, `name`, `dependency`, `extension`) VALUES
	('1', 'sys:user', 'sys:role:view,sys:dept:view', ''),
	('2', 'sys:role', 'sys:user:view,sys:dept:view', '');
/*!40000 ALTER TABLE `sys_permission_dependency` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.sys_permission_element
CREATE TABLE IF NOT EXISTS `sys_permission_element` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table rest-gamma-bdp.sys_permission_element: ~8 rows (approximately)
/*!40000 ALTER TABLE `sys_permission_element` DISABLE KEYS */;
INSERT INTO `sys_permission_element` (`id`, `name`, `description`) VALUES
	('100', 'access', '访问'),
	('101', 'view', '查看'),
	('102', 'add', '新增'),
	('103', 'edit', '修改'),
	('104', 'delete', '删除'),
	('105', 'export', '导出'),
	('106', 'import', '导入'),
	('107', 'design', '设计');
/*!40000 ALTER TABLE `sys_permission_element` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.sys_role
CREATE TABLE IF NOT EXISTS `sys_role` (
  `id` varchar(36) NOT NULL,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(36) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `enable` smallint(1) NOT NULL DEFAULT '1' COMMENT '0 代表不可用； 1 代表可用',
  `extension` varchar(501) NOT NULL DEFAULT '' COMMENT '扩展字段',
  `remark` varchar(501) DEFAULT NULL COMMENT '备注',
  `sys_id` varchar(36) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL DEFAULT '99',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 ROW_FORMAT=DYNAMIC COMMENT='角色';

-- Dumping data for table rest-gamma-bdp.sys_role: ~19 rows (approximately)
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` (`id`, `role_name`, `role_code`, `create_time`, `update_time`, `enable`, `extension`, `remark`, `sys_id`, `sort`) VALUES
	('059c1fed-0e4e-4085-9674-b3edfdf3b9ed', 'efef', 'efef', '2019-11-29 10:09:47', '2019-11-29 10:09:47', 1, '', 'fefe', '', 99),
	('1', '角色123456', '1', '2019-11-01 14:02:33', '2019-11-19 18:23:23', 1, '', '', '', 0),
	('1fd7ed00-108a-4cde-bd0d-ce58e994cae8', 'fff', 'ff', '2019-11-28 09:59:15', '2019-11-28 09:59:15', 1, '', '11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '', 99),
	('2', '角色2', 'admin', '2019-11-01 14:02:33', '2019-11-01 14:02:33', 0, '', '11', '', 0),
	('3', '3', '', '2019-11-01 14:02:33', '2019-11-01 14:02:33', 1, '', '3', '', 0),
	('333', 'aaaa', '', '2019-11-01 14:02:33', '2019-11-01 14:02:33', 1, '', NULL, '', 0),
	('3dcf7daf-451f-4e94-b776-9ba083126436', '角色8', 'admin', '2019-11-25 15:57:48', '2019-11-25 15:57:48', 1, '', '', '', 99),
	('4', '4', '', '2019-11-01 14:02:33', '2019-11-01 14:02:33', 1, '', '4', '', 0),
	('4cbff9bc-2ae8-4c39-9aba-1ec1ba9b24c2', 'string', 'admin', '2019-11-14 18:22:53', '2019-11-15 11:16:37', 1, '', 'string', '', 99),
	('5', '5', '', '2019-11-01 14:02:33', '2019-11-01 14:02:33', 1, '', '5', '', 0),
	('543ebce3-e35b-4796-be51-f6cba44b7e79', '00001测试的第一个', '00001我可是是汉字吗', '2019-11-22 13:34:21', '2019-11-22 13:34:21', 1, '', '注意，我是备注', '', 99),
	('6', '6', '', '2019-11-01 14:02:33', '2019-11-01 14:02:33', 1, '', '6', '', 0),
	('6681fe17-1822-4211-8fe8-c807f29d5846', 'fefe3', 'admin', '2019-11-29 12:59:20', '2019-11-29 12:59:20', 1, '', '', '', 99),
	('7', '7', '', '2019-11-01 14:02:33', '2019-11-01 14:02:33', 1, '', '7', '', 0),
	('71531428-7554-4f9d-8199-3a3b68e7d0f5', 'ffff2', 'ff', '2019-11-29 10:09:34', '2019-11-29 10:09:34', 1, '', 'ff', '', 99),
	('7fdbc0ea-cf71-47fe-a3fe-083634084c18', '234', '234', '2019-11-18 09:00:25', '2019-11-18 09:00:25', 0, '', '', '', 99),
	('90376afd-a995-4e93-85b1-d973e496acc0', 'ddd', 'ddd', '2019-11-21 13:56:15', '2019-11-21 13:56:15', 1, '', '', '', 99),
	('a495e5ae-a238-4928-93c2-ac8ee145cf06', 'abc', 'admin', '2019-11-14 18:23:16', '2019-11-15 11:23:01', 1, 'a495e5ae-a238-4928-93c2-ac8ee145cf06', '角色A2001', '', 99),
	('f19ef746-b4f7-4f12-9bba-2e79625952ee', '角色ssss', 'admin', '2019-11-01 14:02:33', '2019-11-18 19:58:35', 1, '', '测试角色', '', 0);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.sys_role_menu
CREATE TABLE IF NOT EXISTS `sys_role_menu` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL COMMENT '角色ID',
  `menu_id` varchar(36) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=4096 ROW_FORMAT=DYNAMIC COMMENT='角色与菜单对应关系';

-- Dumping data for table rest-gamma-bdp.sys_role_menu: ~173 rows (approximately)
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` (`id`, `role_id`, `menu_id`) VALUES
	('00b4f668-93a5-436c-8c08-195be30ff6e8', '2', '10107'),
	('00bfb3ba-96f6-4854-a836-7c33a04eb671', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10108'),
	('0268d507-12ef-4e7d-8cef-381cca0939cc', '543ebce3-e35b-4796-be51-f6cba44b7e79', '10101'),
	('02e62d37-18e2-4dc5-a2c9-89ab5a409506', '2', '10206'),
	('044c38a7-fa22-49c4-b629-8e2feb270425', 'a495e5ae-a238-4928-93c2-ac8ee145cf06', '1'),
	('04557fe4-e828-411d-9a6e-09a4cd3bfdb5', '90376afd-a995-4e93-85b1-d973e496acc0', '10107'),
	('05a9347e-9dd4-41cb-b5f3-b006222cf7d8', '90376afd-a995-4e93-85b1-d973e496acc0', '10203'),
	('0947b71f-403c-40a5-8ecd-c11b94b7a080', '3dcf7daf-451f-4e94-b776-9ba083126436', '10201'),
	('096319dd-b192-4ac8-a75a-bd7b62a71b22', '90376afd-a995-4e93-85b1-d973e496acc0', '1'),
	('0ae7f452-5cb8-4dbc-b106-8fcd719aa200', '3dcf7daf-451f-4e94-b776-9ba083126436', '10103'),
	('0c0cc7a6-0401-4307-a778-0c6c7bbdb691', '543ebce3-e35b-4796-be51-f6cba44b7e79', '10302'),
	('0dc9301b-7e48-4162-b716-5bbd51d66939', '1', '10102'),
	('0e4c4b7b-1978-4adc-9103-320867fd48d1', '90376afd-a995-4e93-85b1-d973e496acc0', '10106'),
	('0eef2f79-d2bc-4ef0-b0a8-3ad04b1f4c88', '90376afd-a995-4e93-85b1-d973e496acc0', '10301'),
	('0f0c84d4-57ee-4940-8bac-4f342656c68f', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10303'),
	('0faa6c14-a0cc-44d9-bda1-23eea73381b1', '90376afd-a995-4e93-85b1-d973e496acc0', '10302'),
	('11247ebd-b61e-4257-88fd-3fbc65bb0bf4', '543ebce3-e35b-4796-be51-f6cba44b7e79', '10201'),
	('13f0f4a6-2a98-45e6-a01d-317f75c4c293', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '101'),
	('146a1028-f7bb-4d6c-b405-303d1aa3d53c', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10308'),
	('1bbe60c4-9b08-4788-991a-9416d03ffe71', '2', '10304'),
	('1c655513-b60c-4554-a8c6-533bced2c303', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '103'),
	('21234e32-a739-45da-8d15-a9b7ba1eefd8', '2', '10104'),
	('2218ca42-9a88-44d4-b922-43324ef80ead', '3dcf7daf-451f-4e94-b776-9ba083126436', '10203'),
	('257ab8f4-3c93-475f-9645-5d72ab075191', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10303'),
	('260dfdfd-7bbd-4d23-b675-8e4910f98282', '90376afd-a995-4e93-85b1-d973e496acc0', '10204'),
	('266ed47a-9faf-4acb-987a-b33896e0774e', '1', '10101'),
	('269567d7-dd2e-4cbf-9542-b17be7754285', '543ebce3-e35b-4796-be51-f6cba44b7e79', '10202'),
	('2846d234-5014-4ba9-8ad4-3c3df8d32c4c', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10307'),
	('28a40b2c-4fb9-4bb9-83b3-83b9ebc875f6', '6681fe17-1822-4211-8fe8-c807f29d5846', '10102'),
	('2bb506bd-061b-496c-82d2-7cfa05cad662', '90376afd-a995-4e93-85b1-d973e496acc0', '10304'),
	('308b463f-3b5f-4fe0-a03e-1ee5b15b102e', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10105'),
	('327508c2-c076-41e2-a5e8-949ba9722b45', '543ebce3-e35b-4796-be51-f6cba44b7e79', '10107'),
	('337e5295-ef17-4867-a605-d578fccf4dac', '543ebce3-e35b-4796-be51-f6cba44b7e79', '101'),
	('36b0ad1c-4940-43be-b8b6-10e391c99229', '6681fe17-1822-4211-8fe8-c807f29d5846', '10105'),
	('3920828b-35d8-475a-a190-f8a27966ffeb', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10106'),
	('3af91066-4e21-40f9-8ea7-684216d65557', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10203'),
	('3dc884ec-9c87-4e1f-928e-eaee1fdcfe4d', '3dcf7daf-451f-4e94-b776-9ba083126436', '10101'),
	('3e34f0bf-fdbc-4d70-a7f5-5ccd61a4a6aa', '90376afd-a995-4e93-85b1-d973e496acc0', '10108'),
	('3f8d9dfe-793f-43e9-8ded-739fa2cfe0bb', '6681fe17-1822-4211-8fe8-c807f29d5846', '10103'),
	('3fddf6a5-f0a7-4256-9652-188efb26ae63', '2', '10307'),
	('413e020d-04b5-434f-92cd-206d9464b6c8', '2', '101'),
	('414394ff-f812-421c-a388-c476e8261dfe', '2', '10301'),
	('42383658-5ab5-4a1a-83fa-dadc7c33482e', '2', '10308'),
	('440a338a-554d-436d-a4b2-08f2e399cc50', '543ebce3-e35b-4796-be51-f6cba44b7e79', '10103'),
	('454cbda4-0ae2-4077-9536-3ede57c250bf', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10205'),
	('457994c1-b4f2-4274-852d-b38efdf5c50b', '3dcf7daf-451f-4e94-b776-9ba083126436', '10202'),
	('45845dbc-7e06-481c-b86c-02b41b2add49', '6681fe17-1822-4211-8fe8-c807f29d5846', '10101'),
	('469df5ce-c544-4912-94c9-48937022e725', '2', '10204'),
	('47a7895a-72b6-45e9-8d6f-d9fb132b34bf', '2', '1'),
	('48068c8f-1dfb-4156-915a-3151ce48f5a4', '4cbff9bc-2ae8-4c39-9aba-1ec1ba9b24c2', '101'),
	('4e09676b-bced-4903-b827-2f8fc354d839', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10204'),
	('53e297dd-2c05-4285-a6b4-e228e9bfaf83', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10301'),
	('54c0befa-0ffa-4ba4-8cdd-607e477752df', '543ebce3-e35b-4796-be51-f6cba44b7e79', '102'),
	('5615f5b0-627b-4f2c-b3a3-6bf1c60eb19e', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '102'),
	('56376d9f-65aa-4aeb-8ade-f6160e2792fe', '90376afd-a995-4e93-85b1-d973e496acc0', '101'),
	('565d80d4-9f21-4b36-a2fb-5a515e75ae07', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10102'),
	('56e4b7b6-a489-4c29-88be-7f85756d42df', '90376afd-a995-4e93-85b1-d973e496acc0', '10104'),
	('570153b6-b725-46d8-975e-9158da39a4fb', '543ebce3-e35b-4796-be51-f6cba44b7e79', '10203'),
	('579518db-9079-4a55-8f1b-32a2c3026844', '543ebce3-e35b-4796-be51-f6cba44b7e79', '10207'),
	('5e106768-eec3-48fc-ba07-7a1ee7d4e883', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10302'),
	('6044c9b1-1eb1-4cdc-be55-1e1802681797', '543ebce3-e35b-4796-be51-f6cba44b7e79', '10106'),
	('618a740a-2a4b-4e39-bc75-f25d9aa4fad9', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10306'),
	('62382c95-cf58-400c-9130-df7f087e7790', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10107'),
	('62f67274-42a2-4b2d-a6ac-97d932fef7bf', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10207'),
	('670c8d73-e987-47c6-ba5b-7d435d7bc4f1', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10301'),
	('67aed315-988b-4f7b-821f-da4af44ba4ba', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '101'),
	('67b36c70-1acb-46a4-8d32-ad6d55d22f30', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10306'),
	('6f3b54c9-cc97-43f5-bb3c-d234c0ed4613', '90376afd-a995-4e93-85b1-d973e496acc0', '10306'),
	('71aa9d76-a072-4c2a-bb94-ca00edb47d7c', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10208'),
	('725f170a-6fd4-4aeb-b2ee-bef408bddd7e', '3dcf7daf-451f-4e94-b776-9ba083126436', '10304'),
	('74f18d9f-35fb-43ad-b7e3-295ff4119869', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10104'),
	('76362af5-a2fa-4c26-b54f-b1555efc85bd', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10308'),
	('7ae30c30-64bf-48f9-a8f6-d3f333710df1', '2', '10201'),
	('7b04236d-a690-423a-83de-cc2a2d604f18', '90376afd-a995-4e93-85b1-d973e496acc0', '10308'),
	('7b7f98ae-9e6d-49ed-97a1-6c6b07d17b4c', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10108'),
	('7e9d1673-3242-4425-9bf7-e341b8de35a0', '2', '10208'),
	('7f238a99-4129-4dec-bbce-aa325ce4cf4b', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '1006'),
	('7f8b9b9d-d5e1-42b4-af31-e6d9edf2625a', '90376afd-a995-4e93-85b1-d973e496acc0', '10208'),
	('826896e8-4fb9-4cf7-945a-cba300dd4729', '90376afd-a995-4e93-85b1-d973e496acc0', '10303'),
	('8296ded3-3272-47db-82d6-85b2b3ef7801', '543ebce3-e35b-4796-be51-f6cba44b7e79', '10205'),
	('8318f632-1c89-4c65-a0ac-98cc3ba775d0', '90376afd-a995-4e93-85b1-d973e496acc0', '10201'),
	('8349ae5b-22a0-4e98-99e5-02e1a1f88d08', '90376afd-a995-4e93-85b1-d973e496acc0', '10307'),
	('837262e7-7895-4235-beb9-e6bfa9f09933', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '1'),
	('844fa6fb-111d-4716-a6a4-b296b491f72d', '2', '10106'),
	('86340f6e-ffdd-4da4-be71-9911e7d4f8b3', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '103'),
	('878c1f7e-bd44-4c7a-a63b-e2ae2a3a2597', '543ebce3-e35b-4796-be51-f6cba44b7e79', '10208'),
	('87be63fc-ecb9-4edc-933c-36e609cd9e2f', '90376afd-a995-4e93-85b1-d973e496acc0', '10105'),
	('889e5cb6-3e38-4c4d-bba6-a6ff11c68add', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10103'),
	('8a412852-06db-4a79-90a2-c008d51fd9d4', '543ebce3-e35b-4796-be51-f6cba44b7e79', '10301'),
	('8af95ecb-a2a5-4678-865a-a1d87a39df04', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10305'),
	('8b970033-6d72-4092-95b4-29aee9a702eb', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '1001'),
	('8d3ddf44-8adf-43d4-89eb-635aec4ba941', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10304'),
	('904eff9f-23c1-4f77-8c41-16bdcb44b290', '90376afd-a995-4e93-85b1-d973e496acc0', '10101'),
	('92525421-7df0-4e90-9bba-3b5a105160e6', '90376afd-a995-4e93-85b1-d973e496acc0', '10205'),
	('932c7d8d-8a9f-4b97-aa47-14db22f67ec9', '543ebce3-e35b-4796-be51-f6cba44b7e79', '10108'),
	('95c2bd77-734f-445d-ba7f-0f4eeb7fc1d6', '2', '10305'),
	('980868d6-7bd9-4ab1-885a-81ff7522f77d', '3dcf7daf-451f-4e94-b776-9ba083126436', '10204'),
	('9be72de2-bdda-481c-a509-292bb51047d1', '90376afd-a995-4e93-85b1-d973e496acc0', '10103'),
	('9cf5815a-098d-47fe-87d6-dd916fddccfb', '2', '102'),
	('9d190b9f-b653-44f8-a1d7-a38efc13488e', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '101'),
	('9f442705-2d96-4434-aaa8-17ec89c6a415', '90376afd-a995-4e93-85b1-d973e496acc0', '10206'),
	('9fc706f0-1feb-4e81-82d4-cafa5af12016', '2', '10306'),
	('a10c7dcb-c017-4916-b93a-1782ce161e45', 'a495e5ae-a238-4928-93c2-ac8ee145cf06', '101'),
	('a1dd1148-565a-4369-a4c4-891701e578c1', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10305'),
	('a3582fe7-790e-49c1-a38e-db9559c4219b', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '103'),
	('a421ff8a-d7a4-4adf-b1dd-97f34bc29b9f', '2', '10302'),
	('a72ac270-9ffc-4b2c-b0cd-ebf431a9b69b', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10202'),
	('a901a5e5-7e6d-4419-8bf6-618de8900a04', '6681fe17-1822-4211-8fe8-c807f29d5846', '10108'),
	('a92a02cc-92b5-469c-a1aa-b0276b4466c7', '3dcf7daf-451f-4e94-b776-9ba083126436', '10302'),
	('a935c89e-b635-4aea-b6f5-efcf9207fccf', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10101'),
	('a9cb8735-00cd-4ac3-b9d1-b08e9dca1ba2', '4cbff9bc-2ae8-4c39-9aba-1ec1ba9b24c2', '1001'),
	('ab853645-3a34-4d76-9b9e-e1b42c54b97f', '6681fe17-1822-4211-8fe8-c807f29d5846', '101'),
	('ad05b169-b855-46c1-bcd3-0ccea68b0657', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10206'),
	('b16dd279-21d3-46ca-ae1c-b1bb5454bb07', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10307'),
	('b21906da-6c93-436a-bf06-5cd817d40d18', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '1004'),
	('b2c8b817-3c0f-4b34-b304-7011ce29f49e', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '1'),
	('b3dea191-88f8-42d5-9688-3549664a5171', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10208'),
	('b4716840-2bc1-4aac-a333-628501f00c93', '2', '10103'),
	('b7ca68ba-f74f-43f0-bf36-07d1aca057ee', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10207'),
	('b984bd08-abaa-47a8-a780-b24548ed6185', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10106'),
	('ba3d6fcf-d6f0-4f6b-baed-e895ae3bd6be', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10201'),
	('bbcc3cb8-39d2-4c39-9dc0-2c081f2917ea', '2', '10108'),
	('bd8c5d43-555b-447f-847f-a6f108b20908', '2', '103'),
	('bfdc93f9-0e73-4f8c-af42-21498cc4f801', '90376afd-a995-4e93-85b1-d973e496acc0', '10202'),
	('c1cfb9ac-0477-4bb8-a1b7-2c6a9494638e', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10304'),
	('c542d0fc-58b6-4028-9590-01d246f9db8b', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '102'),
	('c94d0ec6-a9ca-4193-9ce1-f376b6f9927c', '2', '10105'),
	('cb56ae0c-c75b-4d93-a720-31aabe9b705b', '90376afd-a995-4e93-85b1-d973e496acc0', '103'),
	('cc5047f7-477d-4e73-af17-cdcc38e6993a', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10107'),
	('cc5ee192-6da6-4de2-a93b-def74566599d', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10205'),
	('cc85bff9-d1e3-4475-84cd-3e9267b543bb', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '1008'),
	('cc94210c-ab90-4bf4-bf77-14c394d0f5e3', '543ebce3-e35b-4796-be51-f6cba44b7e79', '1'),
	('ccc8dbb0-5298-4054-a579-d41c3451c691', '4cbff9bc-2ae8-4c39-9aba-1ec1ba9b24c2', '1'),
	('cd919046-93d8-4f86-a3a7-79a7100de757', '6681fe17-1822-4211-8fe8-c807f29d5846', '10106'),
	('cdcbdf5f-7f82-4535-937b-988570130c9a', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10204'),
	('cee42667-c929-4063-b7b7-f83de2b30ec8', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '1005'),
	('cf52d302-4987-4dcd-9257-c0ecbee713c0', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10103'),
	('cf718f53-7931-47b7-a672-6bd8eefce8d3', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '102'),
	('d2a6e9e1-8622-40ce-998e-674083a5c016', '2', '10202'),
	('d3cb6d9e-532e-47f4-b894-48e1ff34d949', '543ebce3-e35b-4796-be51-f6cba44b7e79', '10105'),
	('d510292a-40e0-43df-b910-3071988440e1', '2', '10303'),
	('d54aaa2d-f566-4321-951e-14cb4f4fcced', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '1003'),
	('d916f3bc-368d-45d6-933b-5864e8a26d63', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '1002'),
	('db9a1611-b267-40c2-a245-ef739b1186bb', '90376afd-a995-4e93-85b1-d973e496acc0', '10207'),
	('dc51bced-ab66-4e0b-bbcb-add6addb08de', '543ebce3-e35b-4796-be51-f6cba44b7e79', '10104'),
	('e16c490b-ed94-4cda-bc34-999385530ed8', '2', '10205'),
	('e16dea0c-d81a-420c-9551-7dc0057a607f', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '1007'),
	('e1a48f11-d980-44c5-b336-040823c38933', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10101'),
	('e2d77e27-cfcd-42b0-8ff7-9dcc4e41cdfe', '543ebce3-e35b-4796-be51-f6cba44b7e79', '10204'),
	('e41696c8-2337-4a9d-bb60-00b9e59da8e5', '6681fe17-1822-4211-8fe8-c807f29d5846', '10104'),
	('e45f78e7-30a7-44bb-8bf8-bfcb07d184a4', '543ebce3-e35b-4796-be51-f6cba44b7e79', '103'),
	('e5059765-2f87-4204-983b-cee75652a2e1', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '1'),
	('e51911f0-a1a7-429b-84b1-43dafa9fe0ba', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10302'),
	('e590a4c2-a0ac-481e-9208-b6e42685c275', '3dcf7daf-451f-4e94-b776-9ba083126436', '10102'),
	('e5a05230-23e0-4235-b0b8-62a124a9b8a2', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10102'),
	('e5dae2ba-a9b1-499c-82e7-67237a184240', '543ebce3-e35b-4796-be51-f6cba44b7e79', '10206'),
	('e774bf17-c8c2-4979-89a0-2c701fba00ff', '2', '10102'),
	('e8719a16-7dc1-4fc9-a1d7-ceb3c4171aae', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10203'),
	('e967797f-1b7b-4467-89aa-eee82db7692c', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10202'),
	('ec240092-ef6b-4adc-81d7-cf0075a28be4', 'f19ef746-b4f7-4f12-9bba-2e79625952ee', '10104'),
	('f05dbe64-35c8-43ee-bb36-66b2d1bd788f', '6681fe17-1822-4211-8fe8-c807f29d5846', '10107'),
	('f2c1c276-f89b-483c-ba26-7cdbbe090463', '90376afd-a995-4e93-85b1-d973e496acc0', '10102'),
	('f4dad773-c7b1-4235-b3bd-7aa1307c046c', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10206'),
	('f631c160-9883-43b9-8842-25ad4aa8f60a', '2', '10207'),
	('f6e7f46e-3718-41b5-89ae-9b62787f795d', '3dcf7daf-451f-4e94-b776-9ba083126436', '10104'),
	('f7d6c38c-20f4-4555-9c37-0c338f73f4fa', '3dcf7daf-451f-4e94-b776-9ba083126436', '10303'),
	('f8ffa6c6-8107-49b9-8e9b-541ef79e8bb2', '90376afd-a995-4e93-85b1-d973e496acc0', '10305'),
	('f9163a2c-3f47-430b-9cbe-3f9bd17dff18', '2', '10203'),
	('fbf16d4a-8cf5-4769-9e66-a5c4bb71bcc6', '90376afd-a995-4e93-85b1-d973e496acc0', '102'),
	('fc907ce8-c9e6-4d86-8b5f-6c540a526fdd', '3dcf7daf-451f-4e94-b776-9ba083126436', '10301'),
	('fe86e32c-777e-43a8-8021-72cccdc0424d', '543ebce3-e35b-4796-be51-f6cba44b7e79', '10102'),
	('fe8d48ea-bc3e-4e03-9304-f940d9454f9f', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10201'),
	('fea29646-4784-4c87-a859-fe78c07a9b69', '71531428-7554-4f9d-8199-3a3b68e7d0f5', '10105');
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.sys_role_scope
CREATE TABLE IF NOT EXISTS `sys_role_scope` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) NOT NULL,
  `dp_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table rest-gamma-bdp.sys_role_scope: ~50 rows (approximately)
/*!40000 ALTER TABLE `sys_role_scope` DISABLE KEYS */;
INSERT INTO `sys_role_scope` (`id`, `role_id`, `dp_id`) VALUES
	('07b12503-bade-4036-b2c6-83e2606d4754', '3dcf7daf-451f-4e94-b776-9ba083126436', '1546dfb4-a7d3-4894-9e4b-695b5bc1a41b'),
	('144a2053-0a38-4aa5-bf99-5afd3b38acb0', '90376afd-a995-4e93-85b1-d973e496acc0', '1'),
	('28bbb3fb-1559-4014-831a-587b0fe95e02', '90376afd-a995-4e93-85b1-d973e496acc0', '10001'),
	('3', '2', '4'),
	('387b5d76-e768-49eb-b91a-39dd83d1ec36', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '7460f4f0-2ed8-4a3c-a111-d558f15ce83d'),
	('3915c15e-1cb4-4df5-a283-cafe2ea810ac', '90376afd-a995-4e93-85b1-d973e496acc0', '10002'),
	('39aa4398-9d84-4f4b-8e3a-7db2cc423096', '90376afd-a995-4e93-85b1-d973e496acc0', 'e97476e5-d754-4c48-bbc0-c1df57560eb9'),
	('3ab3c46d-6f83-4122-b3c4-1302bb5b0be3', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '1'),
	('3af9616b-676c-48df-98aa-3ea95a3d5b27', '3dcf7daf-451f-4e94-b776-9ba083126436', '1'),
	('3b2f0972-9a5b-47cc-a583-eb239c7602a9', '543ebce3-e35b-4796-be51-f6cba44b7e79', '1546dfb4-a7d3-4894-9e4b-695b5bc1a41b'),
	('3d724890-325b-4063-aa52-be248005ccc7', '90376afd-a995-4e93-85b1-d973e496acc0', '3'),
	('4a2930a3-cd74-4519-a2d8-12f9c220bccb', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '2'),
	('4a9c3208-e555-46a9-b331-3f4e75468328', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '10002'),
	('52c98e15-92b7-4c15-bc8d-704b75201da3', '1', '1'),
	('5ba48a4e-e3cd-4684-be43-70703e3bf928', '90376afd-a995-4e93-85b1-d973e496acc0', '3f095cdf-9900-4d78-83b8-86cebe866017'),
	('6897240c-bc8b-4d7d-b158-a9786ee1ed3f', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', 'f99e5ca4-1c3c-4916-91d5-734d4bf3e14c'),
	('6a5500b9-b26e-46e7-ab9b-145307471b1d', '3dcf7daf-451f-4e94-b776-9ba083126436', '3'),
	('6edf1b93-5ba9-45a2-bd35-1dd698187cb3', '3dcf7daf-451f-4e94-b776-9ba083126436', 'eb307676-3c98-47de-8100-a6d95019cd61'),
	('7915ad2c-f6a4-4c48-b09a-cfc060d791ee', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '3'),
	('7a01a7e0-4df3-4a17-82f8-0d3ff1d29396', '90376afd-a995-4e93-85b1-d973e496acc0', '0'),
	('7abe1a77-9424-4984-a4d3-c6e81b611f52', '543ebce3-e35b-4796-be51-f6cba44b7e79', '480eb533-432e-4931-a5bd-74ebaf3a3409'),
	('7c41da26-94df-4d4d-ac1f-fa859066faa1', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '4'),
	('7d6ea615-4458-474b-b940-9fa45cca1e8a', '90376afd-a995-4e93-85b1-d973e496acc0', '2'),
	('82815e3a-004f-4a4d-9d74-738742c64549', '90376afd-a995-4e93-85b1-d973e496acc0', '10003'),
	('82fecea6-03a2-47a4-a784-0f2dd7a29edd', '3dcf7daf-451f-4e94-b776-9ba083126436', '519591a5-8506-4064-aacf-5e562ef2d223'),
	('8757749f-a6f5-4106-b050-249be967f72f', '3dcf7daf-451f-4e94-b776-9ba083126436', 'f99e5ca4-1c3c-4916-91d5-734d4bf3e14c'),
	('891d2743-e3b5-41aa-a84e-e0a67c1cc609', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '10003'),
	('8edb9670-228f-4373-84a5-2c4ca2feeefc', '3dcf7daf-451f-4e94-b776-9ba083126436', '10003'),
	('95088cd7-445d-469e-9691-f81f5142f050', '90376afd-a995-4e93-85b1-d973e496acc0', 'a53f6f95-69cf-4b84-89e8-0bd09af77baf'),
	('a20c2793-caf1-41d9-b674-361a71a1cff0', 'a495e5ae-a238-4928-93c2-ac8ee145cf06', '1'),
	('a6d4f765-a82a-472b-bdbc-56daa23ca079', '3dcf7daf-451f-4e94-b776-9ba083126436', '10002'),
	('a7864a28-06c0-435e-8f0a-9036d3c0cfd6', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '10001'),
	('ab8fe110-d803-464b-9499-4a9c9a1db20a', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '0'),
	('accf17b9-8b9e-4ba0-9dd3-6ce9175986f6', '3dcf7daf-451f-4e94-b776-9ba083126436', '480eb533-432e-4931-a5bd-74ebaf3a3409'),
	('adff5499-5c6c-4f87-87c8-6b4e1f51bac5', 'a495e5ae-a238-4928-93c2-ac8ee145cf06', '0'),
	('bf5e0817-e14a-4b1e-8067-8122b108bdaf', '3dcf7daf-451f-4e94-b776-9ba083126436', 'cbbb11f2-6c65-4c28-bfe2-a86487e73c17'),
	('c37e39ee-17bf-4251-805b-b8f97559380f', '1', '0'),
	('c8cb3355-eb8c-48ae-bddb-64351f21190e', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', 'cbbb11f2-6c65-4c28-bfe2-a86487e73c17'),
	('cd2cd130-4e1c-45a7-8ccd-0c546a8bb7b4', '90376afd-a995-4e93-85b1-d973e496acc0', '4'),
	('d0bd5e89-ce48-4fa0-9276-e0aefa1abbe0', '90376afd-a995-4e93-85b1-d973e496acc0', '7460f4f0-2ed8-4a3c-a111-d558f15ce83d'),
	('d15839b6-26c5-4f24-bfb6-3ea2b24db0ae', '3dcf7daf-451f-4e94-b776-9ba083126436', 'e97476e5-d754-4c48-bbc0-c1df57560eb9'),
	('d903053b-d7d1-492f-9cf4-276d88eb3a95', '3dcf7daf-451f-4e94-b776-9ba083126436', '3de6c487-7c2f-478d-8e4a-070c27659ec5'),
	('d99490a6-bd9a-44a3-b611-68b50ed054af', '4cbff9bc-2ae8-4c39-9aba-1ec1ba9b24c2', '10001'),
	('df49241f-c911-4277-bbef-46884ef569c4', '90376afd-a995-4e93-85b1-d973e496acc0', 'cbbb11f2-6c65-4c28-bfe2-a86487e73c17'),
	('e1b3ae14-d534-4af7-815d-202f3fc0ec75', '90376afd-a995-4e93-85b1-d973e496acc0', 'f99e5ca4-1c3c-4916-91d5-734d4bf3e14c'),
	('eed5f3fa-f400-4b25-a50e-da750889ddc1', '3dcf7daf-451f-4e94-b776-9ba083126436', '4'),
	('f6d8b40c-1335-404a-b59e-93fc4c679dac', '3dcf7daf-451f-4e94-b776-9ba083126436', '10001'),
	('fa1c2e88-6166-4d43-b715-0aee7b348f6b', '7fdbc0ea-cf71-47fe-a3fe-083634084c18', '3f095cdf-9900-4d78-83b8-86cebe866017'),
	('fad5f818-43ed-4b99-b8c9-372788b47482', '6681fe17-1822-4211-8fe8-c807f29d5846', '4'),
	('fe6215a8-13c2-47a6-8dc3-1a5b75f8b49f', '543ebce3-e35b-4796-be51-f6cba44b7e79', '10003');
/*!40000 ALTER TABLE `sys_role_scope` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.sys_user
CREATE TABLE IF NOT EXISTS `sys_user` (
  `id` varchar(36) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT '用户登陆名',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) NOT NULL DEFAULT 'RestToken' COMMENT '盐',
  `normal_name` varchar(50) NOT NULL DEFAULT '用户名',
  `num` bigint(50) DEFAULT NULL COMMENT '用户编号',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `mobile` varchar(100) NOT NULL DEFAULT '' COMMENT '手机号',
  `dp_id` varchar(36) NOT NULL DEFAULT '-1' COMMENT '部门ID',
  `subgroup` varchar(36) DEFAULT NULL,
  `photo` varchar(50) NOT NULL DEFAULT '/profile/photo/default.jpg' COMMENT '头像',
  `idcard` varchar(36) DEFAULT NULL COMMENT '身份证号',
  `sex` varchar(2) NOT NULL DEFAULT '其他' COMMENT '性别',
  `nation` varchar(30) DEFAULT NULL COMMENT '民族',
  `marital_status` varchar(2) DEFAULT NULL COMMENT '婚姻状况',
  `title` varchar(30) NOT NULL DEFAULT '' COMMENT '职称',
  `rank` varchar(10) NOT NULL DEFAULT '' COMMENT '级别',
  `post` varchar(36) NOT NULL DEFAULT '' COMMENT '职位',
  `enable` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态  0：禁用   1：正常',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `extension` varchar(501) DEFAULT '' COMMENT '扩展',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=2048 ROW_FORMAT=DYNAMIC COMMENT='系统用户';

-- Dumping data for table rest-gamma-bdp.sys_user: ~67 rows (approximately)
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` (`id`, `username`, `password`, `salt`, `normal_name`, `num`, `email`, `mobile`, `dp_id`, `subgroup`, `photo`, `idcard`, `sex`, `nation`, `marital_status`, `title`, `rank`, `post`, `enable`, `create_time`, `update_time`, `extension`) VALUES
	('036a1743-e7c8-4adb-82e8-55a00fd5d170', '23123123213', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '123123123', NULL, '', '13575785478', '3', NULL, '', NULL, '男', NULL, NULL, '', '', '', 1, '2019-11-26 13:46:14', '2019-11-26 13:46:14', ''),
	('04291823-668c-4111-8c48-5202e69cebcd', '189', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '李彦宏189', 0, 'string', '13754874513', '3de6c487-7c2f-478d-8e4a-070c27659ec5', '10000010', '20191125/1/zoe.jpeg', '', '男', '', '', '', '', '', 0, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('0bb11ed4-ff9e-4573-af5a-e15bb0b6102b', 'rrrr', 'rrrr', 'rrrr', '李彦宏rrrr', 0, 'rrrr', '13804462181', '1', '10000010', '20191125/1/zoe.jpeg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('1', 'admin', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', 'zoe', 0, '111', '13804462189', '1', '10000010', '20191125/1/zoe.jpeg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('12ac525b-d6c4-4fb2-85ae-75375d0883e5', '188', '32ba21f5cf8b432448044f68c6d1078d4d3c5d6994eec0363ca4db955e4a7ac5', 'FOoiMNza', '李彦宏188', 0, 'string', '1', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('1548ce92-0e1e-4d90-8300-e9227bea957d', '1901112', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '123', NULL, '', '11111111111', 'f99e5ca4-1c3c-4916-91d5-734d4bf3e14c', NULL, '20191126/1/test.jpg', NULL, '其他', NULL, NULL, '', '', '', 0, '2019-11-20 20:29:56', '2019-11-20 20:29:56', '111'),
	('1655339d-4b57-43fb-bc8d-14e3f6225149', '213', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '12', NULL, '', '11111111111', '1', NULL, '/profile/photo/default.jpg', NULL, '其他', NULL, NULL, '', '', '', 1, '2019-11-20 20:37:13', '2019-11-20 20:37:13', '111'),
	('1c5fa525-6bb2-4aa6-9955-308ebac22b86', '1909', 'e7de9edb9a5e6dd6eac79d38f3b74ef1672fd97174ee6ea215d1f350b7a17b55', 'RestToken', '李彦宏1909', 0, 'e', '13804462180', '10003', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 0, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('2038eece-4635-4af8-909d-a8559abb8593', 'sys8', '40e29188df9ca95621d926dfd7caaf82a0ccf9dd08f8c071b79acbe6313463ca', 'CwPrpi7o', '李彦宏sys8', 0, '497491@qq.com', '18888821111', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('222333', '222', '222', '22', '李彦宏222', 0, '222', '222', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 0, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('2977fc07-96af-4aab-b49b-bb9cc3ec6ff8', '00002', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '我是测试2号用户', NULL, '', '13111111112', '1546dfb4-a7d3-4894-9e4b-695b5bc1a41b', NULL, '20191122/1/em050usaymp.jpg', NULL, '女', NULL, NULL, '', '', 'post-info-1', 1, '2019-11-22 18:09:39', '2019-11-22 18:09:39', '我是测试用户2号的备注修改啦'),
	('2f637a13-820e-462b-9556-40a6e0e12dbc', 'ffffeeek', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', 'ef', NULL, '', '13333333333', '10002', NULL, '', NULL, '女', NULL, NULL, '', '', 'post-office-1', 1, '2019-11-29 12:58:38', '2019-11-29 12:58:38', ''),
	('30a4bf2f-3203-4573-b119-03743d2501b4', 'sys11', '97025adccb54fa01fd9a79ac7fa7a29a68fbcc79ccbc71cc8bed66a2ce180fee', 'L9Kwjxs6', '李彦宏sys11', 0, '497491@qq.com', '18888821111', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('343c1ceb-171d-4bfb-86a2-baa5791b1151', 'sys99999', '821bb393e964b0fa26c09b7ffaf1821969f43bcb88bc4d1dc46ea257e204318b', 'UVUwKalQ', '李彦宏sys99999', 0, '497491@qq.com', '18888821111', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('3b55cb42-7c09-4c17-a275-fb175d7496a0', 'ff', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', 'ff', NULL, '', '12222222222', '0', NULL, '20191127/1/timg (4).jpeg', NULL, '男', NULL, NULL, '', '', 'post-office-1', 0, '2019-11-27 18:04:55', '2019-11-27 18:04:55', ''),
	('3eeeae35-3e00-472d-8800-3a6cdf004e57', '00003', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '测试用户3号我就随便起名字了', NULL, '', '13111111111', '1546dfb4-a7d3-4894-9e4b-695b5bc1a41b', NULL, '20191122/1/images.jpg', NULL, '女', NULL, NULL, '', '', 'post-office-1', 1, '2019-11-22 18:13:23', '2019-11-22 18:13:23', '我是测试用户三号的备注我想看看能不能超过五百个字我是测试用户三号的备注我想看看能不能超过五百个字我是测试用户三号的备注我想看看能不能超过五百个字我是测试用户三号的备注我想看看能不能超过五百个字我是测试用户三号的备注我想看看能不能超过五百个字我是测试用户三号的备注我想看看能不能超过五百个字我是测试用户三号的备注我想看看能不能超过五百个字我是测试用户三号的备注我想看看能不能超过五百个字'),
	('40b4478c-05c7-48ce-93c9-3e9d6d138561', 'string', '097f60f4c30c03a9ed2484277405e6b0fb072de5fe61b62c3d92a524e962d095', 'RestToken', '李彦宏string', 0, 'string', 'string', 'string', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('43409473-39bc-4a29-8c1c-d0ee91f66e79', 'syy666665', 'e45a65d64c841a8e3a8929c414f6a9f335f70f94c82aada3d6ac4af7ef12af73', 'Wvs1nv9o', '李彦宏syy666665', 0, '497491@qq.com', '18888821111', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('444', '333', '444', '444', '李彦宏333', 0, '444', '444', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('4d242461-8dd6-4099-a972-3a49add30c11', 'sys3', '1c9c191aa4f5873db0d58fad1c07449c51f5f99661c91a66ad53aeed8132c021', 'W4iqc2Rj', '李彦宏sys3', 0, '497491@qq.com', '18888821111', '2', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('51101260-54a3-4e2b-8afd-ee660de8d200', 'sys7', 'ea9cde1574ec02f41e0188e461d28a0af03ca7e35171aba7e1e45dda77f55e2f', 'h8Sh2i8N', '李彦宏sys7', 0, '497491@qq.com', '18888821111', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('52a1b048-1d1c-4461-b390-142d09646b03', 'gavin22', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '黑客', 1, 'gavinhacker@rexen.com.cn', '13000000000', '1', 'doctor-group', '/xxx/xxx.jpg', '220909099990000', '男', '汉族', '未知', '高级主任', '1', 'post-office-1', 1, '2019-11-20 11:23:21', '2019-11-20 11:23:21', 'string'),
	('555', '444', '555', '555', '李彦宏444', 0, '555', '555', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('5655c967-3c80-4295-973d-3d37b600c422', '190112', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '', NULL, '', '111111111111', '2', NULL, '/profile/photo/default.jpg', NULL, '其他', NULL, NULL, '', '', '', 1, '2019-11-20 20:28:27', '2019-11-20 20:28:27', '111'),
	('57c529f4-79a3-4443-a85e-aface4b535c3', 'gg', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', 'gg', NULL, '', '12222222222', '0', NULL, '20191127/1/timg (4).jpeg', NULL, '男', NULL, NULL, '', '', 'post-office-1', 1, '2019-11-27 17:58:48', '2019-11-27 17:58:48', 'fff'),
	('585bc9ff-ddb6-458a-8771-0638690202c5', '1', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '', NULL, '', '11111111111', '', NULL, '/profile/photo/default.jpg', NULL, '其他', NULL, NULL, '', '', '', 1, '2019-11-20 20:30:40', '2019-11-20 20:30:40', '111'),
	('59a9d204-04cb-49ca-b007-8e75f901a9a0', '123', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '123', NULL, '', '17804304082', '3', NULL, '', NULL, '男', NULL, NULL, '', '', '', 1, '2019-11-26 11:17:37', '2019-11-26 11:17:37', ''),
	('5e5a436d-9dd5-40eb-af54-4c245bb27672', '2131', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '12', NULL, '', '11111111111', '1', NULL, '/profile/photo/default.jpg', NULL, '其他', NULL, NULL, '', '', '', 1, '2019-11-20 21:21:06', '2019-11-20 21:21:06', '111'),
	('60542c22-2427-4e2c-8608-117388b30e4b', '1902', 'e7de9edb9a5e6dd6eac79d38f3b74ef1672fd97174ee6ea215d1f350b7a17b55', 'RestToken', '李彦宏1902', 0, '4', '4', '4', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 0, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('6196b3f8-a727-4230-8dc1-771221d2d578', 'syy55555', 'e7de9edb9a5e6dd6eac79d38f3b74ef1672fd97174ee6ea215d1f350b7a17b55', 'RestToken', '李彦宏syy55555', 0, '497491@qq.com', '18888821111', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('666', '555', 'e7de9edb9a5e6dd6eac79d38f3b74ef1672fd97174ee6ea215d1f350b7a17b55', '666', '李彦宏555', 0, '666', '666', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('68b78ec6-b76c-42fe-89fa-b8b63402a97f', 'gavin9', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', 'gavin9', NULL, '', '12222222222', '3', NULL, '20191127/1/bdp.png', NULL, '男', NULL, NULL, '', '', 'post-office-1', 1, '2019-11-27 16:34:23', '2019-11-27 16:34:23', ''),
	('69973570-1fb6-4f53-990d-d36d86f3c7fb', '2', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '12', NULL, '', '11111111111', '1', NULL, '/profile/photo/default.jpg', NULL, '其他', NULL, NULL, '', '', '', 1, '2019-11-20 20:32:38', '2019-11-20 20:32:38', '111'),
	('6d188cfb-a819-4774-8cfa-fb5bbd277b2f', '1910', 'e7de9edb9a5e6dd6eac79d38f3b74ef1672fd97174ee6ea215d1f350b7a17b55', 'RestToken', '李彦宏1910', 0, 'e', 'm', '4', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 0, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('6dea5be1-376e-486b-aca2-6f25980ab17f', 'sys9', 'affe091899a54b7560c1625d757b86afd52f63881238a30678bd208dd8ea3a59', 'C65xxy6B', '李彦宏sys9', 0, '497491@qq.com', '18888821111', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('708c9bb4-0b3b-4da4-ba81-f59a5b236b49', 'sys333332', '9043e1a25c6f6694ed122b8a6b4d3a68b492d63ef0a1bf3683308bdb91b9c2c5', 'desrQcpY', '李彦宏sys333332', 0, '497491@qq.com', '18888821111', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('75f0a136-fb57-49d7-ba47-40e0fd3ece96', '19011112', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '', NULL, '', '11111111111', '21', NULL, '/profile/photo/default.jpg', NULL, '其他', NULL, NULL, '', '', '', 1, '2019-11-20 20:30:11', '2019-11-20 20:30:11', '111'),
	('790d6687-0483-4f57-8471-cc927cdf5215', 'hack', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', 'fff', NULL, '', '13333331111', '7460f4f0-2ed8-4a3c-a111-d558f15ce83d', NULL, '20191122/1/zoe.jpeg', NULL, '男', NULL, NULL, '', '', 'post-office-1', 0, '2019-11-22 10:19:42', '2019-11-22 10:19:42', ''),
	('7de33f34-29b6-4c0f-a390-0f9091dca030', 'fef', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', 'Gav', NULL, '', '13333333333', '3', NULL, '20191121/1/zoe.jpeg', NULL, '女', NULL, NULL, '', '', 'post-office-1', 1, '2019-11-21 18:40:25', '2019-11-21 18:40:25', 'ff'),
	('7edd783a-0e24-4267-98f8-1c05cd047599', 'ffff', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', 'ffff', NULL, '', '12222222222', '4', NULL, '', NULL, '男', NULL, NULL, '', '', 'post-office-1', 1, '2019-11-28 15:58:58', '2019-11-28 15:58:58', ''),
	('7fa3e140-73fc-407b-8297-d981afcd3c6f', '23', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '12', NULL, '', '11111111111', '1', NULL, '/profile/photo/default.jpg', NULL, '其他', NULL, NULL, '', '', '', 1, '2019-11-20 20:36:42', '2019-11-20 20:36:42', '111'),
	('88678240-acb9-4950-89d9-67f7ce0c2b0d', 'sys6', '3e891277cce06fd725ea19bd5521b7085b34ae63d32aada7e128ea5a0bf27954', 'yiygisQX', '李彦宏sys6', 0, '497491@qq.com', '18888821111', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('8c2d8157-aded-4841-8639-1f9181d2b4d3', '1907', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '李彦宏1907', 0, 'e', '13804462189', '4', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 0, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('8ccb5bba-f045-4033-aff5-d61718fa28d6', 'gavin8', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', 'gavin8', NULL, '', '13333333333', '3', NULL, '20191125/1/zoe.jpeg', NULL, '男', NULL, NULL, '', '', 'post-office-1', 1, '2019-11-25 15:59:02', '2019-11-25 15:59:02', 'ff'),
	('8da5e85d-48ed-4745-9c20-4f14efeaed09', 'sys1', '438f02d5aed1ddead045eadfc3450d65639efa4348ff70ae79225ac91af0f924', 'TpiQzGwm', '李彦宏sys1', 0, '497491@qq.com', '18888821111', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('95e7313c-a04f-49cb-850c-64d8f6258881', 'sys22222', '14cddf4ecf8815411f49b09359934d2eef0db987aa6c11300b142cc50154050b', 'SiUN5jqN', '李彦宏sys22222', 0, '497491@qq.com', '18888821111', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('96be23ff-a387-48a3-bbce-ab2271748a1a', 'gavinhacker', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '黑客', 1, 'gavinhacker@rexen.com.cn', '13000000000', '1', 'doctor-group', '/profile/photo/default.jpg', '220909099990000', '男女', '汉族', '未知', '高级主任', '1', 'post-office-1', 1, '2019-11-16 11:32:01', '2019-11-16 11:32:01', 'string'),
	('9c596b82-6177-4514-91ec-c45be42a9f05', '11111f', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '11111', NULL, '', '13578548745', '0', NULL, '', NULL, '男', NULL, NULL, '', '', 'post-office-1', 1, '2019-11-21 15:56:47', '2019-11-21 15:56:47', ''),
	('9f56e244-7199-406e-80a5-190f23022277', 'x', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', 'x', NULL, '', '12222222222', '0', NULL, '20191127/1/timg (4).jpeg', NULL, '男', NULL, NULL, '', '', 'post-office-1', 1, '2019-11-27 18:32:32', '2019-11-27 18:32:32', ''),
	('a761ad30-5f72-4b56-9402-ff36f0970544', '1906', 'e7de9edb9a5e6dd6eac79d38f3b74ef1672fd97174ee6ea215d1f350b7a17b55', 'RestToken', '李彦宏1906', 0, 'e', 'm', '4', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 0, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('ab186c36-81bc-4e30-8864-8968517b970f', '00001', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '01测试验证', NULL, '', '13100000001', '1546dfb4-a7d3-4894-9e4b-695b5bc1a41b', NULL, '20191122/1/20180221223815_xkkyq.jpg', NULL, '男', NULL, NULL, '', '', 'post-office-1', 1, '2019-11-22 09:38:32', '2019-11-22 09:38:32', '我是测试数据00001号'),
	('aef62ec9-3584-4ef4-b89c-99b444dcad06', 'soni', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', 'soni', NULL, '', '13578277857', '0', NULL, '', NULL, '男', NULL, NULL, '', '', 'post-office-1', 1, '2019-11-21 14:48:38', '2019-11-21 14:48:38', ''),
	('b8994aa7-b34f-4584-9a81-04a3bcea77fb', 'sys10', '9ae4a020c3de695ad222459f2f00c485be77e6ebef87883705973cc4f56f6db9', 'WynBDo7M', '李彦宏sys10', 0, '497491@qq.com', '18888821111', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('c556b388-354e-42ca-9c92-34ff9a149c50', 'ffff2', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', 'ffff', NULL, '', '13333333333', '0', NULL, '', NULL, '男', NULL, NULL, '', '', 'post-office-1', 1, '2019-11-29 10:09:12', '2019-11-29 10:09:12', 'fff'),
	('d8f6a847-bcad-4bd7-aa1b-c475fa311991', '11111', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '11111', NULL, '', '13578548745', '0', NULL, '', NULL, '男', NULL, NULL, '', '', 'post-office-1', 1, '2019-11-21 15:40:10', '2019-11-21 15:40:10', ''),
	('d9901871-f5d8-469c-8afc-3549c2f91613', '1905', 'e7de9edb9a5e6dd6eac79d38f3b74ef1672fd97174ee6ea215d1f350b7a17b55', 'RestToken', '李彦宏1905', 0, '4', '4', '4', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 0, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('e19078ef-b6c3-426f-81c1-2328aac40d3c', 'gavinhacker-2', 'dbd3a8454ede9510e0873d32f0f8e0f699aebe97ce65a4327d0c3d1b23f7569a', 'RestToken', 'BENCHI_01', 1001, 'gavinhacker123@rexen.com.cn', '13800000001', '1', '1', '/xxx/y.jpg', '2201000000000X', '男', '汉', '单身', '中级docter', '1级', 'post-office-1', 1, '2019-11-16 11:47:03', '2019-11-16 11:47:03', '111'),
	('e2524324-70fd-4f6c-b502-81b29b311732', '19012', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '', NULL, '', '11111111111', '2', NULL, '/profile/photo/default.jpg', NULL, '其他', NULL, NULL, '', '', '', 1, '2019-11-20 20:28:12', '2019-11-20 20:28:12', '111'),
	('e4e7bee4-ecdb-4458-a926-7d95ffdeed7b', 'sys44444', '943d4a76da91b7d1a1470bb480e64425ebf960a7e0e223041bb205fcf8dfe41f', 'aBoWDOyo', '李彦宏sys44444', 0, '497491@qq.com', '18888821111', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('e5f9ac6b-9b7c-4de9-ad6a-f40df25559bc', 'fff', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', 'fff', NULL, '', '12333333333', '0', NULL, '', NULL, '男', NULL, NULL, '', '', 'post-office-1', 1, '2019-11-28 10:00:13', '2019-11-28 10:00:13', '11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111'),
	('e7a52141-4a4c-423b-94c2-51fbf79f79d6', 'g', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', 'g', NULL, '', '11111111111', '4', NULL, '20191127/1/timg (4).jpeg', NULL, '男', NULL, NULL, '', '', 'post-office-1', 1, '2019-11-27 17:58:05', '2019-11-27 17:58:05', ''),
	('e7ec00a3-c69d-4666-8c6b-a6c12cc825f3', '190', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '李彦宏三', 0, '', '11111111111', '519591a5-8506-4064-aacf-5e562ef2d223', '10000010', '20191205/1/Desert.jpg', '', '女', '', '', '', '', '', 1, '2019-11-11 07:33:29', '2019-11-11 07:33:29', '111'),
	('ebe49f90-26e1-438c-a208-9bd48c70ffbe', '1911', 'e7de9edb9a5e6dd6eac79d38f3b74ef1672fd97174ee6ea215d1f350b7a17b55', 'RestToken', '李彦宏1911', 0, '1', '13333333222', '3', '10000010', '20191122/1/zoe.jpeg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('ef9e90de-fbcd-4cd9-9f8a-c267b7aa0f50', 'gavinhacker-1', '95caaf986421a26b02c6b3e3af11beb4a1d6997697a175aa2ce296a9ef8347b7', 'RestToken', '黑客', 1, 'gavinhacker@rexen.com.cn', '13000000000', '1', 'doctor-group', '/xxx/xxx.jpg', '220909099990000', '男', '汉族', '未知', '高级主任', '1', 'post-office-1', 1, '2019-11-20 11:22:25', '2019-11-20 11:22:25', 'string'),
	('f6725a15-9697-4493-98bf-6c9c4469271d', '1903', 'e7de9edb9a5e6dd6eac79d38f3b74ef1672fd97174ee6ea215d1f350b7a17b55', 'RestToken', '李彦宏1903', 0, '4', '4', '4', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 0, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('sadf', '666', '123456', '213121', '李彦宏666', 0, '497966@qq.com', '18686460379', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', ''),
	('sadf1', '777', '123456', '213121', '李彦宏777', 0, '497966@qq.com', '18686460379', '1', '10000010', '/profile/photo/default.jpg', '', '女', '', '', '', '', '', 1, '2019-04-15 13:22:12', '2019-04-15 13:22:12', '');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.sys_user_role
CREATE TABLE IF NOT EXISTS `sys_user_role` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL COMMENT '用户ID',
  `role_id` varchar(36) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户与角色对应关系';

-- Dumping data for table rest-gamma-bdp.sys_user_role: ~21 rows (approximately)
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` (`id`, `user_id`, `role_id`) VALUES
	('01014948-fa36-4962-a186-a8ffa916f26d', 'ab186c36-81bc-4e30-8864-8968517b970f', '543ebce3-e35b-4796-be51-f6cba44b7e79'),
	('01e9fb40-7c06-4d3f-b253-28344fcd0322', '7de33f34-29b6-4c0f-a390-0f9091dca030', '6'),
	('19877938-382c-4fa3-b40a-f2a21fccf419', '6d188cfb-a819-4774-8cfa-fb5bbd277b2f', '4'),
	('1faa5a38-4838-4e29-8e0d-4e091691008e', '790d6687-0483-4f57-8471-cc927cdf5215', 'f19ef746-b4f7-4f12-9bba-2e79625952ee'),
	('35feb303-dfa8-4e8e-8dfd-335e76b33b80', 'e7a52141-4a4c-423b-94c2-51fbf79f79d6', '5'),
	('3ce208ec-3723-4ede-964e-a7855b29dea8', '57c529f4-79a3-4443-a85e-aface4b535c3', '3dcf7daf-451f-4e94-b776-9ba083126436'),
	('42106121-9967-4093-9cc8-7a2ad65bb2d4', '3eeeae35-3e00-472d-8800-3a6cdf004e57', '543ebce3-e35b-4796-be51-f6cba44b7e79'),
	('58daf2fe-47af-4fdd-b57e-d1ac8887c66a', '8ccb5bba-f045-4033-aff5-d61718fa28d6', '3dcf7daf-451f-4e94-b776-9ba083126436'),
	('64c18d70-1360-4570-9e36-c7d344cd224a', 'c556b388-354e-42ca-9c92-34ff9a149c50', '4cbff9bc-2ae8-4c39-9aba-1ec1ba9b24c2'),
	('65989d23-b1e5-4949-9db1-f864b9ea32c2', '3b55cb42-7c09-4c17-a275-fb175d7496a0', '1'),
	('67e957d8-7a64-4998-be62-adda1324a997', '0bb11ed4-ff9e-4573-af5a-e15bb0b6102b', '543ebce3-e35b-4796-be51-f6cba44b7e79'),
	('70c54a09-eca7-4155-9410-1a92ceacddb6', '3eeeae35-3e00-472d-8800-3a6cdf004e57', '6'),
	('742e7f4b-0bb3-4b8c-8227-9ae989288fc2', '9c596b82-6177-4514-91ec-c45be42a9f05', '543ebce3-e35b-4796-be51-f6cba44b7e79'),
	('74d8800d-2f84-4c6b-ba84-b4cf127a41ed', 'ebe49f90-26e1-438c-a208-9bd48c70ffbe', '3'),
	('7fd438a3-cce4-4a74-b488-86d60ae5ca8a', '2f637a13-820e-462b-9556-40a6e0e12dbc', '3dcf7daf-451f-4e94-b776-9ba083126436'),
	('8c24c80c-e983-48c8-98e8-34c9c6dbdbd8', 'ab186c36-81bc-4e30-8864-8968517b970f', '5'),
	('8ca3f2ef-c605-4e70-a5a4-09efea9fd06c', '2977fc07-96af-4aab-b49b-bb9cc3ec6ff8', '543ebce3-e35b-4796-be51-f6cba44b7e79'),
	('cf83431f-4a07-4f64-8ef1-75c325df2a40', '9f56e244-7199-406e-80a5-190f23022277', '1'),
	('df784354-aeb4-475b-b742-c6e8ed3d4f34', '40b4478c-05c7-48ce-93c9-3e9d6d138561', 'string'),
	('eb7b042e-3ce3-45c6-8862-2a8065b9d3c9', 'e19078ef-b6c3-426f-81c1-2328aac40d3c', '3'),
	('f1def63c-220c-40d3-96d8-06ab49c370d3', '7edd783a-0e24-4267-98f8-1c05cd047599', '3dcf7daf-451f-4e94-b776-9ba083126436');
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.tool_generator_field_model
CREATE TABLE IF NOT EXISTS `tool_generator_field_model` (
  `id` varchar(36) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `field_comment` varchar(50) NOT NULL,
  `physics_type` varchar(50) NOT NULL,
  `label_name` varchar(50) NOT NULL,
  `java_type` varchar(50) NOT NULL,
  `java_field` varchar(50) NOT NULL,
  `primary_key` smallint(1) NOT NULL,
  `form_insert` smallint(1) NOT NULL,
  `form_update` smallint(1) NOT NULL,
  `form_list` smallint(1) NOT NULL,
  `form_query_param` smallint(1) NOT NULL,
  `form_query_mode` varchar(15) NOT NULL,
  `form_required` smallint(1) NOT NULL,
  `form_type` varchar(50) NOT NULL,
  `dict_type` varchar(50) NOT NULL,
  `verify_type` varchar(50) DEFAULT NULL,
  `min_length_required` smallint(5) DEFAULT NULL,
  `max_length_required` smallint(5) DEFAULT NULL,
  `min_value_required` int(20) DEFAULT NULL,
  `max_value_required` int(20) DEFAULT NULL,
  `table_model_id` varchar(36) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table rest-gamma-bdp.tool_generator_field_model: ~80 rows (approximately)
/*!40000 ALTER TABLE `tool_generator_field_model` DISABLE KEYS */;
INSERT INTO `tool_generator_field_model` (`id`, `field_name`, `field_comment`, `physics_type`, `label_name`, `java_type`, `java_field`, `primary_key`, `form_insert`, `form_update`, `form_list`, `form_query_param`, `form_query_mode`, `form_required`, `form_type`, `dict_type`, `verify_type`, `min_length_required`, `max_length_required`, `min_value_required`, `max_value_required`, `table_model_id`, `sort`) VALUES
	('004bd397-e960-489f-b5f6-16a7b41ccd6e', 'dp_id', '部门ID', 'varchar(36)', '部门ID', 'String', 'dpId', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 36, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 9),
	('006ca2f4-1fa1-43f8-b192-26c89a3386ef', 'data_max_float', '', 'float(21,2)', '', 'Long', 'dataMaxFloat', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 23, NULL, NULL, 'a5cbe898-4651-4f3e-8ce7-60442363fc91', 16),
	('00c205ba-d59d-4b94-afd2-783c349dfb5d', 'update_time', '', 'timestamp', '', 'Date', 'updateTime', 0, 1, 0, 0, 0, 'equals', 1, 'datePicker', '', NULL, NULL, 0, NULL, NULL, '7389e190-d576-460f-a39b-17e1914257e1', 10),
	('08898bef-975c-490e-bbce-b83730b00ac8', 'id', '主键', 'varchar(50)', '主键', 'String', 'id', 1, 1, 0, 0, 0, 'equals', 0, 'input', '', NULL, NULL, 50, NULL, NULL, '0d2cd11d-03dc-403a-8261-90fd994fe50a', 1),
	('0e52108e-d1e4-45af-b40a-1877df17d09b', 'update_by', '更新者', 'varchar(255)', '更新者', 'String', 'updateBy', 0, 1, 0, 0, 0, 'equals', 1, 'textarea', '', NULL, NULL, 255, NULL, NULL, 'a5cbe898-4651-4f3e-8ce7-60442363fc91', 6),
	('131da7dd-2082-4597-aa85-829d54c0de95', 'username', '用户登陆名', 'varchar(50)', '用户登陆名', 'String', 'username', 0, 1, 1, 1, 1, 'like', 1, 'input', '', NULL, NULL, 50, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 2),
	('13884f8e-7d3e-4b61-bc75-481c25fba69b', 'idcard', '身份证号', 'varchar(36)', '身份证号', 'String', 'idcard', 0, 1, 1, 1, 1, 'equals', 0, 'input', '', NULL, NULL, 36, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 12),
	('140e8d46-a523-4d9d-b03d-db380ddb2a26', 'id', '', 'varchar(36)', '', 'String', 'id', 1, 1, 0, 0, 0, 'equals', 0, 'input', '', NULL, NULL, 36, NULL, NULL, '94039037-b809-4ddf-a031-f57f653a5858', 1),
	('149c09b6-15ea-442f-a191-c81e3bd1707d', 'name', '机构名称', 'varchar(50)', '机构名称', 'String', 'name', 0, 1, 1, 1, 1, 'like', 1, 'input', '', NULL, NULL, 50, NULL, NULL, '7389e190-d576-460f-a39b-17e1914257e1', 2),
	('15b66e74-1a37-421f-90ab-a5826d54331e', 'enable', '', 'varchar(1)', '', 'String', 'enable', 0, 1, 1, 1, 1, 'equals', 1, 'switch', '', NULL, NULL, 1, NULL, NULL, '919fa072-7405-497b-8e51-0343cb4de08d', 3),
	('177428c5-f44a-4ab7-a035-2fccda31d088', 'response_param', '响应结果', 'text', '响应结果', 'String', 'responseParam', 0, 1, 1, 1, 1, 'equals', 0, 'input', '', NULL, NULL, 0, NULL, NULL, '0d2cd11d-03dc-403a-8261-90fd994fe50a', 4),
	('199214bd-c6d6-4d2d-bfb4-450bc49b3d1c', 'extension', '', 'varchar(50)', '', 'String', 'extension', 0, 1, 1, 1, 1, 'like', 1, 'input', '', NULL, NULL, 50, NULL, NULL, '919fa072-7405-497b-8e51-0343cb4de08d', 6),
	('1d4a9b26-8b1c-4f4a-b124-cd178430958a', 'create_time', '', 'timestamp', '', 'Date', 'createTime', 0, 1, 0, 0, 0, 'equals', 1, 'datePicker', '', NULL, NULL, 0, NULL, NULL, '6d2b9222-f796-4b77-8ea7-6d9470c1e0dd', 6),
	('203fde83-ebd2-4161-8fcf-6839928be38b', 'data_max_integer', '', 'int(21)', '', 'Long', 'dataMaxInteger', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 21, NULL, NULL, 'a5cbe898-4651-4f3e-8ce7-60442363fc91', 11),
	('2458af4a-f6cb-470f-a1cf-39499f496646', 'marital_status', '婚姻状况', 'varchar(2)', '婚姻状况', 'String', 'maritalStatus', 0, 1, 1, 1, 1, 'equals', 0, 'input', '', NULL, NULL, 2, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 15),
	('337d2fd6-1379-4684-9850-f326fa1a8e0b', 'extension', '', 'varchar(501)', '', 'String', 'extension', 0, 1, 1, 1, 1, 'like', 1, 'textarea', '', NULL, NULL, 501, NULL, NULL, '7389e190-d576-460f-a39b-17e1914257e1', 11),
	('3493b2c8-98ec-42de-85fd-939a0d04e972', 'data_max_deimal', '', 'decimal(12,1)', '', 'Long', 'dataMaxDeimal', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 13, NULL, NULL, 'a5cbe898-4651-4f3e-8ce7-60442363fc91', 14),
	('3575d740-b023-4319-bb21-4364c167f1ee', 'content', '', 'varchar(100)', '', 'String', 'content', 0, 1, 1, 1, 1, 'equals', 1, 'textarea', '', NULL, NULL, 100, NULL, NULL, '919fa072-7405-497b-8e51-0343cb4de08d', 2),
	('3ae1538b-9bb3-4774-a695-294625a7a4d1', 'title', '职称', 'varchar(30)', '职称', 'String', 'title', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 30, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 16),
	('3bc7b2ba-74a5-45f4-8801-a686d34d6473', 'section_id', '', 'varchar(36)', '', 'String', 'sectionId', 0, 1, 1, 1, 1, 'equals', 0, 'input', '', NULL, NULL, 36, NULL, NULL, '7389e190-d576-460f-a39b-17e1914257e1', 5),
	('3effacc8-ed19-4107-ac2f-0e65188ca43f', 'enable', '', 'smallint(1)', '', 'Integer', 'enable', 0, 1, 1, 1, 1, 'equals', 1, 'switch', '', NULL, NULL, 1, NULL, NULL, '7389e190-d576-460f-a39b-17e1914257e1', 6),
	('4020d61e-de29-4c20-8821-05d9647876f4', 'update_time', '更新时间', 'datetime', '更新时间', 'Date', 'updateTime', 0, 1, 0, 0, 0, 'equals', 1, 'datePicker', '', NULL, NULL, 0, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 21),
	('4102a40e-5b0f-41a5-a195-5e909f07abea', 'parent_id', '上级机构ID', 'varchar(36)', '上级机构ID', 'String', 'parentId', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 36, NULL, NULL, '7389e190-d576-460f-a39b-17e1914257e1', 3),
	('436302e1-587a-4541-8915-16c0116ef134', 'enable', '状态  0：禁用   1：正常', 'tinyint(4)', '状态  0：禁用   1：正常', 'Integer', 'enable', 0, 1, 1, 1, 1, 'equals', 1, 'switch', '', NULL, NULL, 4, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 19),
	('4b3914a3-dd0f-4e71-a145-30fb653810fe', 'keywords', '', 'varchar(255)', '', 'String', 'keywords', 0, 1, 1, 1, 1, 'equals', 0, 'textarea', '', NULL, NULL, 255, NULL, NULL, '6d2b9222-f796-4b77-8ea7-6d9470c1e0dd', 3),
	('4c8a81c2-df0f-4e0a-9827-99218e6e5aae', 'id', '22', 'varchar(50)', '3534', 'String', 'id', 1, 1, 0, 0, 0, 'equals', 0, 'input', '', NULL, 0, 50, 0, 0, 'd949c2b0-716f-4a3e-bb6f-16ba83766f1a', 1),
	('4cd1aa78-feef-4d15-8fb6-7c10b262cd5a', 'log_id', '日志主键', 'varchar(50)', '日志主键', 'String', 'logId', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 50, NULL, NULL, '0d2cd11d-03dc-403a-8261-90fd994fe50a', 2),
	('4e2ba41a-778f-4350-9572-971837ae2a3d', 'parent_id', '父节级字典ID', 'varchar(50)', '父节级字典ID', 'String', 'parentId', 0, 1, 1, 1, 1, 'equals', 0, 'input', '', NULL, 0, 50, 0, 0, 'd949c2b0-716f-4a3e-bb6f-16ba83766f1a', 4),
	('4f97009c-42d5-4f12-a945-7e8171fb9ff4', 'description', '描述', 'varchar(200)', '描述', 'String', 'description', 0, 1, 1, 1, 1, 'equals', 0, 'textarea', '', NULL, 0, 200, 0, 0, 'd949c2b0-716f-4a3e-bb6f-16ba83766f1a', 3),
	('51b440a6-6fb8-4131-ac37-e8e1dca5b4f0', 'mobile', '手机号', 'varchar(100)', '手机号', 'String', 'mobile', 0, 1, 1, 1, 1, 'like', 1, 'textarea', '', NULL, NULL, 100, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 8),
	('533b4cd8-e117-4bf6-aaea-f9f5e64a5226', 'rank', '级别', 'varchar(10)', '级别', 'String', 'rank', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 10, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 17),
	('545ebe6c-e8d6-460b-ac9d-3c917c59ca4e', 'update_time', '更新时间', 'timestamp', '更新时间', 'Date', 'updateTime', 0, 1, 0, 0, 0, 'equals', 1, 'datePicker', '', NULL, NULL, 0, NULL, NULL, 'a5cbe898-4651-4f3e-8ce7-60442363fc91', 5),
	('56c598f1-e0c9-469f-ae6c-a99789d560e9', 'dp_id', '', 'varchar(36)', '', 'String', 'dpId', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 36, NULL, NULL, '0d2cd11d-03dc-403a-8261-90fd994fe50a', 5),
	('56e30336-a41c-459b-9b8b-99807cca5d2e', 'email', '邮箱', 'varchar(100)', '邮箱', 'String', 'email', 0, 1, 1, 1, 1, 'equals', 1, 'textarea', '', NULL, NULL, 100, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 7),
	('571b135e-867e-49c5-b7ec-a14719814b34', 'enable', '', 'smallint(1)', '', 'Integer', 'enable', 0, 1, 1, 1, 1, 'equals', 1, 'switch', '', NULL, NULL, 1, NULL, NULL, 'a5cbe898-4651-4f3e-8ce7-60442363fc91', 7),
	('5767e112-d792-4519-9629-8c280c797dbf', 'sex', '性别', 'varchar(2)', '性别', 'String', 'sex', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 2, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 13),
	('579b8039-cb05-48d1-8c00-b35e48d7581c', 'request_param', '请求参数', 'text', '请求参数', 'String', 'requestParam', 0, 1, 1, 1, 1, 'equals', 0, 'input', '', NULL, NULL, 0, NULL, NULL, '0d2cd11d-03dc-403a-8261-90fd994fe50a', 3),
	('57b8b7b3-9b0c-42f3-a7cb-66a32f8f33d8', 'nation', '民族', 'varchar(30)', '民族', 'String', 'nation', 0, 1, 1, 1, 1, 'equals', 0, 'input', '', NULL, NULL, 30, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 14),
	('5c3dcfe2-44ef-4645-8f6d-1279de50003d', 'password', '密码', 'varchar(100)', '密码', 'String', 'password', 0, 1, 1, 1, 1, 'equals', 1, 'textarea', '', NULL, NULL, 100, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 3),
	('6058871e-c1c4-4d7b-9f14-984773bde44f', 'extension', '扩展', 'varchar(501)', '扩展', 'String', 'extension', 0, 1, 1, 1, 1, 'like', 0, 'textarea', '', NULL, NULL, 501, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 22),
	('611c4c6d-6981-4b71-9a45-a9737b2012c2', 'normal_name', '', 'varchar(50)', '', 'String', 'normalName', 0, 1, 1, 1, 1, 'like', 1, 'input', '', NULL, NULL, 50, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 5),
	('64cdf056-7721-4d9b-b7dc-64b63c7dc04f', 'create_by', '创建者', 'varchar(255)', '创建者', 'String', 'createBy', 0, 1, 0, 0, 0, 'equals', 1, 'textarea', '', NULL, NULL, 255, NULL, NULL, 'a5cbe898-4651-4f3e-8ce7-60442363fc91', 4),
	('68370ebb-e997-443b-a649-24e959ec1185', 'update_time', '', 'timestamp', '', 'Date', 'updateTime', 0, 1, 0, 0, 0, 'equals', 0, 'datePicker', '', NULL, NULL, 0, NULL, NULL, '919fa072-7405-497b-8e51-0343cb4de08d', 5),
	('684e6dff-9194-4692-b09a-878852598db8', 'photo', '头像', 'varchar(50)', '头像', 'String', 'photo', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 50, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 11),
	('6a449233-1946-4722-a2d6-9d601d1f51c0', 'create_time', '', 'timestamp', '', 'Date', 'createTime', 0, 1, 0, 0, 0, 'equals', 0, 'datePicker', '', NULL, NULL, 0, NULL, NULL, '919fa072-7405-497b-8e51-0343cb4de08d', 4),
	('6ad357f8-9e11-47c9-9d4e-7a3e3147a44a', 'subgroup', '', 'varchar(36)', '', 'String', 'subgroup', 0, 1, 1, 1, 1, 'equals', 0, 'input', '', NULL, NULL, 36, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 10),
	('6d3fee76-9a79-48e0-820e-1c1907438054', 'create_time', '创建时间', 'datetime', '创建时间', 'Date', 'createTime', 0, 1, 0, 0, 0, 'equals', 1, 'datePicker', '', NULL, NULL, 0, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 20),
	('6e019fcd-bee4-48fc-82ba-2c09dbc57bfe', 'update_by', '', 'varchar(255)', '', 'String', 'updateBy', 0, 1, 0, 0, 0, 'equals', 1, 'textarea', '', NULL, NULL, 255, NULL, NULL, '6d2b9222-f796-4b77-8ea7-6d9470c1e0dd', 9),
	('6f0fe7b9-6b55-4383-a9dd-95a5f4e4d268', 'data_length', '', 'double(11,0)', '', 'Long', 'dataLength', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 11, NULL, NULL, 'a5cbe898-4651-4f3e-8ce7-60442363fc91', 9),
	('70c47415-8a75-4dc6-a1dd-21573e198fd9', 'update_time', '', 'timestamp', '', 'Date', 'updateTime', 0, 1, 0, 0, 0, 'equals', 1, 'datePicker', '', NULL, NULL, 0, NULL, NULL, '6d2b9222-f796-4b77-8ea7-6d9470c1e0dd', 7),
	('7256b7b6-e5df-47d0-8f08-786ef357411c', 'data_max_bitv', '', 'bit(3)', '', 'String', 'dataMaxBitv', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 3, NULL, NULL, 'a5cbe898-4651-4f3e-8ce7-60442363fc91', 17),
	('76a1193c-db4f-4666-9c94-72d4c5d155f1', 'id', '', 'varchar(255)', '', 'String', 'id', 1, 1, 0, 0, 0, 'equals', 0, 'textarea', '', NULL, NULL, 255, NULL, NULL, '6d2b9222-f796-4b77-8ea7-6d9470c1e0dd', 1),
	('773aa4ce-9023-4b39-b762-dbf1d91c54e7', 'data_max', '', 'int(11)', '', 'Integer', 'dataMax', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 11, NULL, NULL, 'a5cbe898-4651-4f3e-8ce7-60442363fc91', 10),
	('826463e4-9c6a-46e7-975a-0d925a1abc88', 'flag', '科室标识', 'varchar(20)', '科室标识', 'String', 'flag', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 20, NULL, NULL, '7389e190-d576-460f-a39b-17e1914257e1', 8),
	('85ad4de6-f4fb-4b5e-b4ae-55e74dda297e', 'update_by', '', 'varchar(255)', '', 'String', 'updateBy', 0, 1, 0, 0, 0, 'equals', 1, 'textarea', '', NULL, NULL, 255, NULL, NULL, '919fa072-7405-497b-8e51-0343cb4de08d', 9),
	('867be449-4266-4096-b068-61a230b8af2b', 'data', '数据', 'varchar(100)', '数据', 'String', 'data', 0, 1, 1, 1, 1, 'equals', 0, 'textarea', '', NULL, NULL, 100, NULL, NULL, 'a5cbe898-4651-4f3e-8ce7-60442363fc91', 2),
	('88edd5a3-1023-459d-b1b1-9a90ccceb4d7', 'data_max_numberic', '', 'decimal(11,2)', '', 'Long', 'dataMaxNumberic', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 13, NULL, NULL, 'a5cbe898-4651-4f3e-8ce7-60442363fc91', 15),
	('8e8e5a99-ccfa-4c94-9ad9-62e0bf4189dc', 'data_max_bigint', '', 'bigint(50)', '', 'Long', 'dataMaxBigint', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 50, NULL, NULL, 'a5cbe898-4651-4f3e-8ce7-60442363fc91', 13),
	('8ff86f8c-3d9d-43dc-8bc6-7180289fa71e', 'create_by', '', 'varchar(255)', '', 'String', 'createBy', 0, 1, 0, 0, 0, 'equals', 1, 'textarea', '', NULL, NULL, 255, NULL, NULL, '6d2b9222-f796-4b77-8ea7-6d9470c1e0dd', 8),
	('94fceddf-a7e6-4210-8706-5fdbc341ef9b', 'id', '主键', 'varchar(100)', '主键', 'String', 'id', 0, 1, 0, 0, 0, 'equals', 0, 'textarea', '', NULL, NULL, 100, NULL, NULL, 'a5cbe898-4651-4f3e-8ce7-60442363fc91', 1),
	('95c0856f-1d75-4ff4-b922-5d830718bff6', 'name', '', 'varchar(255)', '', 'String', 'name', 0, 1, 1, 1, 1, 'like', 1, 'textarea', '', NULL, NULL, 255, NULL, NULL, '6d2b9222-f796-4b77-8ea7-6d9470c1e0dd', 2),
	('95eeff46-e1fb-4b86-8242-9a0effe54944', 'create_by', '', 'varchar(255)', '', 'String', 'createBy', 0, 1, 0, 0, 0, 'equals', 1, 'textarea', '', NULL, NULL, 255, NULL, NULL, '919fa072-7405-497b-8e51-0343cb4de08d', 8),
	('984f46ad-9e4d-4786-b370-b6c3a195446b', 'data_max_number', '', 'decimal(11,1)', '', 'Long', 'dataMaxNumber', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 12, NULL, NULL, 'a5cbe898-4651-4f3e-8ce7-60442363fc91', 12),
	('9a4b42a2-3828-45ba-b30b-ca84dd5a8908', 'post', '职位', 'varchar(36)', '职位', 'String', 'post', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 36, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 18),
	('a54edcc3-3d99-4ba4-8207-9c2331fb93fd', 'dp_id', '', 'varchar(36)', '', 'String', 'dpId', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 36, NULL, NULL, '919fa072-7405-497b-8e51-0343cb4de08d', 7),
	('b2a4b123-54bf-4d0f-b17a-44964ea210cc', 'create_time', '', 'timestamp', '', 'Date', 'createTime', 0, 1, 0, 0, 0, 'equals', 1, 'datePicker', '', NULL, NULL, 0, NULL, NULL, '7389e190-d576-460f-a39b-17e1914257e1', 9),
	('b5c9a641-2707-4a9c-b987-1d21ae29385e', 'salt', '盐', 'varchar(20)', '盐', 'String', 'salt', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 20, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 4),
	('b6f842c9-cca3-4793-b5b1-c97d6b6464a0', 'num', '用户编号', 'bigint(50)', '用户编号', 'Long', 'num', 0, 1, 1, 1, 1, 'equals', 0, 'input', '', NULL, NULL, 50, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 6),
	('b7125d57-97be-4579-8282-94cf01519b01', 'dp_id', '', 'varchar(255)', '', 'String', 'dpId', 0, 1, 1, 1, 1, 'equals', 1, 'textarea', '', NULL, NULL, 255, NULL, NULL, 'a5cbe898-4651-4f3e-8ce7-60442363fc91', 8),
	('c37f86b5-c76a-478c-9c75-61358120894c', 'code', '类型码', 'varchar(50)', '类型码', 'String', 'code', 0, 1, 1, 1, 1, 'equals', 0, 'input', '', NULL, 0, 50, 0, 0, 'd949c2b0-716f-4a3e-bb6f-16ba83766f1a', 2),
	('c3bae093-0a0b-422b-bd35-5a4e22bbdcbf', 'branch_id', '', 'varchar(36)', '', 'String', 'branchId', 0, 1, 1, 1, 1, 'equals', 0, 'input', '', NULL, NULL, 36, NULL, NULL, '7389e190-d576-460f-a39b-17e1914257e1', 4),
	('c6bf3c57-836f-48c6-bea1-71f40fd09717', 'enable', '', 'tinyint(1)', '', 'Integer', 'enable', 0, 1, 1, 1, 1, 'equals', 1, 'switch', '', NULL, NULL, 1, NULL, NULL, '6d2b9222-f796-4b77-8ea7-6d9470c1e0dd', 5),
	('cc787f0c-e9aa-4685-96a3-07880e1f3f63', 'dp_id', '', 'varchar(36)', '', 'String', 'dpId', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 36, NULL, NULL, '6d2b9222-f796-4b77-8ea7-6d9470c1e0dd', 4),
	('dfc645c2-4017-47a3-96ac-dbd6b9c7fd91', 'sort', '排序序号', 'int(11)', '排序序号', 'Integer', 'sort', 0, 1, 1, 1, 1, 'equals', 1, 'input', '', NULL, NULL, 11, NULL, NULL, '7389e190-d576-460f-a39b-17e1914257e1', 7),
	('e907fa92-3203-4063-b618-a58bcb61d894', 'id', '', 'varchar(36)', '', 'String', 'id', 1, 1, 0, 0, 0, 'equals', 0, 'input', '', NULL, NULL, 36, NULL, NULL, '919fa072-7405-497b-8e51-0343cb4de08d', 1),
	('ec56a77c-dd77-4c46-986a-7d1c5f48825a', 'create_time', '创建时间', 'timestamp', '创建时间', 'Date', 'createTime', 0, 1, 0, 0, 0, 'equals', 0, 'datePicker', '', NULL, NULL, 0, NULL, NULL, 'a5cbe898-4651-4f3e-8ce7-60442363fc91', 3),
	('ecbdbbf6-fba6-4950-bb9c-97321d98f98f', 'id', 'ID', 'varchar(36)', 'ID', 'String', 'id', 1, 1, 0, 0, 0, 'equals', 0, 'input', '', NULL, NULL, 36, NULL, NULL, '7389e190-d576-460f-a39b-17e1914257e1', 1),
	('ef33c5d1-08af-4ba6-aa6d-8a0917eb06f9', 'value', '', 'varchar(255)', '', 'String', 'value', 0, 1, 1, 1, 1, 'equals', 1, 'textarea', '', NULL, NULL, 255, NULL, NULL, '94039037-b809-4ddf-a031-f57f653a5858', 3),
	('f5bee43f-f3b5-4b23-9f4a-8505c0c87c29', 'name', '', 'varchar(36)', '', 'String', 'name', 0, 1, 1, 1, 1, 'like', 1, 'input', '', NULL, NULL, 36, NULL, NULL, '94039037-b809-4ddf-a031-f57f653a5858', 2),
	('fd23eda1-d110-4978-bf9f-7992cee4bc3d', 'id', '', 'varchar(36)', '', 'String', 'id', 1, 1, 0, 0, 0, 'equals', 0, 'input', '', NULL, NULL, 36, NULL, NULL, 'cb68ad8b-4968-4b91-aecd-f415ad2f8759', 1);
/*!40000 ALTER TABLE `tool_generator_field_model` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.tool_generator_table_model
CREATE TABLE IF NOT EXISTS `tool_generator_table_model` (
  `id` varchar(36) NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `table_remark` varchar(200) NOT NULL,
  `entity_name` varchar(60) NOT NULL,
  `template_type` varchar(50) NOT NULL,
  `package_path` varchar(100) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `module_display_name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_by` varchar(50) NOT NULL,
  `update_by` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table_name_idx` (`table_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table rest-gamma-bdp.tool_generator_table_model: ~8 rows (approximately)
/*!40000 ALTER TABLE `tool_generator_table_model` DISABLE KEYS */;
INSERT INTO `tool_generator_table_model` (`id`, `table_name`, `table_remark`, `entity_name`, `template_type`, `package_path`, `module_name`, `module_display_name`, `description`, `author`, `create_time`, `update_time`, `create_by`, `update_by`) VALUES
	('0d2cd11d-03dc-403a-8261-90fd994fe50a', 'sys_operation_param', '系统操作参数记录', 'SysOperationParam', 'sigle', 'com.rexen.rest', 'SysOperationParam', '系统操作参数记录', '系统操作参数记录', 'Gavin', '2019-12-17 10:51:38', '2019-12-17 10:51:38', '1', '1'),
	('6d2b9222-f796-4b77-8ea7-6d9470c1e0dd', 'tool_generator_test_data_2', '', 'ToolGeneratorTestData2', 'sigle', 'com.rexen.rest', 'tool.sample.product', '', '', 'Gavin', '2019-12-20 14:03:59', '2019-12-19 13:38:42', '1', '1'),
	('7389e190-d576-460f-a39b-17e1914257e1', 'sys_department', '', 'SysDepartment', 'sigle', 'com.rexen.rest', 'SysDepartment', '', '', 'Gavin', '2019-11-27 15:59:45', '2019-12-19 13:38:41', '1', '1'),
	('919fa072-7405-497b-8e51-0343cb4de08d', 'sys_announcement', '', 'SysAnnouncement', 'sigle', 'com.rexen.rest', 'SysAnnouncement', '', '', 'Gavin', '2019-12-20 15:48:01', '2019-12-20 15:48:01', '1', '1'),
	('94039037-b809-4ddf-a031-f57f653a5858', 'sys_config', '', 'SysConfig', 'sigle', 'com.rexen.rest', 'SysConfig', '', '', 'Gavin', '2019-12-20 15:47:52', '2019-12-20 15:47:52', '1', '1'),
	('a5cbe898-4651-4f3e-8ce7-60442363fc91', 'tool_generator_test_data', '', 'ToolGeneratorTestData', 'sigle', 'com.rexen.rest', 'ToolGeneratorTestData', '', '', 'Gavin', '2019-12-14 10:54:41', '2019-12-19 13:38:41', '1', '1'),
	('cb68ad8b-4968-4b91-aecd-f415ad2f8759', 'sys_user', '系统用户', 'SysUser', 'sigle', 'com.rexen.rest', 'SysUser', '系统用户', '系统用户', 'Gavin', '2019-11-27 15:59:15', '2019-12-19 13:38:41', '1', '1'),
	('d949c2b0-716f-4a3e-bb6f-16ba83766f1a', 'sys_dictionary_type', '字典类型表', 'SysDictionaryType', 'sigle', 'com.rexen.rest', 'SysDictionaryType', '字典类型表', '字典类型表', 'Gavin', '2019-12-20 15:48:26', '2019-12-20 16:26:35', '1', '1');
/*!40000 ALTER TABLE `tool_generator_table_model` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.tool_generator_test_data
CREATE TABLE IF NOT EXISTS `tool_generator_test_data` (
  `id` varchar(100) DEFAULT NULL COMMENT '主键',
  `data` varchar(100) DEFAULT NULL COMMENT '数据',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(255) NOT NULL DEFAULT '' COMMENT '创建者',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `update_by` varchar(255) NOT NULL COMMENT '更新者',
  `enable` smallint(1) NOT NULL,
  `dp_id` varchar(255) NOT NULL,
  `data_length` double(11,0) NOT NULL,
  `data_max` int(11) NOT NULL,
  `data_max_integer` int(21) NOT NULL,
  `data_max_number` decimal(11,1) NOT NULL,
  `data_max_bigint` bigint(50) NOT NULL,
  `data_max_deimal` decimal(12,1) NOT NULL,
  `data_max_numberic` decimal(11,2) NOT NULL,
  `data_max_float` float(21,2) NOT NULL,
  `data_max_bitv` bit(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table rest-gamma-bdp.tool_generator_test_data: ~6 rows (approximately)
/*!40000 ALTER TABLE `tool_generator_test_data` DISABLE KEYS */;
INSERT INTO `tool_generator_test_data` (`id`, `data`, `create_time`, `create_by`, `update_time`, `update_by`, `enable`, `dp_id`, `data_length`, `data_max`, `data_max_integer`, `data_max_number`, `data_max_bigint`, `data_max_deimal`, `data_max_numberic`, `data_max_float`, `data_max_bitv`) VALUES
	('1', 'string', '2019-12-10 11:19:56', '1', '2019-12-10 11:20:08', '1', 1, '-1', 0, 0, 0, 0.0, 0, 0.0, 0.00, 0.00, b'00000000'),
	('11', 'shan1', '2019-12-10 11:20:55', '1', '2019-12-10 15:00:41', '1', 1, '-1', 0, 0, 0, 0.0, 0, 0.0, 0.00, 0.00, b'01000000'),
	('12', 'string', '2019-12-10 11:21:20', '1', '2019-12-10 11:21:20', '1', 1, '-1', 0, 0, 0, 0.0, 0, 0.0, 0.00, 0.00, b'00000000'),
	('1234', 'string', '2019-12-10 14:57:17', '', '2019-12-10 15:00:29', '1', 0, '-1', 0, 0, 0, 0.0, 0, 0.0, 0.00, 0.00, b'00000000'),
	('12345', 'string', '2019-12-10 15:44:33', '', '2019-12-10 15:44:33', '', 1, '-1', 0, 0, 0, 0.0, 0, 0.0, 0.00, 0.00, b'00000000'),
	('2323', '9999string', '2019-12-12 11:10:52', '1', '2019-12-12 11:12:42', '1', 0, '1', 0, 0, 0, 0.0, 0, 0.0, 0.00, 0.00, b'00000000');
/*!40000 ALTER TABLE `tool_generator_test_data` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.tool_generator_test_data_2
CREATE TABLE IF NOT EXISTS `tool_generator_test_data_2` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `dp_id` varchar(36) NOT NULL,
  `enable` tinyint(2) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(255) NOT NULL,
  `update_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table rest-gamma-bdp.tool_generator_test_data_2: ~7 rows (approximately)
/*!40000 ALTER TABLE `tool_generator_test_data_2` DISABLE KEYS */;
INSERT INTO `tool_generator_test_data_2` (`id`, `name`, `keywords`, `dp_id`, `enable`, `create_time`, `update_time`, `create_by`, `update_by`) VALUES
	('1', 'abc', 'adf', '1', 0, '2019-12-19 13:23:59', '2019-12-19 13:23:59', '', ''),
	('1207557737349836802', 'adsfdsffffff', NULL, '1', 1, '2019-12-19 15:06:15', '2019-12-19 15:06:15', '1', '1'),
	('1207558183065939969', '你好好99', NULL, '1', 1, '2019-12-19 15:08:01', '2019-12-19 16:40:09', '1', '1'),
	('2', '哈哈哈a44', '是打发点a', '1', 0, '2019-12-19 13:23:59', '2019-12-19 16:40:21', '', '1'),
	('3', '飞机', '1', '1', 0, '2019-12-19 13:23:59', '2019-12-19 13:23:59', '', ''),
	('4', 'aaa', 'fff', '1', 0, '2019-12-19 13:23:59', '2019-12-19 13:23:59', '', ''),
	('adsfjsdlfjla', 'string', 'aaaaaaafffffffff', '1', 0, '2019-12-19 13:23:59', '2019-12-19 13:23:59', '', '');
/*!40000 ALTER TABLE `tool_generator_test_data_2` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.workflow_definition
CREATE TABLE IF NOT EXISTS `workflow_definition` (
  `id` varchar(50) NOT NULL,
  `name` varchar(300) DEFAULT NULL COMMENT '流程名称',
  `event_type` varchar(500) DEFAULT NULL COMMENT '事件类型',
  `review_level_count` int(11) DEFAULT NULL COMMENT '一共几级审核',
  `enable` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='事件流程模板';

-- Dumping data for table rest-gamma-bdp.workflow_definition: ~10 rows (approximately)
/*!40000 ALTER TABLE `workflow_definition` DISABLE KEYS */;
INSERT INTO `workflow_definition` (`id`, `name`, `event_type`, `review_level_count`, `enable`) VALUES
	('054b17b0-cd0f-4a42-b596-aa630478c151', '新流程创建转抄错误', '101f1125-76f3-11e9-8482-00505684f8da', 1, 1),
	('5fb3f398-83c6-469b-b81b-c66a72543ef1', '测试4', '08960bfc-76f4-11e9-8482-00505684f8da', 3, 1),
	('626d0e16-270b-486a-99e6-bf4bf3908d5d', 'Q一级事件流程（新）', '4bc9ad82-76f2-11e9-8482-00505684f8da', 1, 1),
	('6efde8c4-4e86-4031-969a-ac32d719715e', '流程事件测试3', '0892e7b5-76f4-11e9-8482-00505684f8da', 3, 1),
	('8a877680-029f-4874-8948-cf83dd922258', 'Q三级事件流程（新）', '4bd37863-76f2-11e9-8482-00505684f8da', 3, 1),
	('990e25c9-be49-47e1-813a-b36993a3ee52', 'Q二级事件流程', '087e0bab-76f4-11e9-8482-00505684f8da', 2, 1),
	('a69a9f01-9956-434b-8e77-dbf1b5ae8c2e', '院内、院外人员跌倒', '509c0fc9-76f8-11e9-8482-00505684f8da', 2, 1),
	('b12fd71b-0b22-4c93-a16d-e5f20cf26a59', '流程事件测试1', '086ebee8-76f4-11e9-8482-00505684f8da', 1, 1),
	('c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3', 'Q二级事件流程（新）', '4bcfd70c-76f2-11e9-8482-00505684f8da', 2, 1),
	('c9acead0-82dc-4564-bf45-3f13147b35db', '流程事件测试2', '087e0bab-76f4-11e9-8482-00505684f8da', 2, 1);
/*!40000 ALTER TABLE `workflow_definition` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.workflow_definition_activity
CREATE TABLE IF NOT EXISTS `workflow_definition_activity` (
  `id` varchar(50) NOT NULL,
  `workflow_definition_id` varchar(50) DEFAULT NULL COMMENT '流程ID',
  `activity_name` varchar(50) DEFAULT NULL COMMENT '节点名称',
  `activity_num` int(11) DEFAULT NULL COMMENT '节点顺序',
  `activity_type` varchar(50) NOT NULL COMMENT '流程活动单元类型',
  `assigners` varchar(200) DEFAULT NULL COMMENT '此节点指定的审核人',
  `properties` varchar(200) DEFAULT NULL,
  `successful_redirect` varchar(50) DEFAULT NULL,
  `failed_redirect` varchar(50) DEFAULT NULL,
  `enable` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='流程细节，用来指定每个节点的执行人';

-- Dumping data for table rest-gamma-bdp.workflow_definition_activity: ~88 rows (approximately)
/*!40000 ALTER TABLE `workflow_definition_activity` DISABLE KEYS */;
INSERT INTO `workflow_definition_activity` (`id`, `workflow_definition_id`, `activity_name`, `activity_num`, `activity_type`, `assigners`, `properties`, `successful_redirect`, `failed_redirect`, `enable`) VALUES
	('006d7f0d-b576-4c3a-8c51-579defc05b13', '8a877680-029f-4874-8948-cf83dd922258', '事件追踪', 6, 'TraceActivity', 'e6g71ee4-ecdb-4458-a926-7d85ffdeed7b', '{"maxLevel":3,"level":3}', '7', NULL, 1),
	('0261be84-1695-4ae9-945c-48325a755160', 'c9acead0-82dc-4564-bf45-3f13147b35db', '事件审核', 3, 'AuditActivity', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":2,"level":2}', '4', '2', 1),
	('0b60e611-2586-4043-b49b-e9a5979d4f30', 'c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3', '整改审核', 7, 'ReformAuditActivity', NULL, '{"maxLevel":2,"level":2}', '8', '6', 1),
	('1331db58-34f5-4124-baaf-21a5f3a08db6', 'a69a9f01-9956-434b-8e77-dbf1b5ae8c2e', '整改审核', 7, 'ReformAuditActivity', NULL, '{"maxLevel":2,"level":2}', '8', '6', 1),
	('14ca7f9e-f5f1-47ea-86a8-da7551bfa932', '6efde8c4-4e86-4031-969a-ac32d719715e', '事件整改', 7, 'ReformActivity', NULL, '{"maxLevel":3,"level":3}', '8', NULL, 1),
	('166de8f5-3ec1-490d-a995-76e3b5b2645d', 'b12fd71b-0b22-4c93-a16d-e5f20cf26a59', '事件结案', 3, 'CloseActivity', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', '{"maxLevel":1,"level":1}', '4', '2', 1),
	('16abdb6e-2ab9-425e-b4d1-d5d53d453fcb', '990e25c9-be49-47e1-813a-b36993a3ee52', '流程开始', 0, 'StartActivity', NULL, '{"maxLevel":2}', '2', NULL, 1),
	('184f0c6b-5150-4705-a46a-409337822a21', '5fb3f398-83c6-469b-b81b-c66a72543ef1', '事件审核', 2, 'AuditActivity', 'e6g7bee4-4cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":3,"level":1}', '3', '1', 1),
	('1cfbed7d-26d3-4203-b4c9-72a1d99719f0', 'c9acead0-82dc-4564-bf45-3f13147b35db', '事件上报', 1, 'ReportActivity', NULL, '{"maxLevel":2}', '2', NULL, 1),
	('24b3217f-6948-46be-a9de-fbb7d539ab82', 'a69a9f01-9956-434b-8e77-dbf1b5ae8c2e', '流程结束', 8, 'EndActivity', NULL, '{"maxLevel":2,"level":2}', NULL, NULL, 1),
	('2dcb2f4b-7fc3-42cf-87fe-732145968491', 'c9acead0-82dc-4564-bf45-3f13147b35db', '事件追踪', 5, 'TraceActivity', 'e6g71ee4-ecdb-4458-a926-7d85ffdeed7b', '{"maxLevel":2,"level":2}', '6', NULL, 1),
	('2ddfb468-5393-4d72-a609-4bf19037b736', '6efde8c4-4e86-4031-969a-ac32d719715e', '整改审核', 8, 'ReformAuditActivity', NULL, '{"maxLevel":3,"level":3}', '9', '7', 1),
	('2f24f2ce-de8e-4489-9acc-ac5f5df63ca7', 'c9acead0-82dc-4564-bf45-3f13147b35db', '流程结束', 8, 'EndActivity', NULL, '{"maxLevel":2,"level":2}', NULL, NULL, 1),
	('30a578c7-c9ad-468c-baa3-8427f340cf9a', 'a69a9f01-9956-434b-8e77-dbf1b5ae8c2e', '事件结案', 4, 'CloseActivity', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', '{"maxLevel":2,"level":2}', '5', '3', 1),
	('320470d3-ff01-4a45-b725-e34e36b2a6b5', '626d0e16-270b-486a-99e6-bf4bf3908d5d', '事件整改', 5, 'ReformActivity', NULL, '{"maxLevel":1,"level":1}', '6', NULL, 1),
	('33ea26d9-964a-4202-9dd7-354f7b9ef7e6', 'b12fd71b-0b22-4c93-a16d-e5f20cf26a59', '事件整改', 5, 'ReformActivity', NULL, '{"maxLevel":1,"level":1}', '6', NULL, 1),
	('35f7d58e-8e63-4d2e-be68-ce7a385aa1b2', 'a69a9f01-9956-434b-8e77-dbf1b5ae8c2e', '流程开始', 0, 'StartActivity', NULL, '{"maxLevel":2}', '2', NULL, 1),
	('363f0031-84c5-4d2a-adc2-669b1652830d', 'c9acead0-82dc-4564-bf45-3f13147b35db', '流程开始', 0, 'StartActivity', NULL, '{"maxLevel":2}', '2', NULL, 1),
	('38a3ed52-aabc-442e-947a-26d9a6857285', '990e25c9-be49-47e1-813a-b36993a3ee52', '事件整改', 6, 'ReformActivity', NULL, '{"maxLevel":2,"level":2}', '7', NULL, 1),
	('41ea5623-c87c-4b56-afff-d0603ac7e4e2', '054b17b0-cd0f-4a42-b596-aa630478c151', '事件追踪', 4, 'TraceActivity', NULL, '{"maxLevel":1,"level":1}', '5', NULL, 1),
	('43014129-4f88-444b-9b1d-17f81060c3d7', 'b12fd71b-0b22-4c93-a16d-e5f20cf26a59', '流程开始', 0, 'StartActivity', NULL, '{"maxLevel":1}', '2', NULL, 1),
	('43563665-4cf6-4a76-bb65-a32f90afb303', '990e25c9-be49-47e1-813a-b36993a3ee52', '事件结案', 4, 'CloseActivity', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', '{"maxLevel":2,"level":2}', '5', '3', 1),
	('453a9a91-cc18-44e0-824e-4a4eb4392e46', '626d0e16-270b-486a-99e6-bf4bf3908d5d', '事件追踪', 4, 'TraceActivity', 'e6g71ee4-ecdb-4458-a926-7d85ffdeed7b', '{"maxLevel":1,"level":1}', '5', NULL, 1),
	('4573f717-411f-44a4-a3ef-016893bb4fbd', '5fb3f398-83c6-469b-b81b-c66a72543ef1', '流程开始', 0, 'StartActivity', NULL, '{"maxLevel":3}', '2', NULL, 1),
	('4783733d-b682-4e8c-9b8e-458877940d43', '6efde8c4-4e86-4031-969a-ac32d719715e', '流程开始', 0, 'StartActivity', NULL, '{"maxLevel":3}', '2', NULL, 1),
	('48e14fe0-a3ed-4d3e-a104-4b3918db085e', '8a877680-029f-4874-8948-cf83dd922258', '事件审核', 2, 'AuditActivity', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":3,"level":1}', '3', '1', 1),
	('493d71f1-8215-43ad-8e79-2c0289231605', '8a877680-029f-4874-8948-cf83dd922258', '流程结束', 9, 'EndActivity', NULL, '{"maxLevel":3,"level":3}', NULL, NULL, 1),
	('4b2de6eb-5718-4b12-b234-256c3bac736d', '054b17b0-cd0f-4a42-b596-aa630478c151', '事件审核', 2, 'AuditActivity', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":1,"level":1}', '3', '1', 1),
	('4e86ad71-bf87-46d1-9aac-c82270d93d98', '5fb3f398-83c6-469b-b81b-c66a72543ef1', '流程结束', 9, 'EndActivity', NULL, '{"maxLevel":3,"level":3}', NULL, NULL, 1),
	('509f16de-d65d-4bbd-a459-c033b327dc1a', 'c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3', '事件整改', 6, 'ReformActivity', NULL, '{"maxLevel":2,"level":2}', '7', NULL, 1),
	('52c572e2-b543-4545-ae6f-0eab56bee398', '626d0e16-270b-486a-99e6-bf4bf3908d5d', '整改审核', 6, 'ReformAuditActivity', NULL, '{"maxLevel":1,"level":1}', '7', '5', 1),
	('541228df-73aa-4b57-a092-3e5d157a5363', 'a69a9f01-9956-434b-8e77-dbf1b5ae8c2e', '事件追踪', 5, 'TraceActivity', 'e6g72ee4-ecdb-4458-a926-7d85ffdeed7b', '{"maxLevel":2,"level":2}', '6', NULL, 1),
	('55acfbea-6afc-4269-863a-a8e182320f27', 'b12fd71b-0b22-4c93-a16d-e5f20cf26a59', '流程结束', 7, 'EndActivity', NULL, '{"maxLevel":1,"level":1}', NULL, NULL, 1),
	('571efa49-442a-4185-8dff-d9bd4fb054d3', 'c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3', '事件追踪', 5, 'TraceActivity', 'e6g71ee4-ecdb-4458-a926-7d85ffdeed7b', '{"maxLevel":2,"level":2}', '6', NULL, 1),
	('5838ebf5-7703-438d-a8b4-78e687e6ef72', 'c9acead0-82dc-4564-bf45-3f13147b35db', '整改审核', 7, 'ReformAuditActivity', NULL, '{"maxLevel":2,"level":2}', '8', '6', 1),
	('63f12b09-a253-4d63-8d97-ad19dd9bdbed', 'b12fd71b-0b22-4c93-a16d-e5f20cf26a59', '事件上报', 1, 'ReportActivity', NULL, '{"maxLevel":1}', '2', NULL, 1),
	('6463b7c1-2776-47d6-a6d2-db86f89e0d13', '5fb3f398-83c6-469b-b81b-c66a72543ef1', '事件追踪', 6, 'TraceActivity', 'e6g71ee4-ecdb-4458-a926-7d85ffdeed7b', '{"maxLevel":3,"level":3}', '7', NULL, 1),
	('6524b863-3bac-4a65-a4bc-7fd64e3fce17', '054b17b0-cd0f-4a42-b596-aa630478c151', '事件上报', 1, 'ReportActivity', NULL, '{"maxLevel":1}', '2', NULL, 1),
	('67841b9b-73db-4fd9-a36a-a53f0433bf0b', '8a877680-029f-4874-8948-cf83dd922258', '整改审核', 8, 'ReformAuditActivity', NULL, '{"maxLevel":3,"level":3}', '9', '7', 1),
	('68c48e54-4c1e-47ee-8e3a-567ecfc82a7d', '6efde8c4-4e86-4031-969a-ac32d719715e', '事件结案', 5, 'CloseActivity', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', '{"maxLevel":3,"level":3}', '6', '4', 1),
	('6937d7db-8ad0-4485-b225-b7e799b9c599', '8a877680-029f-4874-8948-cf83dd922258', '事件结案', 5, 'CloseActivity', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', '{"maxLevel":3,"level":3}', '6', '4', 1),
	('72f71356-b4e4-465a-8be7-f7b4fc35e704', '054b17b0-cd0f-4a42-b596-aa630478c151', '流程结束', 5, 'EndActivity', NULL, '{"maxLevel":1,"level":1}', NULL, NULL, 1),
	('743630a8-1cbb-4142-8afd-9bdbdbd2277b', '626d0e16-270b-486a-99e6-bf4bf3908d5d', '流程结束', 7, 'EndActivity', NULL, '{"maxLevel":1,"level":1}', NULL, NULL, 1),
	('7d28c1fd-92ec-411e-8e4d-d941ceaed763', 'a69a9f01-9956-434b-8e77-dbf1b5ae8c2e', '事件审核', 2, 'AuditActivity', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":2,"level":1}', '3', '1', 1),
	('83967503-8763-4026-9b01-78ad6a8415ac', '8a877680-029f-4874-8948-cf83dd922258', '事件上报', 1, 'ReportActivity', NULL, '{"maxLevel":3}', '2', NULL, 1),
	('84fb3f7e-e4e0-499b-85d8-8ae363906e63', '6efde8c4-4e86-4031-969a-ac32d719715e', '事件审核', 2, 'AuditActivity', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":3,"level":1}', '3', '1', 1),
	('8b26e1e3-fff6-4164-a0c9-497dce308a93', 'a69a9f01-9956-434b-8e77-dbf1b5ae8c2e', '事件整改', 6, 'ReformActivity', NULL, '{"maxLevel":2,"level":2}', '7', NULL, 1),
	('8bd18945-0646-49f2-a032-e2203036ec20', 'b12fd71b-0b22-4c93-a16d-e5f20cf26a59', '事件审核', 2, 'AuditActivity', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":1,"level":1}', '3', '1', 1),
	('8f892b63-8002-425e-81d7-6ba093e270f2', '8a877680-029f-4874-8948-cf83dd922258', '事件审核', 3, 'AuditActivity', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":3,"level":2}', '4', '2', 1),
	('921e4a12-c176-4f15-be9b-cfe4fc61f7e5', '990e25c9-be49-47e1-813a-b36993a3ee52', '事件审核', 2, 'AuditActivity', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":2,"level":1}', '3', '1', 1),
	('952f2412-23e4-4795-9680-e601e3f31651', '8a877680-029f-4874-8948-cf83dd922258', '事件整改', 7, 'ReformActivity', NULL, '{"maxLevel":3,"level":3}', '8', NULL, 1),
	('9ba7373e-bb15-4a32-ac2c-963223965831', '5fb3f398-83c6-469b-b81b-c66a72543ef1', '事件结案', 5, 'CloseActivity', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', '{"maxLevel":3,"level":3}', '6', '4', 1),
	('9dace259-5e79-45f0-9c59-7f07ac2a1580', 'c9acead0-82dc-4564-bf45-3f13147b35db', '事件审核', 2, 'AuditActivity', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":2,"level":1}', '3', '1', 1),
	('9f9ffc57-7750-44d7-8954-ae647b0e92f1', '5fb3f398-83c6-469b-b81b-c66a72543ef1', '整改审核', 8, 'ReformAuditActivity', NULL, '{"maxLevel":3,"level":3}', '9', '7', 1),
	('a1bc48f4-488d-4242-9a74-7751914935fe', '6efde8c4-4e86-4031-969a-ac32d719715e', '流程结束', 9, 'EndActivity', NULL, '{"maxLevel":3,"level":3}', NULL, NULL, 1),
	('a370eb99-5a61-4a1b-ba7d-c3b6780cb56b', '990e25c9-be49-47e1-813a-b36993a3ee52', '整改审核', 7, 'ReformAuditActivity', NULL, '{"maxLevel":2,"level":2}', '8', '6', 1),
	('a546ef43-84f4-43e9-b35e-97715e3db3d8', '990e25c9-be49-47e1-813a-b36993a3ee52', '事件审核', 3, 'AuditActivity', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":2,"level":2}', '4', '2', 1),
	('a7039573-21cf-4f4b-9a94-69b0a7c8a2da', 'c9acead0-82dc-4564-bf45-3f13147b35db', '事件整改', 6, 'ReformActivity', NULL, '{"maxLevel":2,"level":2}', '7', NULL, 1),
	('a99250cd-7b9d-4fc9-9098-8b92956e94bb', 'c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3', '流程开始', 0, 'StartActivity', NULL, '{"maxLevel":2}', '2', NULL, 1),
	('aa62acc9-0fb8-4ce0-879c-88273534467f', '054b17b0-cd0f-4a42-b596-aa630478c151', '事件结案', 3, 'CloseActivity', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', '{"maxLevel":1,"level":1}', '4', '2', 1),
	('ab08bb75-64f6-4de4-bae1-d870623cce93', '6efde8c4-4e86-4031-969a-ac32d719715e', '事件追踪', 6, 'TraceActivity', 'e6g71ee4-ecdb-4458-a926-7d85ffdeed7b', '{"maxLevel":3,"level":3}', '7', NULL, 1),
	('ab1bea85-7c61-4745-80c3-63f0b3b079b8', '6efde8c4-4e86-4031-969a-ac32d719715e', '事件上报', 1, 'ReportActivity', NULL, '{"maxLevel":3}', '2', NULL, 1),
	('b50e63ce-da0e-4c39-b0e3-049ef29d8fcc', 'c9acead0-82dc-4564-bf45-3f13147b35db', '事件结案', 4, 'CloseActivity', 'e6g7b2e4-ecdb-4458-a926-7d85ffdeed7b', '{"maxLevel":2,"level":2}', '5', '3', 1),
	('b7f82b6c-a126-4fd8-84ef-45a5c7d042a7', '5fb3f398-83c6-469b-b81b-c66a72543ef1', '事件审核', 3, 'AuditActivity', 'e6g7bee4-4cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":3,"level":2}', '4', '2', 1),
	('ba61d152-0540-45ef-af6c-f054184843b8', 'b12fd71b-0b22-4c93-a16d-e5f20cf26a59', '事件追踪', 4, 'TraceActivity', 'e6g71ee4-ecdb-4458-a926-7d85ffdeed7b', '{"maxLevel":1,"level":1}', '5', NULL, 1),
	('bb1cff3d-4156-4179-b014-f8cc558f336f', '5fb3f398-83c6-469b-b81b-c66a72543ef1', '事件整改', 7, 'ReformActivity', NULL, '{"maxLevel":3,"level":3}', '8', NULL, 1),
	('c19512c9-d706-4d52-aab3-41414f03b15f', '626d0e16-270b-486a-99e6-bf4bf3908d5d', '事件审核', 2, 'AuditActivity', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":1,"level":1}', '3', '1', 1),
	('c1d5cb61-5662-46b8-912f-1af828028ec0', '6efde8c4-4e86-4031-969a-ac32d719715e', '事件审核', 4, 'AuditActivity', 'e6g7bee4-3cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":3,"level":3}', '5', '3', 1),
	('cec2c167-3666-4a91-8f87-ad0e85b8f44a', '626d0e16-270b-486a-99e6-bf4bf3908d5d', '事件结案', 3, 'CloseActivity', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', '{"maxLevel":1,"level":1}', '4', '2', 1),
	('d1b85543-fee4-47a4-b44d-77a7f999b116', 'a69a9f01-9956-434b-8e77-dbf1b5ae8c2e', '事件审核', 3, 'AuditActivity', 'e6g7bee4-4cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":2,"level":2}', '4', '2', 1),
	('d2845e9b-b0e2-41f9-86b9-6b7bac31c25a', 'c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3', '事件审核', 3, 'AuditActivity', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":2,"level":2}', '4', '2', 1),
	('d4a3ac09-ef85-4938-9705-5bba9b35c7db', 'c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3', '事件上报', 1, 'ReportActivity', NULL, '{"maxLevel":2}', '2', NULL, 1),
	('d71be7ee-6847-4c01-82c2-a39388cfbbfa', '626d0e16-270b-486a-99e6-bf4bf3908d5d', '事件上报', 1, 'ReportActivity', NULL, '{"maxLevel":1}', '2', NULL, 1),
	('d7350010-06e0-430d-8066-342ede51dcf5', '990e25c9-be49-47e1-813a-b36993a3ee52', '事件追踪', 5, 'TraceActivity', 'e6g71ee4-ecdb-4458-a926-7d85ffdeed7b', '{"maxLevel":2,"level":2}', '6', NULL, 1),
	('d84fbc0b-925d-45fe-a037-485ff21afa64', 'c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3', '流程结束', 8, 'EndActivity', NULL, '{"maxLevel":2,"level":2}', NULL, NULL, 1),
	('ddb211be-35af-4b67-bce4-37d413751846', '626d0e16-270b-486a-99e6-bf4bf3908d5d', '流程开始', 0, 'StartActivity', NULL, '{"maxLevel":1}', '2', NULL, 1),
	('ddc9a873-93cb-443b-a0c0-3a34fd4e7f01', '5fb3f398-83c6-469b-b81b-c66a72543ef1', '事件审核', 4, 'AuditActivity', 'e6g7bee4-4cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":3,"level":3}', '5', '3', 1),
	('de14d5b8-ab0b-4ba9-86b9-08c3a8d2143d', '054b17b0-cd0f-4a42-b596-aa630478c151', '流程开始', 0, 'StartActivity', NULL, '{"maxLevel":1}', '2', NULL, 1),
	('e6565d31-3462-4b26-9545-3503871978a8', 'b12fd71b-0b22-4c93-a16d-e5f20cf26a59', '整改审核', 6, 'ReformAuditActivity', NULL, '{"maxLevel":1,"level":1}', '7', '5', 1),
	('e6e244b2-3c89-4b66-bfde-f72c2059e15f', 'a69a9f01-9956-434b-8e77-dbf1b5ae8c2e', '事件上报', 1, 'ReportActivity', NULL, '{"maxLevel":2}', '2', NULL, 1),
	('e7865aca-ffb4-4dc7-a2cd-e9900a8fdf72', 'c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3', '事件结案', 4, 'CloseActivity', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', '{"maxLevel":2,"level":2}', '5', '3', 1),
	('ec130594-606d-4a0b-bef5-bb54c32fabae', '5fb3f398-83c6-469b-b81b-c66a72543ef1', '事件上报', 1, 'ReportActivity', NULL, '{"maxLevel":3}', '2', NULL, 1),
	('eddcf8fb-b4e3-4eac-884c-33d8b063afb2', 'c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3', '事件审核', 2, 'AuditActivity', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":2,"level":1}', '3', '1', 1),
	('f03e8ec6-def6-4b70-9a2d-a331384b950a', '6efde8c4-4e86-4031-969a-ac32d719715e', '事件审核', 3, 'AuditActivity', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":3,"level":2}', '4', '2', 1),
	('f32d0fa6-c645-4e98-840e-22d7548147af', '990e25c9-be49-47e1-813a-b36993a3ee52', '事件上报', 1, 'ReportActivity', NULL, '{"maxLevel":2}', '2', NULL, 1),
	('f562af20-a81f-4c30-9dfd-92acf31a0fec', '8a877680-029f-4874-8948-cf83dd922258', '事件审核', 4, 'AuditActivity', 'e6g7bee4-3cdb-4458-a926-7d85ffdeed7b', '{"maxLevel":3,"level":3}', '5', '3', 1),
	('f6a2eee9-15eb-47b9-b466-d0c1634f1e83', '990e25c9-be49-47e1-813a-b36993a3ee52', '流程结束', 8, 'EndActivity', NULL, '{"maxLevel":2,"level":2}', NULL, NULL, 1),
	('fd071b3c-79db-42dd-a759-39084aac55af', '8a877680-029f-4874-8948-cf83dd922258', '流程开始', 0, 'StartActivity', NULL, '{"maxLevel":3}', '2', NULL, 1);
/*!40000 ALTER TABLE `workflow_definition_activity` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.workflow_instance
CREATE TABLE IF NOT EXISTS `workflow_instance` (
  `id` varchar(50) NOT NULL COMMENT 'ID',
  `name` varchar(50) DEFAULT NULL COMMENT '流程实例名',
  `workflow_definition_id` varchar(50) DEFAULT NULL COMMENT '流程定义的ID',
  `event_id` varchar(50) DEFAULT NULL COMMENT '事件ID',
  `workflow_task_serial_id` varchar(50) DEFAULT NULL,
  `current_activity_id` varchar(50) DEFAULT NULL,
  `enable` int(1) DEFAULT NULL COMMENT '是否激活：1激活，0非激活',
  `status` int(11) DEFAULT NULL COMMENT 'ORIGINAL = 0; //无状态    RETURNED = 1; //已退回    WAIT_AUDIT = 2;// 待审核    CLOSED = 4;  // 已结案    WAIT_CLOSE = 8;// 待结案    REFORMED = 16;// 已整改    WAIT_REFORM = 32;// 待整改    CANCELED = 64;// 已作废    WAIT_TRACE = 128;// 待追踪    TRACED = 256;// 已追踪    PASSED = 512;// 已通过    COMPLETED = 1024;// 已结束',
  `extension` varchar(200) DEFAULT NULL COMMENT '流程实例的扩展字段',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `complete_time` timestamp NULL DEFAULT NULL COMMENT '完成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='流程运行实例';

-- Dumping data for table rest-gamma-bdp.workflow_instance: ~26 rows (approximately)
/*!40000 ALTER TABLE `workflow_instance` DISABLE KEYS */;
INSERT INTO `workflow_instance` (`id`, `name`, `workflow_definition_id`, `event_id`, `workflow_task_serial_id`, `current_activity_id`, `enable`, `status`, `extension`, `create_time`, `update_time`, `complete_time`) VALUES
	('02589708fcbf47509452e3115c580fa3', 'Q一级退回_Q一级事件流程（新）', '626d0e16-270b-486a-99e6-bf4bf3908d5d', '058671796868456f9573ffefbb2781ef', '2ac89c35-bf73-43d0-9f5f-bd2479633bf5', 'c19512c9-d706-4d52-aab3-41414f03b15f', 1, 0, NULL, '2019-05-24 16:48:06', '2019-05-24 16:48:06', NULL),
	('1-1', '测试退回', 'c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3', '33333', '4081f8ef-9319-4f58-831e-6e4c986d115d', 'd2845e9b-b0e2-41f9-86b9-6b7bac31c25a', 1, 2, NULL, '2019-05-24 16:50:42', '2019-05-24 16:53:23', NULL),
	('16c5f66d20d54908871845ff69722cf7', '事件退回测试1_流程事件测试1', 'b12fd71b-0b22-4c93-a16d-e5f20cf26a59', '7bf83267f8d54eda855ef0742638b22a', '22617693-38f6-4dc9-864a-f0d5186db40b', '8bd18945-0646-49f2-a032-e2203036ec20', 1, 2, NULL, '2019-05-24 10:46:30', '2019-05-27 14:28:08', NULL),
	('1f0ee216de744f7ba03c2711be4cab49', 'Q药品二级事件测试_Q二级事件流程（新）', 'c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3', '0fc4a9aaf8594bdab117eac53829238a', NULL, NULL, 1, 0, NULL, '2019-05-24 15:39:17', '2019-05-24 15:39:17', NULL),
	('21ef127700794e15a619cc4c761c7689', 'Q二级退回测试_Q二级事件流程（新）', 'c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3', '006d68164e07417386a41614bba2dfd1', 'f7df161e-e8a4-4688-ad5f-007b5d77a1ae', 'e7865aca-ffb4-4dc7-a2cd-e9900a8fdf72', 1, 2, NULL, '2019-05-24 16:10:08', '2019-05-24 16:11:06', NULL),
	('358c5d1a674040a99249067ea6b66665', '退回事件测试2_流程事件测试2', 'c9acead0-82dc-4564-bf45-3f13147b35db', '1db6555bbaf546f5a77da020fb52e155', 'b602bb25-dea3-440e-bfd5-043e81a3e2af', '565c76a4-1fa7-48e5-98c7-ca138ab06cad', 1, 1090, NULL, '2019-05-24 10:47:39', '2019-05-24 11:06:03', '2019-05-24 11:06:03'),
	('3faf3907882e4be6a05f59516e05d262', '退回退回3_流程事件测试3', '6efde8c4-4e86-4031-969a-ac32d719715e', '0b8a8d64643b457f89f8e293ef2dd6eb', '16edf3a8-42b3-4a76-b1c1-0344c8376433', '68c48e54-4c1e-47ee-8e3a-567ecfc82a7d', 1, 2, NULL, '2019-05-24 11:20:11', '2019-05-24 14:17:43', NULL),
	('4d792274b5ca4e84bd2f8d34acd11f7a', 'Q一级整改审核测试2_Q一级事件流程（新）', '626d0e16-270b-486a-99e6-bf4bf3908d5d', '5e64b58b4fc84105b48270dccbdf9385', '05e7d7dd-4be9-4761-a14a-d2e4921b923f', 'cec2c167-3666-4a91-8f87-ad0e85b8f44a', 1, 520, NULL, '2019-05-24 16:43:13', '2019-05-24 16:44:30', NULL),
	('5debb7797f27477ab11a058fce864eaf', 'Q二级事件测试1_流程事件测试2', 'c9acead0-82dc-4564-bf45-3f13147b35db', 'ab3f7205304a49c8be4c61c749a3c300', NULL, NULL, 1, 0, NULL, '2019-05-24 14:58:15', '2019-05-24 14:58:15', NULL),
	('65508b37d99940288c18c78c3827c57e', 'Q药品二级事件测试_Q二级事件流程（新）', 'c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3', 'c55b607c6ea7482794284899be52815e', 'd6f63bdc-d201-4faa-baf2-b60a7869876c', 'd84fbc0b-925d-45fe-a037-485ff21afa64', 1, 3860, NULL, '2019-05-24 15:56:16', '2019-05-24 16:00:48', '2019-05-24 16:00:48'),
	('6612d9312cc543b08208487fbdfbb3a', 'fly测试3_事件流程测试3', '32bc2b4b-beda-40a4-a744-29beed0ffcb3', '5143ba6034764727868d50af8ea5f304', 'db906a4c-74b9-468b-81bc-b55edc2509d0', '1edb818f-37b7-477d-b95c-f15a1f5165c2', 1, 64, '', '2019-05-24 09:26:51', '2019-05-24 09:55:13', '2019-05-24 09:54:11'),
	('662ac2d9c0ab4c4f9d06fb2e417775d9', 'S三级退回_Q三级事件流程（新）', '8a877680-029f-4874-8948-cf83dd922258', '3739aaa72a514de09adfda5fdb815fae', '3e38bcc2-44ff-49db-a1fc-c28c7f3af36f', '8f892b63-8002-425e-81d7-6ba093e270f2', 1, 3, NULL, '2019-05-24 18:04:51', '2019-05-24 18:06:14', NULL),
	('672c1e2086874d9093fd103f779fe4ae', '退回  退回2_流程事件测试2', 'c9acead0-82dc-4564-bf45-3f13147b35db', 'd572d4ee7c014178b6e50155934c7f47', 'ec2fd9b0-72a2-455b-804e-a628cad8c14c', 'b50e63ce-da0e-4c39-b0e3-049ef29d8fcc', 1, 2, NULL, '2019-05-24 11:11:50', '2019-05-24 11:13:19', NULL),
	('75af1a23d1ac42ef97d05ac6b72106ec', 'X二级测试_Q二级事件流程（新）', 'c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3', 'd1a81132366648cd84e57671e257f4cd', '1d79c2b0-4d44-40aa-9d04-b4c2140906af', 'd84fbc0b-925d-45fe-a037-485ff21afa64', 1, 3860, NULL, '2019-05-24 18:00:49', '2019-05-24 20:08:32', '2019-05-24 20:08:32'),
	('77bb4aa387ca423e8705db2d211ce742', 'fly事件测试2_流程事件测试2', 'c9acead0-82dc-4564-bf45-3f13147b35db', '742f1795faec4d62a6ec3805322562bd', '3bdb6242-3e31-404d-9b95-03c40a16d1ff', '8edaa460-9012-4288-8467-660be84fb0bf', 1, 2, NULL, '2019-05-24 10:21:30', '2019-05-24 10:51:18', NULL),
	('7d64c53f7a1a437c94bdb3f659a3f17c', 'fly事件测试1_流程事件测试1', 'b12fd71b-0b22-4c93-a16d-e5f20cf26a59', 'ea7ee7801c3f41a38feb516dbfcc0c7c', '05b54453-c39c-4e4f-9bb9-eeccdd305c56', 'e6565d31-3462-4b26-9545-3503871978a8', 1, 532, NULL, '2019-05-24 10:19:02', '2019-05-24 10:37:34', NULL),
	('867e8288cc5e4b34bc16b5780c6c06d8', 'Q二级事件测试1_流程事件测试2', 'c9acead0-82dc-4564-bf45-3f13147b35db', '6187f71b990b48eeaca7e079b711274c', NULL, NULL, 1, 0, NULL, '2019-05-24 15:11:22', '2019-05-24 15:11:22', NULL),
	('8f3fadc4e2f54b8cb565fc9e53d24563', 'Q二级事件测试1_Q二级事件流程', '990e25c9-be49-47e1-813a-b36993a3ee52', '099e7fc423874cbea8462d48fb02ee83', NULL, NULL, 1, 0, NULL, '2019-05-24 15:30:50', '2019-05-24 15:30:50', NULL),
	('ac7f1a41464f448489d32ed4ad39d8b5', '退回退回4_流程事件测试3', '6efde8c4-4e86-4031-969a-ac32d719715e', '38cf6d3248af47d897974f990a0fe3b6', 'b04645f6-8499-4d86-90b2-075c2100ae77', 'f03e8ec6-def6-4b70-9a2d-a331384b950a', 1, 2, NULL, '2019-05-24 14:31:05', '2019-05-24 14:31:47', NULL),
	('cd5c99e6069d468a9fe143217fa41025', 'Q一级整改退回测试_Q一级事件流程（新）', '626d0e16-270b-486a-99e6-bf4bf3908d5d', '71307fbe745a48119da822e7a9ed61de', '1e4ea6d8-77a7-4459-abd6-20a58a5e9d89', 'cec2c167-3666-4a91-8f87-ad0e85b8f44a', 1, 520, NULL, '2019-05-24 16:40:10', '2019-05-24 16:40:39', NULL),
	('d0a05390748a4e9f86dcb415bddd71ac', 'fly事件测试3_流程事件测试3', '6efde8c4-4e86-4031-969a-ac32d719715e', '54b262ba79304c5c978da0e238648c94', '6c130e1f-96fd-4cfe-aa3c-e042054628cf', '2345e7c3-f395-49d1-9576-cef70ffddeca', 1, 0, NULL, '2019-05-24 10:31:23', '2019-05-24 10:31:23', NULL),
	('d3e7eb81ef514be1b98c6eb7aa38ceac', 'Q二级事件测试1_流程事件测试2', 'c9acead0-82dc-4564-bf45-3f13147b35db', '42118f8b213a44bb9a8a3099062e9575', NULL, NULL, 1, 0, NULL, '2019-05-24 15:24:06', '2019-05-24 15:24:06', NULL),
	('d7f6a5083a4443d98c1cf8b31c0bef80', 'Q二级事件测试1_流程事件测试2', 'c9acead0-82dc-4564-bf45-3f13147b35db', 'b710661f28244a98bcd3967d297c5fa4', NULL, NULL, 1, 0, NULL, '2019-05-24 15:09:09', '2019-05-24 15:09:09', NULL),
	('e0b581bf036b4cb795a0efaae7f244fe', 'Q二级作废测试_Q二级事件流程（新）', 'c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3', 'fad07d3c604e499cb588cabd6a536706', '54305421-02c8-4925-80a9-65b0ec7d796f', 'd84fbc0b-925d-45fe-a037-485ff21afa64', 1, 1090, NULL, '2019-05-24 16:25:05', '2019-05-24 16:26:02', '2019-05-24 16:26:02'),
	('e2394363e48549fbb3ec9c317adb17f3', 'Q一级作废测试_Q一级事件流程（新）', '626d0e16-270b-486a-99e6-bf4bf3908d5d', '3b506222a988495cbed46de3c5220287', '6b953064-b88d-437c-b2f0-8d5ded05fe3d', '743630a8-1cbb-4142-8afd-9bdbdbd2277b', 1, 1088, NULL, '2019-05-24 16:22:51', '2019-05-24 16:23:20', '2019-05-24 16:23:20'),
	('e8ecb827917c4312a87b61d1d474e65b', 'Q药品一级事件测试1_Q一级事件流程（新）', '626d0e16-270b-486a-99e6-bf4bf3908d5d', '4b3c69dd2c8b4a07909a670612eacfd6', '5fe8aa62-8af4-4893-ad8c-5c76dad575ed', '743630a8-1cbb-4142-8afd-9bdbdbd2277b', 1, 3860, NULL, '2019-05-24 16:01:53', '2019-05-24 16:04:46', '2019-05-24 16:04:46');
/*!40000 ALTER TABLE `workflow_instance` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.workflow_instance_storage
CREATE TABLE IF NOT EXISTS `workflow_instance_storage` (
  `id` varchar(36) NOT NULL,
  `data` text,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table rest-gamma-bdp.workflow_instance_storage: ~26 rows (approximately)
/*!40000 ALTER TABLE `workflow_instance_storage` DISABLE KEYS */;
INSERT INTO `workflow_instance_storage` (`id`, `data`, `createtime`, `updatetime`) VALUES
	('02589708fcbf47509452e3115c580fa3', '{"completed":false,"currentActivity":{"name":"AuditActivity","properties":{"failedRedirect":"1","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","activityNum":2,"enable":1,"activityName":"事件审核","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","id":"c19512c9-d706-4d52-aab3-41414f03b15f","successfulRedirect":"3","activityType":"AuditActivity","properties":"{\\"maxLevel\\":1,\\"level\\":1}"}},"currentTaskCompleted":false,"definitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","itemId":"02589708fcbf47509452e3115c580fa3","properties":{"currentActivityName":"AuditActivity"},"taskRunning":true,"taskSerialId":"2ac89c35-bf73-43d0-9f5f-bd2479633bf5","workflowDefinition":{"enable":1,"eventType":"4bc9ad82-76f2-11e9-8482-00505684f8da","id":"626d0e16-270b-486a-99e6-bf4bf3908d5d","name":"Q一级事件流程（新）","reviewLevelCount":1,"workflowDefinitionActivities":[{"activityName":"事件整改","activityNum":5,"activityType":"ReformActivity","enable":1,"id":"320470d3-ff01-4a45-b725-e34e36b2a6b5","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"6","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件追踪","activityNum":4,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"453a9a91-cc18-44e0-824e-4a4eb4392e46","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"5","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"整改审核","activityNum":6,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"5","id":"52c572e2-b543-4545-ae6f-0eab56bee398","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"7","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程结束","activityNum":7,"activityType":"EndActivity","enable":1,"id":"743630a8-1cbb-4142-8afd-9bdbdbd2277b","properties":"{\\"maxLevel\\":1,\\"level\\":1}","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"c19512c9-d706-4d52-aab3-41414f03b15f","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件结案","activityNum":3,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"cec2c167-3666-4a91-8f87-ad0e85b8f44a","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"4","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"d71be7ee-6847-4c01-82c2-a39388cfbbfa","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"ddb211be-35af-4b67-bce4-37d413751846","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"}]}}', '2019-05-24 16:48:06', '2019-05-24 16:48:06'),
	('1-1', '{"completed":false,"currentActivity":{"name":"AuditActivity","properties":{"failedRedirect":"2","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3","activityNum":3,"enable":1,"activityName":"事件审核","assigners":"e6g7bee4-2cdb-4458-a926-7d85ffdeed7b","id":"d2845e9b-b0e2-41f9-86b9-6b7bac31c25a","successfulRedirect":"4","activityType":"AuditActivity","properties":"{\\"maxLevel\\":2,\\"level\\":2}"}},"currentTaskCompleted":false,"definitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3","itemId":"1-1","properties":{"currentActivityName":"AuditActivity"},"taskId":"12713247-fd38-4e81-ae53-6098e0fc6449","taskRunning":true,"taskSerialId":"4081f8ef-9319-4f58-831e-6e4c986d115d","workflowDefinition":{"enable":1,"eventType":"4bcfd70c-76f2-11e9-8482-00505684f8da","id":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3","name":"Q二级事件流程（新）","reviewLevelCount":2,"workflowDefinitionActivities":[{"activityName":"整改审核","activityNum":7,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"6","id":"0b60e611-2586-4043-b49b-e9a5979d4f30","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"8","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件整改","activityNum":6,"activityType":"ReformActivity","enable":1,"id":"509f16de-d65d-4bbd-a459-c033b327dc1a","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"7","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件追踪","activityNum":5,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"571efa49-442a-4185-8dff-d9bd4fb054d3","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"6","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"a99250cd-7b9d-4fc9-9098-8b92956e94bb","properties":"{\\"maxLevel\\":2}","successfulRedirect":"2","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件审核","activityNum":3,"activityType":"AuditActivity","assigners":"e6g7bee4-2cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"d2845e9b-b0e2-41f9-86b9-6b7bac31c25a","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"4","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"d4a3ac09-ef85-4938-9705-5bba9b35c7db","properties":"{\\"maxLevel\\":2}","successfulRedirect":"2","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"流程结束","activityNum":8,"activityType":"EndActivity","enable":1,"id":"d84fbc0b-925d-45fe-a037-485ff21afa64","properties":"{\\"maxLevel\\":2,\\"level\\":2}","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件结案","activityNum":4,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"3","id":"e7865aca-ffb4-4dc7-a2cd-e9900a8fdf72","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"5","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"eddcf8fb-b4e3-4eac-884c-33d8b063afb2","properties":"{\\"maxLevel\\":2,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"}]}}', '2019-05-24 16:51:00', '2019-05-24 16:52:20'),
	('16c5f66d20d54908871845ff69722cf7', '{"completed":false,"currentActivity":{"name":"AuditActivity","properties":{"failedRedirect":"1","workflowDefinitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59","activityNum":2,"enable":1,"activityName":"事件审核","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","id":"8bd18945-0646-49f2-a032-e2203036ec20","successfulRedirect":"3","activityType":"AuditActivity","properties":"{\\"maxLevel\\":1,\\"level\\":1}"}},"currentTaskCompleted":false,"definitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59","itemId":"16c5f66d20d54908871845ff69722cf7","properties":{"currentActivityName":"AuditActivity"},"taskId":"0f2cd68d-38b2-4795-b012-6be324bb198d","taskRunning":true,"taskSerialId":"22617693-38f6-4dc9-864a-f0d5186db40b","workflowDefinition":{"enable":1,"eventType":"086ebee8-76f4-11e9-8482-00505684f8da","id":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59","name":"流程事件测试1","reviewLevelCount":1,"workflowDefinitionActivities":[{"activityName":"事件结案","activityNum":3,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"166de8f5-3ec1-490d-a995-76e3b5b2645d","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"4","workflowDefinitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59"},{"activityName":"事件整改","activityNum":5,"activityType":"ReformActivity","enable":1,"id":"33ea26d9-964a-4202-9dd7-354f7b9ef7e6","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"6","workflowDefinitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"43014129-4f88-444b-9b1d-17f81060c3d7","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59"},{"activityName":"流程结束","activityNum":7,"activityType":"EndActivity","enable":1,"id":"55acfbea-6afc-4269-863a-a8e182320f27","properties":"{\\"maxLevel\\":1,\\"level\\":1}","workflowDefinitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"63f12b09-a253-4d63-8d97-ad19dd9bdbed","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"8bd18945-0646-49f2-a032-e2203036ec20","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59"},{"activityName":"事件追踪","activityNum":4,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"ba61d152-0540-45ef-af6c-f054184843b8","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"5","workflowDefinitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59"},{"activityName":"整改审核","activityNum":6,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"5","id":"e6565d31-3462-4b26-9545-3503871978a8","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"7","workflowDefinitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59"}]}}', '2019-05-24 10:46:31', '2019-05-27 14:28:08'),
	('21ef127700794e15a619cc4c761c7689', '{"completed":false,"currentActivity":{"name":"CloseActivity","properties":{"failedRedirect":"3","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3","activityNum":4,"enable":1,"activityName":"事件结案","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","id":"e7865aca-ffb4-4dc7-a2cd-e9900a8fdf72","successfulRedirect":"5","activityType":"CloseActivity","properties":"{\\"maxLevel\\":2,\\"level\\":2}"}},"currentTaskCompleted":false,"definitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3","itemId":"21ef127700794e15a619cc4c761c7689","properties":{"currentActivityName":"CloseActivity"},"taskId":"41183ef7-1af5-4b55-aabd-e62fc8fae0a6","taskRunning":true,"taskSerialId":"f7df161e-e8a4-4688-ad5f-007b5d77a1ae","workflowDefinition":{"enable":1,"eventType":"4bcfd70c-76f2-11e9-8482-00505684f8da","id":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3","name":"Q二级事件流程（新）","reviewLevelCount":2,"workflowDefinitionActivities":[{"activityName":"整改审核","activityNum":7,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"6","id":"0b60e611-2586-4043-b49b-e9a5979d4f30","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"8","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件整改","activityNum":6,"activityType":"ReformActivity","enable":1,"id":"509f16de-d65d-4bbd-a459-c033b327dc1a","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"7","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件追踪","activityNum":5,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"571efa49-442a-4185-8dff-d9bd4fb054d3","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"6","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"a99250cd-7b9d-4fc9-9098-8b92956e94bb","properties":"{\\"maxLevel\\":2}","successfulRedirect":"2","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件审核","activityNum":3,"activityType":"AuditActivity","assigners":"e6g7bee4-2cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"d2845e9b-b0e2-41f9-86b9-6b7bac31c25a","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"4","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"d4a3ac09-ef85-4938-9705-5bba9b35c7db","properties":"{\\"maxLevel\\":2}","successfulRedirect":"2","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"流程结束","activityNum":8,"activityType":"EndActivity","enable":1,"id":"d84fbc0b-925d-45fe-a037-485ff21afa64","properties":"{\\"maxLevel\\":2,\\"level\\":2}","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件结案","activityNum":4,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"3","id":"e7865aca-ffb4-4dc7-a2cd-e9900a8fdf72","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"5","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"eddcf8fb-b4e3-4eac-884c-33d8b063afb2","properties":"{\\"maxLevel\\":2,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"}]}}', '2019-05-24 16:10:08', '2019-05-24 16:11:06'),
	('358c5d1a674040a99249067ea6b66665', '{"completed":true,"currentActivity":{"name":"EndActivity","properties":{"workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db","activityNum":8,"enable":1,"activityName":"流程结束","id":"565c76a4-1fa7-48e5-98c7-ca138ab06cad","activityType":"EndActivity","properties":"{\\"maxLevel\\":2,\\"level\\":2}"}},"currentTaskCompleted":true,"definitionId":"c9acead0-82dc-4564-bf45-3f13147b35db","itemId":"358c5d1a674040a99249067ea6b66665","properties":{"currentActivityName":"EndActivity"},"taskId":"83ae5bcc-9077-46c2-9d27-65d97738b89f","taskRunning":false,"taskSerialId":"b602bb25-dea3-440e-bfd5-043e81a3e2af","workflowDefinition":{"enable":1,"eventType":"087e0bab-76f4-11e9-8482-00505684f8da","id":"c9acead0-82dc-4564-bf45-3f13147b35db","name":"流程事件测试2","reviewLevelCount":2,"workflowDefinitionActivities":[{"activityName":"事件整改","activityNum":6,"activityType":"ReformActivity","enable":1,"id":"126673cc-bb9d-4a62-87df-0dc83fb83cae","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"7","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"1bd5f3c5-8e2e-48d7-abe7-38ffb9fe0b8d","properties":"{\\"maxLevel\\":2}","successfulRedirect":"2","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"流程结束","activityNum":8,"activityType":"EndActivity","enable":1,"id":"565c76a4-1fa7-48e5-98c7-ca138ab06cad","properties":"{\\"maxLevel\\":2,\\"level\\":2}","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-2cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"5b9d655b-b9e4-4df5-88e4-38283f72a80c","properties":"{\\"maxLevel\\":2,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"整改审核","activityNum":7,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"6","id":"62fc30fb-d1f9-48d8-ae80-f8bd37017b22","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"8","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"事件结案","activityNum":4,"activityType":"CloseActivity","assigners":"e6g7b2e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"3","id":"71f9a5f2-d70c-4cdf-b9b2-77f92701bc45","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"5","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"事件审核","activityNum":3,"activityType":"AuditActivity","assigners":"e6g7bee4-2cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"8edaa460-9012-4288-8467-660be84fb0bf","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"4","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"事件追踪","activityNum":5,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"a97c0530-bcc2-4fa1-a7dd-fae5bea10542","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"6","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"e9abec8b-2e9f-4da9-9f6d-5fa8412a3bb0","properties":"{\\"maxLevel\\":2}","successfulRedirect":"2","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"}]}}', '2019-05-24 10:47:39', '2019-05-24 11:06:03'),
	('3faf3907882e4be6a05f59516e05d262', '{"completed":false,"currentActivity":{"name":"CloseActivity","properties":{"failedRedirect":"4","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e","activityNum":5,"enable":1,"activityName":"事件结案","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","id":"68c48e54-4c1e-47ee-8e3a-567ecfc82a7d","successfulRedirect":"6","activityType":"CloseActivity","properties":"{\\"maxLevel\\":3,\\"level\\":3}"}},"currentTaskCompleted":false,"definitionId":"6efde8c4-4e86-4031-969a-ac32d719715e","itemId":"3faf3907882e4be6a05f59516e05d262","properties":{"currentActivityName":"CloseActivity"},"taskId":"79665a9c-4db8-4eb4-b89c-cb3e428db169","taskRunning":true,"taskSerialId":"16edf3a8-42b3-4a76-b1c1-0344c8376433","workflowDefinition":{"enable":1,"eventType":"0892e7b5-76f4-11e9-8482-00505684f8da","id":"6efde8c4-4e86-4031-969a-ac32d719715e","name":"流程事件测试3","reviewLevelCount":3,"workflowDefinitionActivities":[{"activityName":"事件整改","activityNum":7,"activityType":"ReformActivity","enable":1,"id":"14ca7f9e-f5f1-47ea-86a8-da7551bfa932","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"8","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"整改审核","activityNum":8,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"7","id":"2ddfb468-5393-4d72-a609-4bf19037b736","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"9","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"4783733d-b682-4e8c-9b8e-458877940d43","properties":"{\\"maxLevel\\":3}","successfulRedirect":"2","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件结案","activityNum":5,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"4","id":"68c48e54-4c1e-47ee-8e3a-567ecfc82a7d","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"6","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"84fb3f7e-e4e0-499b-85d8-8ae363906e63","properties":"{\\"maxLevel\\":3,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"流程结束","activityNum":9,"activityType":"EndActivity","enable":1,"id":"a1bc48f4-488d-4242-9a74-7751914935fe","properties":"{\\"maxLevel\\":3,\\"level\\":3}","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件追踪","activityNum":6,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"ab08bb75-64f6-4de4-bae1-d870623cce93","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"7","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"ab1bea85-7c61-4745-80c3-63f0b3b079b8","properties":"{\\"maxLevel\\":3}","successfulRedirect":"2","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件审核","activityNum":4,"activityType":"AuditActivity","assigners":"e6g7bee4-3cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"3","id":"c1d5cb61-5662-46b8-912f-1af828028ec0","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"5","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件审核","activityNum":3,"activityType":"AuditActivity","assigners":"e6g7bee4-2cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"f03e8ec6-def6-4b70-9a2d-a331384b950a","properties":"{\\"maxLevel\\":3,\\"level\\":2}","successfulRedirect":"4","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"}]}}', '2019-05-24 11:20:12', '2019-05-24 14:17:43'),
	('4d792274b5ca4e84bd2f8d34acd11f7a', '{"completed":false,"currentActivity":{"name":"CloseActivity","properties":{"failedRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","activityNum":3,"enable":1,"activityName":"事件结案","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","id":"cec2c167-3666-4a91-8f87-ad0e85b8f44a","successfulRedirect":"4","activityType":"CloseActivity","properties":"{\\"maxLevel\\":1,\\"level\\":1}"}},"currentTaskCompleted":false,"definitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","itemId":"4d792274b5ca4e84bd2f8d34acd11f7a","properties":{"currentActivityName":"CloseActivity"},"taskId":"f6640bad-674d-4014-b0c6-239e7e8a1f4c","taskRunning":true,"taskSerialId":"05e7d7dd-4be9-4761-a14a-d2e4921b923f","workflowDefinition":{"enable":1,"eventType":"4bc9ad82-76f2-11e9-8482-00505684f8da","id":"626d0e16-270b-486a-99e6-bf4bf3908d5d","name":"Q一级事件流程（新）","reviewLevelCount":1,"workflowDefinitionActivities":[{"activityName":"事件整改","activityNum":5,"activityType":"ReformActivity","enable":1,"id":"320470d3-ff01-4a45-b725-e34e36b2a6b5","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"6","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件追踪","activityNum":4,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"453a9a91-cc18-44e0-824e-4a4eb4392e46","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"5","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"整改审核","activityNum":6,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"5","id":"52c572e2-b543-4545-ae6f-0eab56bee398","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"7","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程结束","activityNum":7,"activityType":"EndActivity","enable":1,"id":"743630a8-1cbb-4142-8afd-9bdbdbd2277b","properties":"{\\"maxLevel\\":1,\\"level\\":1}","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"c19512c9-d706-4d52-aab3-41414f03b15f","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件结案","activityNum":3,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"cec2c167-3666-4a91-8f87-ad0e85b8f44a","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"4","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"d71be7ee-6847-4c01-82c2-a39388cfbbfa","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"ddb211be-35af-4b67-bce4-37d413751846","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"}]}}', '2019-05-24 16:43:14', '2019-05-24 16:44:30'),
	('4ee5ae981e5c4dfd8d121b37e25b0f2d', '{"completed":false,"currentActivity":{"name":"CloseActivity","properties":{"failedRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","activityNum":3,"enable":1,"activityName":"事件结案","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","id":"cec2c167-3666-4a91-8f87-ad0e85b8f44a","successfulRedirect":"4","activityType":"CloseActivity","properties":"{\\"maxLevel\\":1,\\"level\\":1}"}},"currentTaskCompleted":false,"definitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","itemId":"4ee5ae981e5c4dfd8d121b37e25b0f2d","properties":{"currentActivityName":"CloseActivity"},"taskId":"cfbd2661-6ee1-42d2-8135-f4c912f3a768","taskRunning":true,"taskSerialId":"d52f3ce2-9847-4015-8c60-24500a2eeafb","workflowDefinition":{"enable":1,"eventType":"4bc9ad82-76f2-11e9-8482-00505684f8da","id":"626d0e16-270b-486a-99e6-bf4bf3908d5d","name":"Q一级事件流程（新）","reviewLevelCount":1,"workflowDefinitionActivities":[{"activityName":"事件整改","activityNum":5,"activityType":"ReformActivity","enable":1,"id":"320470d3-ff01-4a45-b725-e34e36b2a6b5","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"6","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件追踪","activityNum":4,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"453a9a91-cc18-44e0-824e-4a4eb4392e46","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"5","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"整改审核","activityNum":6,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"5","id":"52c572e2-b543-4545-ae6f-0eab56bee398","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"7","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程结束","activityNum":7,"activityType":"EndActivity","enable":1,"id":"743630a8-1cbb-4142-8afd-9bdbdbd2277b","properties":"{\\"maxLevel\\":1,\\"level\\":1}","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"c19512c9-d706-4d52-aab3-41414f03b15f","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件结案","activityNum":3,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"cec2c167-3666-4a91-8f87-ad0e85b8f44a","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"4","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"d71be7ee-6847-4c01-82c2-a39388cfbbfa","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"ddb211be-35af-4b67-bce4-37d413751846","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"}]}}', '2019-05-24 19:33:34', '2019-05-24 19:34:18'),
	('65508b37d99940288c18c78c3827c57e', '{"completed":true,"currentActivity":{"name":"EndActivity","properties":{"workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3","activityNum":8,"enable":1,"activityName":"流程结束","id":"d84fbc0b-925d-45fe-a037-485ff21afa64","activityType":"EndActivity","properties":"{\\"maxLevel\\":2,\\"level\\":2}"}},"currentTaskCompleted":true,"definitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3","itemId":"65508b37d99940288c18c78c3827c57e","properties":{"currentActivityName":"EndActivity"},"taskId":"6d19de18-1868-4260-8006-f52181ab833b","taskRunning":false,"taskSerialId":"d6f63bdc-d201-4faa-baf2-b60a7869876c","workflowDefinition":{"enable":1,"eventType":"4bcfd70c-76f2-11e9-8482-00505684f8da","id":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3","name":"Q二级事件流程（新）","reviewLevelCount":2,"workflowDefinitionActivities":[{"activityName":"整改审核","activityNum":7,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"6","id":"0b60e611-2586-4043-b49b-e9a5979d4f30","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"8","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件整改","activityNum":6,"activityType":"ReformActivity","enable":1,"id":"509f16de-d65d-4bbd-a459-c033b327dc1a","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"7","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件追踪","activityNum":5,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"571efa49-442a-4185-8dff-d9bd4fb054d3","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"6","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"a99250cd-7b9d-4fc9-9098-8b92956e94bb","properties":"{\\"maxLevel\\":2}","successfulRedirect":"2","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件审核","activityNum":3,"activityType":"AuditActivity","assigners":"e6g7bee4-2cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"d2845e9b-b0e2-41f9-86b9-6b7bac31c25a","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"4","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"d4a3ac09-ef85-4938-9705-5bba9b35c7db","properties":"{\\"maxLevel\\":2}","successfulRedirect":"2","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"流程结束","activityNum":8,"activityType":"EndActivity","enable":1,"id":"d84fbc0b-925d-45fe-a037-485ff21afa64","properties":"{\\"maxLevel\\":2,\\"level\\":2}","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件结案","activityNum":4,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"3","id":"e7865aca-ffb4-4dc7-a2cd-e9900a8fdf72","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"5","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"eddcf8fb-b4e3-4eac-884c-33d8b063afb2","properties":"{\\"maxLevel\\":2,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"}]}}', '2019-05-24 15:56:16', '2019-05-24 16:00:48'),
	('662ac2d9c0ab4c4f9d06fb2e417775d9', '{"completed":false,"currentActivity":{"name":"AuditActivity","properties":{"failedRedirect":"2","workflowDefinitionId":"8a877680-029f-4874-8948-cf83dd922258","activityNum":3,"enable":1,"activityName":"事件审核","assigners":"e6g7bee4-2cdb-4458-a926-7d85ffdeed7b","id":"8f892b63-8002-425e-81d7-6ba093e270f2","successfulRedirect":"4","activityType":"AuditActivity","properties":"{\\"maxLevel\\":3,\\"level\\":2}"}},"currentTaskCompleted":false,"definitionId":"8a877680-029f-4874-8948-cf83dd922258","itemId":"662ac2d9c0ab4c4f9d06fb2e417775d9","properties":{"currentActivityName":"AuditActivity"},"taskId":"047df143-a5c6-4891-a2f0-40ff6afd2eb3","taskRunning":true,"taskSerialId":"3e38bcc2-44ff-49db-a1fc-c28c7f3af36f","workflowDefinition":{"enable":1,"eventType":"4bd37863-76f2-11e9-8482-00505684f8da","id":"8a877680-029f-4874-8948-cf83dd922258","name":"Q三级事件流程（新）","reviewLevelCount":3,"workflowDefinitionActivities":[{"activityName":"事件追踪","activityNum":6,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"006d7f0d-b576-4c3a-8c51-579defc05b13","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"7","workflowDefinitionId":"8a877680-029f-4874-8948-cf83dd922258"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"48e14fe0-a3ed-4d3e-a104-4b3918db085e","properties":"{\\"maxLevel\\":3,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"8a877680-029f-4874-8948-cf83dd922258"},{"activityName":"流程结束","activityNum":9,"activityType":"EndActivity","enable":1,"id":"493d71f1-8215-43ad-8e79-2c0289231605","properties":"{\\"maxLevel\\":3,\\"level\\":3}","workflowDefinitionId":"8a877680-029f-4874-8948-cf83dd922258"},{"activityName":"整改审核","activityNum":8,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"7","id":"67841b9b-73db-4fd9-a36a-a53f0433bf0b","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"9","workflowDefinitionId":"8a877680-029f-4874-8948-cf83dd922258"},{"activityName":"事件结案","activityNum":5,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"4","id":"6937d7db-8ad0-4485-b225-b7e799b9c599","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"6","workflowDefinitionId":"8a877680-029f-4874-8948-cf83dd922258"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"83967503-8763-4026-9b01-78ad6a8415ac","properties":"{\\"maxLevel\\":3}","successfulRedirect":"2","workflowDefinitionId":"8a877680-029f-4874-8948-cf83dd922258"},{"activityName":"事件审核","activityNum":3,"activityType":"AuditActivity","assigners":"e6g7bee4-2cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"8f892b63-8002-425e-81d7-6ba093e270f2","properties":"{\\"maxLevel\\":3,\\"level\\":2}","successfulRedirect":"4","workflowDefinitionId":"8a877680-029f-4874-8948-cf83dd922258"},{"activityName":"事件整改","activityNum":7,"activityType":"ReformActivity","enable":1,"id":"952f2412-23e4-4795-9680-e601e3f31651","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"8","workflowDefinitionId":"8a877680-029f-4874-8948-cf83dd922258"},{"activityName":"事件审核","activityNum":4,"activityType":"AuditActivity","assigners":"e6g7bee4-3cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"3","id":"f562af20-a81f-4c30-9dfd-92acf31a0fec","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"5","workflowDefinitionId":"8a877680-029f-4874-8948-cf83dd922258"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"fd071b3c-79db-42dd-a759-39084aac55af","properties":"{\\"maxLevel\\":3}","successfulRedirect":"2","workflowDefinitionId":"8a877680-029f-4874-8948-cf83dd922258"}]}}', '2019-05-24 18:04:51', '2019-05-24 18:06:14'),
	('672c1e2086874d9093fd103f779fe4ae', '{"completed":false,"currentActivity":{"name":"CloseActivity","properties":{"failedRedirect":"3","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db","activityNum":4,"enable":1,"activityName":"事件结案","assigners":"e6g7b2e4-ecdb-4458-a926-7d85ffdeed7b","id":"b50e63ce-da0e-4c39-b0e3-049ef29d8fcc","successfulRedirect":"5","activityType":"CloseActivity","properties":"{\\"maxLevel\\":2,\\"level\\":2}"}},"currentTaskCompleted":false,"definitionId":"c9acead0-82dc-4564-bf45-3f13147b35db","itemId":"672c1e2086874d9093fd103f779fe4ae","properties":{"currentActivityName":"CloseActivity"},"taskId":"bdab0cbc-51e1-4f50-b457-d1b69130f634","taskRunning":true,"taskSerialId":"ec2fd9b0-72a2-455b-804e-a628cad8c14c","workflowDefinition":{"enable":1,"eventType":"087e0bab-76f4-11e9-8482-00505684f8da","id":"c9acead0-82dc-4564-bf45-3f13147b35db","name":"流程事件测试2","reviewLevelCount":2,"workflowDefinitionActivities":[{"activityName":"事件审核","activityNum":3,"activityType":"AuditActivity","assigners":"e6g7bee4-2cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"0261be84-1695-4ae9-945c-48325a755160","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"4","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"1cfbed7d-26d3-4203-b4c9-72a1d99719f0","properties":"{\\"maxLevel\\":2}","successfulRedirect":"2","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"事件追踪","activityNum":5,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"2dcb2f4b-7fc3-42cf-87fe-732145968491","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"6","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"流程结束","activityNum":8,"activityType":"EndActivity","enable":1,"id":"2f24f2ce-de8e-4489-9acc-ac5f5df63ca7","properties":"{\\"maxLevel\\":2,\\"level\\":2}","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"363f0031-84c5-4d2a-adc2-669b1652830d","properties":"{\\"maxLevel\\":2}","successfulRedirect":"2","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"整改审核","activityNum":7,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"6","id":"5838ebf5-7703-438d-a8b4-78e687e6ef72","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"8","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"9dace259-5e79-45f0-9c59-7f07ac2a1580","properties":"{\\"maxLevel\\":2,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"事件整改","activityNum":6,"activityType":"ReformActivity","enable":1,"id":"a7039573-21cf-4f4b-9a94-69b0a7c8a2da","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"7","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"事件结案","activityNum":4,"activityType":"CloseActivity","assigners":"e6g7b2e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"3","id":"b50e63ce-da0e-4c39-b0e3-049ef29d8fcc","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"5","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"}]}}', '2019-05-24 11:11:51', '2019-05-24 11:13:19'),
	('68c6d6910aa445dfb679875c9fec1a17', '{"completed":false,"currentActivity":{"name":"AuditActivity","properties":{"failedRedirect":"1","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","activityNum":2,"enable":1,"activityName":"事件审核","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","id":"c19512c9-d706-4d52-aab3-41414f03b15f","successfulRedirect":"3","activityType":"AuditActivity","properties":"{\\"maxLevel\\":1,\\"level\\":1}"}},"currentTaskCompleted":false,"definitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","itemId":"68c6d6910aa445dfb679875c9fec1a17","properties":{"currentActivityName":"AuditActivity"},"taskRunning":true,"taskSerialId":"eb8329d9-0a4b-4f8d-ab09-7197c2648c09","workflowDefinition":{"enable":1,"eventType":"4bc9ad82-76f2-11e9-8482-00505684f8da","id":"626d0e16-270b-486a-99e6-bf4bf3908d5d","name":"Q一级事件流程（新）","reviewLevelCount":1,"workflowDefinitionActivities":[{"activityName":"事件整改","activityNum":5,"activityType":"ReformActivity","enable":1,"id":"320470d3-ff01-4a45-b725-e34e36b2a6b5","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"6","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件追踪","activityNum":4,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"453a9a91-cc18-44e0-824e-4a4eb4392e46","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"5","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"整改审核","activityNum":6,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"5","id":"52c572e2-b543-4545-ae6f-0eab56bee398","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"7","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程结束","activityNum":7,"activityType":"EndActivity","enable":1,"id":"743630a8-1cbb-4142-8afd-9bdbdbd2277b","properties":"{\\"maxLevel\\":1,\\"level\\":1}","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"c19512c9-d706-4d52-aab3-41414f03b15f","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件结案","activityNum":3,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"cec2c167-3666-4a91-8f87-ad0e85b8f44a","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"4","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"d71be7ee-6847-4c01-82c2-a39388cfbbfa","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"ddb211be-35af-4b67-bce4-37d413751846","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"}]}}', '2019-05-27 15:23:26', '2019-05-27 15:23:26'),
	('75af1a23d1ac42ef97d05ac6b72106ec', '{"completed":true,"currentActivity":{"name":"EndActivity","properties":{"workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3","activityNum":8,"enable":1,"activityName":"流程结束","id":"d84fbc0b-925d-45fe-a037-485ff21afa64","activityType":"EndActivity","properties":"{\\"maxLevel\\":2,\\"level\\":2}"}},"currentTaskCompleted":true,"definitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3","itemId":"75af1a23d1ac42ef97d05ac6b72106ec","properties":{"currentActivityName":"EndActivity"},"taskId":"9d01d829-c438-4d4c-80e3-3577ca783cae","taskRunning":false,"taskSerialId":"1d79c2b0-4d44-40aa-9d04-b4c2140906af","workflowDefinition":{"enable":1,"eventType":"4bcfd70c-76f2-11e9-8482-00505684f8da","id":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3","name":"Q二级事件流程（新）","reviewLevelCount":2,"workflowDefinitionActivities":[{"activityName":"整改审核","activityNum":7,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"6","id":"0b60e611-2586-4043-b49b-e9a5979d4f30","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"8","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件整改","activityNum":6,"activityType":"ReformActivity","enable":1,"id":"509f16de-d65d-4bbd-a459-c033b327dc1a","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"7","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件追踪","activityNum":5,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"571efa49-442a-4185-8dff-d9bd4fb054d3","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"6","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"a99250cd-7b9d-4fc9-9098-8b92956e94bb","properties":"{\\"maxLevel\\":2}","successfulRedirect":"2","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件审核","activityNum":3,"activityType":"AuditActivity","assigners":"e6g7bee4-2cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"d2845e9b-b0e2-41f9-86b9-6b7bac31c25a","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"4","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"d4a3ac09-ef85-4938-9705-5bba9b35c7db","properties":"{\\"maxLevel\\":2}","successfulRedirect":"2","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"流程结束","activityNum":8,"activityType":"EndActivity","enable":1,"id":"d84fbc0b-925d-45fe-a037-485ff21afa64","properties":"{\\"maxLevel\\":2,\\"level\\":2}","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件结案","activityNum":4,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"3","id":"e7865aca-ffb4-4dc7-a2cd-e9900a8fdf72","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"5","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"eddcf8fb-b4e3-4eac-884c-33d8b063afb2","properties":"{\\"maxLevel\\":2,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"}]}}', '2019-05-24 18:00:49', '2019-05-24 20:08:32'),
	('77bb4aa387ca423e8705db2d211ce742', '{"completed":false,"currentActivity":{"name":"AuditActivity","properties":{"failedRedirect":"2","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db","activityNum":3,"enable":1,"activityName":"事件审核","assigners":"e6g7bee4-2cdb-4458-a926-7d85ffdeed7b","id":"8edaa460-9012-4288-8467-660be84fb0bf","successfulRedirect":"4","activityType":"AuditActivity","properties":"{\\"maxLevel\\":2,\\"level\\":2}"}},"currentTaskCompleted":false,"definitionId":"c9acead0-82dc-4564-bf45-3f13147b35db","itemId":"77bb4aa387ca423e8705db2d211ce742","properties":{"currentActivityName":"AuditActivity"},"taskId":"09a7a4c9-a0c9-4be7-aee0-ac90e6890000","taskRunning":true,"taskSerialId":"3bdb6242-3e31-404d-9b95-03c40a16d1ff","workflowDefinition":{"enable":1,"eventType":"087e0bab-76f4-11e9-8482-00505684f8da","id":"c9acead0-82dc-4564-bf45-3f13147b35db","name":"流程事件测试2","reviewLevelCount":2,"workflowDefinitionActivities":[{"activityName":"事件整改","activityNum":6,"activityType":"ReformActivity","enable":1,"id":"126673cc-bb9d-4a62-87df-0dc83fb83cae","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"7","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"1bd5f3c5-8e2e-48d7-abe7-38ffb9fe0b8d","properties":"{\\"maxLevel\\":2}","successfulRedirect":"2","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"流程结束","activityNum":8,"activityType":"EndActivity","enable":1,"id":"565c76a4-1fa7-48e5-98c7-ca138ab06cad","properties":"{\\"maxLevel\\":2,\\"level\\":2}","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-2cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"5b9d655b-b9e4-4df5-88e4-38283f72a80c","properties":"{\\"maxLevel\\":2,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"整改审核","activityNum":7,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"6","id":"62fc30fb-d1f9-48d8-ae80-f8bd37017b22","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"8","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"事件结案","activityNum":4,"activityType":"CloseActivity","assigners":"e6g7b2e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"3","id":"71f9a5f2-d70c-4cdf-b9b2-77f92701bc45","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"5","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"事件审核","activityNum":3,"activityType":"AuditActivity","assigners":"e6g7bee4-2cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"8edaa460-9012-4288-8467-660be84fb0bf","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"4","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"事件追踪","activityNum":5,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"a97c0530-bcc2-4fa1-a7dd-fae5bea10542","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"6","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"e9abec8b-2e9f-4da9-9f6d-5fa8412a3bb0","properties":"{\\"maxLevel\\":2}","successfulRedirect":"2","workflowDefinitionId":"c9acead0-82dc-4564-bf45-3f13147b35db"}]}}', '2019-05-24 10:21:31', '2019-05-24 10:51:18'),
	('7af783560f3547c1b075c1434612c416', '{"completed":false,"currentActivity":{"name":"AuditActivity","properties":{"failedRedirect":"1","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","activityNum":2,"enable":1,"activityName":"事件审核","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","id":"c19512c9-d706-4d52-aab3-41414f03b15f","successfulRedirect":"3","activityType":"AuditActivity","properties":"{\\"maxLevel\\":1,\\"level\\":1}"}},"currentTaskCompleted":false,"definitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","itemId":"7af783560f3547c1b075c1434612c416","properties":{"currentActivityName":"AuditActivity"},"taskRunning":true,"taskSerialId":"ae327183-3cb1-462d-bd67-c4e8fdc45da5","workflowDefinition":{"enable":1,"eventType":"4bc9ad82-76f2-11e9-8482-00505684f8da","id":"626d0e16-270b-486a-99e6-bf4bf3908d5d","name":"Q一级事件流程（新）","reviewLevelCount":1,"workflowDefinitionActivities":[{"activityName":"事件整改","activityNum":5,"activityType":"ReformActivity","enable":1,"id":"320470d3-ff01-4a45-b725-e34e36b2a6b5","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"6","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件追踪","activityNum":4,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"453a9a91-cc18-44e0-824e-4a4eb4392e46","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"5","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"整改审核","activityNum":6,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"5","id":"52c572e2-b543-4545-ae6f-0eab56bee398","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"7","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程结束","activityNum":7,"activityType":"EndActivity","enable":1,"id":"743630a8-1cbb-4142-8afd-9bdbdbd2277b","properties":"{\\"maxLevel\\":1,\\"level\\":1}","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"c19512c9-d706-4d52-aab3-41414f03b15f","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件结案","activityNum":3,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"cec2c167-3666-4a91-8f87-ad0e85b8f44a","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"4","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"d71be7ee-6847-4c01-82c2-a39388cfbbfa","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"ddb211be-35af-4b67-bce4-37d413751846","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"}]}}', '2019-05-27 15:21:46', '2019-05-27 15:21:46'),
	('7d64c53f7a1a437c94bdb3f659a3f17c', '{"completed":false,"currentActivity":{"name":"ReformAuditActivity","properties":{"failedRedirect":"5","workflowDefinitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59","activityNum":6,"enable":1,"activityName":"整改审核","id":"e6565d31-3462-4b26-9545-3503871978a8","successfulRedirect":"7","activityType":"ReformAuditActivity","properties":"{\\"maxLevel\\":1,\\"level\\":1}"}},"currentTaskCompleted":false,"definitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59","itemId":"7d64c53f7a1a437c94bdb3f659a3f17c","properties":{"currentActivityName":"ReformAuditActivity"},"taskId":"f8a7bb7d-54f3-4112-9f3f-9c1461594d8a","taskRunning":true,"taskSerialId":"05b54453-c39c-4e4f-9bb9-eeccdd305c56","workflowDefinition":{"enable":1,"eventType":"086ebee8-76f4-11e9-8482-00505684f8da","id":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59","name":"流程事件测试1","reviewLevelCount":1,"workflowDefinitionActivities":[{"activityName":"事件结案","activityNum":3,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"166de8f5-3ec1-490d-a995-76e3b5b2645d","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"4","workflowDefinitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59"},{"activityName":"事件整改","activityNum":5,"activityType":"ReformActivity","enable":1,"id":"33ea26d9-964a-4202-9dd7-354f7b9ef7e6","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"6","workflowDefinitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"43014129-4f88-444b-9b1d-17f81060c3d7","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59"},{"activityName":"流程结束","activityNum":7,"activityType":"EndActivity","enable":1,"id":"55acfbea-6afc-4269-863a-a8e182320f27","properties":"{\\"maxLevel\\":1,\\"level\\":1}","workflowDefinitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"63f12b09-a253-4d63-8d97-ad19dd9bdbed","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"8bd18945-0646-49f2-a032-e2203036ec20","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59"},{"activityName":"事件追踪","activityNum":4,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"ba61d152-0540-45ef-af6c-f054184843b8","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"5","workflowDefinitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59"},{"activityName":"整改审核","activityNum":6,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"5","id":"e6565d31-3462-4b26-9545-3503871978a8","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"7","workflowDefinitionId":"b12fd71b-0b22-4c93-a16d-e5f20cf26a59"}]}}', '2019-05-24 10:19:03', '2019-05-24 10:37:34'),
	('80f0aba63a1842d281748c3520f84cf4', '{"completed":false,"currentActivity":{"name":"AuditActivity","properties":{"failedRedirect":"1","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e","activityNum":2,"enable":1,"activityName":"事件审核","assigners":"e6g7bee4-3cdb-4458-a926-7d85ffdeed7b#e6g7bee4-4cdb-4458-a926-7d85ffdeed7b#e6g7bee4-5cdb-4458-a926-7d85ffdeed7b","id":"2345e7c3-f395-49d1-9576-cef70ffddeca","successfulRedirect":"3","activityType":"AuditActivity","properties":"{\\"maxLevel\\":3,\\"level\\":1}"}},"currentTaskCompleted":false,"definitionId":"6efde8c4-4e86-4031-969a-ac32d719715e","itemId":"80f0aba63a1842d281748c3520f84cf4","properties":{"currentActivityName":"AuditActivity"},"taskRunning":true,"taskSerialId":"c2eb662d-edaf-4ac3-bc4d-4c1b797441b8","workflowDefinition":{"enable":1,"eventType":"0892e7b5-76f4-11e9-8482-00505684f8da","id":"6efde8c4-4e86-4031-969a-ac32d719715e","name":"流程事件测试3","reviewLevelCount":3,"workflowDefinitionActivities":[{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-3cdb-4458-a926-7d85ffdeed7b#e6g7bee4-4cdb-4458-a926-7d85ffdeed7b#e6g7bee4-5cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"2345e7c3-f395-49d1-9576-cef70ffddeca","properties":"{\\"maxLevel\\":3,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件审核","activityNum":4,"activityType":"AuditActivity","assigners":"e6g7bee4-3cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"3","id":"4535f19a-1c4a-42d3-81b3-5d5c765beab5","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"5","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件审核","activityNum":3,"activityType":"AuditActivity","assigners":"e6g7bee4-3cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"7e86c0ba-0571-415e-8974-62248126ef34","properties":"{\\"maxLevel\\":3,\\"level\\":2}","successfulRedirect":"4","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件整改","activityNum":7,"activityType":"ReformActivity","enable":1,"id":"88bcf0d2-c4ae-42b7-aef6-5cd80d76233e","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"8","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件追踪","activityNum":6,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"97071816-b319-4215-b1d2-da4c9d5873e6","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"7","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"9c15ed04-b301-4425-a889-7ed65e6e76ec","properties":"{\\"maxLevel\\":3}","successfulRedirect":"2","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"整改审核","activityNum":8,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"7","id":"ae786fba-705e-4793-b778-6aab1bce6cf4","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"9","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"b9509547-7a44-4ad3-9a97-30a4cfa970c7","properties":"{\\"maxLevel\\":3}","successfulRedirect":"2","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件结案","activityNum":5,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"4","id":"f031b057-12db-47a3-8105-f58d8f4f4701","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"6","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"流程结束","activityNum":9,"activityType":"EndActivity","enable":1,"id":"f5359d90-7737-46fa-963a-321319c0c06c","properties":"{\\"maxLevel\\":3,\\"level\\":3}","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"}]}}', '2019-05-24 10:48:35', '2019-05-24 10:48:36'),
	('8448a85b3d214bcdafaefc2cc0ab1e1a', '{"completed":false,"currentActivity":{"name":"ReportActivity","properties":{"workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","activityNum":1,"enable":1,"activityName":"事件上报","id":"d71be7ee-6847-4c01-82c2-a39388cfbbfa","successfulRedirect":"2","activityType":"ReportActivity","properties":"{\\"maxLevel\\":1}"}},"currentTaskCompleted":false,"definitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","itemId":"8448a85b3d214bcdafaefc2cc0ab1e1a","properties":{"currentActivityName":"ReportActivity"},"taskId":"ea061f02-e047-42c5-87a8-a993a423556a","taskRunning":true,"taskSerialId":"81a3450d-00c7-4fde-b213-63053c0d29cf","workflowDefinition":{"enable":1,"eventType":"4bc9ad82-76f2-11e9-8482-00505684f8da","id":"626d0e16-270b-486a-99e6-bf4bf3908d5d","name":"Q一级事件流程（新）","reviewLevelCount":1,"workflowDefinitionActivities":[{"activityName":"事件整改","activityNum":5,"activityType":"ReformActivity","enable":1,"id":"320470d3-ff01-4a45-b725-e34e36b2a6b5","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"6","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件追踪","activityNum":4,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"453a9a91-cc18-44e0-824e-4a4eb4392e46","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"5","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"整改审核","activityNum":6,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"5","id":"52c572e2-b543-4545-ae6f-0eab56bee398","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"7","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程结束","activityNum":7,"activityType":"EndActivity","enable":1,"id":"743630a8-1cbb-4142-8afd-9bdbdbd2277b","properties":"{\\"maxLevel\\":1,\\"level\\":1}","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"c19512c9-d706-4d52-aab3-41414f03b15f","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件结案","activityNum":3,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"cec2c167-3666-4a91-8f87-ad0e85b8f44a","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"4","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"d71be7ee-6847-4c01-82c2-a39388cfbbfa","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"ddb211be-35af-4b67-bce4-37d413751846","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"}]}}', '2019-05-24 16:06:01', '2019-05-24 16:07:07'),
	('8709a133eaa749448bd78745adae4254', '{"completed":true,"currentActivity":{"name":"EndActivity","properties":{"workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e","activityNum":9,"enable":1,"activityName":"流程结束","id":"a1bc48f4-488d-4242-9a74-7751914935fe","activityType":"EndActivity","properties":"{\\"maxLevel\\":3,\\"level\\":3}"}},"currentTaskCompleted":true,"definitionId":"6efde8c4-4e86-4031-969a-ac32d719715e","itemId":"8709a133eaa749448bd78745adae4254","properties":{"currentActivityName":"EndActivity"},"taskId":"5ac5a502-a373-4c21-b99d-7b13dee758dd","taskRunning":false,"taskSerialId":"2185c6fd-6d37-4ffa-ac2f-98a672aa035e","workflowDefinition":{"enable":1,"eventType":"0892e7b5-76f4-11e9-8482-00505684f8da","id":"6efde8c4-4e86-4031-969a-ac32d719715e","name":"流程事件测试3","reviewLevelCount":3,"workflowDefinitionActivities":[{"activityName":"事件整改","activityNum":7,"activityType":"ReformActivity","enable":1,"id":"14ca7f9e-f5f1-47ea-86a8-da7551bfa932","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"8","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"整改审核","activityNum":8,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"7","id":"2ddfb468-5393-4d72-a609-4bf19037b736","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"9","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"4783733d-b682-4e8c-9b8e-458877940d43","properties":"{\\"maxLevel\\":3}","successfulRedirect":"2","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件结案","activityNum":5,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"4","id":"68c48e54-4c1e-47ee-8e3a-567ecfc82a7d","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"6","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"84fb3f7e-e4e0-499b-85d8-8ae363906e63","properties":"{\\"maxLevel\\":3,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"流程结束","activityNum":9,"activityType":"EndActivity","enable":1,"id":"a1bc48f4-488d-4242-9a74-7751914935fe","properties":"{\\"maxLevel\\":3,\\"level\\":3}","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件追踪","activityNum":6,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"ab08bb75-64f6-4de4-bae1-d870623cce93","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"7","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"ab1bea85-7c61-4745-80c3-63f0b3b079b8","properties":"{\\"maxLevel\\":3}","successfulRedirect":"2","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件审核","activityNum":4,"activityType":"AuditActivity","assigners":"e6g7bee4-3cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"3","id":"c1d5cb61-5662-46b8-912f-1af828028ec0","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"5","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件审核","activityNum":3,"activityType":"AuditActivity","assigners":"e6g7bee4-2cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"f03e8ec6-def6-4b70-9a2d-a331384b950a","properties":"{\\"maxLevel\\":3,\\"level\\":2}","successfulRedirect":"4","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"}]}}', '2019-05-24 14:42:12', '2019-05-24 14:53:10'),
	('ac7f1a41464f448489d32ed4ad39d8b5', '{"completed":false,"currentActivity":{"name":"AuditActivity","properties":{"failedRedirect":"2","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e","activityNum":3,"enable":1,"activityName":"事件审核","assigners":"e6g7bee4-2cdb-4458-a926-7d85ffdeed7b","id":"f03e8ec6-def6-4b70-9a2d-a331384b950a","successfulRedirect":"4","activityType":"AuditActivity","properties":"{\\"maxLevel\\":3,\\"level\\":2}"}},"currentTaskCompleted":false,"definitionId":"6efde8c4-4e86-4031-969a-ac32d719715e","itemId":"ac7f1a41464f448489d32ed4ad39d8b5","properties":{"currentActivityName":"AuditActivity"},"taskId":"3babd6c3-3b8c-48be-b2cb-fadc6addc985","taskRunning":true,"taskSerialId":"b04645f6-8499-4d86-90b2-075c2100ae77","workflowDefinition":{"enable":1,"eventType":"0892e7b5-76f4-11e9-8482-00505684f8da","id":"6efde8c4-4e86-4031-969a-ac32d719715e","name":"流程事件测试3","reviewLevelCount":3,"workflowDefinitionActivities":[{"activityName":"事件整改","activityNum":7,"activityType":"ReformActivity","enable":1,"id":"14ca7f9e-f5f1-47ea-86a8-da7551bfa932","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"8","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"整改审核","activityNum":8,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"7","id":"2ddfb468-5393-4d72-a609-4bf19037b736","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"9","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"4783733d-b682-4e8c-9b8e-458877940d43","properties":"{\\"maxLevel\\":3}","successfulRedirect":"2","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件结案","activityNum":5,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"4","id":"68c48e54-4c1e-47ee-8e3a-567ecfc82a7d","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"6","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"84fb3f7e-e4e0-499b-85d8-8ae363906e63","properties":"{\\"maxLevel\\":3,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"流程结束","activityNum":9,"activityType":"EndActivity","enable":1,"id":"a1bc48f4-488d-4242-9a74-7751914935fe","properties":"{\\"maxLevel\\":3,\\"level\\":3}","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件追踪","activityNum":6,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"ab08bb75-64f6-4de4-bae1-d870623cce93","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"7","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"ab1bea85-7c61-4745-80c3-63f0b3b079b8","properties":"{\\"maxLevel\\":3}","successfulRedirect":"2","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件审核","activityNum":4,"activityType":"AuditActivity","assigners":"e6g7bee4-3cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"3","id":"c1d5cb61-5662-46b8-912f-1af828028ec0","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"5","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件审核","activityNum":3,"activityType":"AuditActivity","assigners":"e6g7bee4-2cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"f03e8ec6-def6-4b70-9a2d-a331384b950a","properties":"{\\"maxLevel\\":3,\\"level\\":2}","successfulRedirect":"4","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"}]}}', '2019-05-24 14:31:05', '2019-05-24 14:31:46'),
	('cd5c99e6069d468a9fe143217fa41025', '{"completed":false,"currentActivity":{"name":"CloseActivity","properties":{"failedRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","activityNum":3,"enable":1,"activityName":"事件结案","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","id":"cec2c167-3666-4a91-8f87-ad0e85b8f44a","successfulRedirect":"4","activityType":"CloseActivity","properties":"{\\"maxLevel\\":1,\\"level\\":1}"}},"currentTaskCompleted":false,"definitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","itemId":"cd5c99e6069d468a9fe143217fa41025","properties":{"currentActivityName":"CloseActivity"},"taskId":"53de886f-c5a7-4458-ab62-fa224b026497","taskRunning":true,"taskSerialId":"1e4ea6d8-77a7-4459-abd6-20a58a5e9d89","workflowDefinition":{"enable":1,"eventType":"4bc9ad82-76f2-11e9-8482-00505684f8da","id":"626d0e16-270b-486a-99e6-bf4bf3908d5d","name":"Q一级事件流程（新）","reviewLevelCount":1,"workflowDefinitionActivities":[{"activityName":"事件整改","activityNum":5,"activityType":"ReformActivity","enable":1,"id":"320470d3-ff01-4a45-b725-e34e36b2a6b5","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"6","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件追踪","activityNum":4,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"453a9a91-cc18-44e0-824e-4a4eb4392e46","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"5","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"整改审核","activityNum":6,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"5","id":"52c572e2-b543-4545-ae6f-0eab56bee398","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"7","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程结束","activityNum":7,"activityType":"EndActivity","enable":1,"id":"743630a8-1cbb-4142-8afd-9bdbdbd2277b","properties":"{\\"maxLevel\\":1,\\"level\\":1}","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"c19512c9-d706-4d52-aab3-41414f03b15f","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件结案","activityNum":3,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"cec2c167-3666-4a91-8f87-ad0e85b8f44a","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"4","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"d71be7ee-6847-4c01-82c2-a39388cfbbfa","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"ddb211be-35af-4b67-bce4-37d413751846","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"}]}}', '2019-05-24 16:40:11', '2019-05-24 16:40:39'),
	('d0a05390748a4e9f86dcb415bddd71ac', '{"completed":false,"currentActivity":{"name":"AuditActivity","properties":{"failedRedirect":"1","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e","activityNum":2,"enable":1,"activityName":"事件审核","assigners":"e6g7bee4-3cdb-4458-a926-7d85ffdeed7b#e6g7bee4-4cdb-4458-a926-7d85ffdeed7b#e6g7bee4-5cdb-4458-a926-7d85ffdeed7b","id":"2345e7c3-f395-49d1-9576-cef70ffddeca","successfulRedirect":"3","activityType":"AuditActivity","properties":"{\\"maxLevel\\":3,\\"level\\":1}"}},"currentTaskCompleted":false,"definitionId":"6efde8c4-4e86-4031-969a-ac32d719715e","itemId":"d0a05390748a4e9f86dcb415bddd71ac","properties":{"currentActivityName":"AuditActivity"},"taskRunning":true,"taskSerialId":"6c130e1f-96fd-4cfe-aa3c-e042054628cf","workflowDefinition":{"enable":1,"eventType":"0892e7b5-76f4-11e9-8482-00505684f8da","id":"6efde8c4-4e86-4031-969a-ac32d719715e","name":"流程事件测试3","reviewLevelCount":3,"workflowDefinitionActivities":[{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-3cdb-4458-a926-7d85ffdeed7b#e6g7bee4-4cdb-4458-a926-7d85ffdeed7b#e6g7bee4-5cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"2345e7c3-f395-49d1-9576-cef70ffddeca","properties":"{\\"maxLevel\\":3,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件审核","activityNum":4,"activityType":"AuditActivity","assigners":"e6g7bee4-3cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"3","id":"4535f19a-1c4a-42d3-81b3-5d5c765beab5","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"5","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件审核","activityNum":3,"activityType":"AuditActivity","assigners":"e6g7bee4-3cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"7e86c0ba-0571-415e-8974-62248126ef34","properties":"{\\"maxLevel\\":3,\\"level\\":2}","successfulRedirect":"4","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件整改","activityNum":7,"activityType":"ReformActivity","enable":1,"id":"88bcf0d2-c4ae-42b7-aef6-5cd80d76233e","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"8","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件追踪","activityNum":6,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"97071816-b319-4215-b1d2-da4c9d5873e6","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"7","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"9c15ed04-b301-4425-a889-7ed65e6e76ec","properties":"{\\"maxLevel\\":3}","successfulRedirect":"2","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"整改审核","activityNum":8,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"7","id":"ae786fba-705e-4793-b778-6aab1bce6cf4","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"9","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"b9509547-7a44-4ad3-9a97-30a4cfa970c7","properties":"{\\"maxLevel\\":3}","successfulRedirect":"2","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"事件结案","activityNum":5,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"4","id":"f031b057-12db-47a3-8105-f58d8f4f4701","properties":"{\\"maxLevel\\":3,\\"level\\":3}","successfulRedirect":"6","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"},{"activityName":"流程结束","activityNum":9,"activityType":"EndActivity","enable":1,"id":"f5359d90-7737-46fa-963a-321319c0c06c","properties":"{\\"maxLevel\\":3,\\"level\\":3}","workflowDefinitionId":"6efde8c4-4e86-4031-969a-ac32d719715e"}]}}', '2019-05-24 10:31:23', '2019-05-24 10:31:23'),
	('e0b581bf036b4cb795a0efaae7f244fe', '{"completed":true,"currentActivity":{"name":"EndActivity","properties":{"workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3","activityNum":8,"enable":1,"activityName":"流程结束","id":"d84fbc0b-925d-45fe-a037-485ff21afa64","activityType":"EndActivity","properties":"{\\"maxLevel\\":2,\\"level\\":2}"}},"currentTaskCompleted":true,"definitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3","itemId":"e0b581bf036b4cb795a0efaae7f244fe","properties":{"currentActivityName":"EndActivity"},"taskId":"daeca88d-d9b9-4e1d-a9fa-88e8d194b280","taskRunning":false,"taskSerialId":"54305421-02c8-4925-80a9-65b0ec7d796f","workflowDefinition":{"enable":1,"eventType":"4bcfd70c-76f2-11e9-8482-00505684f8da","id":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3","name":"Q二级事件流程（新）","reviewLevelCount":2,"workflowDefinitionActivities":[{"activityName":"整改审核","activityNum":7,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"6","id":"0b60e611-2586-4043-b49b-e9a5979d4f30","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"8","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件整改","activityNum":6,"activityType":"ReformActivity","enable":1,"id":"509f16de-d65d-4bbd-a459-c033b327dc1a","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"7","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件追踪","activityNum":5,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"571efa49-442a-4185-8dff-d9bd4fb054d3","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"6","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"a99250cd-7b9d-4fc9-9098-8b92956e94bb","properties":"{\\"maxLevel\\":2}","successfulRedirect":"2","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件审核","activityNum":3,"activityType":"AuditActivity","assigners":"e6g7bee4-2cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"d2845e9b-b0e2-41f9-86b9-6b7bac31c25a","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"4","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"d4a3ac09-ef85-4938-9705-5bba9b35c7db","properties":"{\\"maxLevel\\":2}","successfulRedirect":"2","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"流程结束","activityNum":8,"activityType":"EndActivity","enable":1,"id":"d84fbc0b-925d-45fe-a037-485ff21afa64","properties":"{\\"maxLevel\\":2,\\"level\\":2}","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件结案","activityNum":4,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"3","id":"e7865aca-ffb4-4dc7-a2cd-e9900a8fdf72","properties":"{\\"maxLevel\\":2,\\"level\\":2}","successfulRedirect":"5","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"eddcf8fb-b4e3-4eac-884c-33d8b063afb2","properties":"{\\"maxLevel\\":2,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"c4c9a01d-c59e-400b-9d42-03bbeb5ad8c3"}]}}', '2019-05-24 16:25:06', '2019-05-24 16:26:02'),
	('e2394363e48549fbb3ec9c317adb17f3', '{"completed":true,"currentActivity":{"name":"EndActivity","properties":{"workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","activityNum":7,"enable":1,"activityName":"流程结束","id":"743630a8-1cbb-4142-8afd-9bdbdbd2277b","activityType":"EndActivity","properties":"{\\"maxLevel\\":1,\\"level\\":1}"}},"currentTaskCompleted":true,"definitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","itemId":"e2394363e48549fbb3ec9c317adb17f3","properties":{"currentActivityName":"EndActivity"},"taskId":"a83f43b3-751a-46b4-a6ac-3243027acd9c","taskRunning":false,"taskSerialId":"6b953064-b88d-437c-b2f0-8d5ded05fe3d","workflowDefinition":{"enable":1,"eventType":"4bc9ad82-76f2-11e9-8482-00505684f8da","id":"626d0e16-270b-486a-99e6-bf4bf3908d5d","name":"Q一级事件流程（新）","reviewLevelCount":1,"workflowDefinitionActivities":[{"activityName":"事件整改","activityNum":5,"activityType":"ReformActivity","enable":1,"id":"320470d3-ff01-4a45-b725-e34e36b2a6b5","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"6","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件追踪","activityNum":4,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"453a9a91-cc18-44e0-824e-4a4eb4392e46","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"5","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"整改审核","activityNum":6,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"5","id":"52c572e2-b543-4545-ae6f-0eab56bee398","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"7","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程结束","activityNum":7,"activityType":"EndActivity","enable":1,"id":"743630a8-1cbb-4142-8afd-9bdbdbd2277b","properties":"{\\"maxLevel\\":1,\\"level\\":1}","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"c19512c9-d706-4d52-aab3-41414f03b15f","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件结案","activityNum":3,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"cec2c167-3666-4a91-8f87-ad0e85b8f44a","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"4","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"d71be7ee-6847-4c01-82c2-a39388cfbbfa","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"ddb211be-35af-4b67-bce4-37d413751846","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"}]}}', '2019-05-24 16:22:51', '2019-05-24 16:23:20'),
	('e8ecb827917c4312a87b61d1d474e65b', '{"completed":true,"currentActivity":{"name":"EndActivity","properties":{"workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","activityNum":7,"enable":1,"activityName":"流程结束","id":"743630a8-1cbb-4142-8afd-9bdbdbd2277b","activityType":"EndActivity","properties":"{\\"maxLevel\\":1,\\"level\\":1}"}},"currentTaskCompleted":true,"definitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","itemId":"e8ecb827917c4312a87b61d1d474e65b","properties":{"currentActivityName":"EndActivity"},"taskId":"6361b43f-4991-4295-8220-940b5e24f697","taskRunning":false,"taskSerialId":"5fe8aa62-8af4-4893-ad8c-5c76dad575ed","workflowDefinition":{"enable":1,"eventType":"4bc9ad82-76f2-11e9-8482-00505684f8da","id":"626d0e16-270b-486a-99e6-bf4bf3908d5d","name":"Q一级事件流程（新）","reviewLevelCount":1,"workflowDefinitionActivities":[{"activityName":"事件整改","activityNum":5,"activityType":"ReformActivity","enable":1,"id":"320470d3-ff01-4a45-b725-e34e36b2a6b5","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"6","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件追踪","activityNum":4,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"453a9a91-cc18-44e0-824e-4a4eb4392e46","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"5","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"整改审核","activityNum":6,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"5","id":"52c572e2-b543-4545-ae6f-0eab56bee398","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"7","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程结束","activityNum":7,"activityType":"EndActivity","enable":1,"id":"743630a8-1cbb-4142-8afd-9bdbdbd2277b","properties":"{\\"maxLevel\\":1,\\"level\\":1}","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"c19512c9-d706-4d52-aab3-41414f03b15f","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件结案","activityNum":3,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"cec2c167-3666-4a91-8f87-ad0e85b8f44a","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"4","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"d71be7ee-6847-4c01-82c2-a39388cfbbfa","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"ddb211be-35af-4b67-bce4-37d413751846","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"}]}}', '2019-05-24 16:01:53', '2019-05-24 16:04:46'),
	('f2cc7f214ff74dbba0da5327895589a7', '{"completed":false,"currentActivity":{"name":"AuditActivity","properties":{"failedRedirect":"1","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","activityNum":2,"enable":1,"activityName":"事件审核","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","id":"c19512c9-d706-4d52-aab3-41414f03b15f","successfulRedirect":"3","activityType":"AuditActivity","properties":"{\\"maxLevel\\":1,\\"level\\":1}"}},"currentTaskCompleted":false,"definitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d","itemId":"f2cc7f214ff74dbba0da5327895589a7","properties":{"currentActivityName":"AuditActivity"},"taskRunning":true,"taskSerialId":"341474c1-7002-42ef-b988-d838a25468f9","workflowDefinition":{"enable":1,"eventType":"4bc9ad82-76f2-11e9-8482-00505684f8da","id":"626d0e16-270b-486a-99e6-bf4bf3908d5d","name":"Q一级事件流程（新）","reviewLevelCount":1,"workflowDefinitionActivities":[{"activityName":"事件整改","activityNum":5,"activityType":"ReformActivity","enable":1,"id":"320470d3-ff01-4a45-b725-e34e36b2a6b5","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"6","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件追踪","activityNum":4,"activityType":"TraceActivity","assigners":"e6g71ee4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"id":"453a9a91-cc18-44e0-824e-4a4eb4392e46","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"5","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"整改审核","activityNum":6,"activityType":"ReformAuditActivity","enable":1,"failedRedirect":"5","id":"52c572e2-b543-4545-ae6f-0eab56bee398","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"7","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程结束","activityNum":7,"activityType":"EndActivity","enable":1,"id":"743630a8-1cbb-4142-8afd-9bdbdbd2277b","properties":"{\\"maxLevel\\":1,\\"level\\":1}","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件审核","activityNum":2,"activityType":"AuditActivity","assigners":"e6g7bee4-1cdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"1","id":"c19512c9-d706-4d52-aab3-41414f03b15f","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"3","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件结案","activityNum":3,"activityType":"CloseActivity","assigners":"e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b","enable":1,"failedRedirect":"2","id":"cec2c167-3666-4a91-8f87-ad0e85b8f44a","properties":"{\\"maxLevel\\":1,\\"level\\":1}","successfulRedirect":"4","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"事件上报","activityNum":1,"activityType":"ReportActivity","enable":1,"id":"d71be7ee-6847-4c01-82c2-a39388cfbbfa","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"},{"activityName":"流程开始","activityNum":0,"activityType":"StartActivity","enable":1,"id":"ddb211be-35af-4b67-bce4-37d413751846","properties":"{\\"maxLevel\\":1}","successfulRedirect":"2","workflowDefinitionId":"626d0e16-270b-486a-99e6-bf4bf3908d5d"}]}}', '2019-05-24 17:49:22', '2019-05-24 17:49:22');
/*!40000 ALTER TABLE `workflow_instance_storage` ENABLE KEYS */;


-- Dumping structure for table rest-gamma-bdp.workflow_task
CREATE TABLE IF NOT EXISTS `workflow_task` (
  `id` varchar(50) NOT NULL,
  `workflow_instance_id` varchar(50) DEFAULT NULL COMMENT '流程实例ID',
  `serial_id` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '任务名称',
  `assigner` varchar(50) DEFAULT NULL COMMENT '执行人',
  `completed` int(1) DEFAULT NULL COMMENT '是否完成',
  `enable` int(11) DEFAULT NULL COMMENT '是否激活',
  `detail` text COMMENT '审核内容，JSON格式',
  `type` int(11) DEFAULT NULL COMMENT '任务类型: Report = 1, Audit = 2,  Close = 4, Trace = 8,  Reform = 16,  Reform_Audit = 32',
  `result` int(11) DEFAULT NULL COMMENT '执行结果:  无状态=普通提交表单=NONE=0,  审核通过(PASS)=1, 退回(RETURNED)=2, 作废(CANCEL)=4',
  `level` int(11) DEFAULT NULL COMMENT '负责存储task的审核级别',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='工作流程任务';

-- Dumping data for table rest-gamma-bdp.workflow_task: ~109 rows (approximately)
/*!40000 ALTER TABLE `workflow_task` DISABLE KEYS */;
INSERT INTO `workflow_task` (`id`, `workflow_instance_id`, `serial_id`, `name`, `assigner`, `completed`, `enable`, `detail`, `type`, `result`, `level`, `create_time`, `update_time`) VALUES
	('01a19c50-8f20-4720-9b93-813fd3b47184', '662ac2d9c0ab4c4f9d06fb2e417775d9', '3e38bcc2-44ff-49db-a1fc-c28c7f3af36f', '事件审核task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 2, 0, 2, '2019-05-24 18:06:14', '2019-05-24 18:06:14'),
	('047df143-a5c6-4891-a2f0-40ff6afd2eb3', '662ac2d9c0ab4c4f9d06fb2e417775d9', '37b45ea5-1bdc-43ce-869c-558c7f6104ff', '事件审核task', 'e6g7bee4-3cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"退回"}', 2, 2, 3, '2019-05-24 18:06:14', '2019-05-24 18:06:14'),
	('09a7a4c9-a0c9-4be7-aee0-ac90e6890000', '77bb4aa387ca423e8705db2d211ce742', '54667c97-10b9-4daf-a821-6e33e373f42d', '事件审核task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"111"}', 2, 1, 1, '2019-05-24 10:51:18', '2019-05-24 10:51:18'),
	('0c2e0cd9-bcaf-4e91-af86-5d8e1eb32c05', '7d64c53f7a1a437c94bdb3f659a3f17c', '8fa288ec-1ccc-47ee-9924-fdeddbeeb6e4', '事件整改task', 'e6g7bee4-3cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 16, 0, NULL, '2019-05-24 10:34:58', '2019-05-24 10:34:58'),
	('0d334203-262d-4b22-aa87-830b20c664fd', '75af1a23d1ac42ef97d05ac6b72106ec', '55759521-c502-496d-bd5b-92b7bc590156', '事件整改task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 16, 0, NULL, '2019-05-24 20:07:32', '2019-05-24 20:07:32'),
	('0f2cd68d-38b2-4795-b012-6be324bb198d', '16c5f66d20d54908871845ff69722cf7', 'f3961032-761a-4aa8-adc9-d37ddc442bd0', '事件上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 10:48:39', '2019-05-27 14:27:58'),
	('12713247-fd38-4e81-ae53-6098e0fc6449', '1-1', 'ac649b9c-6f56-4e75-82d8-4557afa392b6', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 1, 1, NULL, 2, 1, 1, '2019-05-24 16:50:37', '2019-05-24 16:51:56'),
	('12cea4c2-d00e-492b-ade3-a78c380f6eea', 'd0a05390748a4e9f86dcb415bddd71ac', '6c130e1f-96fd-4cfe-aa3c-e042054628cf', '事件审核task', 'e6g7bee4-3cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 2, 0, 1, '2019-05-24 10:31:24', '2019-05-24 10:31:24'),
	('149c214a-3007-482f-ae30-708e940a724f', 'e8ecb827917c4312a87b61d1d474e65b', '58a416f6-a582-484e-af50-70eb9cf59457', '事件整改task', 'e6g7bee4-3cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":[""],"comment":"护士整改"}', 16, 1, NULL, '2019-05-24 16:03:41', '2019-05-24 16:04:18'),
	('1f7532f0-ef6e-4e6d-b31d-c0218f1f6223', '3faf3907882e4be6a05f59516e05d262', '16edf3a8-42b3-4a76-b1c1-0344c8376433', '事件结案task', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 4, 0, NULL, '2019-05-24 14:17:44', '2019-05-24 14:17:44'),
	('218c969c-e0ac-4e01-b1d1-0846bec8ca9b', '02589708fcbf47509452e3115c580fa3', 'fbfe9f07-3297-4fdf-b7c2-00ef1ee9eb52', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 16:48:06', '2019-05-24 16:48:06'),
	('23016aa6-f2fc-467d-b037-c2a5a128c5fe', '1-1', '4081f8ef-9319-4f58-831e-6e4c986d115d', '事件审核task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 1, 1, NULL, 2, 2, 2, '2019-05-24 16:51:56', '2019-05-24 16:53:21'),
	('24adf933-7c1b-4bca-a4a8-d754b61614c5', '7af783560f3547c1b075c1434612c416', 'f9a230df-e65a-4422-8637-b1b8a360f4d4', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-27 15:21:46', '2019-05-27 15:21:46'),
	('26691018-51a6-4fcc-b4ca-b564f2581958', 'f2cc7f214ff74dbba0da5327895589a7', '341474c1-7002-42ef-b988-d838a25468f9', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 2, 0, 1, '2019-05-24 17:49:23', '2019-05-24 17:49:23'),
	('26d8de36-cec7-49a1-9767-abc53ff8c157', '16c5f66d20d54908871845ff69722cf7', 'd956c3ae-0ef4-4cb8-aab5-aaa70f99f020', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 10:46:31', '2019-05-24 10:46:31'),
	('2afc1375-8091-47e9-ad03-05d36de62630', '80f0aba63a1842d281748c3520f84cf4', 'c2eb662d-edaf-4ac3-bc4d-4c1b797441b8', '事件审核task', 'e6g7bee4-3cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 2, 0, 1, '2019-05-24 10:48:36', '2019-05-24 10:48:36'),
	('31e865ad-4102-445d-be9d-437803134f78', '68c6d6910aa445dfb679875c9fec1a17', 'eb8329d9-0a4b-4f8d-ab09-7197c2648c09', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 2, 0, 1, '2019-05-27 15:23:26', '2019-05-27 15:23:26'),
	('32039e01-c0b2-45c8-811c-0c341f898dd1', '16c5f66d20d54908871845ff69722cf7', '143b4ab5-ce04-4653-9304-521ed6a21309', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"222"}', 2, 2, 1, '2019-05-24 10:48:39', '2019-05-24 10:48:39'),
	('35d62048-f721-4348-8aa0-bf94ba34f390', 'd0a05390748a4e9f86dcb415bddd71ac', '6c130e1f-96fd-4cfe-aa3c-e042054628cf', '事件审核task', 'e6g7bee4-4cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 2, 0, 1, '2019-05-24 10:31:24', '2019-05-24 10:31:24'),
	('3babd6c3-3b8c-48be-b2cb-fadc6addc985', 'ac7f1a41464f448489d32ed4ad39d8b5', 'e59dc81b-4072-4e9c-a434-322f5f8b3a6d', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"1级通过"}', 2, 1, 1, '2019-05-24 14:31:46', '2019-05-24 14:31:47'),
	('3d1f45ac-b7b3-419f-8b64-1afeeee3bb67', '4ee5ae981e5c4dfd8d121b37e25b0f2d', 'e6915b0c-e145-43ba-a5db-0bc3555d5279', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 19:33:12', '2019-05-24 19:33:12'),
	('4055db4b-ab01-486c-a34b-ffcb78ba3159', 'cd5c99e6069d468a9fe143217fa41025', 'fc1d8b51-5984-4f44-a896-137ca3b80a15', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 16:40:11', '2019-05-24 16:40:11'),
	('41183ef7-1af5-4b55-aabd-e62fc8fae0a6', '21ef127700794e15a619cc4c761c7689', 'a89fa2a8-276d-4382-9f2d-c3f9b076f031', '事件审核task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"不合格"}', 2, 2, 2, '2019-05-24 16:11:06', '2019-05-24 16:11:06'),
	('426630d5-d267-4dde-b3d9-734729462eba', '8448a85b3d214bcdafaefc2cc0ab1e1a', '81a3450d-00c7-4fde-b213-63053c0d29cf', '事件上报task', '1', 0, 1, NULL, 1, 0, NULL, '2019-05-24 16:07:08', '2019-05-24 16:07:08'),
	('474c20e8-a44e-475b-af67-28935e67cd4d', '80f0aba63a1842d281748c3520f84cf4', 'c2eb662d-edaf-4ac3-bc4d-4c1b797441b8', '事件审核task', 'e6g7bee4-4cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 2, 0, 1, '2019-05-24 10:48:36', '2019-05-24 10:48:36'),
	('4b7cd909-667b-4d91-adb8-d36249daba3f', '7d64c53f7a1a437c94bdb3f659a3f17c', 'c1b57134-0e17-4658-ba2c-96eab74b9a9c', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 10:19:03', '2019-05-24 10:19:03'),
	('4d730595-4f2a-4dec-ac16-0d1dbb1cf81e', '75af1a23d1ac42ef97d05ac6b72106ec', '69a61c47-8853-4757-a694-bae9879b18e6', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"通过"}', 2, 1, 1, '2019-05-24 18:01:32', '2019-05-24 18:01:32'),
	('53de886f-c5a7-4458-ab62-fa224b026497', 'cd5c99e6069d468a9fe143217fa41025', 'e36a695e-b499-434a-8f91-634186a19ba9', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"通过"}', 2, 1, 1, '2019-05-24 16:40:39', '2019-05-24 16:40:39'),
	('53f08cb6-03f0-4ed2-ad3d-19ace6f4590f', '65508b37d99940288c18c78c3827c57e', 'a5a2101e-394f-4496-9898-cef934a04ca1', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 15:56:17', '2019-05-24 15:56:17'),
	('55f4a704-d5c7-4b38-b34f-20872b08bc5e', '1-1', '709f22d4-f579-4493-a0f7-a1575a643a6b', '事件初始化上报task', NULL, 1, 1, NULL, 1, 0, NULL, '2019-05-24 16:50:36', '2019-05-24 16:50:36'),
	('5ab79ecf-d983-48b0-8988-31195c2f02b2', '3faf3907882e4be6a05f59516e05d262', '7d0c5158-59c9-45a6-b474-216102b69086', '事件审核task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"11111"}', 2, 1, 2, '2019-05-24 14:17:20', '2019-05-24 14:17:20'),
	('5ac5a502-a373-4c21-b99d-7b13dee758dd', '8709a133eaa749448bd78745adae4254', '2185c6fd-6d37-4ffa-ac2f-98a672aa035e', '事件整改审核task', 'e6g7bee4-4cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":[{"123","324"}],"comment":"审核通过"}', 32, 1, NULL, '2019-05-24 14:50:04', '2019-05-24 16:35:19'),
	('5bfc9cd8-089c-4fe9-9350-791cded08857', '21ef127700794e15a619cc4c761c7689', '0e01cf90-c852-4259-858c-64cdf074b2b1', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"合格"}', 2, 1, 1, '2019-05-24 16:10:41', '2019-05-24 16:10:41'),
	('5d5b5744-1d42-4b3b-8c6b-42130dd4c09f', '8709a133eaa749448bd78745adae4254', '59e67823-a9e3-476d-ad64-684261c9c7af', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 14:42:13', '2019-05-24 14:42:13'),
	('5ffccc42-df59-4a76-9b41-33d998c470fa', '8709a133eaa749448bd78745adae4254', '744a43da-8479-4b62-ba76-dba3162192e8', '事件整改task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":[""],"comment":"医生整改结果"}', 16, 1, NULL, '2019-05-24 14:49:01', '2019-05-24 14:50:04'),
	('6361b43f-4991-4295-8220-940b5e24f697', 'e8ecb827917c4312a87b61d1d474e65b', '5fe8aa62-8af4-4893-ad8c-5c76dad575ed', '事件整改审核task', 'e6g7bee4-4cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":[""],"comment":"通过"}', 32, 1, NULL, '2019-05-24 16:04:19', '2019-05-24 16:04:46'),
	('646cd434-30a4-424a-9d78-4dc7b1abb066', '672c1e2086874d9093fd103f779fe4ae', '39fc211a-aa2c-4ec2-8cd9-7fb1776de17f', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"111"}', 2, 1, 1, '2019-05-24 11:12:45', '2019-05-24 11:12:46'),
	('684a4b3b-5a29-4473-8cb3-7dda82075fa1', '8709a133eaa749448bd78745adae4254', '16199889-aaab-437f-ba25-f9376e74bf0e', '事件追踪task', 'e6g71ee4-ecdb-4458-a926-7d85ffdeed7b', 1, 1, '{"comment":""}', 8, 1, NULL, '2019-05-24 14:47:34', '2019-05-24 14:49:01'),
	('6b14c17f-8b45-401e-9b54-baad83cc7c2e', '358c5d1a674040a99249067ea6b66665', '593f55ef-4f60-47f5-9486-604bef9023c7', '事件审核task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"222"}', 2, 1, 1, '2019-05-24 11:04:52', '2019-05-24 11:04:52'),
	('6b99a314-0e48-4722-bad3-deb1fbc79fe5', '65508b37d99940288c18c78c3827c57e', 'd0a68783-ffd9-4621-95e0-6b4fa6054a70', '事件结案task', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"结案通过"}', 4, 1, NULL, '2019-05-24 15:58:24', '2019-05-24 15:58:24'),
	('6cb0b7ff-5ce6-4a01-82d1-3cbb2dc67ff1', '672c1e2086874d9093fd103f779fe4ae', '3a9550d4-3726-4f50-badb-4e9a7b99e015', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 11:11:51', '2019-05-24 11:11:51'),
	('6d19de18-1868-4260-8006-f52181ab833b', '65508b37d99940288c18c78c3827c57e', 'd6f63bdc-d201-4faa-baf2-b60a7869876c', '事件整改审核task', 'e6g7bee4-4cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":[""],"comment":"整改通过"}', 32, 1, NULL, '2019-05-24 16:00:07', '2019-05-24 16:00:48'),
	('701ff90b-9b3a-480d-a62a-650e678976a8', '80f0aba63a1842d281748c3520f84cf4', 'c2eb662d-edaf-4ac3-bc4d-4c1b797441b8', '事件审核task', 'e6g7bee4-5cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 2, 0, 1, '2019-05-24 10:48:36', '2019-05-24 10:48:36'),
	('71357c32-c24b-4704-a2e3-b8da3264205e', '3faf3907882e4be6a05f59516e05d262', '1cb96f28-e053-47a8-b55a-eb19e3ca12a5', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"1111"}', 2, 1, 1, '2019-05-24 14:00:36', '2019-05-24 14:00:36'),
	('72aa5ad7-6dcd-4281-a213-ebaa9d0dd44f', '77bb4aa387ca423e8705db2d211ce742', '3bdb6242-3e31-404d-9b95-03c40a16d1ff', '事件审核task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 2, 0, 2, '2019-05-24 10:51:18', '2019-05-24 10:51:18'),
	('76bd50ca-3eae-4c41-a88b-56e171aef6da', '7d64c53f7a1a437c94bdb3f659a3f17c', '8de141c2-2bcc-45e7-b9ac-11d36fde4343', '事件追踪task', 'e6g71ee4-ecdb-4458-a926-7d85ffdeed7b', 1, 1, '{"comment":""}', 8, 1, NULL, '2019-05-24 10:30:24', '2019-05-24 10:34:57'),
	('793cfc09-08dd-4912-b46b-5e9262df376d', '02589708fcbf47509452e3115c580fa3', '2ac89c35-bf73-43d0-9f5f-bd2479633bf5', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 2, 0, 1, '2019-05-24 16:48:07', '2019-05-24 16:48:07'),
	('79665a9c-4db8-4eb4-b89c-cb3e428db169', '3faf3907882e4be6a05f59516e05d262', '9fea461a-8a56-45d5-8c18-d6dd909c44c1', '事件审核task', 'e6g7bee4-3cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"11111"}', 2, 2, 3, '2019-05-24 14:17:43', '2019-05-24 14:17:44'),
	('7f1b272e-d2d9-4a5c-9f53-3863f9349094', '65508b37d99940288c18c78c3827c57e', '0c04f5e8-afd3-4134-8652-928e089fc8f6', '事件审核task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"二级通过"}', 2, 1, 2, '2019-05-24 15:57:50', '2019-05-24 15:57:50'),
	('7f4031c6-08d3-45d2-b3ed-d5292ff67c36', '7d64c53f7a1a437c94bdb3f659a3f17c', '0b354e44-f0ee-4a43-965e-c0409ba0a1b2', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"11111"}', 2, 1, 1, '2019-05-24 10:23:58', '2019-05-24 10:23:58'),
	('809f0419-473d-4f56-92b5-847c7bf0be6f', 'e0b581bf036b4cb795a0efaae7f244fe', 'e393bf0f-9077-4b55-a0cd-9a58e67eaefe', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 16:25:06', '2019-05-24 16:25:06'),
	('81c2d730-6735-499e-a3c8-39e9eb99ea9b', '4d792274b5ca4e84bd2f8d34acd11f7a', '05e7d7dd-4be9-4761-a14a-d2e4921b923f', '事件结案task', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 4, 0, NULL, '2019-05-24 16:44:30', '2019-05-24 16:44:30'),
	('83ae5bcc-9077-46c2-9d27-65d97738b89f', '358c5d1a674040a99249067ea6b66665', 'b602bb25-dea3-440e-bfd5-043e81a3e2af', '事件审核task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"11"}', 2, 4, 2, '2019-05-24 11:06:03', '2019-05-24 11:06:03'),
	('849c060e-2a4c-4610-916e-d7f160d328a7', '77bb4aa387ca423e8705db2d211ce742', '002d306e-a70f-48f8-9d8f-84b336611bb8', '事件初始化上报task', '-1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 10:21:31', '2019-05-24 10:21:31'),
	('874c6d07-e535-445a-8127-44e6ab300a57', 'e8ecb827917c4312a87b61d1d474e65b', '58a416f6-a582-484e-af50-70eb9cf59457', '事件整改task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 16, 0, NULL, '2019-05-24 16:03:41', '2019-05-24 16:03:41'),
	('88b72813-0249-4103-b352-c2f490a4ef39', '4ee5ae981e5c4dfd8d121b37e25b0f2d', 'd52f3ce2-9847-4015-8c60-24500a2eeafb', '事件结案task', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 4, 0, NULL, '2019-05-24 19:33:56', '2019-05-24 19:33:56'),
	('89b2aaa6-1a48-4500-a8c1-6461132d3452', 'e8ecb827917c4312a87b61d1d474e65b', '86d7d735-d794-49b5-a06a-691d8c03d1cb', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 16:01:54', '2019-05-24 16:01:54'),
	('8d0e7f47-5027-4eb9-b6b1-4b1111ff0446', 'ac7f1a41464f448489d32ed4ad39d8b5', '24701e2a-13a0-4918-87d6-2c8a06c3d516', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 14:31:06', '2019-05-24 14:31:06'),
	('8eab4346-4dbd-4f09-affe-87be43286420', '65508b37d99940288c18c78c3827c57e', 'bd01fb91-5a99-402e-873d-ce080661f461', '事件追踪task', 'e6g71ee4-ecdb-4458-a926-7d85ffdeed7b', 1, 1, '{"comment":""}', 8, 1, NULL, '2019-05-24 15:58:25', '2019-05-24 15:59:11'),
	('92a1e20c-67af-431c-ab00-6d813d843b8d', '65508b37d99940288c18c78c3827c57e', '0e6201b2-4379-48d4-a5b1-f6d05683c137', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"一级通过"}', 2, 1, 1, '2019-05-24 15:57:16', '2019-05-24 15:57:17'),
	('938c5ada-abb4-4807-961d-c6fde39f5dee', '7d64c53f7a1a437c94bdb3f659a3f17c', 'e562931f-0a2a-4ba6-bd79-4f351ef33d53', '事件结案task', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"111"}', 4, 1, NULL, '2019-05-24 10:30:24', '2019-05-24 10:30:24'),
	('944133f4-c72b-46a9-b936-64d12e93fed4', '7af783560f3547c1b075c1434612c416', 'ae327183-3cb1-462d-bd67-c4e8fdc45da5', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 2, 0, 1, '2019-05-27 15:21:47', '2019-05-27 15:21:47'),
	('9616094a-8927-417c-a5f3-c9067c9350cb', 'e8ecb827917c4312a87b61d1d474e65b', '5a372616-f834-42fb-a033-436d35501ca6', '事件结案task', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"通过"}', 4, 1, NULL, '2019-05-24 16:02:55', '2019-05-24 16:02:55'),
	('99d2b3c9-86d2-409b-8039-4f115637fa89', '75af1a23d1ac42ef97d05ac6b72106ec', '5bc96a25-3019-4976-ba8d-5934e4a34a82', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 18:00:49', '2019-05-24 18:00:49'),
	('9bbf0609-30a1-4e1e-ad8e-030b256e1875', 'f2cc7f214ff74dbba0da5327895589a7', '3a9d3711-c91c-4072-9d3a-1367192352b2', '事件初始化上报task', '-1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 17:49:22', '2019-05-24 17:49:22'),
	('9d01d829-c438-4d4c-80e3-3577ca783cae', '75af1a23d1ac42ef97d05ac6b72106ec', '1d79c2b0-4d44-40aa-9d04-b4c2140906af', '事件整改审核task', 'e6g7bee4-4cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"444"}', 32, 1, NULL, '2019-05-24 20:08:03', '2019-05-24 20:08:32'),
	('9ddfac1d-ab54-48fc-8225-d188bdb784ae', '75af1a23d1ac42ef97d05ac6b72106ec', 'f0ae4139-f29c-4c1e-b576-06d80ec24d73', '事件追踪task', 'e6g71ee4-ecdb-4458-a926-7d85ffdeed7b', 1, 1, '{"comment":""}', 8, 1, NULL, '2019-05-24 20:06:56', '2019-05-24 20:07:32'),
	('9e1fc98b-5e28-460d-a25f-02ed2b897fbb', 'd0a05390748a4e9f86dcb415bddd71ac', '7b0b6a15-905b-4150-bc82-f94472885f5b', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 10:31:23', '2019-05-24 10:31:23'),
	('a535e80d-2471-40ec-9952-e07bb743a882', '65508b37d99940288c18c78c3827c57e', '409bdfc6-ec9d-407b-85d4-a1685f4fa2a0', '事件整改task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":[""],"comment":"医生整改1"}', 16, 1, NULL, '2019-05-24 15:59:11', '2019-05-24 16:00:06'),
	('a83f43b3-751a-46b4-a6ac-3243027acd9c', 'e2394363e48549fbb3ec9c317adb17f3', '6b953064-b88d-437c-b2f0-8d5ded05fe3d', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"不合格"}', 2, 4, 1, '2019-05-24 16:23:20', '2019-05-24 16:23:20'),
	('a88d806f-a51f-494b-96f7-200c90ea612f', '75af1a23d1ac42ef97d05ac6b72106ec', '59eed55d-bdad-46c6-b584-20c3061b7768', '事件结案task', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"11"}', 4, 1, NULL, '2019-05-24 20:06:56', '2019-05-24 20:06:56'),
	('a8afbb55-ee06-4f0d-8ab6-da8f92a2b560', 'e0b581bf036b4cb795a0efaae7f244fe', 'ec3d9e73-b499-4d07-8a14-7dc349445ca0', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"合格"}', 2, 1, 1, '2019-05-24 16:25:35', '2019-05-24 16:25:36'),
	('a95fc8b4-7a1f-45fb-a663-94d15fa06580', '8709a133eaa749448bd78745adae4254', '744a43da-8479-4b62-ba76-dba3162192e8', '事件整改task', 'e6g7bee4-3cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 16, 0, NULL, '2019-05-24 14:49:01', '2019-05-24 14:49:01'),
	('afa19056-361e-436a-a1da-0d45d4889092', 'd0a05390748a4e9f86dcb415bddd71ac', '6c130e1f-96fd-4cfe-aa3c-e042054628cf', '事件审核task', 'e6g7bee4-5cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 2, 0, 1, '2019-05-24 10:31:24', '2019-05-24 10:31:24'),
	('afc9a1b2-007b-4fd0-9a80-97934941f56f', '358c5d1a674040a99249067ea6b66665', '0da4d85c-db82-4cb4-85d6-0ffd066c5a7a', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 10:47:40', '2019-05-24 10:47:40'),
	('b0f6aa9f-74f7-4b11-871e-97ab1aff5e2f', '672c1e2086874d9093fd103f779fe4ae', 'ec2fd9b0-72a2-455b-804e-a628cad8c14c', '事件结案task', 'e6g7b2e4-ecdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 4, 0, NULL, '2019-05-24 11:13:19', '2019-05-24 11:13:19'),
	('b15f664f-2a2a-4b3f-9892-3e64b348d5fb', '4d792274b5ca4e84bd2f8d34acd11f7a', '80a8fbc8-62df-4f25-939f-6b331323eca0', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 16:43:14', '2019-05-24 16:43:14'),
	('b6aac3c6-bf12-4ad0-aa88-de1b933d0ee4', '8448a85b3d214bcdafaefc2cc0ab1e1a', '9fd713fe-3d69-4a4b-8bae-24d4ea784ba9', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 16:06:01', '2019-05-24 16:06:01'),
	('b7542906-ab79-4ca3-8b3d-51a039b23462', '8709a133eaa749448bd78745adae4254', '8b19a35f-0133-45bd-b68c-bde10152a20d', '事件审核task', NULL, 1, 1, '{"attachment":"[]","comment":"一级通过"}', 2, 1, 1, '2019-05-24 14:45:32', '2019-05-24 14:45:35'),
	('bdab0cbc-51e1-4f50-b457-d1b69130f634', '672c1e2086874d9093fd103f779fe4ae', 'f7e6e6d6-8a34-40a1-8758-f0bcde1478d6', '事件审核task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"222"}', 2, 2, 2, '2019-05-24 11:13:19', '2019-05-24 11:13:19'),
	('bf4fc1c0-7061-4556-8398-d8352898be93', '1-1', 'aea2fb1f-1f56-463e-b07d-d76c4fe84039', '事件结案task', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 4, 0, NULL, '2019-05-24 17:30:55', '2019-05-24 17:30:55'),
	('bff44599-f11f-488c-9729-18fc573c7cf3', 'cd5c99e6069d468a9fe143217fa41025', '1e4ea6d8-77a7-4459-abd6-20a58a5e9d89', '事件结案task', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 4, 0, NULL, '2019-05-24 16:40:39', '2019-05-24 16:40:39'),
	('c3d3af83-babb-40f6-b0a6-59f6797febbb', '8709a133eaa749448bd78745adae4254', '7281bd2a-247b-4e82-9bbf-c43023bea1ad', '事件审核task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"二级通过"}', 2, 1, 2, '2019-05-24 14:46:34', '2019-05-24 14:46:34'),
	('c3ebe880-62e0-4c12-a1a8-dc6861be04b5', '662ac2d9c0ab4c4f9d06fb2e417775d9', 'db9af87a-96a9-4e5f-9b62-531b3ee805b3', '事件审核task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"通过"}', 2, 1, 2, '2019-05-24 18:05:54', '2019-05-24 18:05:54'),
	('c47a71cd-3ad6-4d5f-9d00-cc803320c02e', '7d64c53f7a1a437c94bdb3f659a3f17c', '05b54453-c39c-4e4f-9bb9-eeccdd305c56', '事件整改审核task', 'e6g7bee4-6cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 32, 0, NULL, '2019-05-24 10:37:34', '2019-05-24 10:37:34'),
	('c7fb2153-4dec-4950-9222-4fd88dc4c47d', '662ac2d9c0ab4c4f9d06fb2e417775d9', '790dce51-3837-462c-8121-4a9912b59a0e', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"通过"}', 2, 1, 1, '2019-05-24 18:05:18', '2019-05-24 18:05:18'),
	('ca25b807-eeb9-40b0-8354-67c46bfc6915', '16c5f66d20d54908871845ff69722cf7', '22617693-38f6-4dc9-864a-f0d5186db40b', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 2, 0, 1, '2019-05-27 14:27:58', '2019-05-27 14:27:58'),
	('cfbd2661-6ee1-42d2-8135-f4c912f3a768', '4ee5ae981e5c4dfd8d121b37e25b0f2d', '51fee600-6d5c-435f-87d1-b9ac589aed9d', '事件审核task', NULL, 1, 1, '{"attachment":"[]","comment":"开始"}', 2, 1, 1, '2019-05-24 19:33:56', '2019-05-24 19:33:56'),
	('d41eee76-9a77-4784-9559-90174527458a', '80f0aba63a1842d281748c3520f84cf4', '83f907c4-f206-4528-ad9e-5613564c25b6', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 10:48:36', '2019-05-24 10:48:36'),
	('d709ef74-8934-4721-a2c4-c217de44cf7c', '65508b37d99940288c18c78c3827c57e', '409bdfc6-ec9d-407b-85d4-a1685f4fa2a0', '事件整改task', 'e6g7bee4-3cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 16, 0, NULL, '2019-05-24 15:59:11', '2019-05-24 15:59:11'),
	('d729f862-0f76-4747-8624-0ec512f58cec', '75af1a23d1ac42ef97d05ac6b72106ec', '55759521-c502-496d-bd5b-92b7bc590156', '事件整改task', 'e6g7bee4-3cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"2333"}', 16, 1, NULL, '2019-05-24 20:07:33', '2019-05-24 20:08:03'),
	('daeca88d-d9b9-4e1d-a9fa-88e8d194b280', 'e0b581bf036b4cb795a0efaae7f244fe', '54305421-02c8-4925-80a9-65b0ec7d796f', '事件审核task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"作废"}', 2, 4, 2, '2019-05-24 16:26:02', '2019-05-24 16:26:02'),
	('db9791d5-d4b9-4160-9dfa-1e180fd035c0', '662ac2d9c0ab4c4f9d06fb2e417775d9', '289337ea-227c-4866-afd6-0d606dcfec4f', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 18:04:52', '2019-05-24 18:04:52'),
	('dca4bf26-6d72-4dc5-8069-76794d5793cd', '68c6d6910aa445dfb679875c9fec1a17', '21716f02-042a-4cb3-8a22-af1e8c4c5aed', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-27 15:23:26', '2019-05-27 15:23:26'),
	('e5382e32-789e-4f3c-aaa2-c87f56532bad', 'ac7f1a41464f448489d32ed4ad39d8b5', 'b04645f6-8499-4d86-90b2-075c2100ae77', '事件审核task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 2, 0, 2, '2019-05-24 14:31:47', '2019-05-24 14:31:47'),
	('e7cd9e07-d80d-4135-804d-c19750e9673d', 'e2394363e48549fbb3ec9c317adb17f3', '3e7ea343-6c50-4ef0-8088-a28dbcc5c269', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 16:22:52', '2019-05-24 16:22:52'),
	('e7f90fa8-0a67-4a7b-96be-a543b457f45b', '3faf3907882e4be6a05f59516e05d262', 'bf4ec2f0-8bf7-478a-aacd-8290f77da508', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 11:20:12', '2019-05-24 11:20:12'),
	('ea061f02-e047-42c5-87a8-a993a423556a', '8448a85b3d214bcdafaefc2cc0ab1e1a', 'fb2fcd50-354c-4590-b8d4-add0ccb7717f', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"不合格"}', 2, 2, 1, '2019-05-24 16:07:07', '2019-05-24 16:07:07'),
	('ec119ea0-04ef-4b86-8987-1a881ef968ef', '75af1a23d1ac42ef97d05ac6b72106ec', '466edb37-a3fe-4675-a6bf-4cbee986d8e2', '事件审核task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"退回"}', 2, 2, 2, '2019-05-24 18:02:12', '2019-05-24 18:02:12'),
	('eeddd32c-30bd-4965-a6b5-6332e57dfc47', '21ef127700794e15a619cc4c761c7689', 'f7df161e-e8a4-4688-ad5f-007b5d77a1ae', '事件结案task', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', 0, 1, NULL, 4, 0, NULL, '2019-05-24 16:11:06', '2019-05-24 16:11:06'),
	('eff8a8be-25df-4425-89f0-8429ebf895ee', '8709a133eaa749448bd78745adae4254', 'd7a8ac68-15c8-45e2-9303-8e36f4b20485', '事件审核task', 'e6g7bee4-3cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"三级通过"}', 2, 1, 3, '2019-05-24 14:47:00', '2019-05-24 14:47:00'),
	('f1947864-8bf3-4cf3-ae48-70b21e670c16', 'e8ecb827917c4312a87b61d1d474e65b', 'a11081d4-7788-43bf-89e5-ef74917f30dc', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"审核通过"}', 2, 1, 1, '2019-05-24 16:02:27', '2019-05-24 16:02:27'),
	('f199f6fd-7a06-4dd8-89c3-698eca467b07', '8709a133eaa749448bd78745adae4254', 'b88fd189-a8a4-492c-aa42-871fc5dad105', '事件结案task', 'e6g7b1e4-ecdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"结案通过"}', 4, 1, NULL, '2019-05-24 14:47:34', '2019-05-24 14:47:34'),
	('f6640bad-674d-4014-b0c6-239e7e8a1f4c', '4d792274b5ca4e84bd2f8d34acd11f7a', '82b4b574-74c9-442d-b110-1b4cbdc5ee2a', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"通过"}', 2, 1, 1, '2019-05-24 16:44:30', '2019-05-24 16:44:30'),
	('f6cca2ab-355b-47ee-9319-a659bf08d5ce', '75af1a23d1ac42ef97d05ac6b72106ec', 'f1bea6b7-fc8c-48ae-9303-fd8c51ab26ef', '事件审核task', 'e6g7bee4-1cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"11"}', 2, 1, 1, '2019-05-24 20:05:30', '2019-05-24 20:05:30'),
	('f74247c4-75ed-4da2-a95b-03efc12cf4ba', '21ef127700794e15a619cc4c761c7689', 'eeaacf87-9221-4ecc-997a-797ab9e33b77', '事件初始化上报task', '1', 1, 1, NULL, 1, 0, NULL, '2019-05-24 16:10:09', '2019-05-24 16:10:09'),
	('f8a7bb7d-54f3-4112-9f3f-9c1461594d8a', '7d64c53f7a1a437c94bdb3f659a3f17c', '8fa288ec-1ccc-47ee-9924-fdeddbeeb6e4', '事件整改task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":[""],"comment":"11111"}', 16, 1, NULL, '2019-05-24 10:34:58', '2019-05-24 10:37:34'),
	('f8e39b74-e8a8-42c3-a066-b5669019c50c', '75af1a23d1ac42ef97d05ac6b72106ec', 'a23d7065-204c-42f4-8d3b-16f3c3eba749', '事件审核task', 'e6g7bee4-2cdb-4458-a926-7d85ffdeed7b', 1, 1, '{"attachment":"[]","comment":"222"}', 2, 1, 2, '2019-05-24 20:05:54', '2019-05-24 20:05:54'),
	('fb128240-7666-472f-af3c-83553725ba62', 'e8ecb827917c4312a87b61d1d474e65b', 'a86f42b0-e1cf-439d-9012-99c193d289b4', '事件追踪task', 'e6g71ee4-ecdb-4458-a926-7d85ffdeed7b', 1, 1, '{"comment":""}', 8, 1, NULL, '2019-05-24 16:02:56', '2019-05-24 16:03:41');
/*!40000 ALTER TABLE `workflow_task` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
