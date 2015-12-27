pyenv Cookbook
==============

CentOS 6.5にpyenvをインストールするcookbook

"#{default[:pyenv][:root_path]}"にpyenvをインストールし、"#{default[:pyenv][:install_version]}"のpythonをpyenv globalでインストールする。


Attributes
----------

#### pyenv::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['pyenv']['user']</tt></td>
    <td>String</td>
    <td>pyenvをインストールするユーザー名</td>
    <td><tt>pyenv</tt></td>
  </tr>
  <tr>
    <td><tt>['pyenv']['group']</tt></td>
    <td>String</td>
    <td>pyenvをインストールするグループ名</td>
    <td><tt>pyenv</tt></td>
  </tr>
  <tr>
    <td><tt>['pyenv']['git_repository']</tt></td>
    <td>String</td>
    <td>pyenvのGitリポジトリURL</td>
    <td><tt>https://github.com/yyuu/pyenv.git</tt></td>
  </tr>
  <tr>
    <td><tt>['pyenv']['install_prefix']</tt></td>
    <td>String</td>
    <td>pyenvのインストール親ディレクトリパス</td>
    <td><tt>/opt</tt></td>
  </tr>
  <tr>
    <td><tt>['pyenv']['root_path']</tt></td>
    <td>String</td>
    <td>pyenvのインストール先ディレクトリパス</td>
    <td><tt>#{node[:pyenv][:install_prefix]}/pyenv</tt></td>
  </tr>
  <tr>
    <td><tt>['pyenv']['install_version']</tt></td>
    <td>String</td>
    <td>pyenvでglobalインストールするpythonのバージョン</td>
    <td><tt>3.4.0</tt></td>
  </tr>
    <tr>
    <td><tt>['pyenv']['depend_packages']</tt></td>
    <td>String</td>
    <td>pythonビルドのための依存パッケージ</td>
    <td><tt>bzip2-devel</tt></td>
  </tr>
</table>




Usage
-----

Berksfile

```
cookbook 'pyenv', git: 'https://github.com/mistymagich/chef-pyenv.git'
```

レシピファイルの中で

```ruby
include_recipe "pyenv"
```

またはchef-soloのjsonのrun_listに

```json
{
    "run_list": ["recipe[pyenv]"]
}
```

