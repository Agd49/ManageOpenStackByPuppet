class repos {
	file{"/tmp/7":
			ensure=>directory,
			recurse=>true,
			source=>"puppet://master.localdomain/files/7",
	}
	#复制五个gpgkey文件
	file{"/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-SIG-Cloud":
			ensure=>file,
			source=>"puppet://master.localdomain/files/rpm-gpg/RPM-GPG-KEY-CentOS-SIG-Cloud",
	}
	file{"/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-SIG-Storage":
			ensure=>file,
			source=>"puppet://master.localdomain/files/rpm-gpg/RPM-GPG-KEY-CentOS-SIG-Storage",
	}
	file{"/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-SIG-Virtualization":
			ensure=>file,
			source=>"puppet://master.localdomain/files/rpm-gpg/RPM-GPG-KEY-CentOS-SIG-Virtualization",
	}
	#这两个gpgkey文件是在yum update命令时才会用到
	file{"/etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs":
			ensure=>file,
			source=>"puppet://master.localdomain/files/rpm-gpg/RPM-GPG-KEY-puppetlabs",
	}
	file{"/etc/pki/rpm-gpg/RPM-GPG-KEY-puppet":
			ensure=>file,
			source=>"puppet://master.localdomain/files/rpm-gpg/RPM-GPG-KEY-puppet",
	}
	file{"/etc/yum.repos.d/CentOS-Base.repo":
			ensure=>file,
			source=>"puppet://master.localdomain/files/CentOS-Base.repo",
	}
	file{"/etc/yum.repos.d/CentOS-Ceph-Jewel.repo":
			ensure=>file,
			source=>"puppet://master.localdomain/files/CentOS-Ceph-Jewel.repo",
	}
	file{"/etc/yum.repos.d/CentOS-CR.repo":
			ensure=>file,
			source=>"puppet://master.localdomain/files/CentOS-CR.repo",
	}
	file{"/etc/yum.repos.d/CentOS-Debuginfo.repo":
			ensure=>file,
			source=>"puppet://master.localdomain/files/CentOS-Debuginfo.repo",
	}
	file{"/etc/yum.repos.d/CentOS-fasttrack.repo":
			ensure=>file,
			source=>"puppet://master.localdomain/files/CentOS-fasttrack.repo",
	}
	file{"/etc/yum.repos.d/CentOS-Media.repo":
			ensure=>file,
			source=>"puppet://master.localdomain/files/CentOS-Media.repo",
	}
	file{"/etc/yum.repos.d/CentOS-OpenStack-newton.repo":
			ensure=>file,
			source=>"puppet://master.localdomain/files/CentOS-OpenStack-newton.repo",
	}
	file{"/etc/yum.repos.d/CentOS-QEMU-EV.repo":
			ensure=>file,
			source=>"puppet://master.localdomain/files/CentOS-QEMU-EV.repo",
	}
	file{"/etc/yum.repos.d/CentOS-Sources.repo":
			ensure=>file,
			source=>"puppet://master.localdomain/files/CentOS-Sources.repo",
	}
	file{"/etc/yum.repos.d/CentOS-Vault.repo":
			ensure=>file,
			source=>"puppet://master.localdomain/files/CentOS-Vault.repo",
	}
	file{"/etc/yum.repos.d/epel.repo":
			ensure=>file,
			source=>"puppet://master.localdomain/files/epel.repo",
	}
	file{"/etc/yum.repos.d/puppetlabs.repo":
			ensure=>file,
			source=>"puppet://master.localdomain/files/puppetlabs.repo",
	}
	exec {"yum update":
	  command=>'yum -y update',
	  path=>"/usr/bin:/usr/sbin:/bin",
	  provider=>shell,
	}
}