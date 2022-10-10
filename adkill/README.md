## :world_map:  AdGuard Home广告过滤规则

AdGuard Home内置规则   [AdGuard DNS filter](https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt)		[CHN: anti-AD](https://anti-ad.net/easylist.txt)

AdRules 一个基于中文区强力去广告的规则 [AdRules主页](https://cats-team.github.io/AdRules/)    [github主页](https://github.com/Cats-Team/AdRules)    [DNS拦截](https://cats-team.github.io/AdRules/dns.txt)    [DNS允许](https://cats-team.github.io/AdRules/allow.txt)

HalfLife   [ABP/ublock订阅规则](https://github.com/o0HalfLife0o/list)

anti-AD    [致力于成为中文区命中率最高的广告过滤列表，实现精确的广告屏蔽和隐私保护。anti-AD现已支持AdGuardHome，dnsmasq， Surge，Pi-Hole，smartdns等网络组件。完全兼容常见的广告过滤工具所支持的各种广告过滤列表格式](https://github.com/privacy-protection-tools/anti-AD)

## :world_map:  PS:AdGuard Home部署在路由上不可避免有误杀，其实如果是电脑的话，安装浏览器插件uBlock Origin之类基本也能解决大部分广告问题。

## :world_map:  AdGuard自定义规则的语法

对某一域名对全部设备拦截127.0.0.1 ad.mi.com或者||ad.mi.com^只须其中一种表达式

对某一域名只对内网某一设备（以其实际IP）拦截||ad.mi.com^$client='10.0.0.10'

对某一域名对全部设备放行@@||ad.mi.com^$important

对某一域名只对内网某一设备（以其实际IP）放行@@||ad.mi.com^$client='10.0.0.10'
