# zabbix

- Zabbix with postgresql

## Requirements

- Debian GNU/Linux 9

## Role Variables

see defaults/main.yml

## Dependencies

None.

## Example Playbook

    ---
    - hosts: all
      sudo: yes
      roles:
      - role: znzj.ja_jp
      - role: znz.zabbix
        zabbix_server_conf: |
          StartPingers=3
          Timeout=5

## License

MIT License
