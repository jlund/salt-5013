test:
  file.recurse:
    - clean: True
    - name: /var/www/test
    - source: salt://test/testdir
    - dir_mode: 755
    - file_mode: 644
