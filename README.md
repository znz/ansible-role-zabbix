# zabbix

- Zabbix with postgresql

## Requirements

- Ubuntu 14.04

## Role Variables

- `zabbix_dbname`: zabbix
- `zabbix_dbuser`: zabbix
- `zabbix_dbpass`: zabbixdbpass

## Dependencies

None.

## Example Playbook

    ---
    - hosts: all
      sudo: yes
      roles:
      - znzj.ja_jp
      - znzj.zabbix

## License

MIT License
