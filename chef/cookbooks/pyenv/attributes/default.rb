default[:pyenv][:user]              = 'vagrant'
default[:pyenv][:group]             = 'vagrant'
default[:pyenv][:git_repository]    = 'https://github.com/yyuu/pyenv.git'
default[:pyenv][:install_prefix]    = '/home/vagrant'
default[:pyenv][:root_path]         = "#{node[:pyenv][:install_prefix]}/pyenv"
default[:pyenv][:install_version]   = '2.7.10'
default[:pyenv][:depend_packages]   = %w(bzip2-devel)
default[:pyenv][:install_libraries] = %w(numpy h5py cython flask flask-cors pyyaml chainer uwsgi beautifulsoup4)
