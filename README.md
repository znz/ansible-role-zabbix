# zabbix

- Zabbix with postgresql

## Requirements

- Ubuntu or Debian

## Role Variables

- `zabbix_dbpass`: zabbixdbpass
- `php5_memory_limit`: "256M"
- `php5_post_max_size`: "16M"
- `php5_upload_max_filesize`: "10M"
- `php5_max_execution_time`: 300
- `php5_max_input_time`: 300
- `php5_date_timezone`: "Asia/Tokyo"

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
