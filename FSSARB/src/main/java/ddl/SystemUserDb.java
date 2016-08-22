package ddl;

import java.io.Serializable;

/**
 * Model class of 系统用户表.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class SystemUserDb implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** ID. */
	private String id;

	/** 登录名. */
	private String name;

	/** 昵称. */
	private String nickname;

	/** 登录密码. */
	private String password;

	/** 用户头像. */
	private String portraits;

	/** 创建人(系统用户名称). */
	private String createby;

	/** 创建时间. */
	private String createtime;

	/** 是否启用(0禁用,1启用,默认0). */
	private String enable;

	/** 最后登录IP. */
	private String lastloginip;

	/** 最后登录时间. */
	private String lastlogintime;

	/** 备注. */
	private String comments;

	/**
	 * Constructor.
	 */
	public SystemUserDb() {
	}

	/**
	 * Set the ID.
	 * 
	 * @param id
	 *            ID
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * Get the ID.
	 * 
	 * @return ID
	 */
	public String getId() {
		return this.id;
	}

	/**
	 * Set the 登录名.
	 * 
	 * @param name
	 *            登录名
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * Get the 登录名.
	 * 
	 * @return 登录名
	 */
	public String getName() {
		return this.name;
	}

	/**
	 * Set the 昵称.
	 * 
	 * @param nickname
	 *            昵称
	 */
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	/**
	 * Get the 昵称.
	 * 
	 * @return 昵称
	 */
	public String getNickname() {
		return this.nickname;
	}

	/**
	 * Set the 登录密码.
	 * 
	 * @param password
	 *            登录密码
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * Get the 登录密码.
	 * 
	 * @return 登录密码
	 */
	public String getPassword() {
		return this.password;
	}

	/**
	 * Set the 用户头像.
	 * 
	 * @param portraits
	 *            用户头像
	 */
	public void setPortraits(String portraits) {
		this.portraits = portraits;
	}

	/**
	 * Get the 用户头像.
	 * 
	 * @return 用户头像
	 */
	public String getPortraits() {
		return this.portraits;
	}

	/**
	 * Set the 创建人(系统用户名称).
	 * 
	 * @param createby
	 *            创建人(系统用户名称)
	 */
	public void setCreateby(String createby) {
		this.createby = createby;
	}

	/**
	 * Get the 创建人(系统用户名称).
	 * 
	 * @return 创建人(系统用户名称)
	 */
	public String getCreateby() {
		return this.createby;
	}

	/**
	 * Set the 创建时间.
	 * 
	 * @param createtime
	 *            创建时间
	 */
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	/**
	 * Get the 创建时间.
	 * 
	 * @return 创建时间
	 */
	public String getCreatetime() {
		return this.createtime;
	}

	/**
	 * Set the 是否启用(0禁用,1启用,默认0).
	 * 
	 * @param enable
	 *            是否启用(0禁用,1启用,默认0)
	 */
	public void setEnable(String enable) {
		this.enable = enable;
	}

	/**
	 * Get the 是否启用(0禁用,1启用,默认0).
	 * 
	 * @return 是否启用(0禁用,1启用,默认0)
	 */
	public String getEnable() {
		return this.enable;
	}

	/**
	 * Set the 最后登录IP.
	 * 
	 * @param lastloginip
	 *            最后登录IP
	 */
	public void setLastloginip(String lastloginip) {
		this.lastloginip = lastloginip;
	}

	/**
	 * Get the 最后登录IP.
	 * 
	 * @return 最后登录IP
	 */
	public String getLastloginip() {
		return this.lastloginip;
	}

	/**
	 * Set the 最后登录时间.
	 * 
	 * @param lastlogintime
	 *            最后登录时间
	 */
	public void setLastlogintime(String lastlogintime) {
		this.lastlogintime = lastlogintime;
	}

	/**
	 * Get the 最后登录时间.
	 * 
	 * @return 最后登录时间
	 */
	public String getLastlogintime() {
		return this.lastlogintime;
	}

	/**
	 * Set the 备注.
	 * 
	 * @param comments
	 *            备注
	 */
	public void setComments(String comments) {
		this.comments = comments;
	}

	/**
	 * Get the 备注.
	 * 
	 * @return 备注
	 */
	public String getComments() {
		return this.comments;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		SystemUserDb other = (SystemUserDb) obj;
		if (id == null) {
			if (other.id != null) {
				return false;
			}
		} else if (!id.equals(other.id)) {
			return false;
		}
		return true;
	}

}
