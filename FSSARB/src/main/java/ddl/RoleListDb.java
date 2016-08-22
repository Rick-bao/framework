package ddl;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Model class of 角色列表.
 * 
 * @author generated by ERMaster
 * @version $Id$
 */
public class RoleListDb implements Serializable {

	/** serialVersionUID. */
	private static final long serialVersionUID = 1L;

	/** ID. */
	private String id;

	/** 关联角色ID. */
	private String linkedroleid;

	/** 名称. */
	private String name;

	/** 创建时间. */
	private String createtime;

	/** 备注. */
	private String comments;

	/** The set of 用户权限表. */
	private Set<UserAccountAccessDb> userAccountAccessSet;

	/**
	 * Constructor.
	 */
	public RoleListDb() {
		this.userAccountAccessSet = new HashSet<UserAccountAccessDb>();
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
	 * Set the 关联角色ID.
	 * 
	 * @param linkedroleid
	 *            关联角色ID
	 */
	public void setLinkedroleid(String linkedroleid) {
		this.linkedroleid = linkedroleid;
	}

	/**
	 * Get the 关联角色ID.
	 * 
	 * @return 关联角色ID
	 */
	public String getLinkedroleid() {
		return this.linkedroleid;
	}

	/**
	 * Set the 名称.
	 * 
	 * @param name
	 *            名称
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * Get the 名称.
	 * 
	 * @return 名称
	 */
	public String getName() {
		return this.name;
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
	 * Set the set of the 用户权限表.
	 * 
	 * @param userAccountAccessSet
	 *            The set of 用户权限表
	 */
	public void setUserAccountAccessSet(Set<UserAccountAccessDb> userAccountAccessSet) {
		this.userAccountAccessSet = userAccountAccessSet;
	}

	/**
	 * Add the 用户权限表.
	 * 
	 * @param userAccountAccess
	 *            用户权限表
	 */
	public void addUserAccountAccess(UserAccountAccessDb userAccountAccess) {
		this.userAccountAccessSet.add(userAccountAccess);
	}

	/**
	 * Get the set of the 用户权限表.
	 * 
	 * @return The set of 用户权限表
	 */
	public Set<UserAccountAccessDb> getUserAccountAccessSet() {
		return this.userAccountAccessSet;
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
		RoleListDb other = (RoleListDb) obj;
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
