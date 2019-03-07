function Get-Links {
    

    param ($Path)

    $source =  gc $Path  # gc C:\Users\1126733220A\Downloads\html.txt 

    $urls = $source -split " " | Select-String url=

    $urls = $urls -replace "url=","" 

    $urls = $urls -replace "launch","playercontentcontainer"

    $urls = $urls -replace '"',''

    $array = @()

    foreach ($i in $urls) {
    
        $url = "https://pctc.cyberforce.site" + $i

        $url = '"' + $url + '",'
        
        $array += $url 

    }

    $array 
}

$all = @(
"https://pctc.cyberforce.site/lms/playercontents/11461/scripting-basics-overview/playercontentcontainer/346/2056/9406",
"https://pctc.cyberforce.site/lms/playercontents/11462/windows-batch-scripting-basics/playercontentcontainer/346/2056/9407",
"https://pctc.cyberforce.site/lms/playercontents/11463/windows-batch-scripting-variables/playercontentcontainer/346/2056/9408",
"https://pctc.cyberforce.site/lms/playercontents/11465/windows-batch-scripting-loops/playercontentcontainer/346/2056/9410",
"https://pctc.cyberforce.site/lms/playercontents/11466/windows-batch-scripting-functions/playercontentcontainer/346/2056/9411",
"https://pctc.cyberforce.site/lms/playercontents/11467/windows-script-error-handling-and-troubleshooting/playercontentcontainer/346/2056/9412",
"https://pctc.cyberforce.site/lms/playercontents/11468/windows-script-best-practices-and-examples/playercontentcontainer/346/2056/9413",
"https://pctc.cyberforce.site/lms/playercontents/11469/windows-scripting-demo/playercontentcontainer/346/2056/9414",
"https://pctc.cyberforce.site/lms/playercontents/11470/scripting-for-penetration-testing/playercontentcontainer/346/2056/9415",
"https://pctc.cyberforce.site/lms/playercontents/11471/windows-scripting-utilities-xcopy/playercontentcontainer/346/2057/9416",
"https://pctc.cyberforce.site/lms/playercontents/11472/windows-scripting-utilities-findstr/playercontentcontainer/346/2057/9417",
"https://pctc.cyberforce.site/lms/playercontents/11473/windows-scripting-utilities-net-commands/playercontentcontainer/346/2057/9418",
"https://pctc.cyberforce.site/lms/playercontents/11474/xcopy-examples-demo/playercontentcontainer/346/2057/9419",
"https://pctc.cyberforce.site/lms/playercontents/11475/wmi-and-wmic/playercontentcontainer/346/2057/9420",
"https://pctc.cyberforce.site/lms/playercontents/11476/powershell-commands/playercontentcontainer/346/2057/9421",
"https://pctc.cyberforce.site/lms/playercontents/11477/psexec/playercontentcontainer/346/2057/9422",
"https://pctc.cyberforce.site/lms/playercontents/11478/windows-management-instrumentation-demo/playercontentcontainer/346/2057/9423",
"https://pctc.cyberforce.site/lms/playercontents/11479/intro-to-windows-scripting-quiz/playercontentcontainer/346/2058/9424",
"https://pctc.cyberforce.site/lms/playercontents/16165/mdt-introduction/playercontentcontainer/583/3029/13495",
"https://pctc.cyberforce.site/lms/playercontents/16174/mdt-concepts/playercontentcontainer/583/3029/13504",
"https://pctc.cyberforce.site/lms/playercontents/16176/cyber-operators/playercontentcontainer/583/3029/13506",
"https://pctc.cyberforce.site/lms/playercontents/16180/mdt-relevance/playercontentcontainer/583/3029/13510",
"https://pctc.cyberforce.site/lms/playercontents/16203/cpt-and-mdt-relationship-part-one/playercontentcontainer/583/3029/13533",
"https://pctc.cyberforce.site/lms/playercontents/16204/cpt-and-mdt-relationship-part-two/playercontentcontainer/583/3029/13534",
"https://pctc.cyberforce.site/lms/playercontents/16260/getting-started/playercontentcontainer/583/3029/13588",
"https://pctc.cyberforce.site/lms/playercontents/16261/mdt-introduction-slide-deck/playercontentcontainer/583/3029/13589",
"https://pctc.cyberforce.site/lms/playercontents/16185/89th-introduction-and-pbed-overview/playercontentcontainer/583/3030/13515",
"https://pctc.cyberforce.site/lms/playercontents/16192/mission-types/playercontentcontainer/583/3030/13522",
"https://pctc.cyberforce.site/lms/playercontents/16262/mission-planning/playercontentcontainer/583/3030/13590",
"https://pctc.cyberforce.site/lms/playercontents/16263/mdt-missions-slide-deck/playercontentcontainer/583/3030/13591",
"https://pctc.cyberforce.site/lms/playercontents/16265/identifying-cyber-key-terrain/playercontentcontainer/582/3024/13593",
"https://pctc.cyberforce.site/lms/playercontents/16266/risks-vulnerability-and-threats/playercontentcontainer/582/3024/13594",
"https://pctc.cyberforce.site/lms/playercontents/16267/common-networking-protocols-and-services/playercontentcontainer/582/3024/13595",
"https://pctc.cyberforce.site/lms/playercontents/16268/identify-slide-deck/playercontentcontainer/582/3024/13596",
"https://pctc.cyberforce.site/lms/playercontents/16269/vulnerability-management-practices/playercontentcontainer/582/3025/13597",
"https://pctc.cyberforce.site/lms/playercontents/16270/iavms/playercontentcontainer/582/3025/13598",
"https://pctc.cyberforce.site/lms/playercontents/16271/stigs/playercontentcontainer/582/3025/13599",
"https://pctc.cyberforce.site/lms/playercontents/16272/analyzing-and-prioritizing-vulnerabilities/playercontentcontainer/582/3025/13600",
"https://pctc.cyberforce.site/lms/playercontents/16273/baselining/playercontentcontainer/582/3025/13601",
"https://pctc.cyberforce.site/lms/playercontents/16274/patching-and-antivirus/playercontentcontainer/582/3025/13602",
"https://pctc.cyberforce.site/lms/playercontents/16275/data-security/playercontentcontainer/582/3025/13603",
"https://pctc.cyberforce.site/lms/playercontents/17766/information-protection/playercontentcontainer/582/3025/13604",
"https://pctc.cyberforce.site/lms/playercontents/16277/protect-slide-deck/playercontentcontainer/582/3025/13605",
"https://pctc.cyberforce.site/lms/playercontents/17767/types-of-malicious-code/playercontentcontainer/582/3026/13606",
"https://pctc.cyberforce.site/lms/playercontents/16279/types-of-attacks/playercontentcontainer/582/3026/13607",
"https://pctc.cyberforce.site/lms/playercontents/17768/social-engineering/playercontentcontainer/582/3026/13608",
"https://pctc.cyberforce.site/lms/playercontents/16281/wireless-attacks/playercontentcontainer/582/3026/13609",
"https://pctc.cyberforce.site/lms/playercontents/17769/application-attacks/playercontentcontainer/582/3026/13610",
"https://pctc.cyberforce.site/lms/playercontents/16283/continuous-monitoring/playercontentcontainer/582/3026/13611",
"https://pctc.cyberforce.site/lms/playercontents/17770/computer-security-incidents/playercontentcontainer/582/3026/13612",
"https://pctc.cyberforce.site/lms/playercontents/16285/detection-data-aggregation/playercontentcontainer/582/3026/13613",
"https://pctc.cyberforce.site/lms/playercontents/17771/alerts/playercontentcontainer/582/3026/13614",
"https://pctc.cyberforce.site/lms/playercontents/16287/detect-slide-deck/playercontentcontainer/582/3026/13615",
"https://pctc.cyberforce.site/lms/playercontents/17772/incident-response-process/playercontentcontainer/582/3027/13616",
"https://pctc.cyberforce.site/lms/playercontents/16289/triage-and-analysis-process/playercontentcontainer/582/3027/13617",
"https://pctc.cyberforce.site/lms/playercontents/17773/containing-threats-and-minimizing-impact/playercontentcontainer/582/3027/13618",
"https://pctc.cyberforce.site/lms/playercontents/16291/purpose-of-computer-and-network-forensics/playercontentcontainer/582/3027/13619",
"https://pctc.cyberforce.site/lms/playercontents/16292/-forensic-concepts/playercontentcontainer/582/3027/13620",
"https://pctc.cyberforce.site/lms/playercontents/17774/computer-forensics-process/playercontentcontainer/582/3027/13621",
"https://pctc.cyberforce.site/lms/playercontents/16294/tools/playercontentcontainer/582/3027/13622",
"https://pctc.cyberforce.site/lms/playercontents/17775/information-gathering/playercontentcontainer/582/3027/13623",
"https://pctc.cyberforce.site/lms/playercontents/16296/acquisition-considerations/playercontentcontainer/582/3027/13624",
"https://pctc.cyberforce.site/lms/playercontents/17776/notes-and-documentation/playercontentcontainer/582/3027/13625",
"https://pctc.cyberforce.site/lms/playercontents/16298/respond-slide-deck/playercontentcontainer/582/3027/13626",
"https://pctc.cyberforce.site/lms/playercontents/17777/recover-strategy/playercontentcontainer/582/3028/13627",
"https://pctc.cyberforce.site/lms/playercontents/16300/documenting-the-plan/playercontentcontainer/582/3028/13628",
"https://pctc.cyberforce.site/lms/playercontents/17778/managing-recovery-communications/playercontentcontainer/582/3028/13629",
"https://pctc.cyberforce.site/lms/playercontents/16302/testing-training-and-updates/playercontentcontainer/582/3028/13630",
"https://pctc.cyberforce.site/lms/playercontents/17779/recover-slide-deck/playercontentcontainer/582/3028/13631",
"https://pctc.cyberforce.site/lms/playercontents/16836/introduction-and-pbed-overview/playercontentcontainer/560/2908/14164",
"https://pctc.cyberforce.site/lms/playercontents/16900/roles-and-responsibilities/playercontentcontainer/560/2908/14220",
"https://pctc.cyberforce.site/lms/playercontents/16901/mpc-timeline/playercontentcontainer/560/2908/14221",
"https://pctc.cyberforce.site/lms/playercontents/16902/me3cpc2-part-one/playercontentcontainer/560/2908/14222",
"https://pctc.cyberforce.site/lms/playercontents/16903/me3cpc2-part-two/playercontentcontainer/560/2908/14223",
"https://pctc.cyberforce.site/lms/playercontents/16904/debrief-overview/playercontentcontainer/560/2908/14224",
"https://pctc.cyberforce.site/lms/playercontents/16905/debrief-steps/playercontentcontainer/560/2908/14225",
"https://pctc.cyberforce.site/lms/playercontents/15259/part-1/playercontentcontainer/427/2422/12593",
"https://pctc.cyberforce.site/lms/playercontents/15263/part-2/playercontentcontainer/427/2422/12597",
"https://pctc.cyberforce.site/lms/playercontents/15264/part-3/playercontentcontainer/427/2422/12598",
"https://pctc.cyberforce.site/lms/playercontents/15265/part-4/playercontentcontainer/427/2422/12599",
"https://pctc.cyberforce.site/lms/playercontents/15266/part-5/playercontentcontainer/427/2422/12600",
"https://pctc.cyberforce.site/lms/playercontents/16987/mdt-cvah-software-listing/playercontentcontainer/499/2969/14307",
"https://pctc.cyberforce.site/lms/playercontents/16070/toolkit-setup-panel-discussion/playercontentcontainer/499/2969/13401",
"https://pctc.cyberforce.site/lms/playercontents/16071/toolkit-best-practices-panel-discussion/playercontentcontainer/499/2969/13402",
"https://pctc.cyberforce.site/lms/playercontents/16072/toolkit-operations-panel-discussion/playercontentcontainer/499/2969/13403",
"https://pctc.cyberforce.site/lms/playercontents/16073/data-scalability-dr-panel-discussion/playercontentcontainer/499/2969/13404",
"https://pctc.cyberforce.site/lms/playercontents/16074/toolkit-tools-and-support-panel-discussion/playercontentcontainer/499/2969/13405",
"https://pctc.cyberforce.site/lms/playercontents/16075/relationships-panel-discussion/playercontentcontainer/499/2969/13406",
"https://pctc.cyberforce.site/lms/playercontents/16076/recommended-improvement-areas-panel-discussion/playercontentcontainer/499/2969/13407",
"https://pctc.cyberforce.site/lms/playercontents/16981/cvah-sandbox-range/playercontentcontainer/499/2969/14301",
"https://pctc.cyberforce.site/lms/playercontents/14912/scanning-and-enumeration-with-nmap/playercontentcontainer/499/2971/12246",
"https://pctc.cyberforce.site/lms/playercontents/17656/nmap-utilization/playercontentcontainer/499/2971/15025",
"https://pctc.cyberforce.site/lms/playercontents/10870/remote-system-identification-with-nmap-and-xprobe/playercontentcontainer/499/2971/8850",
"https://pctc.cyberforce.site/lms/playercontents/14840/assessing-the-state-of-an-unknown-network/playercontentcontainer/499/2971/12174",
"https://pctc.cyberforce.site/lms/playercontents/16649/common-tasks-for-securing-linux-systems-part-1--establishing-a-baseline/playercontentcontainer/499/2843/13977",
"https://pctc.cyberforce.site/lms/playercontents/16659/common-tasks-for-securing-linux-systems-part-2--upgrading-software/playercontentcontainer/499/2843/13987",
"https://pctc.cyberforce.site/lms/playercontents/16660/common-tasks-for-securing-linux-systems-part-3--reducing-the-attack-surface/playercontentcontainer/499/2843/13988",
"https://pctc.cyberforce.site/lms/playercontents/16661/common-tasks-for-securing-linux-systems-part-4--hardening-common-applications/playercontentcontainer/499/2843/13989",
"https://pctc.cyberforce.site/lms/playercontents/16233/utilizing-kali-linux-to-recover-key-mission-data/playercontentcontainer/499/2843/13561",
"https://pctc.cyberforce.site/lms/playercontents/16254/identify-partition-format-and-mount-a-storage-device-within-linux/playercontentcontainer/499/2843/13582",
"https://pctc.cyberforce.site/lms/playercontents/16970/responding-to-a-linux-attack/playercontentcontainer/499/2843/14290",
"https://pctc.cyberforce.site/lms/playercontents/16855/introduction-to-docker-portainer-and-harbor/playercontentcontainer/499/2847/14183",
"https://pctc.cyberforce.site/lms/playercontents/16068/test-driving-security-onion/playercontentcontainer/499/2906/13399",
"https://pctc.cyberforce.site/lms/playercontents/16869/deploying-distributed-security-onion/playercontentcontainer/499/2906/14189",
"https://pctc.cyberforce.site/lms/playercontents/15786/introduction-to-kibana/playercontentcontainer/499/2907/13118",
"https://pctc.cyberforce.site/lms/playercontents/15775/kibana-overview/playercontentcontainer/499/2907/13107",
"https://pctc.cyberforce.site/lms/playercontents/15776/kibana-discover-mode/playercontentcontainer/499/2907/13108",
"https://pctc.cyberforce.site/lms/playercontents/15777/visualizing-data-using-charts-in-kibana/playercontentcontainer/499/2907/13109",
"https://pctc.cyberforce.site/lms/playercontents/16126/creating-a-simple-dashboard-in-kibana/playercontentcontainer/499/2907/13110",
"https://pctc.cyberforce.site/lms/playercontents/15809/core-features-of-kibana/playercontentcontainer/499/2907/13142",
"https://pctc.cyberforce.site/lms/playercontents/15782/multi-source-data-analysis-with-kibana/playercontentcontainer/499/2907/13114",
"https://pctc.cyberforce.site/lms/playercontents/16662/analyze-network-traffic-with-kibana-62-default-dashboards/playercontentcontainer/499/2907/13990",
"https://pctc.cyberforce.site/lms/playercontents/16844/create-custom-visualizations-in-kibana/playercontentcontainer/499/2907/14172",
"https://pctc.cyberforce.site/lms/playercontents/16856/create-custom-visualizations-in-kibana-2/playercontentcontainer/499/2907/14184",
"https://pctc.cyberforce.site/lms/playercontents/16870/discovering-and-filtering-network-normality-to-improve-cyber-key-terrain-insight/playercontentcontainer/499/2907/14190",
"https://pctc.cyberforce.site/lms/playercontents/16990/analyze-nids-alerts-in-kibana/playercontentcontainer/499/2907/14310",
"https://pctc.cyberforce.site/lms/playercontents/16983/moloch-utilization--part-1/playercontentcontainer/499/2965/14303",
"https://pctc.cyberforce.site/lms/playercontents/16986/moloch-utilization--part-2/playercontentcontainer/499/2965/14306",
"https://pctc.cyberforce.site/lms/playercontents/15686/introduction-to-bro/playercontentcontainer/499/2910/13019",
"https://pctc.cyberforce.site/lms/playercontents/15687/brocontrol-usage/playercontentcontainer/499/2910/13020",
"https://pctc.cyberforce.site/lms/playercontents/15668/using-standalone-bro-to-analyze-network-based-attacks/playercontentcontainer/499/2910/13002",
"https://pctc.cyberforce.site/lms/playercontents/15669/detecting-an-unknown-attacker-with-bro/playercontentcontainer/499/2910/13003",
"https://pctc.cyberforce.site/lms/playercontents/15789/introduction-to-suricata/playercontentcontainer/499/2911/13121",
"https://pctc.cyberforce.site/lms/playercontents/15810/basic-usage-examples-of-suricata/playercontentcontainer/499/2911/13143",
"https://pctc.cyberforce.site/lms/playercontents/15721/comprehensive-test-drive-of-suricata/playercontentcontainer/499/2911/13054",
"https://pctc.cyberforce.site/lms/playercontents/16955/malware-hunting-with-powershell/playercontentcontainer/499/3068/14275",
"https://pctc.cyberforce.site/lms/playercontents/16988/site-to-site-vpn-tunnels-in-pfsense-using-ipsec/playercontentcontainer/499/3069/14308",
"https://pctc.cyberforce.site/lms/playercontents/16989/site-to-site-vpn-tunnels-in-pfsense-using-openvpn/playercontentcontainer/499/3069/14309",
"https://pctc.cyberforce.site/lms/playercontents/12184/snort-intro-and-overview/playercontentcontainer/499/2913/4330",
"https://pctc.cyberforce.site/lms/playercontents/12182/using-snort-demo/playercontentcontainer/499/2913/4332",
"https://pctc.cyberforce.site/lms/playercontents/16155/grassmarlin-utilization/playercontentcontainer/499/2912/13485",
"https://pctc.cyberforce.site/lms/playercontents/16511/identify-data-flows-with-grassmarlin/playercontentcontainer/499/2912/13839",
"https://pctc.cyberforce.site/lms/playercontents/16923/maltego-utilization-part-1/playercontentcontainer/499/2916/14243",
"https://pctc.cyberforce.site/lms/playercontents/16936/maltego-utilization-part-2/playercontentcontainer/499/2916/14256",
"https://pctc.cyberforce.site/lms/playercontents/16940/casefile-utilization/playercontentcontainer/499/2916/14260",
"https://pctc.cyberforce.site/lms/playercontents/16991/intel-gathering-and-aggregation-with-casefile/playercontentcontainer/499/2916/14311",
"https://pctc.cyberforce.site/lms/playercontents/16154/networkminer-utilization/playercontentcontainer/499/2681/13484",
"https://pctc.cyberforce.site/lms/playercontents/15942/pcap-acquisition-challenge/playercontentcontainer/499/2681/13275",
"https://pctc.cyberforce.site/lms/playercontents/14681/system-vulnerabilities-discovery-exploitation-and-mitigation/playercontentcontainer/499/2973/12015",
"https://pctc.cyberforce.site/lms/playercontents/15820/determine-windows-10-stig-compliance-levels-using-acas/playercontentcontainer/499/2973/13153",
"https://pctc.cyberforce.site/lms/playercontents/16066/using-wireshark-to-detect-malicious-network-activity/playercontentcontainer/499/2975/13397",
"https://pctc.cyberforce.site/lms/playercontents/16138/malware-hunting-with-sysinternals-tools-locate-and-destroy-advanced-persistent-threats/playercontentcontainer/499/2978/13468",
"https://pctc.cyberforce.site/lms/playercontents/16151/guided-malware-analysis-/playercontentcontainer/499/2978/13481",
"https://pctc.cyberforce.site/lms/playercontents/16150/unguided-malware-analysis/playercontentcontainer/499/2978/13480",
"https://pctc.cyberforce.site/lms/playercontents/17988/cvah-validation-capstone/playercontentcontainer/499/3239/15312",
"https://pctc.cyberforce.site/lms/playercontents/14306/purpose-of-computer-and-network-forensics/playercontentcontainer/393/2245/11814",
"https://pctc.cyberforce.site/lms/playercontents/14307/digital-forensics-tools/playercontentcontainer/393/2245/11815",
"https://pctc.cyberforce.site/lms/playercontents/14308/forensics-team-staffing-considerations/playercontentcontainer/393/2245/11816",
"https://pctc.cyberforce.site/lms/playercontents/14309/digital-forensics-guidelines-policies-and-procedures/playercontentcontainer/393/2245/11817",
"https://pctc.cyberforce.site/lms/playercontents/14310/digital-forensics-life-cycle/playercontentcontainer/393/2245/11818",
"https://pctc.cyberforce.site/lms/playercontents/14311/digital-forensics-best-practices/playercontentcontainer/393/2245/11819",
"https://pctc.cyberforce.site/lms/playercontents/14312/digital-forensics-concepts/playercontentcontainer/393/2246/11820",
"https://pctc.cyberforce.site/lms/playercontents/14313/locards-exchange-principle/playercontentcontainer/393/2246/11821",
"https://pctc.cyberforce.site/lms/playercontents/14314/incident-response-phases-part-1-of-3/playercontentcontainer/393/2246/11822",
"https://pctc.cyberforce.site/lms/playercontents/14315/incident-response-phases-part-2-of-3/playercontentcontainer/393/2246/11823",
"https://pctc.cyberforce.site/lms/playercontents/14316/incident-response-phases-part-3-of-3/playercontentcontainer/393/2246/11824",
"https://pctc.cyberforce.site/lms/playercontents/14317/computer-forensics-process-part-1-of-2/playercontentcontainer/393/2246/11825",
"https://pctc.cyberforce.site/lms/playercontents/14318/computer-forensics-process-part-2-of-2/playercontentcontainer/393/2246/11826",
"https://pctc.cyberforce.site/lms/playercontents/14319/digital-forensic-planning-and-preparation/playercontentcontainer/393/2247/11827",
"https://pctc.cyberforce.site/lms/playercontents/14320/ir-and-digital-forensics-tools/playercontentcontainer/393/2247/11828",
"https://pctc.cyberforce.site/lms/playercontents/14321/forensically-prepared-media-tools-and-equipment/playercontentcontainer/393/2247/11829",
"https://pctc.cyberforce.site/lms/playercontents/14322/incident-response-information-gathering/playercontentcontainer/393/2247/11830",
"https://pctc.cyberforce.site/lms/playercontents/14323/incident-response-acquisition-considerations/playercontentcontainer/393/2247/11831",
"https://pctc.cyberforce.site/lms/playercontents/14324/incident-response-notes-and-documentation/playercontentcontainer/393/2247/11832",
"https://pctc.cyberforce.site/lms/playercontents/14325/auditing-windows-event-logs/playercontentcontainer/393/2247/11833",
"https://pctc.cyberforce.site/lms/playercontents/14326/volatile-data-collection/playercontentcontainer/393/2248/11834",
"https://pctc.cyberforce.site/lms/playercontents/14327/storage-media-collection/playercontentcontainer/393/2248/11835",
"https://pctc.cyberforce.site/lms/playercontents/14328/network-data-collection/playercontentcontainer/393/2248/11836",
"https://pctc.cyberforce.site/lms/playercontents/14329/log-collection/playercontentcontainer/393/2248/11837",
"https://pctc.cyberforce.site/lms/playercontents/14330/data-carving-using-ftk/playercontentcontainer/393/2248/11838",
"https://pctc.cyberforce.site/lms/playercontents/14331/digital-forensic-triage-overview/playercontentcontainer/393/2249/11839",
"https://pctc.cyberforce.site/lms/playercontents/14332/incident-triage-process/playercontentcontainer/393/2249/11840",
"https://pctc.cyberforce.site/lms/playercontents/14333/incident-triage-methodology/playercontentcontainer/393/2249/11841",
"https://pctc.cyberforce.site/lms/playercontents/14334/attacker-methodology-overview-part-1-of-3/playercontentcontainer/393/2249/11842",
"https://pctc.cyberforce.site/lms/playercontents/14335/attacker-methodology-overview-part-2-of-3/playercontentcontainer/393/2249/11843",
"https://pctc.cyberforce.site/lms/playercontents/14336/attacker-methodology-overview-part-3-of-3/playercontentcontainer/393/2249/11844",
"https://pctc.cyberforce.site/lms/playercontents/14337/triage-light-and-general-collections/playercontentcontainer/393/2249/11845",
"https://pctc.cyberforce.site/lms/playercontents/14338/triage-analysis/playercontentcontainer/393/2250/11846",
"https://pctc.cyberforce.site/lms/playercontents/14339/triage-analysis-of-volatile-data/playercontentcontainer/393/2250/11847",
"https://pctc.cyberforce.site/lms/playercontents/14340/program-execution/playercontentcontainer/393/2250/11848",
"https://pctc.cyberforce.site/lms/playercontents/14341/analyzing-services/playercontentcontainer/393/2250/11849",
"https://pctc.cyberforce.site/lms/playercontents/14342/malware-vectors-and-detection/playercontentcontainer/393/2250/11850",
"https://pctc.cyberforce.site/lms/playercontents/14343/mobile-device-triage-analysis/playercontentcontainer/393/2250/11851",
"https://pctc.cyberforce.site/lms/playercontents/14344/ir-following-a-trail/playercontentcontainer/393/2251/11852",
"https://pctc.cyberforce.site/lms/playercontents/14345/hash-and-file-signature-analysis/playercontentcontainer/393/2251/11853",
"https://pctc.cyberforce.site/lms/playercontents/14346/time-analysis/playercontentcontainer/393/2251/11854",
"https://pctc.cyberforce.site/lms/playercontents/14347/registry-analysis/playercontentcontainer/393/2251/11855",
"https://pctc.cyberforce.site/lms/playercontents/14348/file-analysis-demonstration/playercontentcontainer/393/2251/11856",
"https://pctc.cyberforce.site/lms/playercontents/14349/hashing-with-md5deep/playercontentcontainer/393/2251/11857",
"https://pctc.cyberforce.site/lms/playercontents/14350/hash-analysis-with-autopsy/playercontentcontainer/393/2251/11858",
"https://pctc.cyberforce.site/lms/playercontents/14351/lessons-learned-from-an-incident/playercontentcontainer/393/2252/11859",
"https://pctc.cyberforce.site/lms/playercontents/14352/lessons-learned-from-objective-and-subjective-data/playercontentcontainer/393/2252/11860",
"https://pctc.cyberforce.site/lms/playercontents/14353/evidence-retention-and-information-sharing-post-incident/playercontentcontainer/393/2252/11861",
"https://pctc.cyberforce.site/lms/playercontents/14354/cyber-security-investigations-exam/playercontentcontainer/393/2253/11862",
"https://pctc.cyberforce.site/lms/playercontents/8834/windows-os-security-course-introduction/playercontentcontainer/126/977/4911",
"https://pctc.cyberforce.site/lms/playercontents/8835/windows-security-module-introduction/playercontentcontainer/126/978/4912",
"https://pctc.cyberforce.site/lms/playercontents/8836/windows-architecture-overview/playercontentcontainer/126/978/4913",
"https://pctc.cyberforce.site/lms/playercontents/8837/windows-subsystems-part-1-of-2/playercontentcontainer/126/978/4914",
"https://pctc.cyberforce.site/lms/playercontents/8838/windows-subsystems-part-2-of-2/playercontentcontainer/126/978/4915",
"https://pctc.cyberforce.site/lms/playercontents/8839/windows-security-development-lifecycle/playercontentcontainer/126/978/4916",
"https://pctc.cyberforce.site/lms/playercontents/8840/windows-api/playercontentcontainer/126/978/4917",
"https://pctc.cyberforce.site/lms/playercontents/8841/windows-registry/playercontentcontainer/126/978/4918",
"https://pctc.cyberforce.site/lms/playercontents/8842/viewing-windows-registry-demo/playercontentcontainer/126/978/4919",
"https://pctc.cyberforce.site/lms/playercontents/8843/windows-services-part-1-of-2/playercontentcontainer/126/978/4920",
"https://pctc.cyberforce.site/lms/playercontents/8844/windows-services-demo/playercontentcontainer/126/978/4921",
"https://pctc.cyberforce.site/lms/playercontents/8845/windows-services-part-2-of-2/playercontentcontainer/126/978/4922",
"https://pctc.cyberforce.site/lms/playercontents/8846/multi-tasking/playercontentcontainer/126/978/4923",
"https://pctc.cyberforce.site/lms/playercontents/8847/sessions-windows-stations-and-desktops/playercontentcontainer/126/978/4924",
"https://pctc.cyberforce.site/lms/playercontents/8848/programs-and-drivers-part-1-of-2/playercontentcontainer/126/978/4925",
"https://pctc.cyberforce.site/lms/playercontents/8849/reviewing-drivers-in-windows/playercontentcontainer/126/978/4926",
"https://pctc.cyberforce.site/lms/playercontents/8850/programs-and-drivers-part-2-of-2/playercontentcontainer/126/978/4927",
"https://pctc.cyberforce.site/lms/playercontents/8851/updating-widows-drives-demo/playercontentcontainer/126/978/4928",
"https://pctc.cyberforce.site/lms/playercontents/8853/buffer-overflow-protection/playercontentcontainer/126/978/4930",
"https://pctc.cyberforce.site/lms/playercontents/8854/authenticode-part-1-of-2/playercontentcontainer/126/978/4931",
"https://pctc.cyberforce.site/lms/playercontents/8855/digital-certificate-details-demo/playercontentcontainer/126/978/4932",
"https://pctc.cyberforce.site/lms/playercontents/8856/authenticode-part-2-of-2/playercontentcontainer/126/978/4933",
"https://pctc.cyberforce.site/lms/playercontents/8857/windows-action-center/playercontentcontainer/126/978/4934",
"https://pctc.cyberforce.site/lms/playercontents/8858/windows-users-and-groups-introduction/playercontentcontainer/126/979/4935",
"https://pctc.cyberforce.site/lms/playercontents/8859/user-account-control/playercontentcontainer/126/979/4936",
"https://pctc.cyberforce.site/lms/playercontents/8860/windows-users-and-groups-part-1-of-2/playercontentcontainer/126/979/4937",
"https://pctc.cyberforce.site/lms/playercontents/8861/windows-users-and-groups-part-2-of-2/playercontentcontainer/126/979/4938",
"https://pctc.cyberforce.site/lms/playercontents/8862/windows-interactive-logon-process/playercontentcontainer/126/979/4939",
"https://pctc.cyberforce.site/lms/playercontents/8863/ntlm-authentication-overview/playercontentcontainer/126/979/4940",
"https://pctc.cyberforce.site/lms/playercontents/8864/kerberos-authentication-overview/playercontentcontainer/126/979/4941",
"https://pctc.cyberforce.site/lms/playercontents/8865/types-of-authentication/playercontentcontainer/126/979/4942",
"https://pctc.cyberforce.site/lms/playercontents/8866/file-permissions/playercontentcontainer/126/979/4943",
"https://pctc.cyberforce.site/lms/playercontents/8867/dynamic-access-controls/playercontentcontainer/126/979/4944",
"https://pctc.cyberforce.site/lms/playercontents/8868/threats-and-vulnerabilities-introduction/playercontentcontainer/126/980/4945",
"https://pctc.cyberforce.site/lms/playercontents/8869/os-vulnerabilities/playercontentcontainer/126/980/4946",
"https://pctc.cyberforce.site/lms/playercontents/8870/cve-details-demo/playercontentcontainer/126/980/4947",
"https://pctc.cyberforce.site/lms/playercontents/8871/cve-samples/playercontentcontainer/126/980/4948",
"https://pctc.cyberforce.site/lms/playercontents/8872/misconfigurations/playercontentcontainer/126/980/4949",
"https://pctc.cyberforce.site/lms/playercontents/8873/password-configuration-options/playercontentcontainer/126/980/4950",
"https://pctc.cyberforce.site/lms/playercontents/8874/password-ddos-demo/playercontentcontainer/126/980/4951",
"https://pctc.cyberforce.site/lms/playercontents/8875/common-misconfigurations/playercontentcontainer/126/980/4952",
"https://pctc.cyberforce.site/lms/playercontents/8876/cce-and-the-nvd-demo/playercontentcontainer/126/980/4953",
"https://pctc.cyberforce.site/lms/playercontents/8877/social-engineering/playercontentcontainer/126/980/4954",
"https://pctc.cyberforce.site/lms/playercontents/8878/viruses-and-worms/playercontentcontainer/126/980/4955",
"https://pctc.cyberforce.site/lms/playercontents/8879/impersonation/playercontentcontainer/126/980/4956",
"https://pctc.cyberforce.site/lms/playercontents/8880/microsoft-updates-and-patching-process-part-1-of-2/playercontentcontainer/126/981/4957",
"https://pctc.cyberforce.site/lms/playercontents/8881/double-decode/playercontentcontainer/126/981/4958",
"https://pctc.cyberforce.site/lms/playercontents/8882/microsoft-updates-and-patching-process-part-2-of-2/playercontentcontainer/126/981/4959",
"https://pctc.cyberforce.site/lms/playercontents/8883/securing-the-update-process/playercontentcontainer/126/981/4960",
"https://pctc.cyberforce.site/lms/playercontents/8884/update-process-circumvention/playercontentcontainer/126/981/4961",
"https://pctc.cyberforce.site/lms/playercontents/8885/windows-server-update-service/playercontentcontainer/126/981/4962",
"https://pctc.cyberforce.site/lms/playercontents/8886/internet-explorer-patching/playercontentcontainer/126/981/4963",
"https://pctc.cyberforce.site/lms/playercontents/8887/windows-network-connectivity/playercontentcontainer/126/982/4964",
"https://pctc.cyberforce.site/lms/playercontents/8888/windows-network-profiles/playercontentcontainer/126/982/4965",
"https://pctc.cyberforce.site/lms/playercontents/8889/windows-network-adapter-settings/playercontentcontainer/126/982/4966",
"https://pctc.cyberforce.site/lms/playercontents/8890/windows-wireless-settings/playercontentcontainer/126/982/4967",
"https://pctc.cyberforce.site/lms/playercontents/8891/windows-networking-protocols/playercontentcontainer/126/982/4968",
"https://pctc.cyberforce.site/lms/playercontents/8892/other-windows-protocols/playercontentcontainer/126/982/4969",
"https://pctc.cyberforce.site/lms/playercontents/8893/microsoft-vpn-part-1-of-2/playercontentcontainer/126/982/4970",
"https://pctc.cyberforce.site/lms/playercontents/8894/microsoft-vpn-part-2-of-2/playercontentcontainer/126/982/4971",
"https://pctc.cyberforce.site/lms/playercontents/8895/microsoft-network-access-protection-part-1-of-2/playercontentcontainer/126/982/4972",
"https://pctc.cyberforce.site/lms/playercontents/8896/microsoft-network-access-protection-part-2-of-2/playercontentcontainer/126/982/4973",
"https://pctc.cyberforce.site/lms/playercontents/8897/how-to-configure-windows-update-settings-demo/playercontentcontainer/126/982/4974",
"https://pctc.cyberforce.site/lms/playercontents/8898/windows-security-features-introduction/playercontentcontainer/126/983/4975",
"https://pctc.cyberforce.site/lms/playercontents/8899/windows-firewall/playercontentcontainer/126/983/4976",
"https://pctc.cyberforce.site/lms/playercontents/8900/windows-firewall-wizard-demo/playercontentcontainer/126/983/4977",
"https://pctc.cyberforce.site/lms/playercontents/8901/windows-firewall-with-advanced-security/playercontentcontainer/126/983/4978",
"https://pctc.cyberforce.site/lms/playercontents/8902/windows-firewall-with-advanced-security-demo/playercontentcontainer/126/983/4979",
"https://pctc.cyberforce.site/lms/playercontents/8903/configuring-windows-firewall-demo/playercontentcontainer/126/983/4980",
"https://pctc.cyberforce.site/lms/playercontents/8904/windows-defender/playercontentcontainer/126/983/4981",
"https://pctc.cyberforce.site/lms/playercontents/8905/windows-ad-and-pki-demo/playercontentcontainer/126/983/4982",
"https://pctc.cyberforce.site/lms/playercontents/8906/windows-active-directory-certificate-services/playercontentcontainer/126/983/4983",
"https://pctc.cyberforce.site/lms/playercontents/8907/windows-group-policy/playercontentcontainer/126/983/4984",
"https://pctc.cyberforce.site/lms/playercontents/8908/windows-applocker/playercontentcontainer/126/983/4985",
"https://pctc.cyberforce.site/lms/playercontents/8909/configuring-and-using-app-locker-demo/playercontentcontainer/126/983/4986",
"https://pctc.cyberforce.site/lms/playercontents/8910/windows-bitlocker/playercontentcontainer/126/983/4987",
"https://pctc.cyberforce.site/lms/playercontents/8911/configuring-and-using-bitlocker-demo/playercontentcontainer/126/983/4988",
"https://pctc.cyberforce.site/lms/playercontents/8912/windows-secure-boot/playercontentcontainer/126/983/4989",
"https://pctc.cyberforce.site/lms/playercontents/8913/windows-security-auditing/playercontentcontainer/126/983/4990",
"https://pctc.cyberforce.site/lms/playercontents/8914/windows-audit-settings-and-examples/playercontentcontainer/126/983/4991",
"https://pctc.cyberforce.site/lms/playercontents/8915/scw-introduction/playercontentcontainer/126/983/4992",
"https://pctc.cyberforce.site/lms/playercontents/8916/hardening-windows-introduction/playercontentcontainer/126/984/4993",
"https://pctc.cyberforce.site/lms/playercontents/8917/windows-templates/playercontentcontainer/126/984/4994",
"https://pctc.cyberforce.site/lms/playercontents/8918/microsoft-baseline-security-analyzer/playercontentcontainer/126/984/4995",
"https://pctc.cyberforce.site/lms/playercontents/8919/microsoft-security-configuration-wizard/playercontentcontainer/126/984/4996",
"https://pctc.cyberforce.site/lms/playercontents/8920/microsoft-security-compliance-manager/playercontentcontainer/126/984/4997",
"https://pctc.cyberforce.site/lms/playercontents/8921/hardening-with-group-policy/playercontentcontainer/126/984/4998",
"https://pctc.cyberforce.site/lms/playercontents/8922/nvd-search-demo/playercontentcontainer/126/984/4999",
"https://pctc.cyberforce.site/lms/playercontents/8923/other-guidelines-and-recommendations/playercontentcontainer/126/984/5000",
"https://pctc.cyberforce.site/lms/playercontents/8924/using-windows-mgmt-intstrumentation-demo/playercontentcontainer/126/984/5001",
"https://pctc.cyberforce.site/lms/playercontents/8925/using-the-security-config-wizard-demo/playercontentcontainer/126/984/5002",
"https://pctc.cyberforce.site/lms/playercontents/8926/powershell-introduction/playercontentcontainer/126/985/5003",
"https://pctc.cyberforce.site/lms/playercontents/8927/powershell-key-commands/playercontentcontainer/126/985/5004",
"https://pctc.cyberforce.site/lms/playercontents/8928/powershell-demo/playercontentcontainer/126/985/5005",
"https://pctc.cyberforce.site/lms/playercontents/8929/administrative-functions-with-powershell/playercontentcontainer/126/985/5006",
"https://pctc.cyberforce.site/lms/playercontents/8930/computer-and-network-management-with-powershell/playercontentcontainer/126/985/5007",
"https://pctc.cyberforce.site/lms/playercontents/8931/basic-scripts-in-powershell/playercontentcontainer/126/985/5008",
"https://pctc.cyberforce.site/lms/playercontents/8932/powershell-security-settings-and-configurations/playercontentcontainer/126/985/5009",
"https://pctc.cyberforce.site/lms/playercontents/8933/using-powershell-demo/playercontentcontainer/126/985/5010",
"https://pctc.cyberforce.site/lms/playercontents/5011/windows-os-security-quiz/playercontentcontainer/126/986/5011",
"https://pctc.cyberforce.site/lms/playercontents/8771/linux-os-security-introduction/playercontentcontainer/135/1018/5215",
"https://pctc.cyberforce.site/lms/playercontents/8772/booting-linux/playercontentcontainer/135/1019/5216",
"https://pctc.cyberforce.site/lms/playercontents/8773/linux-recovery/playercontentcontainer/135/1019/5217",
"https://pctc.cyberforce.site/lms/playercontents/8774/linux-startup-scripts/playercontentcontainer/135/1019/5218",
"https://pctc.cyberforce.site/lms/playercontents/8775/linux-startup-processes/playercontentcontainer/135/1019/5219",
"https://pctc.cyberforce.site/lms/playercontents/8776/linux-runlevels-demo/playercontentcontainer/135/1019/5220",
"https://pctc.cyberforce.site/lms/playercontents/8777/chkconfig-and-upstart-demo/playercontentcontainer/135/1019/5221",
"https://pctc.cyberforce.site/lms/playercontents/8778/linux-processes-and-signals/playercontentcontainer/135/1019/5222",
"https://pctc.cyberforce.site/lms/playercontents/8779/linux-process-monitoring/playercontentcontainer/135/1019/5223",
"https://pctc.cyberforce.site/lms/playercontents/8780/ps-and-netstat-demo/playercontentcontainer/135/1019/5224",
"https://pctc.cyberforce.site/lms/playercontents/8781/linux-ps-and-top-demo/playercontentcontainer/135/1019/5225",
"https://pctc.cyberforce.site/lms/playercontents/8782/working-with-linux-pids/playercontentcontainer/135/1019/5226",
"https://pctc.cyberforce.site/lms/playercontents/8783/linux-file-system-overview/playercontentcontainer/135/1019/5227",
"https://pctc.cyberforce.site/lms/playercontents/8784/linux-file-security/playercontentcontainer/135/1019/5228",
"https://pctc.cyberforce.site/lms/playercontents/8785/linux-file-access-controls/playercontentcontainer/135/1019/5229",
"https://pctc.cyberforce.site/lms/playercontents/8786/file-integrity-demo/playercontentcontainer/135/1019/5230",
"https://pctc.cyberforce.site/lms/playercontents/8787/linux-kernel-tuning/playercontentcontainer/135/1019/5231",
"https://pctc.cyberforce.site/lms/playercontents/8788/linux-host-access-controls/playercontentcontainer/135/1019/5232",
"https://pctc.cyberforce.site/lms/playercontents/8789/linux-user-and-group-definition/playercontentcontainer/135/1020/5233",
"https://pctc.cyberforce.site/lms/playercontents/8790/user-management/playercontentcontainer/135/1020/5234",
"https://pctc.cyberforce.site/lms/playercontents/8791/linux-privilege-escalation/playercontentcontainer/135/1020/5235",
"https://pctc.cyberforce.site/lms/playercontents/8792/sudoers-demo/playercontentcontainer/135/1020/5236",
"https://pctc.cyberforce.site/lms/playercontents/8793/linux-authentication-methods/playercontentcontainer/135/1020/5237",
"https://pctc.cyberforce.site/lms/playercontents/8794/linux-viruses-and-worms/playercontentcontainer/135/1021/5238",
"https://pctc.cyberforce.site/lms/playercontents/8795/linux-trojan-horses/playercontentcontainer/135/1021/5239",
"https://pctc.cyberforce.site/lms/playercontents/8796/linux-rootkits/playercontentcontainer/135/1021/5240",
"https://pctc.cyberforce.site/lms/playercontents/8797/linux-misconfigurations/playercontentcontainer/135/1021/5241",
"https://pctc.cyberforce.site/lms/playercontents/8798/linux-software-vulnerabilities/playercontentcontainer/135/1021/5242",
"https://pctc.cyberforce.site/lms/playercontents/8799/linux-social-engineering/playercontentcontainer/135/1021/5243",
"https://pctc.cyberforce.site/lms/playercontents/8800/linux-automated-installation/playercontentcontainer/135/1022/5244",
"https://pctc.cyberforce.site/lms/playercontents/8801/managing-linux-packages/playercontentcontainer/135/1022/5245",
"https://pctc.cyberforce.site/lms/playercontents/8802/package-management-tools-demo/playercontentcontainer/135/1022/5246",
"https://pctc.cyberforce.site/lms/playercontents/8803/repositories-and-system-management/playercontentcontainer/135/1022/5247",
"https://pctc.cyberforce.site/lms/playercontents/8804/custom-repository-demo/playercontentcontainer/135/1022/5248",
"https://pctc.cyberforce.site/lms/playercontents/8805/linux-ipv4-and-ipv6/playercontentcontainer/135/1023/5249",
"https://pctc.cyberforce.site/lms/playercontents/8806/linux-network-configuration/playercontentcontainer/135/1023/5250",
"https://pctc.cyberforce.site/lms/playercontents/8807/linux-tunneling/playercontentcontainer/135/1023/5251",
"https://pctc.cyberforce.site/lms/playercontents/8808/kernel-tuning-demo/playercontentcontainer/135/1023/5252",
"https://pctc.cyberforce.site/lms/playercontents/8809/linux-x11-forwarding/playercontentcontainer/135/1023/5253",
"https://pctc.cyberforce.site/lms/playercontents/8810/linux-file-sharing/playercontentcontainer/135/1023/5254",
"https://pctc.cyberforce.site/lms/playercontents/8811/linux-grand-unified-bootloader-grub/playercontentcontainer/135/1024/5255",
"https://pctc.cyberforce.site/lms/playercontents/8812/configuring-grub-demo/playercontentcontainer/135/1024/5256",
"https://pctc.cyberforce.site/lms/playercontents/8813/security-enhanced-linux/playercontentcontainer/135/1024/5257",
"https://pctc.cyberforce.site/lms/playercontents/8814/introduction-to-iptables/playercontentcontainer/135/1024/5258",
"https://pctc.cyberforce.site/lms/playercontents/8815/iptables-rules/playercontentcontainer/135/1024/5259",
"https://pctc.cyberforce.site/lms/playercontents/8816/ipfilter/playercontentcontainer/135/1024/5260",
"https://pctc.cyberforce.site/lms/playercontents/8817/linux-packet-sniffers/playercontentcontainer/135/1024/5261",
"https://pctc.cyberforce.site/lms/playercontents/8818/linux-nids/playercontentcontainer/135/1024/5262",
"https://pctc.cyberforce.site/lms/playercontents/8819/linux-hids/playercontentcontainer/135/1024/5263",
"https://pctc.cyberforce.site/lms/playercontents/8820/linux-antivirus/playercontentcontainer/135/1024/5264",
"https://pctc.cyberforce.site/lms/playercontents/8821/linux-secure-shell/playercontentcontainer/135/1024/5265",
"https://pctc.cyberforce.site/lms/playercontents/8822/linux-log-management/playercontentcontainer/135/1024/5266",
"https://pctc.cyberforce.site/lms/playercontents/8823/linux-scripting-basics/playercontentcontainer/135/1025/5267",
"https://pctc.cyberforce.site/lms/playercontents/8824/bash-scripting-demo/playercontentcontainer/135/1025/5268",
"https://pctc.cyberforce.site/lms/playercontents/8825/if-statements/playercontentcontainer/135/1025/5269",
"https://pctc.cyberforce.site/lms/playercontents/8826/pipes-and-redirection/playercontentcontainer/135/1025/5270",
"https://pctc.cyberforce.site/lms/playercontents/8827/variables-and-regular-expressions/playercontentcontainer/135/1025/5271",
"https://pctc.cyberforce.site/lms/playercontents/8828/custom-scripting/playercontentcontainer/135/1025/5272",
"https://pctc.cyberforce.site/lms/playercontents/8829/linux-hardening/playercontentcontainer/135/1026/5273",
"https://pctc.cyberforce.site/lms/playercontents/8830/nsa-hardening-guides/playercontentcontainer/135/1026/5274",
"https://pctc.cyberforce.site/lms/playercontents/8831/national-vulnerability-database-nvd/playercontentcontainer/135/1026/5275",
"https://pctc.cyberforce.site/lms/playercontents/8832/common-vulnerabilities-and-exposures-cve/playercontentcontainer/135/1026/5276",
"https://pctc.cyberforce.site/lms/playercontents/8833/vulnerability-scanning/playercontentcontainer/135/1026/5277",
"https://pctc.cyberforce.site/lms/playercontents/5278/linux-operating-system-security-quiz/playercontentcontainer/135/1027/5278",
"https://pctc.cyberforce.site/lms/playercontents/14237/introduction/playercontentcontainer/392/2234/11770",
"https://pctc.cyberforce.site/lms/playercontents/14238/configuration-files/playercontentcontainer/392/2234/11771",
"https://pctc.cyberforce.site/lms/playercontents/14239/running-pipeline/playercontentcontainer/392/2234/11772",
"https://pctc.cyberforce.site/lms/playercontents/14240/logical-schematics/playercontentcontainer/392/2234/11773",
"https://pctc.cyberforce.site/lms/playercontents/14241/pipeline-and-timing-and-state/playercontentcontainer/392/2234/11774",
"https://pctc.cyberforce.site/lms/playercontents/14242/alerts/playercontentcontainer/392/2234/11775",
"https://pctc.cyberforce.site/lms/playercontents/14243/configuration-file-basics/playercontentcontainer/392/2235/11776",
"https://pctc.cyberforce.site/lms/playercontents/14244/filters/playercontentcontainer/392/2235/11777",
"https://pctc.cyberforce.site/lms/playercontents/14245/filters-exercises-and-solutions/playercontentcontainer/392/2235/11778",
"https://pctc.cyberforce.site/lms/playercontents/14246/evaluations/playercontentcontainer/392/2235/11779",
"https://pctc.cyberforce.site/lms/playercontents/14247/evaluations-exercises-and-solutions/playercontentcontainer/392/2235/11780",
"https://pctc.cyberforce.site/lms/playercontents/14248/statistics/playercontentcontainer/392/2235/11781",
"https://pctc.cyberforce.site/lms/playercontents/14249/internal-filters/playercontentcontainer/392/2235/11782",
"https://pctc.cyberforce.site/lms/playercontents/14250/list-configurations/playercontentcontainer/392/2235/11783",
"https://pctc.cyberforce.site/lms/playercontents/14251/configuration-file-basics-exercises-and-solutions/playercontentcontainer/392/2235/11784",
"https://pctc.cyberforce.site/lms/playercontents/14252/threshold-examples/playercontentcontainer/392/2236/11785",
"https://pctc.cyberforce.site/lms/playercontents/14253/special-evaluations/playercontentcontainer/392/2236/11786",
"https://pctc.cyberforce.site/lms/playercontents/14254/building-an-analytic/playercontentcontainer/392/2237/11787",
"https://pctc.cyberforce.site/lms/playercontents/14255/server-profiling-analytic/playercontentcontainer/392/2237/11788",
"https://pctc.cyberforce.site/lms/playercontents/14256/host-discovery-analytic/playercontentcontainer/392/2237/11789",
"https://pctc.cyberforce.site/lms/playercontents/14257/advanced-configurations/playercontentcontainer/392/2238/11790",
"https://pctc.cyberforce.site/lms/playercontents/14258/ntp-anomalies/playercontentcontainer/392/2238/11791",
"https://pctc.cyberforce.site/lms/playercontents/14259/unknown-ssh-brute-force/playercontentcontainer/392/2238/11792",
"https://pctc.cyberforce.site/lms/playercontents/14260/choose-your-own-adventure/playercontentcontainer/392/2239/11793",
"https://pctc.cyberforce.site/lms/playercontents/14261/icmp-surveying-thinking-it-through/playercontentcontainer/392/2239/11794",
"https://pctc.cyberforce.site/lms/playercontents/14262/icmp-surveying-building-it-out/playercontentcontainer/392/2239/11795",
"https://pctc.cyberforce.site/lms/playercontents/14263/ddos-detection-thinking-it-through/playercontentcontainer/392/2239/11796",
"https://pctc.cyberforce.site/lms/playercontents/14264/ddos-detection-building-it-out/playercontentcontainer/392/2239/11797",
"https://pctc.cyberforce.site/lms/playercontents/14265/ssh-compromise-thinking-it-through/playercontentcontainer/392/2239/11798",
"https://pctc.cyberforce.site/lms/playercontents/14266/ssh-compromise-building-it-out/playercontentcontainer/392/2239/11799",
"https://pctc.cyberforce.site/lms/playercontents/14267/analysis-pipeline-5/playercontentcontainer/392/2240/11800",
"https://pctc.cyberforce.site/lms/playercontents/12214/penetration-testing-course-introduction/playercontentcontainer/99/825/4344",
"https://pctc.cyberforce.site/lms/playercontents/12215/pen-testing-goals-and-objectives/playercontentcontainer/99/826/4345",
"https://pctc.cyberforce.site/lms/playercontents/12216/pen-test-methodologies-and-frameworks/playercontentcontainer/99/826/4346",
"https://pctc.cyberforce.site/lms/playercontents/12217/information-gathering-for-pen-testing/playercontentcontainer/99/827/4347",
"https://pctc.cyberforce.site/lms/playercontents/12218/info-gathering--social-engineering-part-1-of-2/playercontentcontainer/99/827/4348",
"https://pctc.cyberforce.site/lms/playercontents/12219/info-gathering--social-engineering-part-2-of-2/playercontentcontainer/99/827/4349",
"https://pctc.cyberforce.site/lms/playercontents/12220/info-gathering-with-automated-tools/playercontentcontainer/99/827/4350",
"https://pctc.cyberforce.site/lms/playercontents/12221/gathering-info-with-google-hacking/playercontentcontainer/99/827/4351",
"https://pctc.cyberforce.site/lms/playercontents/7827/social-engineering-toolkit-demo/playercontentcontainer/99/827/4066",
"https://pctc.cyberforce.site/lms/playercontents/7786/active-footprinting-with-traceroute/playercontentcontainer/99/827/4025",
"https://pctc.cyberforce.site/lms/playercontents/12222/recon-methodology-and-network-mapping/playercontentcontainer/99/828/4352",
"https://pctc.cyberforce.site/lms/playercontents/12223/recon-and-enumeration--scanning/playercontentcontainer/99/828/4353",
"https://pctc.cyberforce.site/lms/playercontents/12224/common-system-enumeration-techniques/playercontentcontainer/99/828/4354",
"https://pctc.cyberforce.site/lms/playercontents/12225/initial-access-and-concepts/playercontentcontainer/99/829/4355",
"https://pctc.cyberforce.site/lms/playercontents/12226/direct-exploits/playercontentcontainer/99/829/4356",
"https://pctc.cyberforce.site/lms/playercontents/12227/social-attacks-and-toolkit-examples/playercontentcontainer/99/829/4357",
"https://pctc.cyberforce.site/lms/playercontents/12228/wireless-concepts-overview/playercontentcontainer/99/830/4358",
"https://pctc.cyberforce.site/lms/playercontents/12229/wireless-pen-testing/playercontentcontainer/99/830/4359",
"https://pctc.cyberforce.site/lms/playercontents/12230/pen-testing-and-bluetooth/playercontentcontainer/99/830/4360",
"https://pctc.cyberforce.site/lms/playercontents/12231/intro-to-vulnerability-research/playercontentcontainer/99/831/4361",
"https://pctc.cyberforce.site/lms/playercontents/12232/exploit-database-demo/playercontentcontainer/99/831/4362",
"https://pctc.cyberforce.site/lms/playercontents/12233/using-scan-results/playercontentcontainer/99/831/4363",
"https://pctc.cyberforce.site/lms/playercontents/12234/fuzz-testing/playercontentcontainer/99/831/4364",
"https://pctc.cyberforce.site/lms/playercontents/12235/demo-application-fuzzer/playercontentcontainer/99/831/4365",
"https://pctc.cyberforce.site/lms/playercontents/12236/using-backtrack/playercontentcontainer/99/832/4366",
"https://pctc.cyberforce.site/lms/playercontents/12237/using-backtrack-demo/playercontentcontainer/99/832/4367",
"https://pctc.cyberforce.site/lms/playercontents/12238/using-metasploit/playercontentcontainer/99/832/4368",
"https://pctc.cyberforce.site/lms/playercontents/12239/using-metasploit-example/playercontentcontainer/99/832/4369",
"https://pctc.cyberforce.site/lms/playercontents/12240/demo-climetasploit/playercontentcontainer/99/832/4370",
"https://pctc.cyberforce.site/lms/playercontents/12241/using-meterpreter/playercontentcontainer/99/832/4371",
"https://pctc.cyberforce.site/lms/playercontents/12242/using-armitage/playercontentcontainer/99/832/4372",
"https://pctc.cyberforce.site/lms/playercontents/7871/demo-intro-to-armitage/playercontentcontainer/99/832/4111",
"https://pctc.cyberforce.site/lms/playercontents/12243/exploits-with-armitage/playercontentcontainer/99/832/3997",
"https://pctc.cyberforce.site/lms/playercontents/12244/mitm-attacks-and-pen-testing/playercontentcontainer/99/832/4373",
"https://pctc.cyberforce.site/lms/playercontents/12245/finding-and-compiling-exploits/playercontentcontainer/99/832/4374",
"https://pctc.cyberforce.site/lms/playercontents/12246/privilege-escalation-concepts/playercontentcontainer/99/833/4375",
"https://pctc.cyberforce.site/lms/playercontents/12247/password-abuse/playercontentcontainer/99/833/4376",
"https://pctc.cyberforce.site/lms/playercontents/12248/acls-dacls-and-sacls/playercontentcontainer/99/833/4377",
"https://pctc.cyberforce.site/lms/playercontents/12249/basic-process-of-session-hijacking/playercontentcontainer/99/833/4378",
"https://pctc.cyberforce.site/lms/playercontents/12250/basic-process-of-session-hacking-cont/playercontentcontainer/99/833/4379",
"https://pctc.cyberforce.site/lms/playercontents/12251/chained-exploits/playercontentcontainer/99/833/4380",
"https://pctc.cyberforce.site/lms/playercontents/12252/pen-testing-and-sql-injection/playercontentcontainer/99/834/4381",
"https://pctc.cyberforce.site/lms/playercontents/12253/pen-testing-and-sql-enumeration/playercontentcontainer/99/834/4382",
"https://pctc.cyberforce.site/lms/playercontents/12254/demo-sql-injection-attacks/playercontentcontainer/99/834/4383",
"https://pctc.cyberforce.site/lms/playercontents/12255/pen-testing-and-xss-attacks/playercontentcontainer/99/834/4384",
"https://pctc.cyberforce.site/lms/playercontents/12256/pen-testing-direct-attacks/playercontentcontainer/99/834/4385",
"https://pctc.cyberforce.site/lms/playercontents/7873/demo-sql-injection/playercontentcontainer/99/834/4113",
"https://pctc.cyberforce.site/lms/playercontents/12257/demo-runningexploitfrom-code/playercontentcontainer/99/834/3906",
"https://pctc.cyberforce.site/lms/playercontents/12258/encoding-schemes/playercontentcontainer/99/835/4386",
"https://pctc.cyberforce.site/lms/playercontents/12259/encoding-examples/playercontentcontainer/99/835/4387",
"https://pctc.cyberforce.site/lms/playercontents/12260/evading-with-tunneling/playercontentcontainer/99/835/4388",
"https://pctc.cyberforce.site/lms/playercontents/12261/evasion/playercontentcontainer/99/835/407",
"https://pctc.cyberforce.site/lms/playercontents/12262/infrastructure-device-discovery/playercontentcontainer/99/836/4389",
"https://pctc.cyberforce.site/lms/playercontents/12263/exploiting-infrastructure-devices/playercontentcontainer/99/836/4390",
"https://pctc.cyberforce.site/lms/playercontents/12264/demo-automating-infra-detection-and-iden/playercontentcontainer/99/836/4391",
"https://pctc.cyberforce.site/lms/playercontents/12265/persistence-and-camouflaging/playercontentcontainer/99/837/4392",
"https://pctc.cyberforce.site/lms/playercontents/12266/persistent-meterpreter-demo/playercontentcontainer/99/837/4393",
"https://pctc.cyberforce.site/lms/playercontents/12267/persistence-through-other-techniques/playercontentcontainer/99/837/4394",
"https://pctc.cyberforce.site/lms/playercontents/12268/discovery-techniques/playercontentcontainer/99/838/4395",
"https://pctc.cyberforce.site/lms/playercontents/12269/discovery-techniques-and-ipv6/playercontentcontainer/99/838/4396",
"https://pctc.cyberforce.site/lms/playercontents/12270/miscellaneous-tactics-of-minimizing-detection/playercontentcontainer/99/838/4397",
"https://pctc.cyberforce.site/lms/playercontents/12271/demo-minimizing-detection/playercontentcontainer/99/838/4398",
"https://pctc.cyberforce.site/lms/playercontents/10268/finding-alive-ipv6-hosts/playercontentcontainer/99/838/1136",
"https://pctc.cyberforce.site/lms/playercontents/10272/ipv6-man-in-the-middle/playercontentcontainer/99/838/1140",
"https://pctc.cyberforce.site/lms/playercontents/10275/ipv6-windows-teredo-tunneling/playercontentcontainer/99/838/1143",
"https://pctc.cyberforce.site/lms/playercontents/12272/the-case-for-scripting/playercontentcontainer/99/839/4399",
"https://pctc.cyberforce.site/lms/playercontents/12273/windows-scripting-basics/playercontentcontainer/99/839/4400",
"https://pctc.cyberforce.site/lms/playercontents/12274/scripting-loops/playercontentcontainer/99/839/4401",
"https://pctc.cyberforce.site/lms/playercontents/12275/error-handling-and-script-troubleshooting/playercontentcontainer/99/839/4402",
"https://pctc.cyberforce.site/lms/playercontents/12276/scripting-and-penetration-testing/playercontentcontainer/99/839/4403",
"https://pctc.cyberforce.site/lms/playercontents/12277/gaining-onsite-access/playercontentcontainer/99/840/4404",
"https://pctc.cyberforce.site/lms/playercontents/12278/demo-exploiting-systems-using-onsite-access/playercontentcontainer/99/840/4405",
"https://pctc.cyberforce.site/lms/playercontents/14502/penetration-testing-course-exam/playercontentcontainer/99/841/4406",
"https://pctc.cyberforce.site/lms/playercontents/12214/penetration-testing-course-introduction/playercontentcontainer/99/825/4344",
"https://pctc.cyberforce.site/lms/playercontents/12215/pen-testing-goals-and-objectives/playercontentcontainer/99/826/4345",
"https://pctc.cyberforce.site/lms/playercontents/12216/pen-test-methodologies-and-frameworks/playercontentcontainer/99/826/4346",
"https://pctc.cyberforce.site/lms/playercontents/12217/information-gathering-for-pen-testing/playercontentcontainer/99/827/4347",
"https://pctc.cyberforce.site/lms/playercontents/12218/info-gathering--social-engineering-part-1-of-2/playercontentcontainer/99/827/4348",
"https://pctc.cyberforce.site/lms/playercontents/12219/info-gathering--social-engineering-part-2-of-2/playercontentcontainer/99/827/4349",
"https://pctc.cyberforce.site/lms/playercontents/12220/info-gathering-with-automated-tools/playercontentcontainer/99/827/4350",
"https://pctc.cyberforce.site/lms/playercontents/12221/gathering-info-with-google-hacking/playercontentcontainer/99/827/4351",
"https://pctc.cyberforce.site/lms/playercontents/7827/social-engineering-toolkit-demo/playercontentcontainer/99/827/4066",
"https://pctc.cyberforce.site/lms/playercontents/7786/active-footprinting-with-traceroute/playercontentcontainer/99/827/4025",
"https://pctc.cyberforce.site/lms/playercontents/12222/recon-methodology-and-network-mapping/playercontentcontainer/99/828/4352",
"https://pctc.cyberforce.site/lms/playercontents/12223/recon-and-enumeration--scanning/playercontentcontainer/99/828/4353",
"https://pctc.cyberforce.site/lms/playercontents/12224/common-system-enumeration-techniques/playercontentcontainer/99/828/4354",
"https://pctc.cyberforce.site/lms/playercontents/12225/initial-access-and-concepts/playercontentcontainer/99/829/4355",
"https://pctc.cyberforce.site/lms/playercontents/12226/direct-exploits/playercontentcontainer/99/829/4356",
"https://pctc.cyberforce.site/lms/playercontents/12227/social-attacks-and-toolkit-examples/playercontentcontainer/99/829/4357",
"https://pctc.cyberforce.site/lms/playercontents/12228/wireless-concepts-overview/playercontentcontainer/99/830/4358",
"https://pctc.cyberforce.site/lms/playercontents/12229/wireless-pen-testing/playercontentcontainer/99/830/4359",
"https://pctc.cyberforce.site/lms/playercontents/12230/pen-testing-and-bluetooth/playercontentcontainer/99/830/4360",
"https://pctc.cyberforce.site/lms/playercontents/12231/intro-to-vulnerability-research/playercontentcontainer/99/831/4361",
"https://pctc.cyberforce.site/lms/playercontents/12232/exploit-database-demo/playercontentcontainer/99/831/4362",
"https://pctc.cyberforce.site/lms/playercontents/12233/using-scan-results/playercontentcontainer/99/831/4363",
"https://pctc.cyberforce.site/lms/playercontents/12234/fuzz-testing/playercontentcontainer/99/831/4364",
"https://pctc.cyberforce.site/lms/playercontents/12235/demo-application-fuzzer/playercontentcontainer/99/831/4365",
"https://pctc.cyberforce.site/lms/playercontents/12236/using-backtrack/playercontentcontainer/99/832/4366",
"https://pctc.cyberforce.site/lms/playercontents/12237/using-backtrack-demo/playercontentcontainer/99/832/4367",
"https://pctc.cyberforce.site/lms/playercontents/12238/using-metasploit/playercontentcontainer/99/832/4368",
"https://pctc.cyberforce.site/lms/playercontents/12239/using-metasploit-example/playercontentcontainer/99/832/4369",
"https://pctc.cyberforce.site/lms/playercontents/12240/demo-climetasploit/playercontentcontainer/99/832/4370",
"https://pctc.cyberforce.site/lms/playercontents/12241/using-meterpreter/playercontentcontainer/99/832/4371",
"https://pctc.cyberforce.site/lms/playercontents/12242/using-armitage/playercontentcontainer/99/832/4372",
"https://pctc.cyberforce.site/lms/playercontents/7871/demo-intro-to-armitage/playercontentcontainer/99/832/4111",
"https://pctc.cyberforce.site/lms/playercontents/12243/exploits-with-armitage/playercontentcontainer/99/832/3997",
"https://pctc.cyberforce.site/lms/playercontents/12244/mitm-attacks-and-pen-testing/playercontentcontainer/99/832/4373",
"https://pctc.cyberforce.site/lms/playercontents/12245/finding-and-compiling-exploits/playercontentcontainer/99/832/4374",
"https://pctc.cyberforce.site/lms/playercontents/12246/privilege-escalation-concepts/playercontentcontainer/99/833/4375",
"https://pctc.cyberforce.site/lms/playercontents/12247/password-abuse/playercontentcontainer/99/833/4376",
"https://pctc.cyberforce.site/lms/playercontents/12248/acls-dacls-and-sacls/playercontentcontainer/99/833/4377",
"https://pctc.cyberforce.site/lms/playercontents/12249/basic-process-of-session-hijacking/playercontentcontainer/99/833/4378",
"https://pctc.cyberforce.site/lms/playercontents/12250/basic-process-of-session-hacking-cont/playercontentcontainer/99/833/4379",
"https://pctc.cyberforce.site/lms/playercontents/12251/chained-exploits/playercontentcontainer/99/833/4380",
"https://pctc.cyberforce.site/lms/playercontents/12252/pen-testing-and-sql-injection/playercontentcontainer/99/834/4381",
"https://pctc.cyberforce.site/lms/playercontents/12253/pen-testing-and-sql-enumeration/playercontentcontainer/99/834/4382",
"https://pctc.cyberforce.site/lms/playercontents/12254/demo-sql-injection-attacks/playercontentcontainer/99/834/4383",
"https://pctc.cyberforce.site/lms/playercontents/12255/pen-testing-and-xss-attacks/playercontentcontainer/99/834/4384",
"https://pctc.cyberforce.site/lms/playercontents/12256/pen-testing-direct-attacks/playercontentcontainer/99/834/4385",
"https://pctc.cyberforce.site/lms/playercontents/7873/demo-sql-injection/playercontentcontainer/99/834/4113",
"https://pctc.cyberforce.site/lms/playercontents/12257/demo-runningexploitfrom-code/playercontentcontainer/99/834/3906",
"https://pctc.cyberforce.site/lms/playercontents/12258/encoding-schemes/playercontentcontainer/99/835/4386",
"https://pctc.cyberforce.site/lms/playercontents/12259/encoding-examples/playercontentcontainer/99/835/4387",
"https://pctc.cyberforce.site/lms/playercontents/12260/evading-with-tunneling/playercontentcontainer/99/835/4388",
"https://pctc.cyberforce.site/lms/playercontents/12261/evasion/playercontentcontainer/99/835/407",
"https://pctc.cyberforce.site/lms/playercontents/12262/infrastructure-device-discovery/playercontentcontainer/99/836/4389",
"https://pctc.cyberforce.site/lms/playercontents/12263/exploiting-infrastructure-devices/playercontentcontainer/99/836/4390",
"https://pctc.cyberforce.site/lms/playercontents/12264/demo-automating-infra-detection-and-iden/playercontentcontainer/99/836/4391",
"https://pctc.cyberforce.site/lms/playercontents/12265/persistence-and-camouflaging/playercontentcontainer/99/837/4392",
"https://pctc.cyberforce.site/lms/playercontents/12266/persistent-meterpreter-demo/playercontentcontainer/99/837/4393",
"https://pctc.cyberforce.site/lms/playercontents/12267/persistence-through-other-techniques/playercontentcontainer/99/837/4394",
"https://pctc.cyberforce.site/lms/playercontents/12268/discovery-techniques/playercontentcontainer/99/838/4395",
"https://pctc.cyberforce.site/lms/playercontents/12269/discovery-techniques-and-ipv6/playercontentcontainer/99/838/4396",
"https://pctc.cyberforce.site/lms/playercontents/12270/miscellaneous-tactics-of-minimizing-detection/playercontentcontainer/99/838/4397",
"https://pctc.cyberforce.site/lms/playercontents/12271/demo-minimizing-detection/playercontentcontainer/99/838/4398",
"https://pctc.cyberforce.site/lms/playercontents/10268/finding-alive-ipv6-hosts/playercontentcontainer/99/838/1136",
"https://pctc.cyberforce.site/lms/playercontents/10272/ipv6-man-in-the-middle/playercontentcontainer/99/838/1140",
"https://pctc.cyberforce.site/lms/playercontents/10275/ipv6-windows-teredo-tunneling/playercontentcontainer/99/838/1143",
"https://pctc.cyberforce.site/lms/playercontents/12272/the-case-for-scripting/playercontentcontainer/99/839/4399",
"https://pctc.cyberforce.site/lms/playercontents/12273/windows-scripting-basics/playercontentcontainer/99/839/4400",
"https://pctc.cyberforce.site/lms/playercontents/12274/scripting-loops/playercontentcontainer/99/839/4401",
"https://pctc.cyberforce.site/lms/playercontents/12275/error-handling-and-script-troubleshooting/playercontentcontainer/99/839/4402",
"https://pctc.cyberforce.site/lms/playercontents/12276/scripting-and-penetration-testing/playercontentcontainer/99/839/4403",
"https://pctc.cyberforce.site/lms/playercontents/12277/gaining-onsite-access/playercontentcontainer/99/840/4404",
"https://pctc.cyberforce.site/lms/playercontents/12278/demo-exploiting-systems-using-onsite-access/playercontentcontainer/99/840/4405",
"https://pctc.cyberforce.site/lms/playercontents/14502/penetration-testing-course-exam/playercontentcontainer/99/841/4406",
"https://pctc.cyberforce.site/lms/playercontents/16671/certified-ethical-hacker-v9-intro/playercontentcontainer/545/2848/13999",
"https://pctc.cyberforce.site/lms/playercontents/16672/ethical-hacking-intro-and-security-reports/playercontentcontainer/545/2849/14000",
"https://pctc.cyberforce.site/lms/playercontents/16673/security-reports-statistics/playercontentcontainer/545/2849/14001",
"https://pctc.cyberforce.site/lms/playercontents/16674/ethical-hacking-terminology/playercontentcontainer/545/2849/14002",
"https://pctc.cyberforce.site/lms/playercontents/16675/ethical-hacking-terminology-cont/playercontentcontainer/545/2849/14003",
"https://pctc.cyberforce.site/lms/playercontents/16676/incident-response-overview/playercontentcontainer/545/2849/14004",
"https://pctc.cyberforce.site/lms/playercontents/16677/laws-and-regulations/playercontentcontainer/545/2849/14005",
"https://pctc.cyberforce.site/lms/playercontents/16678/ethical-hacking-and-threats/playercontentcontainer/545/2849/14006",
"https://pctc.cyberforce.site/lms/playercontents/16679/types-of-attacks-and-attack-vectors/playercontentcontainer/545/2849/14007",
"https://pctc.cyberforce.site/lms/playercontents/16680/hacking-phases-and-vul-research/playercontentcontainer/545/2849/14008",
"https://pctc.cyberforce.site/lms/playercontents/16681/reconnaissance/playercontentcontainer/545/2850/14009",
"https://pctc.cyberforce.site/lms/playercontents/16682/passive-footprinting/playercontentcontainer/545/2850/14010",
"https://pctc.cyberforce.site/lms/playercontents/16683/demo-whois-with-backtrack/playercontentcontainer/545/2850/14011",
"https://pctc.cyberforce.site/lms/playercontents/16684/passive-whois-queries/playercontentcontainer/545/2850/14012",
"https://pctc.cyberforce.site/lms/playercontents/16685/google-hacking/playercontentcontainer/545/2850/14013",
"https://pctc.cyberforce.site/lms/playercontents/16686/active-footprinting/playercontentcontainer/545/2850/14014",
"https://pctc.cyberforce.site/lms/playercontents/16687/demo-nslookup-example/playercontentcontainer/545/2850/14015",
"https://pctc.cyberforce.site/lms/playercontents/16688/active-footprinting-cont/playercontentcontainer/545/2850/14016",
"https://pctc.cyberforce.site/lms/playercontents/16689/demo-active-footprinting-with-traceroute/playercontentcontainer/545/2850/14017",
"https://pctc.cyberforce.site/lms/playercontents/16690/network-mapping-and-web-mirroring/playercontentcontainer/545/2850/14018",
"https://pctc.cyberforce.site/lms/playercontents/16691/active-footprinting-countermeasures/playercontentcontainer/545/2850/14019",
"https://pctc.cyberforce.site/lms/playercontents/16692/scanning-essentials/playercontentcontainer/545/2851/14020",
"https://pctc.cyberforce.site/lms/playercontents/16693/scanning-essentials-continued/playercontentcontainer/545/2851/14021",
"https://pctc.cyberforce.site/lms/playercontents/16694/port-scanning/playercontentcontainer/545/2851/14022",
"https://pctc.cyberforce.site/lms/playercontents/16695/vulnerability-scanning/playercontentcontainer/545/2851/14023",
"https://pctc.cyberforce.site/lms/playercontents/16696/demo-banner-grabbing-with-telnet/playercontentcontainer/545/2851/14024",
"https://pctc.cyberforce.site/lms/playercontents/16697/covert-scanning/playercontentcontainer/545/2851/14025",
"https://pctc.cyberforce.site/lms/playercontents/16698/demo-scanning-with-nmap-demo/playercontentcontainer/545/2851/14026",
"https://pctc.cyberforce.site/lms/playercontents/16699/additional-covert-scanning/playercontentcontainer/545/2851/14027",
"https://pctc.cyberforce.site/lms/playercontents/16700/enumeration-overview-part-1-of-2/playercontentcontainer/545/2852/14028",
"https://pctc.cyberforce.site/lms/playercontents/16701/enumeration-overview-part-2-of-2/playercontentcontainer/545/2852/14029",
"https://pctc.cyberforce.site/lms/playercontents/16702/enumeration-tools/playercontentcontainer/545/2852/14030",
"https://pctc.cyberforce.site/lms/playercontents/16703/operating-system-account-enumeration/playercontentcontainer/545/2852/14031",
"https://pctc.cyberforce.site/lms/playercontents/16704/protocol-enumeration/playercontentcontainer/545/2852/14032",
"https://pctc.cyberforce.site/lms/playercontents/16705/demo-netstat-enumeration-and-countermeasures/playercontentcontainer/545/2852/14033",
"https://pctc.cyberforce.site/lms/playercontents/16706/authentication-techniques/playercontentcontainer/545/2853/14034",
"https://pctc.cyberforce.site/lms/playercontents/16707/microsoft-authentication/playercontentcontainer/545/2853/14035",
"https://pctc.cyberforce.site/lms/playercontents/16708/password-cracking/playercontentcontainer/545/2853/14036",
"https://pctc.cyberforce.site/lms/playercontents/16709/password-cracking-techniques/playercontentcontainer/545/2853/14037",
"https://pctc.cyberforce.site/lms/playercontents/16710/privilege-escalation/playercontentcontainer/545/2853/14038",
"https://pctc.cyberforce.site/lms/playercontents/16711/demo-rainbow-table-lookup-sites/playercontentcontainer/545/2853/14039",
"https://pctc.cyberforce.site/lms/playercontents/16712/keyloggers/playercontentcontainer/545/2853/14040",
"https://pctc.cyberforce.site/lms/playercontents/16713/spyware-and-activity-monitoring/playercontentcontainer/545/2853/14041",
"https://pctc.cyberforce.site/lms/playercontents/16714/packet-sniffing-attacks/playercontentcontainer/545/2853/14042",
"https://pctc.cyberforce.site/lms/playercontents/16715/rootkits/playercontentcontainer/545/2853/14043",
"https://pctc.cyberforce.site/lms/playercontents/16716/covert-hacking/playercontentcontainer/545/2853/14044",
"https://pctc.cyberforce.site/lms/playercontents/16717/covering-tracks/playercontentcontainer/545/2853/14045",
"https://pctc.cyberforce.site/lms/playercontents/16718/virus-examples-and-symptoms/playercontentcontainer/545/2854/14046",
"https://pctc.cyberforce.site/lms/playercontents/16719/virus-classifications-and-characteristics/playercontentcontainer/545/2854/14047",
"https://pctc.cyberforce.site/lms/playercontents/16720/virus-types-and-terminology/playercontentcontainer/545/2854/14048",
"https://pctc.cyberforce.site/lms/playercontents/16721/virus-making-tools/playercontentcontainer/545/2854/14049",
"https://pctc.cyberforce.site/lms/playercontents/16722/famous-worms/playercontentcontainer/545/2854/14050",
"https://pctc.cyberforce.site/lms/playercontents/16723/trojan-terminology-and-techniques/playercontentcontainer/545/2854/14051",
"https://pctc.cyberforce.site/lms/playercontents/16724/trojans-and-backdoors/playercontentcontainer/545/2854/14052",
"https://pctc.cyberforce.site/lms/playercontents/16725/demo-shell-connections-via-netcat-and-backtrack/playercontentcontainer/545/2854/14053",
"https://pctc.cyberforce.site/lms/playercontents/16726/trojan-analysis/playercontentcontainer/545/2854/14054",
"https://pctc.cyberforce.site/lms/playercontents/16727/demo-trojans-and-rootkits/playercontentcontainer/545/2854/14055",
"https://pctc.cyberforce.site/lms/playercontents/16728/malware-countermeasures-and-tools/playercontentcontainer/545/2854/14056",
"https://pctc.cyberforce.site/lms/playercontents/16729/demo-strings-analysis/playercontentcontainer/545/2854/14057",
"https://pctc.cyberforce.site/lms/playercontents/16730/other-malicious-code-types/playercontentcontainer/545/2854/14058",
"https://pctc.cyberforce.site/lms/playercontents/16731/sniffers-terminology-and-overview/playercontentcontainer/545/2855/14059",
"https://pctc.cyberforce.site/lms/playercontents/16732/network-overview-for-sniffer-placement/playercontentcontainer/545/2855/14060",
"https://pctc.cyberforce.site/lms/playercontents/16733/basic-packet-analysis/playercontentcontainer/545/2855/14061",
"https://pctc.cyberforce.site/lms/playercontents/16734/demo-viewing-arp-packets-with-packet-builder/playercontentcontainer/545/2855/14062",
"https://pctc.cyberforce.site/lms/playercontents/16735/attacks-and-protocols-vulnerable-to-sniffing/playercontentcontainer/545/2855/14063",
"https://pctc.cyberforce.site/lms/playercontents/16736/spoofing-and-flooding-sniffing-attacks-/playercontentcontainer/545/2855/14064",
"https://pctc.cyberforce.site/lms/playercontents/16737/mitm-attacks-ports-vul-to-sniffing/playercontentcontainer/545/2855/14065",
"https://pctc.cyberforce.site/lms/playercontents/16738/wireshark-overview-and-examples/playercontentcontainer/545/2855/14066",
"https://pctc.cyberforce.site/lms/playercontents/16739/evasion-in-network-sniffing/playercontentcontainer/545/2855/14067",
"https://pctc.cyberforce.site/lms/playercontents/16740/sniffing-countermeasures-and-tools/playercontentcontainer/545/2855/14068",
"https://pctc.cyberforce.site/lms/playercontents/16741/demo-hping3/playercontentcontainer/545/2855/14069",
"https://pctc.cyberforce.site/lms/playercontents/16742/demo-wireshark/playercontentcontainer/545/2855/14070",
"https://pctc.cyberforce.site/lms/playercontents/16743/social-engineering-background-and-examples/playercontentcontainer/545/2856/14071",
"https://pctc.cyberforce.site/lms/playercontents/16744/human-based-social-engineering/playercontentcontainer/545/2856/14072",
"https://pctc.cyberforce.site/lms/playercontents/16745/additional-human-based-se/playercontentcontainer/545/2856/14073",
"https://pctc.cyberforce.site/lms/playercontents/16746/computer-based-social-engineering/playercontentcontainer/545/2856/14074",
"https://pctc.cyberforce.site/lms/playercontents/16747/computer-based-se--social-networking/playercontentcontainer/545/2856/14075",
"https://pctc.cyberforce.site/lms/playercontents/16748/mobile-based-social-engineering/playercontentcontainer/545/2856/14076",
"https://pctc.cyberforce.site/lms/playercontents/16749/se-and-identity-theft-countermeasures/playercontentcontainer/545/2856/14077",
"https://pctc.cyberforce.site/lms/playercontents/16750/demo-social-engineering-toolkit-demo/playercontentcontainer/545/2856/14078",
"https://pctc.cyberforce.site/lms/playercontents/16751/denial-of-service-part-1-of-2/playercontentcontainer/545/2857/14079",
"https://pctc.cyberforce.site/lms/playercontents/16752/denial-of-service-part-2-of-2/playercontentcontainer/545/2857/14080",
"https://pctc.cyberforce.site/lms/playercontents/16753/categories-of-denial-of-service/playercontentcontainer/545/2857/14081",
"https://pctc.cyberforce.site/lms/playercontents/16754/demo-hw-and-mobile-dos-options/playercontentcontainer/545/2857/14082",
"https://pctc.cyberforce.site/lms/playercontents/16755/buffer-overflow-terminology-and-background/playercontentcontainer/545/2857/14083",
"https://pctc.cyberforce.site/lms/playercontents/16756/demo-stack-overflow-testing-wil-ollydbg/playercontentcontainer/545/2857/14084",
"https://pctc.cyberforce.site/lms/playercontents/16757/session-hijacking-overview-and-examples/playercontentcontainer/545/2858/14085",
"https://pctc.cyberforce.site/lms/playercontents/16758/cross-site-scripting-and-other-session-attacks/playercontentcontainer/545/2858/14086",
"https://pctc.cyberforce.site/lms/playercontents/16759/session-hijacking-techniques/playercontentcontainer/545/2858/14087",
"https://pctc.cyberforce.site/lms/playercontents/16760/ipsec-and-session-hijacking/playercontentcontainer/545/2858/14088",
"https://pctc.cyberforce.site/lms/playercontents/16761/hacking-webservers-terminology-and-background/playercontentcontainer/545/2859/14089",
"https://pctc.cyberforce.site/lms/playercontents/16762/webserver-architecture/playercontentcontainer/545/2859/14090",
"https://pctc.cyberforce.site/lms/playercontents/16763/webserver-hacking-tools/playercontentcontainer/545/2859/14091",
"https://pctc.cyberforce.site/lms/playercontents/16764/web-server-attacks/playercontentcontainer/545/2859/14092",
"https://pctc.cyberforce.site/lms/playercontents/16765/owasp-top-10/playercontentcontainer/545/2859/14093",
"https://pctc.cyberforce.site/lms/playercontents/16766/webserver-hacking-countermeasures/playercontentcontainer/545/2859/14094",
"https://pctc.cyberforce.site/lms/playercontents/16767/sql-and-command-injection-web-app-hacking/playercontentcontainer/545/2860/14095",
"https://pctc.cyberforce.site/lms/playercontents/16768/non-sql-injection-errors/playercontentcontainer/545/2860/14096",
"https://pctc.cyberforce.site/lms/playercontents/16769/parameter-and-form-tampering-web-app-hacking/playercontentcontainer/545/2860/14097",
"https://pctc.cyberforce.site/lms/playercontents/16770/cross-site-scripting-and-obfuscation-web-app-hacks/playercontentcontainer/545/2860/14098",
"https://pctc.cyberforce.site/lms/playercontents/16771/cross-site-request-forgery-and-cookies/playercontentcontainer/545/2860/14099",
"https://pctc.cyberforce.site/lms/playercontents/16772/web-application-methodology/playercontentcontainer/545/2860/14100",
"https://pctc.cyberforce.site/lms/playercontents/16773/web-app-attack-tools-and-countermeasures/playercontentcontainer/545/2860/14101",
"https://pctc.cyberforce.site/lms/playercontents/16774/buffer-overflow-tools-and-countermeasures/playercontentcontainer/545/2860/14102",
"https://pctc.cyberforce.site/lms/playercontents/16775/demo-burpsuite/playercontentcontainer/545/2860/14103",
"https://pctc.cyberforce.site/lms/playercontents/16776/demo-xp-cmdshell-demo/playercontentcontainer/545/2861/14104",
"https://pctc.cyberforce.site/lms/playercontents/16777/sql-terminology-and-example-statements/playercontentcontainer/545/2861/14105",
"https://pctc.cyberforce.site/lms/playercontents/16778/sql-enumeration/playercontentcontainer/545/2861/14106",
"https://pctc.cyberforce.site/lms/playercontents/16779/sql-injection-attacks/playercontentcontainer/545/2861/14107",
"https://pctc.cyberforce.site/lms/playercontents/16780/sql-injection-tools-and-countermeasures/playercontentcontainer/545/2861/14108",
"https://pctc.cyberforce.site/lms/playercontents/16781/demo-sql-injection/playercontentcontainer/545/2861/14109",
"https://pctc.cyberforce.site/lms/playercontents/16782/wireless-terminology-and-standards/playercontentcontainer/545/2862/14110",
"https://pctc.cyberforce.site/lms/playercontents/16783/wireless-terminology-and-antennas/playercontentcontainer/545/2862/14111",
"https://pctc.cyberforce.site/lms/playercontents/16784/wireless-authentication/playercontentcontainer/545/2862/14112",
"https://pctc.cyberforce.site/lms/playercontents/16785/wireless-based-attacks/playercontentcontainer/545/2862/14113",
"https://pctc.cyberforce.site/lms/playercontents/16786/wireless-attack-methodology/playercontentcontainer/545/2862/14114",
"https://pctc.cyberforce.site/lms/playercontents/16787/wireless-attack-methodology-continued/playercontentcontainer/545/2862/14115",
"https://pctc.cyberforce.site/lms/playercontents/16788/wep-wpa-and-other-wireless-attacks/playercontentcontainer/545/2862/14116",
"https://pctc.cyberforce.site/lms/playercontents/16789/bluetooth-communication-basics/playercontentcontainer/545/2862/14117",
"https://pctc.cyberforce.site/lms/playercontents/16790/wireless-protocols-and-signal-modulation/playercontentcontainer/545/2862/14118",
"https://pctc.cyberforce.site/lms/playercontents/16791/demo-ssid-and-channels/playercontentcontainer/545/2862/14119",
"https://pctc.cyberforce.site/lms/playercontents/16792/demo-wifi-analyzer-using-mobile-device/playercontentcontainer/545/2862/14120",
"https://pctc.cyberforce.site/lms/playercontents/16793/wireless-hacking-tools-and-countermeasures/playercontentcontainer/545/2862/14121",
"https://pctc.cyberforce.site/lms/playercontents/16794/mobile-platform-overview/playercontentcontainer/545/2863/14122",
"https://pctc.cyberforce.site/lms/playercontents/16795/mobile-device-operating-systems/playercontentcontainer/545/2863/14123",
"https://pctc.cyberforce.site/lms/playercontents/16796/hacking-mobile-platforms/playercontentcontainer/545/2863/14124",
"https://pctc.cyberforce.site/lms/playercontents/16797/ids-overview-and-detection-methods/playercontentcontainer/545/2864/14125",
"https://pctc.cyberforce.site/lms/playercontents/16798/demo-published-snort-rules/playercontentcontainer/545/2864/14126",
"https://pctc.cyberforce.site/lms/playercontents/16799/firewalls-and-honeypots/playercontentcontainer/545/2864/14127",
"https://pctc.cyberforce.site/lms/playercontents/16800/firewall-configurations/playercontentcontainer/545/2864/14128",
"https://pctc.cyberforce.site/lms/playercontents/16801/signs-of-intrusions/playercontentcontainer/545/2864/14129",
"https://pctc.cyberforce.site/lms/playercontents/16802/evasion-techniques/playercontentcontainer/545/2864/14130",
"https://pctc.cyberforce.site/lms/playercontents/16803/ids-evasion-techniques/playercontentcontainer/545/2864/14131",
"https://pctc.cyberforce.site/lms/playercontents/16804/evasion-testing-techniques/playercontentcontainer/545/2864/14132",
"https://pctc.cyberforce.site/lms/playercontents/16805/demo-intrusion-signs/playercontentcontainer/545/2864/14133",
"https://pctc.cyberforce.site/lms/playercontents/16806/cryptography-background-and-terminology/playercontentcontainer/545/2865/14134",
"https://pctc.cyberforce.site/lms/playercontents/16807/crypto-keys-and-algorithms/playercontentcontainer/545/2865/14135",
"https://pctc.cyberforce.site/lms/playercontents/16808/sha-and-tls-algorithms/playercontentcontainer/545/2865/14136",
"https://pctc.cyberforce.site/lms/playercontents/16809/demo-hashing-with-md5-sum/playercontentcontainer/545/2865/14137",
"https://pctc.cyberforce.site/lms/playercontents/16810/crypto-keys-and-algorithms-continued/playercontentcontainer/545/2865/14138",
"https://pctc.cyberforce.site/lms/playercontents/16811/cryptography-implementations/playercontentcontainer/545/2865/14139",
"https://pctc.cyberforce.site/lms/playercontents/16812/public-key-infrastructure-pki/playercontentcontainer/545/2865/14140",
"https://pctc.cyberforce.site/lms/playercontents/16813/cryptanalysis-techniques/playercontentcontainer/545/2865/14141",
"https://pctc.cyberforce.site/lms/playercontents/16814/cryptanalysis-tools/playercontentcontainer/545/2865/14142",
"https://pctc.cyberforce.site/lms/playercontents/16815/cryptographic-attacks/playercontentcontainer/545/2865/14143",
"https://pctc.cyberforce.site/lms/playercontents/16816/steganography-tools/playercontentcontainer/545/2865/14144",
"https://pctc.cyberforce.site/lms/playercontents/16817/security-testing-and-assessments/playercontentcontainer/545/2866/14145",
"https://pctc.cyberforce.site/lms/playercontents/16818/penetration-testing-terminology/playercontentcontainer/545/2866/14146",
"https://pctc.cyberforce.site/lms/playercontents/16819/risk-management-and-penetration-testing/playercontentcontainer/545/2866/14147",
"https://pctc.cyberforce.site/lms/playercontents/16820/penn-testing-phases-and-methodology/playercontentcontainer/545/2866/14148",
"https://pctc.cyberforce.site/lms/playercontents/16821/penetration-testing-walkthrough/playercontentcontainer/545/2866/14149",
"https://pctc.cyberforce.site/lms/playercontents/16822/penetration-testing-tools/playercontentcontainer/545/2866/14150",
"https://pctc.cyberforce.site/lms/playercontents/16823/demo-exploits-with-armitage/playercontentcontainer/545/2866/14151",
"https://pctc.cyberforce.site/lms/playercontents/16824/demo-intro-to-armitage/playercontentcontainer/545/2866/14152",
"https://pctc.cyberforce.site/lms/playercontents/16825/demo-v3-runningexploitfrom-code/playercontentcontainer/545/2866/14153",
"https://pctc.cyberforce.site/lms/playercontents/16826/introduction-to-cloud-computing/playercontentcontainer/545/2867/14154",
"https://pctc.cyberforce.site/lms/playercontents/16827/cloud-security/playercontentcontainer/545/2867/14155",
"https://pctc.cyberforce.site/lms/playercontents/16828/cloud-architectures/playercontentcontainer/545/2867/14156",
"https://pctc.cyberforce.site/lms/playercontents/16829/cloud-testing-tools/playercontentcontainer/545/2867/14157",
"https://pctc.cyberforce.site/lms/playercontents/16830/cloud-threats-and-attacks/playercontentcontainer/545/2867/14158",
"https://pctc.cyberforce.site/lms/playercontents/16831/cehv9-prep-practice-exam/playercontentcontainer/545/2868/14159"

)
$module1 = @(
"https://pctc.cyberforce.site/lms/playercontents/11461/scripting-basics-overview/playercontentcontainer/346/2056/9406",
"https://pctc.cyberforce.site/lms/playercontents/11462/windows-batch-scripting-basics/playercontentcontainer/346/2056/9407",
"https://pctc.cyberforce.site/lms/playercontents/11463/windows-batch-scripting-variables/playercontentcontainer/346/2056/9408",
"https://pctc.cyberforce.site/lms/playercontents/11465/windows-batch-scripting-loops/playercontentcontainer/346/2056/9410",
"https://pctc.cyberforce.site/lms/playercontents/11466/windows-batch-scripting-functions/playercontentcontainer/346/2056/9411",
"https://pctc.cyberforce.site/lms/playercontents/11467/windows-script-error-handling-and-troubleshooting/playercontentcontainer/346/2056/9412",
"https://pctc.cyberforce.site/lms/playercontents/11468/windows-script-best-practices-and-examples/playercontentcontainer/346/2056/9413",
"https://pctc.cyberforce.site/lms/playercontents/11469/windows-scripting-demo/playercontentcontainer/346/2056/9414",
"https://pctc.cyberforce.site/lms/playercontents/11470/scripting-for-penetration-testing/playercontentcontainer/346/2056/9415",
"https://pctc.cyberforce.site/lms/playercontents/11471/windows-scripting-utilities-xcopy/playercontentcontainer/346/2057/9416",
"https://pctc.cyberforce.site/lms/playercontents/11472/windows-scripting-utilities-findstr/playercontentcontainer/346/2057/9417",
"https://pctc.cyberforce.site/lms/playercontents/11473/windows-scripting-utilities-net-commands/playercontentcontainer/346/2057/9418",
"https://pctc.cyberforce.site/lms/playercontents/11474/xcopy-examples-demo/playercontentcontainer/346/2057/9419",
"https://pctc.cyberforce.site/lms/playercontents/11475/wmi-and-wmic/playercontentcontainer/346/2057/9420",
"https://pctc.cyberforce.site/lms/playercontents/11476/powershell-commands/playercontentcontainer/346/2057/9421",
"https://pctc.cyberforce.site/lms/playercontents/11477/psexec/playercontentcontainer/346/2057/9422",
"https://pctc.cyberforce.site/lms/playercontents/11478/windows-management-instrumentation-demo/playercontentcontainer/346/2057/9423",
"https://pctc.cyberforce.site/lms/playercontents/11479/intro-to-windows-scripting-quiz/playercontentcontainer/346/2058/9424"
)
$module2 = @(
"https://pctc.cyberforce.site/lms/playercontents/16165/mdt-introduction/playercontentcontainer/583/3029/13495",
"https://pctc.cyberforce.site/lms/playercontents/16174/mdt-concepts/playercontentcontainer/583/3029/13504",
"https://pctc.cyberforce.site/lms/playercontents/16176/cyber-operators/playercontentcontainer/583/3029/13506",
"https://pctc.cyberforce.site/lms/playercontents/16180/mdt-relevance/playercontentcontainer/583/3029/13510",
"https://pctc.cyberforce.site/lms/playercontents/16203/cpt-and-mdt-relationship-part-one/playercontentcontainer/583/3029/13533",
"https://pctc.cyberforce.site/lms/playercontents/16204/cpt-and-mdt-relationship-part-two/playercontentcontainer/583/3029/13534",
"https://pctc.cyberforce.site/lms/playercontents/16260/getting-started/playercontentcontainer/583/3029/13588",
"https://pctc.cyberforce.site/lms/playercontents/16261/mdt-introduction-slide-deck/playercontentcontainer/583/3029/13589",
"https://pctc.cyberforce.site/lms/playercontents/16185/89th-introduction-and-pbed-overview/playercontentcontainer/583/3030/13515",
"https://pctc.cyberforce.site/lms/playercontents/16192/mission-types/playercontentcontainer/583/3030/13522",
"https://pctc.cyberforce.site/lms/playercontents/16262/mission-planning/playercontentcontainer/583/3030/13590",
"https://pctc.cyberforce.site/lms/playercontents/16263/mdt-missions-slide-deck/playercontentcontainer/583/3030/13591"
)
$module3 = @(
"https://pctc.cyberforce.site/lms/playercontents/16265/identifying-cyber-key-terrain/playercontentcontainer/582/3024/13593",
"https://pctc.cyberforce.site/lms/playercontents/16266/risks-vulnerability-and-threats/playercontentcontainer/582/3024/13594",
"https://pctc.cyberforce.site/lms/playercontents/16267/common-networking-protocols-and-services/playercontentcontainer/582/3024/13595",
"https://pctc.cyberforce.site/lms/playercontents/16268/identify-slide-deck/playercontentcontainer/582/3024/13596",
"https://pctc.cyberforce.site/lms/playercontents/16269/vulnerability-management-practices/playercontentcontainer/582/3025/13597",
"https://pctc.cyberforce.site/lms/playercontents/16270/iavms/playercontentcontainer/582/3025/13598",
"https://pctc.cyberforce.site/lms/playercontents/16271/stigs/playercontentcontainer/582/3025/13599",
"https://pctc.cyberforce.site/lms/playercontents/16272/analyzing-and-prioritizing-vulnerabilities/playercontentcontainer/582/3025/13600",
"https://pctc.cyberforce.site/lms/playercontents/16273/baselining/playercontentcontainer/582/3025/13601",
"https://pctc.cyberforce.site/lms/playercontents/16274/patching-and-antivirus/playercontentcontainer/582/3025/13602",
"https://pctc.cyberforce.site/lms/playercontents/16275/data-security/playercontentcontainer/582/3025/13603",
"https://pctc.cyberforce.site/lms/playercontents/17766/information-protection/playercontentcontainer/582/3025/13604",
"https://pctc.cyberforce.site/lms/playercontents/16277/protect-slide-deck/playercontentcontainer/582/3025/13605",
"https://pctc.cyberforce.site/lms/playercontents/17767/types-of-malicious-code/playercontentcontainer/582/3026/13606",
"https://pctc.cyberforce.site/lms/playercontents/16279/types-of-attacks/playercontentcontainer/582/3026/13607",
"https://pctc.cyberforce.site/lms/playercontents/17768/social-engineering/playercontentcontainer/582/3026/13608",
"https://pctc.cyberforce.site/lms/playercontents/16281/wireless-attacks/playercontentcontainer/582/3026/13609",
"https://pctc.cyberforce.site/lms/playercontents/17769/application-attacks/playercontentcontainer/582/3026/13610",
"https://pctc.cyberforce.site/lms/playercontents/16283/continuous-monitoring/playercontentcontainer/582/3026/13611",
"https://pctc.cyberforce.site/lms/playercontents/17770/computer-security-incidents/playercontentcontainer/582/3026/13612",
"https://pctc.cyberforce.site/lms/playercontents/16285/detection-data-aggregation/playercontentcontainer/582/3026/13613",
"https://pctc.cyberforce.site/lms/playercontents/17771/alerts/playercontentcontainer/582/3026/13614",
"https://pctc.cyberforce.site/lms/playercontents/16287/detect-slide-deck/playercontentcontainer/582/3026/13615",
"https://pctc.cyberforce.site/lms/playercontents/17772/incident-response-process/playercontentcontainer/582/3027/13616",
"https://pctc.cyberforce.site/lms/playercontents/16289/triage-and-analysis-process/playercontentcontainer/582/3027/13617",
"https://pctc.cyberforce.site/lms/playercontents/17773/containing-threats-and-minimizing-impact/playercontentcontainer/582/3027/13618",
"https://pctc.cyberforce.site/lms/playercontents/16291/purpose-of-computer-and-network-forensics/playercontentcontainer/582/3027/13619",
"https://pctc.cyberforce.site/lms/playercontents/16292/-forensic-concepts/playercontentcontainer/582/3027/13620",
"https://pctc.cyberforce.site/lms/playercontents/17774/computer-forensics-process/playercontentcontainer/582/3027/13621",
"https://pctc.cyberforce.site/lms/playercontents/16294/tools/playercontentcontainer/582/3027/13622",
"https://pctc.cyberforce.site/lms/playercontents/17775/information-gathering/playercontentcontainer/582/3027/13623",
"https://pctc.cyberforce.site/lms/playercontents/16296/acquisition-considerations/playercontentcontainer/582/3027/13624",
"https://pctc.cyberforce.site/lms/playercontents/17776/notes-and-documentation/playercontentcontainer/582/3027/13625",
"https://pctc.cyberforce.site/lms/playercontents/16298/respond-slide-deck/playercontentcontainer/582/3027/13626",
"https://pctc.cyberforce.site/lms/playercontents/17777/recover-strategy/playercontentcontainer/582/3028/13627",
"https://pctc.cyberforce.site/lms/playercontents/16300/documenting-the-plan/playercontentcontainer/582/3028/13628",
"https://pctc.cyberforce.site/lms/playercontents/17778/managing-recovery-communications/playercontentcontainer/582/3028/13629",
"https://pctc.cyberforce.site/lms/playercontents/16302/testing-training-and-updates/playercontentcontainer/582/3028/13630",
"https://pctc.cyberforce.site/lms/playercontents/17779/recover-slide-deck/playercontentcontainer/582/3028/13631"
)
$module4 = @(
"https://pctc.cyberforce.site/lms/playercontents/16836/introduction-and-pbed-overview/playercontentcontainer/560/2908/14164",
"https://pctc.cyberforce.site/lms/playercontents/16900/roles-and-responsibilities/playercontentcontainer/560/2908/14220",
"https://pctc.cyberforce.site/lms/playercontents/16901/mpc-timeline/playercontentcontainer/560/2908/14221",
"https://pctc.cyberforce.site/lms/playercontents/16902/me3cpc2-part-one/playercontentcontainer/560/2908/14222",
"https://pctc.cyberforce.site/lms/playercontents/16903/me3cpc2-part-two/playercontentcontainer/560/2908/14223",
"https://pctc.cyberforce.site/lms/playercontents/16904/debrief-overview/playercontentcontainer/560/2908/14224",
"https://pctc.cyberforce.site/lms/playercontents/16905/debrief-steps/playercontentcontainer/560/2908/14225"
)
$module5 = @(
"https://pctc.cyberforce.site/lms/playercontents/15259/part-1/playercontentcontainer/427/2422/12593",
"https://pctc.cyberforce.site/lms/playercontents/15263/part-2/playercontentcontainer/427/2422/12597",
"https://pctc.cyberforce.site/lms/playercontents/15264/part-3/playercontentcontainer/427/2422/12598",
"https://pctc.cyberforce.site/lms/playercontents/15265/part-4/playercontentcontainer/427/2422/12599",
"https://pctc.cyberforce.site/lms/playercontents/15266/part-5/playercontentcontainer/427/2422/12600"
)
$module6 = @(
"https://pctc.cyberforce.site/lms/playercontents/16987/mdt-cvah-software-listing/playercontentcontainer/499/2969/14307",
"https://pctc.cyberforce.site/lms/playercontents/16070/toolkit-setup-panel-discussion/playercontentcontainer/499/2969/13401",
"https://pctc.cyberforce.site/lms/playercontents/16071/toolkit-best-practices-panel-discussion/playercontentcontainer/499/2969/13402",
"https://pctc.cyberforce.site/lms/playercontents/16072/toolkit-operations-panel-discussion/playercontentcontainer/499/2969/13403",
"https://pctc.cyberforce.site/lms/playercontents/16073/data-scalability-dr-panel-discussion/playercontentcontainer/499/2969/13404",
"https://pctc.cyberforce.site/lms/playercontents/16074/toolkit-tools-and-support-panel-discussion/playercontentcontainer/499/2969/13405",
"https://pctc.cyberforce.site/lms/playercontents/16075/relationships-panel-discussion/playercontentcontainer/499/2969/13406",
"https://pctc.cyberforce.site/lms/playercontents/16076/recommended-improvement-areas-panel-discussion/playercontentcontainer/499/2969/13407",
"https://pctc.cyberforce.site/lms/playercontents/16981/cvah-sandbox-range/playercontentcontainer/499/2969/14301",
"https://pctc.cyberforce.site/lms/playercontents/14912/scanning-and-enumeration-with-nmap/playercontentcontainer/499/2971/12246",
"https://pctc.cyberforce.site/lms/playercontents/17656/nmap-utilization/playercontentcontainer/499/2971/15025",
"https://pctc.cyberforce.site/lms/playercontents/10870/remote-system-identification-with-nmap-and-xprobe/playercontentcontainer/499/2971/8850",
"https://pctc.cyberforce.site/lms/playercontents/14840/assessing-the-state-of-an-unknown-network/playercontentcontainer/499/2971/12174",
"https://pctc.cyberforce.site/lms/playercontents/16649/common-tasks-for-securing-linux-systems-part-1--establishing-a-baseline/playercontentcontainer/499/2843/13977",
"https://pctc.cyberforce.site/lms/playercontents/16659/common-tasks-for-securing-linux-systems-part-2--upgrading-software/playercontentcontainer/499/2843/13987",
"https://pctc.cyberforce.site/lms/playercontents/16660/common-tasks-for-securing-linux-systems-part-3--reducing-the-attack-surface/playercontentcontainer/499/2843/13988",
"https://pctc.cyberforce.site/lms/playercontents/16661/common-tasks-for-securing-linux-systems-part-4--hardening-common-applications/playercontentcontainer/499/2843/13989",
"https://pctc.cyberforce.site/lms/playercontents/16233/utilizing-kali-linux-to-recover-key-mission-data/playercontentcontainer/499/2843/13561",
"https://pctc.cyberforce.site/lms/playercontents/16254/identify-partition-format-and-mount-a-storage-device-within-linux/playercontentcontainer/499/2843/13582",
"https://pctc.cyberforce.site/lms/playercontents/16970/responding-to-a-linux-attack/playercontentcontainer/499/2843/14290",
"https://pctc.cyberforce.site/lms/playercontents/16855/introduction-to-docker-portainer-and-harbor/playercontentcontainer/499/2847/14183",
"https://pctc.cyberforce.site/lms/playercontents/16068/test-driving-security-onion/playercontentcontainer/499/2906/13399",
"https://pctc.cyberforce.site/lms/playercontents/16869/deploying-distributed-security-onion/playercontentcontainer/499/2906/14189",
"https://pctc.cyberforce.site/lms/playercontents/15786/introduction-to-kibana/playercontentcontainer/499/2907/13118",
"https://pctc.cyberforce.site/lms/playercontents/15775/kibana-overview/playercontentcontainer/499/2907/13107",
"https://pctc.cyberforce.site/lms/playercontents/15776/kibana-discover-mode/playercontentcontainer/499/2907/13108",
"https://pctc.cyberforce.site/lms/playercontents/15777/visualizing-data-using-charts-in-kibana/playercontentcontainer/499/2907/13109",
"https://pctc.cyberforce.site/lms/playercontents/16126/creating-a-simple-dashboard-in-kibana/playercontentcontainer/499/2907/13110",
"https://pctc.cyberforce.site/lms/playercontents/15809/core-features-of-kibana/playercontentcontainer/499/2907/13142",
"https://pctc.cyberforce.site/lms/playercontents/15782/multi-source-data-analysis-with-kibana/playercontentcontainer/499/2907/13114",
"https://pctc.cyberforce.site/lms/playercontents/16662/analyze-network-traffic-with-kibana-62-default-dashboards/playercontentcontainer/499/2907/13990",
"https://pctc.cyberforce.site/lms/playercontents/16844/create-custom-visualizations-in-kibana/playercontentcontainer/499/2907/14172",
"https://pctc.cyberforce.site/lms/playercontents/16856/create-custom-visualizations-in-kibana-2/playercontentcontainer/499/2907/14184",
"https://pctc.cyberforce.site/lms/playercontents/16870/discovering-and-filtering-network-normality-to-improve-cyber-key-terrain-insight/playercontentcontainer/499/2907/14190",
"https://pctc.cyberforce.site/lms/playercontents/16990/analyze-nids-alerts-in-kibana/playercontentcontainer/499/2907/14310",
"https://pctc.cyberforce.site/lms/playercontents/16983/moloch-utilization--part-1/playercontentcontainer/499/2965/14303",
"https://pctc.cyberforce.site/lms/playercontents/16986/moloch-utilization--part-2/playercontentcontainer/499/2965/14306",
"https://pctc.cyberforce.site/lms/playercontents/15686/introduction-to-bro/playercontentcontainer/499/2910/13019",
"https://pctc.cyberforce.site/lms/playercontents/15687/brocontrol-usage/playercontentcontainer/499/2910/13020",
"https://pctc.cyberforce.site/lms/playercontents/15668/using-standalone-bro-to-analyze-network-based-attacks/playercontentcontainer/499/2910/13002",
"https://pctc.cyberforce.site/lms/playercontents/15669/detecting-an-unknown-attacker-with-bro/playercontentcontainer/499/2910/13003",
"https://pctc.cyberforce.site/lms/playercontents/15789/introduction-to-suricata/playercontentcontainer/499/2911/13121",
"https://pctc.cyberforce.site/lms/playercontents/15810/basic-usage-examples-of-suricata/playercontentcontainer/499/2911/13143",
"https://pctc.cyberforce.site/lms/playercontents/15721/comprehensive-test-drive-of-suricata/playercontentcontainer/499/2911/13054",
"https://pctc.cyberforce.site/lms/playercontents/16955/malware-hunting-with-powershell/playercontentcontainer/499/3068/14275",
"https://pctc.cyberforce.site/lms/playercontents/16988/site-to-site-vpn-tunnels-in-pfsense-using-ipsec/playercontentcontainer/499/3069/14308",
"https://pctc.cyberforce.site/lms/playercontents/16989/site-to-site-vpn-tunnels-in-pfsense-using-openvpn/playercontentcontainer/499/3069/14309",
"https://pctc.cyberforce.site/lms/playercontents/12184/snort-intro-and-overview/playercontentcontainer/499/2913/4330",
"https://pctc.cyberforce.site/lms/playercontents/12182/using-snort-demo/playercontentcontainer/499/2913/4332",
"https://pctc.cyberforce.site/lms/playercontents/16155/grassmarlin-utilization/playercontentcontainer/499/2912/13485",
"https://pctc.cyberforce.site/lms/playercontents/16511/identify-data-flows-with-grassmarlin/playercontentcontainer/499/2912/13839",
"https://pctc.cyberforce.site/lms/playercontents/16923/maltego-utilization-part-1/playercontentcontainer/499/2916/14243",
"https://pctc.cyberforce.site/lms/playercontents/16936/maltego-utilization-part-2/playercontentcontainer/499/2916/14256",
"https://pctc.cyberforce.site/lms/playercontents/16940/casefile-utilization/playercontentcontainer/499/2916/14260",
"https://pctc.cyberforce.site/lms/playercontents/16991/intel-gathering-and-aggregation-with-casefile/playercontentcontainer/499/2916/14311",
"https://pctc.cyberforce.site/lms/playercontents/16154/networkminer-utilization/playercontentcontainer/499/2681/13484",
"https://pctc.cyberforce.site/lms/playercontents/15942/pcap-acquisition-challenge/playercontentcontainer/499/2681/13275",
"https://pctc.cyberforce.site/lms/playercontents/14681/system-vulnerabilities-discovery-exploitation-and-mitigation/playercontentcontainer/499/2973/12015",
"https://pctc.cyberforce.site/lms/playercontents/15820/determine-windows-10-stig-compliance-levels-using-acas/playercontentcontainer/499/2973/13153",
"https://pctc.cyberforce.site/lms/playercontents/16066/using-wireshark-to-detect-malicious-network-activity/playercontentcontainer/499/2975/13397",
"https://pctc.cyberforce.site/lms/playercontents/16138/malware-hunting-with-sysinternals-tools-locate-and-destroy-advanced-persistent-threats/playercontentcontainer/499/2978/13468",
"https://pctc.cyberforce.site/lms/playercontents/16151/guided-malware-analysis-/playercontentcontainer/499/2978/13481",
"https://pctc.cyberforce.site/lms/playercontents/16150/unguided-malware-analysis/playercontentcontainer/499/2978/13480",
"https://pctc.cyberforce.site/lms/playercontents/17988/cvah-validation-capstone/playercontentcontainer/499/3239/15312"
)
$module7 = @(
"https://pctc.cyberforce.site/lms/playercontents/14306/purpose-of-computer-and-network-forensics/playercontentcontainer/393/2245/11814",
"https://pctc.cyberforce.site/lms/playercontents/14307/digital-forensics-tools/playercontentcontainer/393/2245/11815",
"https://pctc.cyberforce.site/lms/playercontents/14308/forensics-team-staffing-considerations/playercontentcontainer/393/2245/11816",
"https://pctc.cyberforce.site/lms/playercontents/14309/digital-forensics-guidelines-policies-and-procedures/playercontentcontainer/393/2245/11817",
"https://pctc.cyberforce.site/lms/playercontents/14310/digital-forensics-life-cycle/playercontentcontainer/393/2245/11818",
"https://pctc.cyberforce.site/lms/playercontents/14311/digital-forensics-best-practices/playercontentcontainer/393/2245/11819",
"https://pctc.cyberforce.site/lms/playercontents/14312/digital-forensics-concepts/playercontentcontainer/393/2246/11820",
"https://pctc.cyberforce.site/lms/playercontents/14313/locards-exchange-principle/playercontentcontainer/393/2246/11821",
"https://pctc.cyberforce.site/lms/playercontents/14314/incident-response-phases-part-1-of-3/playercontentcontainer/393/2246/11822",
"https://pctc.cyberforce.site/lms/playercontents/14315/incident-response-phases-part-2-of-3/playercontentcontainer/393/2246/11823",
"https://pctc.cyberforce.site/lms/playercontents/14316/incident-response-phases-part-3-of-3/playercontentcontainer/393/2246/11824",
"https://pctc.cyberforce.site/lms/playercontents/14317/computer-forensics-process-part-1-of-2/playercontentcontainer/393/2246/11825",
"https://pctc.cyberforce.site/lms/playercontents/14318/computer-forensics-process-part-2-of-2/playercontentcontainer/393/2246/11826",
"https://pctc.cyberforce.site/lms/playercontents/14319/digital-forensic-planning-and-preparation/playercontentcontainer/393/2247/11827",
"https://pctc.cyberforce.site/lms/playercontents/14320/ir-and-digital-forensics-tools/playercontentcontainer/393/2247/11828",
"https://pctc.cyberforce.site/lms/playercontents/14321/forensically-prepared-media-tools-and-equipment/playercontentcontainer/393/2247/11829",
"https://pctc.cyberforce.site/lms/playercontents/14322/incident-response-information-gathering/playercontentcontainer/393/2247/11830",
"https://pctc.cyberforce.site/lms/playercontents/14323/incident-response-acquisition-considerations/playercontentcontainer/393/2247/11831",
"https://pctc.cyberforce.site/lms/playercontents/14324/incident-response-notes-and-documentation/playercontentcontainer/393/2247/11832",
"https://pctc.cyberforce.site/lms/playercontents/14325/auditing-windows-event-logs/playercontentcontainer/393/2247/11833",
"https://pctc.cyberforce.site/lms/playercontents/14326/volatile-data-collection/playercontentcontainer/393/2248/11834",
"https://pctc.cyberforce.site/lms/playercontents/14327/storage-media-collection/playercontentcontainer/393/2248/11835",
"https://pctc.cyberforce.site/lms/playercontents/14328/network-data-collection/playercontentcontainer/393/2248/11836",
"https://pctc.cyberforce.site/lms/playercontents/14329/log-collection/playercontentcontainer/393/2248/11837",
"https://pctc.cyberforce.site/lms/playercontents/14330/data-carving-using-ftk/playercontentcontainer/393/2248/11838",
"https://pctc.cyberforce.site/lms/playercontents/14331/digital-forensic-triage-overview/playercontentcontainer/393/2249/11839",
"https://pctc.cyberforce.site/lms/playercontents/14332/incident-triage-process/playercontentcontainer/393/2249/11840",
"https://pctc.cyberforce.site/lms/playercontents/14333/incident-triage-methodology/playercontentcontainer/393/2249/11841",
"https://pctc.cyberforce.site/lms/playercontents/14334/attacker-methodology-overview-part-1-of-3/playercontentcontainer/393/2249/11842",
"https://pctc.cyberforce.site/lms/playercontents/14335/attacker-methodology-overview-part-2-of-3/playercontentcontainer/393/2249/11843",
"https://pctc.cyberforce.site/lms/playercontents/14336/attacker-methodology-overview-part-3-of-3/playercontentcontainer/393/2249/11844",
"https://pctc.cyberforce.site/lms/playercontents/14337/triage-light-and-general-collections/playercontentcontainer/393/2249/11845",
"https://pctc.cyberforce.site/lms/playercontents/14338/triage-analysis/playercontentcontainer/393/2250/11846",
"https://pctc.cyberforce.site/lms/playercontents/14339/triage-analysis-of-volatile-data/playercontentcontainer/393/2250/11847",
"https://pctc.cyberforce.site/lms/playercontents/14340/program-execution/playercontentcontainer/393/2250/11848",
"https://pctc.cyberforce.site/lms/playercontents/14341/analyzing-services/playercontentcontainer/393/2250/11849",
"https://pctc.cyberforce.site/lms/playercontents/14342/malware-vectors-and-detection/playercontentcontainer/393/2250/11850",
"https://pctc.cyberforce.site/lms/playercontents/14343/mobile-device-triage-analysis/playercontentcontainer/393/2250/11851",
"https://pctc.cyberforce.site/lms/playercontents/14344/ir-following-a-trail/playercontentcontainer/393/2251/11852",
"https://pctc.cyberforce.site/lms/playercontents/14345/hash-and-file-signature-analysis/playercontentcontainer/393/2251/11853",
"https://pctc.cyberforce.site/lms/playercontents/14346/time-analysis/playercontentcontainer/393/2251/11854",
"https://pctc.cyberforce.site/lms/playercontents/14347/registry-analysis/playercontentcontainer/393/2251/11855",
"https://pctc.cyberforce.site/lms/playercontents/14348/file-analysis-demonstration/playercontentcontainer/393/2251/11856",
"https://pctc.cyberforce.site/lms/playercontents/14349/hashing-with-md5deep/playercontentcontainer/393/2251/11857",
"https://pctc.cyberforce.site/lms/playercontents/14350/hash-analysis-with-autopsy/playercontentcontainer/393/2251/11858",
"https://pctc.cyberforce.site/lms/playercontents/14351/lessons-learned-from-an-incident/playercontentcontainer/393/2252/11859",
"https://pctc.cyberforce.site/lms/playercontents/14352/lessons-learned-from-objective-and-subjective-data/playercontentcontainer/393/2252/11860",
"https://pctc.cyberforce.site/lms/playercontents/14353/evidence-retention-and-information-sharing-post-incident/playercontentcontainer/393/2252/11861",
"https://pctc.cyberforce.site/lms/playercontents/14354/cyber-security-investigations-exam/playercontentcontainer/393/2253/11862"
)
$module8 = @(
"https://pctc.cyberforce.site/lms/playercontents/8834/windows-os-security-course-introduction/playercontentcontainer/126/977/4911",
"https://pctc.cyberforce.site/lms/playercontents/8835/windows-security-module-introduction/playercontentcontainer/126/978/4912",
"https://pctc.cyberforce.site/lms/playercontents/8836/windows-architecture-overview/playercontentcontainer/126/978/4913",
"https://pctc.cyberforce.site/lms/playercontents/8837/windows-subsystems-part-1-of-2/playercontentcontainer/126/978/4914",
"https://pctc.cyberforce.site/lms/playercontents/8838/windows-subsystems-part-2-of-2/playercontentcontainer/126/978/4915",
"https://pctc.cyberforce.site/lms/playercontents/8839/windows-security-development-lifecycle/playercontentcontainer/126/978/4916",
"https://pctc.cyberforce.site/lms/playercontents/8840/windows-api/playercontentcontainer/126/978/4917",
"https://pctc.cyberforce.site/lms/playercontents/8841/windows-registry/playercontentcontainer/126/978/4918",
"https://pctc.cyberforce.site/lms/playercontents/8842/viewing-windows-registry-demo/playercontentcontainer/126/978/4919",
"https://pctc.cyberforce.site/lms/playercontents/8843/windows-services-part-1-of-2/playercontentcontainer/126/978/4920",
"https://pctc.cyberforce.site/lms/playercontents/8844/windows-services-demo/playercontentcontainer/126/978/4921",
"https://pctc.cyberforce.site/lms/playercontents/8845/windows-services-part-2-of-2/playercontentcontainer/126/978/4922",
"https://pctc.cyberforce.site/lms/playercontents/8846/multi-tasking/playercontentcontainer/126/978/4923",
"https://pctc.cyberforce.site/lms/playercontents/8847/sessions-windows-stations-and-desktops/playercontentcontainer/126/978/4924",
"https://pctc.cyberforce.site/lms/playercontents/8848/programs-and-drivers-part-1-of-2/playercontentcontainer/126/978/4925",
"https://pctc.cyberforce.site/lms/playercontents/8849/reviewing-drivers-in-windows/playercontentcontainer/126/978/4926",
"https://pctc.cyberforce.site/lms/playercontents/8850/programs-and-drivers-part-2-of-2/playercontentcontainer/126/978/4927",
"https://pctc.cyberforce.site/lms/playercontents/8851/updating-widows-drives-demo/playercontentcontainer/126/978/4928",
"https://pctc.cyberforce.site/lms/playercontents/8853/buffer-overflow-protection/playercontentcontainer/126/978/4930",
"https://pctc.cyberforce.site/lms/playercontents/8854/authenticode-part-1-of-2/playercontentcontainer/126/978/4931",
"https://pctc.cyberforce.site/lms/playercontents/8855/digital-certificate-details-demo/playercontentcontainer/126/978/4932",
"https://pctc.cyberforce.site/lms/playercontents/8856/authenticode-part-2-of-2/playercontentcontainer/126/978/4933",
"https://pctc.cyberforce.site/lms/playercontents/8857/windows-action-center/playercontentcontainer/126/978/4934",
"https://pctc.cyberforce.site/lms/playercontents/8858/windows-users-and-groups-introduction/playercontentcontainer/126/979/4935",
"https://pctc.cyberforce.site/lms/playercontents/8859/user-account-control/playercontentcontainer/126/979/4936",
"https://pctc.cyberforce.site/lms/playercontents/8860/windows-users-and-groups-part-1-of-2/playercontentcontainer/126/979/4937",
"https://pctc.cyberforce.site/lms/playercontents/8861/windows-users-and-groups-part-2-of-2/playercontentcontainer/126/979/4938",
"https://pctc.cyberforce.site/lms/playercontents/8862/windows-interactive-logon-process/playercontentcontainer/126/979/4939",
"https://pctc.cyberforce.site/lms/playercontents/8863/ntlm-authentication-overview/playercontentcontainer/126/979/4940",
"https://pctc.cyberforce.site/lms/playercontents/8864/kerberos-authentication-overview/playercontentcontainer/126/979/4941",
"https://pctc.cyberforce.site/lms/playercontents/8865/types-of-authentication/playercontentcontainer/126/979/4942",
"https://pctc.cyberforce.site/lms/playercontents/8866/file-permissions/playercontentcontainer/126/979/4943",
"https://pctc.cyberforce.site/lms/playercontents/8867/dynamic-access-controls/playercontentcontainer/126/979/4944",
"https://pctc.cyberforce.site/lms/playercontents/8868/threats-and-vulnerabilities-introduction/playercontentcontainer/126/980/4945",
"https://pctc.cyberforce.site/lms/playercontents/8869/os-vulnerabilities/playercontentcontainer/126/980/4946",
"https://pctc.cyberforce.site/lms/playercontents/8870/cve-details-demo/playercontentcontainer/126/980/4947",
"https://pctc.cyberforce.site/lms/playercontents/8871/cve-samples/playercontentcontainer/126/980/4948",
"https://pctc.cyberforce.site/lms/playercontents/8872/misconfigurations/playercontentcontainer/126/980/4949",
"https://pctc.cyberforce.site/lms/playercontents/8873/password-configuration-options/playercontentcontainer/126/980/4950",
"https://pctc.cyberforce.site/lms/playercontents/8874/password-ddos-demo/playercontentcontainer/126/980/4951",
"https://pctc.cyberforce.site/lms/playercontents/8875/common-misconfigurations/playercontentcontainer/126/980/4952",
"https://pctc.cyberforce.site/lms/playercontents/8876/cce-and-the-nvd-demo/playercontentcontainer/126/980/4953",
"https://pctc.cyberforce.site/lms/playercontents/8877/social-engineering/playercontentcontainer/126/980/4954",
"https://pctc.cyberforce.site/lms/playercontents/8878/viruses-and-worms/playercontentcontainer/126/980/4955",
"https://pctc.cyberforce.site/lms/playercontents/8879/impersonation/playercontentcontainer/126/980/4956",
"https://pctc.cyberforce.site/lms/playercontents/8880/microsoft-updates-and-patching-process-part-1-of-2/playercontentcontainer/126/981/4957",
"https://pctc.cyberforce.site/lms/playercontents/8881/double-decode/playercontentcontainer/126/981/4958",
"https://pctc.cyberforce.site/lms/playercontents/8882/microsoft-updates-and-patching-process-part-2-of-2/playercontentcontainer/126/981/4959",
"https://pctc.cyberforce.site/lms/playercontents/8883/securing-the-update-process/playercontentcontainer/126/981/4960",
"https://pctc.cyberforce.site/lms/playercontents/8884/update-process-circumvention/playercontentcontainer/126/981/4961",
"https://pctc.cyberforce.site/lms/playercontents/8885/windows-server-update-service/playercontentcontainer/126/981/4962",
"https://pctc.cyberforce.site/lms/playercontents/8886/internet-explorer-patching/playercontentcontainer/126/981/4963",
"https://pctc.cyberforce.site/lms/playercontents/8887/windows-network-connectivity/playercontentcontainer/126/982/4964",
"https://pctc.cyberforce.site/lms/playercontents/8888/windows-network-profiles/playercontentcontainer/126/982/4965",
"https://pctc.cyberforce.site/lms/playercontents/8889/windows-network-adapter-settings/playercontentcontainer/126/982/4966",
"https://pctc.cyberforce.site/lms/playercontents/8890/windows-wireless-settings/playercontentcontainer/126/982/4967",
"https://pctc.cyberforce.site/lms/playercontents/8891/windows-networking-protocols/playercontentcontainer/126/982/4968",
"https://pctc.cyberforce.site/lms/playercontents/8892/other-windows-protocols/playercontentcontainer/126/982/4969",
"https://pctc.cyberforce.site/lms/playercontents/8893/microsoft-vpn-part-1-of-2/playercontentcontainer/126/982/4970",
"https://pctc.cyberforce.site/lms/playercontents/8894/microsoft-vpn-part-2-of-2/playercontentcontainer/126/982/4971",
"https://pctc.cyberforce.site/lms/playercontents/8895/microsoft-network-access-protection-part-1-of-2/playercontentcontainer/126/982/4972",
"https://pctc.cyberforce.site/lms/playercontents/8896/microsoft-network-access-protection-part-2-of-2/playercontentcontainer/126/982/4973",
"https://pctc.cyberforce.site/lms/playercontents/8897/how-to-configure-windows-update-settings-demo/playercontentcontainer/126/982/4974",
"https://pctc.cyberforce.site/lms/playercontents/8898/windows-security-features-introduction/playercontentcontainer/126/983/4975",
"https://pctc.cyberforce.site/lms/playercontents/8899/windows-firewall/playercontentcontainer/126/983/4976",
"https://pctc.cyberforce.site/lms/playercontents/8900/windows-firewall-wizard-demo/playercontentcontainer/126/983/4977",
"https://pctc.cyberforce.site/lms/playercontents/8901/windows-firewall-with-advanced-security/playercontentcontainer/126/983/4978",
"https://pctc.cyberforce.site/lms/playercontents/8902/windows-firewall-with-advanced-security-demo/playercontentcontainer/126/983/4979",
"https://pctc.cyberforce.site/lms/playercontents/8903/configuring-windows-firewall-demo/playercontentcontainer/126/983/4980",
"https://pctc.cyberforce.site/lms/playercontents/8904/windows-defender/playercontentcontainer/126/983/4981",
"https://pctc.cyberforce.site/lms/playercontents/8905/windows-ad-and-pki-demo/playercontentcontainer/126/983/4982",
"https://pctc.cyberforce.site/lms/playercontents/8906/windows-active-directory-certificate-services/playercontentcontainer/126/983/4983",
"https://pctc.cyberforce.site/lms/playercontents/8907/windows-group-policy/playercontentcontainer/126/983/4984",
"https://pctc.cyberforce.site/lms/playercontents/8908/windows-applocker/playercontentcontainer/126/983/4985",
"https://pctc.cyberforce.site/lms/playercontents/8909/configuring-and-using-app-locker-demo/playercontentcontainer/126/983/4986",
"https://pctc.cyberforce.site/lms/playercontents/8910/windows-bitlocker/playercontentcontainer/126/983/4987",
"https://pctc.cyberforce.site/lms/playercontents/8911/configuring-and-using-bitlocker-demo/playercontentcontainer/126/983/4988",
"https://pctc.cyberforce.site/lms/playercontents/8912/windows-secure-boot/playercontentcontainer/126/983/4989",
"https://pctc.cyberforce.site/lms/playercontents/8913/windows-security-auditing/playercontentcontainer/126/983/4990",
"https://pctc.cyberforce.site/lms/playercontents/8914/windows-audit-settings-and-examples/playercontentcontainer/126/983/4991",
"https://pctc.cyberforce.site/lms/playercontents/8915/scw-introduction/playercontentcontainer/126/983/4992",
"https://pctc.cyberforce.site/lms/playercontents/8916/hardening-windows-introduction/playercontentcontainer/126/984/4993",
"https://pctc.cyberforce.site/lms/playercontents/8917/windows-templates/playercontentcontainer/126/984/4994",
"https://pctc.cyberforce.site/lms/playercontents/8918/microsoft-baseline-security-analyzer/playercontentcontainer/126/984/4995",
"https://pctc.cyberforce.site/lms/playercontents/8919/microsoft-security-configuration-wizard/playercontentcontainer/126/984/4996",
"https://pctc.cyberforce.site/lms/playercontents/8920/microsoft-security-compliance-manager/playercontentcontainer/126/984/4997",
"https://pctc.cyberforce.site/lms/playercontents/8921/hardening-with-group-policy/playercontentcontainer/126/984/4998",
"https://pctc.cyberforce.site/lms/playercontents/8922/nvd-search-demo/playercontentcontainer/126/984/4999",
"https://pctc.cyberforce.site/lms/playercontents/8923/other-guidelines-and-recommendations/playercontentcontainer/126/984/5000",
"https://pctc.cyberforce.site/lms/playercontents/8924/using-windows-mgmt-intstrumentation-demo/playercontentcontainer/126/984/5001",
"https://pctc.cyberforce.site/lms/playercontents/8925/using-the-security-config-wizard-demo/playercontentcontainer/126/984/5002",
"https://pctc.cyberforce.site/lms/playercontents/8926/powershell-introduction/playercontentcontainer/126/985/5003",
"https://pctc.cyberforce.site/lms/playercontents/8927/powershell-key-commands/playercontentcontainer/126/985/5004",
"https://pctc.cyberforce.site/lms/playercontents/8928/powershell-demo/playercontentcontainer/126/985/5005",
"https://pctc.cyberforce.site/lms/playercontents/8929/administrative-functions-with-powershell/playercontentcontainer/126/985/5006",
"https://pctc.cyberforce.site/lms/playercontents/8930/computer-and-network-management-with-powershell/playercontentcontainer/126/985/5007",
"https://pctc.cyberforce.site/lms/playercontents/8931/basic-scripts-in-powershell/playercontentcontainer/126/985/5008",
"https://pctc.cyberforce.site/lms/playercontents/8932/powershell-security-settings-and-configurations/playercontentcontainer/126/985/5009",
"https://pctc.cyberforce.site/lms/playercontents/8933/using-powershell-demo/playercontentcontainer/126/985/5010",
"https://pctc.cyberforce.site/lms/playercontents/5011/windows-os-security-quiz/playercontentcontainer/126/986/5011"
)
$module9 = @(
"https://pctc.cyberforce.site/lms/playercontents/8771/linux-os-security-introduction/playercontentcontainer/135/1018/5215",
"https://pctc.cyberforce.site/lms/playercontents/8772/booting-linux/playercontentcontainer/135/1019/5216",
"https://pctc.cyberforce.site/lms/playercontents/8773/linux-recovery/playercontentcontainer/135/1019/5217",
"https://pctc.cyberforce.site/lms/playercontents/8774/linux-startup-scripts/playercontentcontainer/135/1019/5218",
"https://pctc.cyberforce.site/lms/playercontents/8775/linux-startup-processes/playercontentcontainer/135/1019/5219",
"https://pctc.cyberforce.site/lms/playercontents/8776/linux-runlevels-demo/playercontentcontainer/135/1019/5220",
"https://pctc.cyberforce.site/lms/playercontents/8777/chkconfig-and-upstart-demo/playercontentcontainer/135/1019/5221",
"https://pctc.cyberforce.site/lms/playercontents/8778/linux-processes-and-signals/playercontentcontainer/135/1019/5222",
"https://pctc.cyberforce.site/lms/playercontents/8779/linux-process-monitoring/playercontentcontainer/135/1019/5223",
"https://pctc.cyberforce.site/lms/playercontents/8780/ps-and-netstat-demo/playercontentcontainer/135/1019/5224",
"https://pctc.cyberforce.site/lms/playercontents/8781/linux-ps-and-top-demo/playercontentcontainer/135/1019/5225",
"https://pctc.cyberforce.site/lms/playercontents/8782/working-with-linux-pids/playercontentcontainer/135/1019/5226",
"https://pctc.cyberforce.site/lms/playercontents/8783/linux-file-system-overview/playercontentcontainer/135/1019/5227",
"https://pctc.cyberforce.site/lms/playercontents/8784/linux-file-security/playercontentcontainer/135/1019/5228",
"https://pctc.cyberforce.site/lms/playercontents/8785/linux-file-access-controls/playercontentcontainer/135/1019/5229",
"https://pctc.cyberforce.site/lms/playercontents/8786/file-integrity-demo/playercontentcontainer/135/1019/5230",
"https://pctc.cyberforce.site/lms/playercontents/8787/linux-kernel-tuning/playercontentcontainer/135/1019/5231",
"https://pctc.cyberforce.site/lms/playercontents/8788/linux-host-access-controls/playercontentcontainer/135/1019/5232",
"https://pctc.cyberforce.site/lms/playercontents/8789/linux-user-and-group-definition/playercontentcontainer/135/1020/5233",
"https://pctc.cyberforce.site/lms/playercontents/8790/user-management/playercontentcontainer/135/1020/5234",
"https://pctc.cyberforce.site/lms/playercontents/8791/linux-privilege-escalation/playercontentcontainer/135/1020/5235",
"https://pctc.cyberforce.site/lms/playercontents/8792/sudoers-demo/playercontentcontainer/135/1020/5236",
"https://pctc.cyberforce.site/lms/playercontents/8793/linux-authentication-methods/playercontentcontainer/135/1020/5237",
"https://pctc.cyberforce.site/lms/playercontents/8794/linux-viruses-and-worms/playercontentcontainer/135/1021/5238",
"https://pctc.cyberforce.site/lms/playercontents/8795/linux-trojan-horses/playercontentcontainer/135/1021/5239",
"https://pctc.cyberforce.site/lms/playercontents/8796/linux-rootkits/playercontentcontainer/135/1021/5240",
"https://pctc.cyberforce.site/lms/playercontents/8797/linux-misconfigurations/playercontentcontainer/135/1021/5241",
"https://pctc.cyberforce.site/lms/playercontents/8798/linux-software-vulnerabilities/playercontentcontainer/135/1021/5242",
"https://pctc.cyberforce.site/lms/playercontents/8799/linux-social-engineering/playercontentcontainer/135/1021/5243",
"https://pctc.cyberforce.site/lms/playercontents/8800/linux-automated-installation/playercontentcontainer/135/1022/5244",
"https://pctc.cyberforce.site/lms/playercontents/8801/managing-linux-packages/playercontentcontainer/135/1022/5245",
"https://pctc.cyberforce.site/lms/playercontents/8802/package-management-tools-demo/playercontentcontainer/135/1022/5246",
"https://pctc.cyberforce.site/lms/playercontents/8803/repositories-and-system-management/playercontentcontainer/135/1022/5247",
"https://pctc.cyberforce.site/lms/playercontents/8804/custom-repository-demo/playercontentcontainer/135/1022/5248",
"https://pctc.cyberforce.site/lms/playercontents/8805/linux-ipv4-and-ipv6/playercontentcontainer/135/1023/5249",
"https://pctc.cyberforce.site/lms/playercontents/8806/linux-network-configuration/playercontentcontainer/135/1023/5250",
"https://pctc.cyberforce.site/lms/playercontents/8807/linux-tunneling/playercontentcontainer/135/1023/5251",
"https://pctc.cyberforce.site/lms/playercontents/8808/kernel-tuning-demo/playercontentcontainer/135/1023/5252",
"https://pctc.cyberforce.site/lms/playercontents/8809/linux-x11-forwarding/playercontentcontainer/135/1023/5253",
"https://pctc.cyberforce.site/lms/playercontents/8810/linux-file-sharing/playercontentcontainer/135/1023/5254",
"https://pctc.cyberforce.site/lms/playercontents/8811/linux-grand-unified-bootloader-grub/playercontentcontainer/135/1024/5255",
"https://pctc.cyberforce.site/lms/playercontents/8812/configuring-grub-demo/playercontentcontainer/135/1024/5256",
"https://pctc.cyberforce.site/lms/playercontents/8813/security-enhanced-linux/playercontentcontainer/135/1024/5257",
"https://pctc.cyberforce.site/lms/playercontents/8814/introduction-to-iptables/playercontentcontainer/135/1024/5258",
"https://pctc.cyberforce.site/lms/playercontents/8815/iptables-rules/playercontentcontainer/135/1024/5259",
"https://pctc.cyberforce.site/lms/playercontents/8816/ipfilter/playercontentcontainer/135/1024/5260",
"https://pctc.cyberforce.site/lms/playercontents/8817/linux-packet-sniffers/playercontentcontainer/135/1024/5261",
"https://pctc.cyberforce.site/lms/playercontents/8818/linux-nids/playercontentcontainer/135/1024/5262",
"https://pctc.cyberforce.site/lms/playercontents/8819/linux-hids/playercontentcontainer/135/1024/5263",
"https://pctc.cyberforce.site/lms/playercontents/8820/linux-antivirus/playercontentcontainer/135/1024/5264",
"https://pctc.cyberforce.site/lms/playercontents/8821/linux-secure-shell/playercontentcontainer/135/1024/5265",
"https://pctc.cyberforce.site/lms/playercontents/8822/linux-log-management/playercontentcontainer/135/1024/5266",
"https://pctc.cyberforce.site/lms/playercontents/8823/linux-scripting-basics/playercontentcontainer/135/1025/5267",
"https://pctc.cyberforce.site/lms/playercontents/8824/bash-scripting-demo/playercontentcontainer/135/1025/5268",
"https://pctc.cyberforce.site/lms/playercontents/8825/if-statements/playercontentcontainer/135/1025/5269",
"https://pctc.cyberforce.site/lms/playercontents/8826/pipes-and-redirection/playercontentcontainer/135/1025/5270",
"https://pctc.cyberforce.site/lms/playercontents/8827/variables-and-regular-expressions/playercontentcontainer/135/1025/5271",
"https://pctc.cyberforce.site/lms/playercontents/8828/custom-scripting/playercontentcontainer/135/1025/5272",
"https://pctc.cyberforce.site/lms/playercontents/8829/linux-hardening/playercontentcontainer/135/1026/5273",
"https://pctc.cyberforce.site/lms/playercontents/8830/nsa-hardening-guides/playercontentcontainer/135/1026/5274",
"https://pctc.cyberforce.site/lms/playercontents/8831/national-vulnerability-database-nvd/playercontentcontainer/135/1026/5275",
"https://pctc.cyberforce.site/lms/playercontents/8832/common-vulnerabilities-and-exposures-cve/playercontentcontainer/135/1026/5276",
"https://pctc.cyberforce.site/lms/playercontents/8833/vulnerability-scanning/playercontentcontainer/135/1026/5277",
"https://pctc.cyberforce.site/lms/playercontents/5278/linux-operating-system-security-quiz/playercontentcontainer/135/1027/5278"
)
$module10 = @(
"https://pctc.cyberforce.site/lms/playercontents/14237/introduction/playercontentcontainer/392/2234/11770",
"https://pctc.cyberforce.site/lms/playercontents/14238/configuration-files/playercontentcontainer/392/2234/11771",
"https://pctc.cyberforce.site/lms/playercontents/14239/running-pipeline/playercontentcontainer/392/2234/11772",
"https://pctc.cyberforce.site/lms/playercontents/14240/logical-schematics/playercontentcontainer/392/2234/11773",
"https://pctc.cyberforce.site/lms/playercontents/14241/pipeline-and-timing-and-state/playercontentcontainer/392/2234/11774",
"https://pctc.cyberforce.site/lms/playercontents/14242/alerts/playercontentcontainer/392/2234/11775",
"https://pctc.cyberforce.site/lms/playercontents/14243/configuration-file-basics/playercontentcontainer/392/2235/11776",
"https://pctc.cyberforce.site/lms/playercontents/14244/filters/playercontentcontainer/392/2235/11777",
"https://pctc.cyberforce.site/lms/playercontents/14245/filters-exercises-and-solutions/playercontentcontainer/392/2235/11778",
"https://pctc.cyberforce.site/lms/playercontents/14246/evaluations/playercontentcontainer/392/2235/11779",
"https://pctc.cyberforce.site/lms/playercontents/14247/evaluations-exercises-and-solutions/playercontentcontainer/392/2235/11780",
"https://pctc.cyberforce.site/lms/playercontents/14248/statistics/playercontentcontainer/392/2235/11781",
"https://pctc.cyberforce.site/lms/playercontents/14249/internal-filters/playercontentcontainer/392/2235/11782",
"https://pctc.cyberforce.site/lms/playercontents/14250/list-configurations/playercontentcontainer/392/2235/11783",
"https://pctc.cyberforce.site/lms/playercontents/14251/configuration-file-basics-exercises-and-solutions/playercontentcontainer/392/2235/11784",
"https://pctc.cyberforce.site/lms/playercontents/14252/threshold-examples/playercontentcontainer/392/2236/11785",
"https://pctc.cyberforce.site/lms/playercontents/14253/special-evaluations/playercontentcontainer/392/2236/11786",
"https://pctc.cyberforce.site/lms/playercontents/14254/building-an-analytic/playercontentcontainer/392/2237/11787",
"https://pctc.cyberforce.site/lms/playercontents/14255/server-profiling-analytic/playercontentcontainer/392/2237/11788",
"https://pctc.cyberforce.site/lms/playercontents/14256/host-discovery-analytic/playercontentcontainer/392/2237/11789",
"https://pctc.cyberforce.site/lms/playercontents/14257/advanced-configurations/playercontentcontainer/392/2238/11790",
"https://pctc.cyberforce.site/lms/playercontents/14258/ntp-anomalies/playercontentcontainer/392/2238/11791",
"https://pctc.cyberforce.site/lms/playercontents/14259/unknown-ssh-brute-force/playercontentcontainer/392/2238/11792",
"https://pctc.cyberforce.site/lms/playercontents/14260/choose-your-own-adventure/playercontentcontainer/392/2239/11793",
"https://pctc.cyberforce.site/lms/playercontents/14261/icmp-surveying-thinking-it-through/playercontentcontainer/392/2239/11794",
"https://pctc.cyberforce.site/lms/playercontents/14262/icmp-surveying-building-it-out/playercontentcontainer/392/2239/11795",
"https://pctc.cyberforce.site/lms/playercontents/14263/ddos-detection-thinking-it-through/playercontentcontainer/392/2239/11796",
"https://pctc.cyberforce.site/lms/playercontents/14264/ddos-detection-building-it-out/playercontentcontainer/392/2239/11797",
"https://pctc.cyberforce.site/lms/playercontents/14265/ssh-compromise-thinking-it-through/playercontentcontainer/392/2239/11798",
"https://pctc.cyberforce.site/lms/playercontents/14266/ssh-compromise-building-it-out/playercontentcontainer/392/2239/11799",
"https://pctc.cyberforce.site/lms/playercontents/14267/analysis-pipeline-5/playercontentcontainer/392/2240/11800"
)
$module11 = @(
"https://pctc.cyberforce.site/lms/playercontents/12214/penetration-testing-course-introduction/playercontentcontainer/99/825/4344",
"https://pctc.cyberforce.site/lms/playercontents/12215/pen-testing-goals-and-objectives/playercontentcontainer/99/826/4345",
"https://pctc.cyberforce.site/lms/playercontents/12216/pen-test-methodologies-and-frameworks/playercontentcontainer/99/826/4346",
"https://pctc.cyberforce.site/lms/playercontents/12217/information-gathering-for-pen-testing/playercontentcontainer/99/827/4347",
"https://pctc.cyberforce.site/lms/playercontents/12218/info-gathering--social-engineering-part-1-of-2/playercontentcontainer/99/827/4348",
"https://pctc.cyberforce.site/lms/playercontents/12219/info-gathering--social-engineering-part-2-of-2/playercontentcontainer/99/827/4349",
"https://pctc.cyberforce.site/lms/playercontents/12220/info-gathering-with-automated-tools/playercontentcontainer/99/827/4350",
"https://pctc.cyberforce.site/lms/playercontents/12221/gathering-info-with-google-hacking/playercontentcontainer/99/827/4351",
"https://pctc.cyberforce.site/lms/playercontents/7827/social-engineering-toolkit-demo/playercontentcontainer/99/827/4066",
"https://pctc.cyberforce.site/lms/playercontents/7786/active-footprinting-with-traceroute/playercontentcontainer/99/827/4025",
"https://pctc.cyberforce.site/lms/playercontents/12222/recon-methodology-and-network-mapping/playercontentcontainer/99/828/4352",
"https://pctc.cyberforce.site/lms/playercontents/12223/recon-and-enumeration--scanning/playercontentcontainer/99/828/4353",
"https://pctc.cyberforce.site/lms/playercontents/12224/common-system-enumeration-techniques/playercontentcontainer/99/828/4354",
"https://pctc.cyberforce.site/lms/playercontents/12225/initial-access-and-concepts/playercontentcontainer/99/829/4355",
"https://pctc.cyberforce.site/lms/playercontents/12226/direct-exploits/playercontentcontainer/99/829/4356",
"https://pctc.cyberforce.site/lms/playercontents/12227/social-attacks-and-toolkit-examples/playercontentcontainer/99/829/4357",
"https://pctc.cyberforce.site/lms/playercontents/12228/wireless-concepts-overview/playercontentcontainer/99/830/4358",
"https://pctc.cyberforce.site/lms/playercontents/12229/wireless-pen-testing/playercontentcontainer/99/830/4359",
"https://pctc.cyberforce.site/lms/playercontents/12230/pen-testing-and-bluetooth/playercontentcontainer/99/830/4360",
"https://pctc.cyberforce.site/lms/playercontents/12231/intro-to-vulnerability-research/playercontentcontainer/99/831/4361",
"https://pctc.cyberforce.site/lms/playercontents/12232/exploit-database-demo/playercontentcontainer/99/831/4362",
"https://pctc.cyberforce.site/lms/playercontents/12233/using-scan-results/playercontentcontainer/99/831/4363",
"https://pctc.cyberforce.site/lms/playercontents/12234/fuzz-testing/playercontentcontainer/99/831/4364",
"https://pctc.cyberforce.site/lms/playercontents/12235/demo-application-fuzzer/playercontentcontainer/99/831/4365",
"https://pctc.cyberforce.site/lms/playercontents/12236/using-backtrack/playercontentcontainer/99/832/4366",
"https://pctc.cyberforce.site/lms/playercontents/12237/using-backtrack-demo/playercontentcontainer/99/832/4367",
"https://pctc.cyberforce.site/lms/playercontents/12238/using-metasploit/playercontentcontainer/99/832/4368",
"https://pctc.cyberforce.site/lms/playercontents/12239/using-metasploit-example/playercontentcontainer/99/832/4369",
"https://pctc.cyberforce.site/lms/playercontents/12240/demo-climetasploit/playercontentcontainer/99/832/4370",
"https://pctc.cyberforce.site/lms/playercontents/12241/using-meterpreter/playercontentcontainer/99/832/4371",
"https://pctc.cyberforce.site/lms/playercontents/12242/using-armitage/playercontentcontainer/99/832/4372",
"https://pctc.cyberforce.site/lms/playercontents/7871/demo-intro-to-armitage/playercontentcontainer/99/832/4111",
"https://pctc.cyberforce.site/lms/playercontents/12243/exploits-with-armitage/playercontentcontainer/99/832/3997",
"https://pctc.cyberforce.site/lms/playercontents/12244/mitm-attacks-and-pen-testing/playercontentcontainer/99/832/4373",
"https://pctc.cyberforce.site/lms/playercontents/12245/finding-and-compiling-exploits/playercontentcontainer/99/832/4374",
"https://pctc.cyberforce.site/lms/playercontents/12246/privilege-escalation-concepts/playercontentcontainer/99/833/4375",
"https://pctc.cyberforce.site/lms/playercontents/12247/password-abuse/playercontentcontainer/99/833/4376",
"https://pctc.cyberforce.site/lms/playercontents/12248/acls-dacls-and-sacls/playercontentcontainer/99/833/4377",
"https://pctc.cyberforce.site/lms/playercontents/12249/basic-process-of-session-hijacking/playercontentcontainer/99/833/4378",
"https://pctc.cyberforce.site/lms/playercontents/12250/basic-process-of-session-hacking-cont/playercontentcontainer/99/833/4379",
"https://pctc.cyberforce.site/lms/playercontents/12251/chained-exploits/playercontentcontainer/99/833/4380",
"https://pctc.cyberforce.site/lms/playercontents/12252/pen-testing-and-sql-injection/playercontentcontainer/99/834/4381",
"https://pctc.cyberforce.site/lms/playercontents/12253/pen-testing-and-sql-enumeration/playercontentcontainer/99/834/4382",
"https://pctc.cyberforce.site/lms/playercontents/12254/demo-sql-injection-attacks/playercontentcontainer/99/834/4383",
"https://pctc.cyberforce.site/lms/playercontents/12255/pen-testing-and-xss-attacks/playercontentcontainer/99/834/4384",
"https://pctc.cyberforce.site/lms/playercontents/12256/pen-testing-direct-attacks/playercontentcontainer/99/834/4385",
"https://pctc.cyberforce.site/lms/playercontents/7873/demo-sql-injection/playercontentcontainer/99/834/4113",
"https://pctc.cyberforce.site/lms/playercontents/12257/demo-runningexploitfrom-code/playercontentcontainer/99/834/3906",
"https://pctc.cyberforce.site/lms/playercontents/12258/encoding-schemes/playercontentcontainer/99/835/4386",
"https://pctc.cyberforce.site/lms/playercontents/12259/encoding-examples/playercontentcontainer/99/835/4387",
"https://pctc.cyberforce.site/lms/playercontents/12260/evading-with-tunneling/playercontentcontainer/99/835/4388",
"https://pctc.cyberforce.site/lms/playercontents/12261/evasion/playercontentcontainer/99/835/407",
"https://pctc.cyberforce.site/lms/playercontents/12262/infrastructure-device-discovery/playercontentcontainer/99/836/4389",
"https://pctc.cyberforce.site/lms/playercontents/12263/exploiting-infrastructure-devices/playercontentcontainer/99/836/4390",
"https://pctc.cyberforce.site/lms/playercontents/12264/demo-automating-infra-detection-and-iden/playercontentcontainer/99/836/4391",
"https://pctc.cyberforce.site/lms/playercontents/12265/persistence-and-camouflaging/playercontentcontainer/99/837/4392",
"https://pctc.cyberforce.site/lms/playercontents/12266/persistent-meterpreter-demo/playercontentcontainer/99/837/4393",
"https://pctc.cyberforce.site/lms/playercontents/12267/persistence-through-other-techniques/playercontentcontainer/99/837/4394",
"https://pctc.cyberforce.site/lms/playercontents/12268/discovery-techniques/playercontentcontainer/99/838/4395",
"https://pctc.cyberforce.site/lms/playercontents/12269/discovery-techniques-and-ipv6/playercontentcontainer/99/838/4396",
"https://pctc.cyberforce.site/lms/playercontents/12270/miscellaneous-tactics-of-minimizing-detection/playercontentcontainer/99/838/4397",
"https://pctc.cyberforce.site/lms/playercontents/12271/demo-minimizing-detection/playercontentcontainer/99/838/4398",
"https://pctc.cyberforce.site/lms/playercontents/10268/finding-alive-ipv6-hosts/playercontentcontainer/99/838/1136",
"https://pctc.cyberforce.site/lms/playercontents/10272/ipv6-man-in-the-middle/playercontentcontainer/99/838/1140",
"https://pctc.cyberforce.site/lms/playercontents/10275/ipv6-windows-teredo-tunneling/playercontentcontainer/99/838/1143",
"https://pctc.cyberforce.site/lms/playercontents/12272/the-case-for-scripting/playercontentcontainer/99/839/4399",
"https://pctc.cyberforce.site/lms/playercontents/12273/windows-scripting-basics/playercontentcontainer/99/839/4400",
"https://pctc.cyberforce.site/lms/playercontents/12274/scripting-loops/playercontentcontainer/99/839/4401",
"https://pctc.cyberforce.site/lms/playercontents/12275/error-handling-and-script-troubleshooting/playercontentcontainer/99/839/4402",
"https://pctc.cyberforce.site/lms/playercontents/12276/scripting-and-penetration-testing/playercontentcontainer/99/839/4403",
"https://pctc.cyberforce.site/lms/playercontents/12277/gaining-onsite-access/playercontentcontainer/99/840/4404",
"https://pctc.cyberforce.site/lms/playercontents/12278/demo-exploiting-systems-using-onsite-access/playercontentcontainer/99/840/4405",
"https://pctc.cyberforce.site/lms/playercontents/14502/penetration-testing-course-exam/playercontentcontainer/99/841/4406"
)
$module12 = @(
"https://pctc.cyberforce.site/lms/playercontents/17126/python-the-basics/playercontentcontainer/573/3072/14445",
"https://pctc.cyberforce.site/lms/playercontents/16942/intro-to-python--1/playercontentcontainer/573/2947/14262",
"https://pctc.cyberforce.site/lms/playercontents/16943/intro-to-python--2/playercontentcontainer/573/2949/14263",
"https://pctc.cyberforce.site/lms/playercontents/16944/intro-to-python--3/playercontentcontainer/573/2950/14264",
"https://pctc.cyberforce.site/lms/playercontents/16945/intro-to-python--4/playercontentcontainer/573/2951/14265",
"https://pctc.cyberforce.site/lms/playercontents/16946/intro-to-python--5/playercontentcontainer/573/2952/14266"
)
$module13 = @(
"https://pctc.cyberforce.site/lms/playercontents/16671/certified-ethical-hacker-v9-intro/playercontentcontainer/545/2848/13999",
"https://pctc.cyberforce.site/lms/playercontents/16672/ethical-hacking-intro-and-security-reports/playercontentcontainer/545/2849/14000",
"https://pctc.cyberforce.site/lms/playercontents/16673/security-reports-statistics/playercontentcontainer/545/2849/14001",
"https://pctc.cyberforce.site/lms/playercontents/16674/ethical-hacking-terminology/playercontentcontainer/545/2849/14002",
"https://pctc.cyberforce.site/lms/playercontents/16675/ethical-hacking-terminology-cont/playercontentcontainer/545/2849/14003",
"https://pctc.cyberforce.site/lms/playercontents/16676/incident-response-overview/playercontentcontainer/545/2849/14004",
"https://pctc.cyberforce.site/lms/playercontents/16677/laws-and-regulations/playercontentcontainer/545/2849/14005",
"https://pctc.cyberforce.site/lms/playercontents/16678/ethical-hacking-and-threats/playercontentcontainer/545/2849/14006",
"https://pctc.cyberforce.site/lms/playercontents/16679/types-of-attacks-and-attack-vectors/playercontentcontainer/545/2849/14007",
"https://pctc.cyberforce.site/lms/playercontents/16680/hacking-phases-and-vul-research/playercontentcontainer/545/2849/14008",
"https://pctc.cyberforce.site/lms/playercontents/16681/reconnaissance/playercontentcontainer/545/2850/14009",
"https://pctc.cyberforce.site/lms/playercontents/16682/passive-footprinting/playercontentcontainer/545/2850/14010",
"https://pctc.cyberforce.site/lms/playercontents/16683/demo-whois-with-backtrack/playercontentcontainer/545/2850/14011",
"https://pctc.cyberforce.site/lms/playercontents/16684/passive-whois-queries/playercontentcontainer/545/2850/14012",
"https://pctc.cyberforce.site/lms/playercontents/16685/google-hacking/playercontentcontainer/545/2850/14013",
"https://pctc.cyberforce.site/lms/playercontents/16686/active-footprinting/playercontentcontainer/545/2850/14014",
"https://pctc.cyberforce.site/lms/playercontents/16687/demo-nslookup-example/playercontentcontainer/545/2850/14015",
"https://pctc.cyberforce.site/lms/playercontents/16688/active-footprinting-cont/playercontentcontainer/545/2850/14016",
"https://pctc.cyberforce.site/lms/playercontents/16689/demo-active-footprinting-with-traceroute/playercontentcontainer/545/2850/14017",
"https://pctc.cyberforce.site/lms/playercontents/16690/network-mapping-and-web-mirroring/playercontentcontainer/545/2850/14018",
"https://pctc.cyberforce.site/lms/playercontents/16691/active-footprinting-countermeasures/playercontentcontainer/545/2850/14019",
"https://pctc.cyberforce.site/lms/playercontents/16692/scanning-essentials/playercontentcontainer/545/2851/14020",
"https://pctc.cyberforce.site/lms/playercontents/16693/scanning-essentials-continued/playercontentcontainer/545/2851/14021",
"https://pctc.cyberforce.site/lms/playercontents/16694/port-scanning/playercontentcontainer/545/2851/14022",
"https://pctc.cyberforce.site/lms/playercontents/16695/vulnerability-scanning/playercontentcontainer/545/2851/14023",
"https://pctc.cyberforce.site/lms/playercontents/16696/demo-banner-grabbing-with-telnet/playercontentcontainer/545/2851/14024",
"https://pctc.cyberforce.site/lms/playercontents/16697/covert-scanning/playercontentcontainer/545/2851/14025",
"https://pctc.cyberforce.site/lms/playercontents/16698/demo-scanning-with-nmap-demo/playercontentcontainer/545/2851/14026",
"https://pctc.cyberforce.site/lms/playercontents/16699/additional-covert-scanning/playercontentcontainer/545/2851/14027",
"https://pctc.cyberforce.site/lms/playercontents/16700/enumeration-overview-part-1-of-2/playercontentcontainer/545/2852/14028",
"https://pctc.cyberforce.site/lms/playercontents/16701/enumeration-overview-part-2-of-2/playercontentcontainer/545/2852/14029",
"https://pctc.cyberforce.site/lms/playercontents/16702/enumeration-tools/playercontentcontainer/545/2852/14030",
"https://pctc.cyberforce.site/lms/playercontents/16703/operating-system-account-enumeration/playercontentcontainer/545/2852/14031",
"https://pctc.cyberforce.site/lms/playercontents/16704/protocol-enumeration/playercontentcontainer/545/2852/14032",
"https://pctc.cyberforce.site/lms/playercontents/16705/demo-netstat-enumeration-and-countermeasures/playercontentcontainer/545/2852/14033",
"https://pctc.cyberforce.site/lms/playercontents/16706/authentication-techniques/playercontentcontainer/545/2853/14034",
"https://pctc.cyberforce.site/lms/playercontents/16707/microsoft-authentication/playercontentcontainer/545/2853/14035",
"https://pctc.cyberforce.site/lms/playercontents/16708/password-cracking/playercontentcontainer/545/2853/14036",
"https://pctc.cyberforce.site/lms/playercontents/16709/password-cracking-techniques/playercontentcontainer/545/2853/14037",
"https://pctc.cyberforce.site/lms/playercontents/16710/privilege-escalation/playercontentcontainer/545/2853/14038",
"https://pctc.cyberforce.site/lms/playercontents/16711/demo-rainbow-table-lookup-sites/playercontentcontainer/545/2853/14039",
"https://pctc.cyberforce.site/lms/playercontents/16712/keyloggers/playercontentcontainer/545/2853/14040",
"https://pctc.cyberforce.site/lms/playercontents/16713/spyware-and-activity-monitoring/playercontentcontainer/545/2853/14041",
"https://pctc.cyberforce.site/lms/playercontents/16714/packet-sniffing-attacks/playercontentcontainer/545/2853/14042",
"https://pctc.cyberforce.site/lms/playercontents/16715/rootkits/playercontentcontainer/545/2853/14043",
"https://pctc.cyberforce.site/lms/playercontents/16716/covert-hacking/playercontentcontainer/545/2853/14044",
"https://pctc.cyberforce.site/lms/playercontents/16717/covering-tracks/playercontentcontainer/545/2853/14045",
"https://pctc.cyberforce.site/lms/playercontents/16718/virus-examples-and-symptoms/playercontentcontainer/545/2854/14046",
"https://pctc.cyberforce.site/lms/playercontents/16719/virus-classifications-and-characteristics/playercontentcontainer/545/2854/14047",
"https://pctc.cyberforce.site/lms/playercontents/16720/virus-types-and-terminology/playercontentcontainer/545/2854/14048",
"https://pctc.cyberforce.site/lms/playercontents/16721/virus-making-tools/playercontentcontainer/545/2854/14049",
"https://pctc.cyberforce.site/lms/playercontents/16722/famous-worms/playercontentcontainer/545/2854/14050",
"https://pctc.cyberforce.site/lms/playercontents/16723/trojan-terminology-and-techniques/playercontentcontainer/545/2854/14051",
"https://pctc.cyberforce.site/lms/playercontents/16724/trojans-and-backdoors/playercontentcontainer/545/2854/14052",
"https://pctc.cyberforce.site/lms/playercontents/16725/demo-shell-connections-via-netcat-and-backtrack/playercontentcontainer/545/2854/14053",
"https://pctc.cyberforce.site/lms/playercontents/16726/trojan-analysis/playercontentcontainer/545/2854/14054",
"https://pctc.cyberforce.site/lms/playercontents/16727/demo-trojans-and-rootkits/playercontentcontainer/545/2854/14055",
"https://pctc.cyberforce.site/lms/playercontents/16728/malware-countermeasures-and-tools/playercontentcontainer/545/2854/14056",
"https://pctc.cyberforce.site/lms/playercontents/16729/demo-strings-analysis/playercontentcontainer/545/2854/14057",
"https://pctc.cyberforce.site/lms/playercontents/16730/other-malicious-code-types/playercontentcontainer/545/2854/14058",
"https://pctc.cyberforce.site/lms/playercontents/16731/sniffers-terminology-and-overview/playercontentcontainer/545/2855/14059",
"https://pctc.cyberforce.site/lms/playercontents/16732/network-overview-for-sniffer-placement/playercontentcontainer/545/2855/14060",
"https://pctc.cyberforce.site/lms/playercontents/16733/basic-packet-analysis/playercontentcontainer/545/2855/14061",
"https://pctc.cyberforce.site/lms/playercontents/16734/demo-viewing-arp-packets-with-packet-builder/playercontentcontainer/545/2855/14062",
"https://pctc.cyberforce.site/lms/playercontents/16735/attacks-and-protocols-vulnerable-to-sniffing/playercontentcontainer/545/2855/14063",
"https://pctc.cyberforce.site/lms/playercontents/16736/spoofing-and-flooding-sniffing-attacks-/playercontentcontainer/545/2855/14064",
"https://pctc.cyberforce.site/lms/playercontents/16737/mitm-attacks-ports-vul-to-sniffing/playercontentcontainer/545/2855/14065",
"https://pctc.cyberforce.site/lms/playercontents/16738/wireshark-overview-and-examples/playercontentcontainer/545/2855/14066",
"https://pctc.cyberforce.site/lms/playercontents/16739/evasion-in-network-sniffing/playercontentcontainer/545/2855/14067",
"https://pctc.cyberforce.site/lms/playercontents/16740/sniffing-countermeasures-and-tools/playercontentcontainer/545/2855/14068",
"https://pctc.cyberforce.site/lms/playercontents/16741/demo-hping3/playercontentcontainer/545/2855/14069",
"https://pctc.cyberforce.site/lms/playercontents/16742/demo-wireshark/playercontentcontainer/545/2855/14070",
"https://pctc.cyberforce.site/lms/playercontents/16743/social-engineering-background-and-examples/playercontentcontainer/545/2856/14071",
"https://pctc.cyberforce.site/lms/playercontents/16744/human-based-social-engineering/playercontentcontainer/545/2856/14072",
"https://pctc.cyberforce.site/lms/playercontents/16745/additional-human-based-se/playercontentcontainer/545/2856/14073",
"https://pctc.cyberforce.site/lms/playercontents/16746/computer-based-social-engineering/playercontentcontainer/545/2856/14074",
"https://pctc.cyberforce.site/lms/playercontents/16747/computer-based-se--social-networking/playercontentcontainer/545/2856/14075",
"https://pctc.cyberforce.site/lms/playercontents/16748/mobile-based-social-engineering/playercontentcontainer/545/2856/14076",
"https://pctc.cyberforce.site/lms/playercontents/16749/se-and-identity-theft-countermeasures/playercontentcontainer/545/2856/14077",
"https://pctc.cyberforce.site/lms/playercontents/16750/demo-social-engineering-toolkit-demo/playercontentcontainer/545/2856/14078",
"https://pctc.cyberforce.site/lms/playercontents/16751/denial-of-service-part-1-of-2/playercontentcontainer/545/2857/14079",
"https://pctc.cyberforce.site/lms/playercontents/16752/denial-of-service-part-2-of-2/playercontentcontainer/545/2857/14080",
"https://pctc.cyberforce.site/lms/playercontents/16753/categories-of-denial-of-service/playercontentcontainer/545/2857/14081",
"https://pctc.cyberforce.site/lms/playercontents/16754/demo-hw-and-mobile-dos-options/playercontentcontainer/545/2857/14082",
"https://pctc.cyberforce.site/lms/playercontents/16755/buffer-overflow-terminology-and-background/playercontentcontainer/545/2857/14083",
"https://pctc.cyberforce.site/lms/playercontents/16756/demo-stack-overflow-testing-wil-ollydbg/playercontentcontainer/545/2857/14084",
"https://pctc.cyberforce.site/lms/playercontents/16757/session-hijacking-overview-and-examples/playercontentcontainer/545/2858/14085",
"https://pctc.cyberforce.site/lms/playercontents/16758/cross-site-scripting-and-other-session-attacks/playercontentcontainer/545/2858/14086",
"https://pctc.cyberforce.site/lms/playercontents/16759/session-hijacking-techniques/playercontentcontainer/545/2858/14087",
"https://pctc.cyberforce.site/lms/playercontents/16760/ipsec-and-session-hijacking/playercontentcontainer/545/2858/14088",
"https://pctc.cyberforce.site/lms/playercontents/16761/hacking-webservers-terminology-and-background/playercontentcontainer/545/2859/14089",
"https://pctc.cyberforce.site/lms/playercontents/16762/webserver-architecture/playercontentcontainer/545/2859/14090",
"https://pctc.cyberforce.site/lms/playercontents/16763/webserver-hacking-tools/playercontentcontainer/545/2859/14091",
"https://pctc.cyberforce.site/lms/playercontents/16764/web-server-attacks/playercontentcontainer/545/2859/14092",
"https://pctc.cyberforce.site/lms/playercontents/16765/owasp-top-10/playercontentcontainer/545/2859/14093",
"https://pctc.cyberforce.site/lms/playercontents/16766/webserver-hacking-countermeasures/playercontentcontainer/545/2859/14094",
"https://pctc.cyberforce.site/lms/playercontents/16767/sql-and-command-injection-web-app-hacking/playercontentcontainer/545/2860/14095",
"https://pctc.cyberforce.site/lms/playercontents/16768/non-sql-injection-errors/playercontentcontainer/545/2860/14096",
"https://pctc.cyberforce.site/lms/playercontents/16769/parameter-and-form-tampering-web-app-hacking/playercontentcontainer/545/2860/14097",
"https://pctc.cyberforce.site/lms/playercontents/16770/cross-site-scripting-and-obfuscation-web-app-hacks/playercontentcontainer/545/2860/14098",
"https://pctc.cyberforce.site/lms/playercontents/16771/cross-site-request-forgery-and-cookies/playercontentcontainer/545/2860/14099",
"https://pctc.cyberforce.site/lms/playercontents/16772/web-application-methodology/playercontentcontainer/545/2860/14100",
"https://pctc.cyberforce.site/lms/playercontents/16773/web-app-attack-tools-and-countermeasures/playercontentcontainer/545/2860/14101",
"https://pctc.cyberforce.site/lms/playercontents/16774/buffer-overflow-tools-and-countermeasures/playercontentcontainer/545/2860/14102",
"https://pctc.cyberforce.site/lms/playercontents/16775/demo-burpsuite/playercontentcontainer/545/2860/14103",
"https://pctc.cyberforce.site/lms/playercontents/16776/demo-xp-cmdshell-demo/playercontentcontainer/545/2861/14104",
"https://pctc.cyberforce.site/lms/playercontents/16777/sql-terminology-and-example-statements/playercontentcontainer/545/2861/14105",
"https://pctc.cyberforce.site/lms/playercontents/16778/sql-enumeration/playercontentcontainer/545/2861/14106",
"https://pctc.cyberforce.site/lms/playercontents/16779/sql-injection-attacks/playercontentcontainer/545/2861/14107",
"https://pctc.cyberforce.site/lms/playercontents/16780/sql-injection-tools-and-countermeasures/playercontentcontainer/545/2861/14108",
"https://pctc.cyberforce.site/lms/playercontents/16781/demo-sql-injection/playercontentcontainer/545/2861/14109",
"https://pctc.cyberforce.site/lms/playercontents/16782/wireless-terminology-and-standards/playercontentcontainer/545/2862/14110",
"https://pctc.cyberforce.site/lms/playercontents/16783/wireless-terminology-and-antennas/playercontentcontainer/545/2862/14111",
"https://pctc.cyberforce.site/lms/playercontents/16784/wireless-authentication/playercontentcontainer/545/2862/14112",
"https://pctc.cyberforce.site/lms/playercontents/16785/wireless-based-attacks/playercontentcontainer/545/2862/14113",
"https://pctc.cyberforce.site/lms/playercontents/16786/wireless-attack-methodology/playercontentcontainer/545/2862/14114",
"https://pctc.cyberforce.site/lms/playercontents/16787/wireless-attack-methodology-continued/playercontentcontainer/545/2862/14115",
"https://pctc.cyberforce.site/lms/playercontents/16788/wep-wpa-and-other-wireless-attacks/playercontentcontainer/545/2862/14116",
"https://pctc.cyberforce.site/lms/playercontents/16789/bluetooth-communication-basics/playercontentcontainer/545/2862/14117",
"https://pctc.cyberforce.site/lms/playercontents/16790/wireless-protocols-and-signal-modulation/playercontentcontainer/545/2862/14118",
"https://pctc.cyberforce.site/lms/playercontents/16791/demo-ssid-and-channels/playercontentcontainer/545/2862/14119",
"https://pctc.cyberforce.site/lms/playercontents/16792/demo-wifi-analyzer-using-mobile-device/playercontentcontainer/545/2862/14120",
"https://pctc.cyberforce.site/lms/playercontents/16793/wireless-hacking-tools-and-countermeasures/playercontentcontainer/545/2862/14121",
"https://pctc.cyberforce.site/lms/playercontents/16794/mobile-platform-overview/playercontentcontainer/545/2863/14122",
"https://pctc.cyberforce.site/lms/playercontents/16795/mobile-device-operating-systems/playercontentcontainer/545/2863/14123",
"https://pctc.cyberforce.site/lms/playercontents/16796/hacking-mobile-platforms/playercontentcontainer/545/2863/14124",
"https://pctc.cyberforce.site/lms/playercontents/16797/ids-overview-and-detection-methods/playercontentcontainer/545/2864/14125",
"https://pctc.cyberforce.site/lms/playercontents/16798/demo-published-snort-rules/playercontentcontainer/545/2864/14126",
"https://pctc.cyberforce.site/lms/playercontents/16799/firewalls-and-honeypots/playercontentcontainer/545/2864/14127",
"https://pctc.cyberforce.site/lms/playercontents/16800/firewall-configurations/playercontentcontainer/545/2864/14128",
"https://pctc.cyberforce.site/lms/playercontents/16801/signs-of-intrusions/playercontentcontainer/545/2864/14129",
"https://pctc.cyberforce.site/lms/playercontents/16802/evasion-techniques/playercontentcontainer/545/2864/14130",
"https://pctc.cyberforce.site/lms/playercontents/16803/ids-evasion-techniques/playercontentcontainer/545/2864/14131",
"https://pctc.cyberforce.site/lms/playercontents/16804/evasion-testing-techniques/playercontentcontainer/545/2864/14132",
"https://pctc.cyberforce.site/lms/playercontents/16805/demo-intrusion-signs/playercontentcontainer/545/2864/14133",
"https://pctc.cyberforce.site/lms/playercontents/16806/cryptography-background-and-terminology/playercontentcontainer/545/2865/14134",
"https://pctc.cyberforce.site/lms/playercontents/16807/crypto-keys-and-algorithms/playercontentcontainer/545/2865/14135",
"https://pctc.cyberforce.site/lms/playercontents/16808/sha-and-tls-algorithms/playercontentcontainer/545/2865/14136",
"https://pctc.cyberforce.site/lms/playercontents/16809/demo-hashing-with-md5-sum/playercontentcontainer/545/2865/14137",
"https://pctc.cyberforce.site/lms/playercontents/16810/crypto-keys-and-algorithms-continued/playercontentcontainer/545/2865/14138",
"https://pctc.cyberforce.site/lms/playercontents/16811/cryptography-implementations/playercontentcontainer/545/2865/14139",
"https://pctc.cyberforce.site/lms/playercontents/16812/public-key-infrastructure-pki/playercontentcontainer/545/2865/14140",
"https://pctc.cyberforce.site/lms/playercontents/16813/cryptanalysis-techniques/playercontentcontainer/545/2865/14141",
"https://pctc.cyberforce.site/lms/playercontents/16814/cryptanalysis-tools/playercontentcontainer/545/2865/14142",
"https://pctc.cyberforce.site/lms/playercontents/16815/cryptographic-attacks/playercontentcontainer/545/2865/14143",
"https://pctc.cyberforce.site/lms/playercontents/16816/steganography-tools/playercontentcontainer/545/2865/14144",
"https://pctc.cyberforce.site/lms/playercontents/16817/security-testing-and-assessments/playercontentcontainer/545/2866/14145",
"https://pctc.cyberforce.site/lms/playercontents/16818/penetration-testing-terminology/playercontentcontainer/545/2866/14146",
"https://pctc.cyberforce.site/lms/playercontents/16819/risk-management-and-penetration-testing/playercontentcontainer/545/2866/14147",
"https://pctc.cyberforce.site/lms/playercontents/16820/penn-testing-phases-and-methodology/playercontentcontainer/545/2866/14148",
"https://pctc.cyberforce.site/lms/playercontents/16821/penetration-testing-walkthrough/playercontentcontainer/545/2866/14149",
"https://pctc.cyberforce.site/lms/playercontents/16822/penetration-testing-tools/playercontentcontainer/545/2866/14150",
"https://pctc.cyberforce.site/lms/playercontents/16823/demo-exploits-with-armitage/playercontentcontainer/545/2866/14151",
"https://pctc.cyberforce.site/lms/playercontents/16824/demo-intro-to-armitage/playercontentcontainer/545/2866/14152",
"https://pctc.cyberforce.site/lms/playercontents/16825/demo-v3-runningexploitfrom-code/playercontentcontainer/545/2866/14153",
"https://pctc.cyberforce.site/lms/playercontents/16826/introduction-to-cloud-computing/playercontentcontainer/545/2867/14154",
"https://pctc.cyberforce.site/lms/playercontents/16827/cloud-security/playercontentcontainer/545/2867/14155",
"https://pctc.cyberforce.site/lms/playercontents/16828/cloud-architectures/playercontentcontainer/545/2867/14156",
"https://pctc.cyberforce.site/lms/playercontents/16829/cloud-testing-tools/playercontentcontainer/545/2867/14157",
"https://pctc.cyberforce.site/lms/playercontents/16830/cloud-threats-and-attacks/playercontentcontainer/545/2867/14158",
"https://pctc.cyberforce.site/lms/playercontents/16831/cehv9-prep-practice-exam/playercontentcontainer/545/2868/14159"
)

function Login-PCTC {


    Start-Process iexplore -ArgumentList https://pctc.cyberforce.site/lms/login


}

function Start-PCTC {

    param ($module)

    $cmd = {
        
        param($url)

        $ie = New-Object -ComObject internetexplorer.application 
        $ie.navigate($url)
        while ($ie.readystate -ne 4) {start-sleep -m 100}
        $ie.visible = $false

    }

    $i = 0
    $count = ($module).count
    $module | foreach {
        $i++
        Start-Job -ScriptBlock $cmd -ArgumentList $_ -Name $_ 
 	    Write-Progress -Activity "Creating threads" -percentcomplete ($i/$count * 100) -status "Waiting for threads to load"

    }

    while ((Get-Job -State Running).count -gt 0) {

	    [int]$completed = (Get-Job -state completed).count
	    [int]$total = (Get-Job).count
	    [int]$running = (Get-Job -state running).count
	    Write-Progress -Activity "FUCK PCTC" -percentcomplete ($completed/$total * 100) -status "Waiting for tasks to complete" -CurrentOperation "$total threads created - $running threads open"

        Start-Sleep -Seconds 3

    }



}

Function Menu{
cls

    function Menu-Execute {
              param (
                    [string]$Title = 'Choose an Option Below:'
              )
              cls
"
  ______ _    _  _____ _  __  _____   _____ _______ _____ 
 |  ____| |  | |/ ____| |/ / |  __ \ / ____|__   __/ ____|
 | |__  | |  | | |    | ' /  | |__) | |       | | | |     
 |  __| | |  | | |    |  <   |  ___/| |       | | | |     
 | |    | |__| | |____| . \  | |    | |____   | | | |____ 
 |_|     \____/ \_____|_|\_\ |_|     \_____|  |_|  \_____|
                                                          
"
          Write-Host "================ $Title ================="
          Write-Host ""
          Write-Host " 1: Introduction to Windows Scripting "
          Write-Host " 2: MDT Concepts Course"
          Write-Host " 3: MDT Introduction to Cyber Frameworks Course "
          Write-Host " 4: MDT ME3C(PC)² and PBED Course "
          Write-Host " 5: PBED - Plan, Brief, Execution, and Debrief "
          Write-Host " 6: MDT CVA/H 3.X Tools Course "
          Write-Host " 7: Cyber Security Investigations "
          Write-Host " 8: Windows Operating System Security "
          Write-Host " 9: Linux Operating System Security"
          Write-Host " 10: Analysis Pipeline "
          Write-Host " 11: Penetration Testing "
          Write-Host " 12: Introduction to Python Programming"
          Write-Host " 13: Certified Ethical Hacker v9 (CEHv9) Prep"
          Write-Host " 14: All"
          Write-Host ""
          Write-Host " Q: Press 'Q' to quit."
          Write-Host ""

                $input = Read-Host "Please make a selection"
                switch ($input)
                {
                    '1' {
                    
                    cls
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host " [*] Running scripts..."
                    Start-PCTC -module $module1                
                    write-host ""   
                    
              } '2' {
                    
                    cls
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host " [*] Running scripts..."
                    Start-PCTC -module $module2                
                    write-host ""   
                    
              } '3' {
                    
                    cls
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host " [*] Running scripts..."
                    Start-PCTC -module $module3              
                    write-host ""   
                    
              } '4' {
                    
                    cls
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host " [*] Running scripts..."
                    Start-PCTC -module $module4                
                    write-host ""   
                    
              } '5' {
                    
                    cls
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host " [*] Running scripts..."
                    Start-PCTC -module $module5                
                    write-host ""   
                    
              } '6' {
                    
                    cls
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host " [*] Running scripts..."
                    Start-PCTC -module $module6               
                    write-host ""   
                    
              } '7' {
                    
                    cls
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host " [*] Running scripts..."
                    Start-PCTC -module $module7                
                    write-host ""   
                    
              } '8' {
                    
                    cls
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host " [*] Running scripts..."
                    Start-PCTC -module $module8                
                    write-host ""   
                    
              } '9' {
                    
                    cls
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host " [*] Running scripts..."
                    Start-PCTC -module $module9                
                    write-host ""   
                    
              } '10' {
                    
                    cls
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host " [*] Running scripts..."
                    Start-PCTC -module $module10                
                    write-host ""   
                    
              } '11' {
                    
                    cls
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host " [*] Running scripts..."
                    Start-PCTC -module $module11                
                    write-host ""   
                    
              } '12' {
                    
                    cls
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host " [*] Running scripts..."
                    Start-PCTC -module $module12                
                    write-host ""   
                    
              } '13' {
                    
                    cls
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host " [*] Running scripts..."
                    Start-PCTC -module $module13                
                    write-host ""   
                    
              } '14' {
                    
                    cls
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host ""
                    Write-Host " [*] Running scripts..."
                    Start-PCTC -module $all                
                    write-host ""   
                    
              } 'q' {return}
                }
          
         

    }

   
    Function Show-Menu {
          
          param (
                [string]$Title = 'Choose an Option Below:'
          )
          cls




"
  ______ _    _  _____ _  __  _____   _____ _______ _____ 
 |  ____| |  | |/ ____| |/ / |  __ \ / ____|__   __/ ____|
 | |__  | |  | | |    | ' /  | |__) | |       | | | |     
 |  __| | |  | | |    |  <   |  ___/| |       | | | |     
 | |    | |__| | |____| . \  | |    | |____   | | | |____ 
 |_|     \____/ \_____|_|\_\ |_|     \_____|  |_|  \_____|
                                                          
"
          Write-Host "================ $Title ================="
          Write-Host ""
          Write-Host " 1: Help"
          Write-Host " 2: Login into PCTC"
          Write-Host " 3: Execute"
          Write-Host " Q: Press 'Q' to quit."

     }

    Do {
            cls
            Show-Menu
            Write-Host ""
            $input = Read-Host "Please make a selection"
            switch ($input)
            {
                '1' {

                        cls
                        ""
                        "================ FUCK PCTC ================="
                        Write-Host 
                        
"
FUCK PCTC is used to complete the PCTC course. A running PCTC session is required.

Step 1: Login into PCTC and leave the windows open

Step 2: Execute script


Created by @dirty_dask

"
                    
                    
                } '2' {

                    cls

                    Write-Host ""
                    Write-Host ""
                    Write-Host " [*] Opening PCTC Login page..."
                    Write-Host ""
                    Write-Host " [*] Please wait..."
                    Login-PCTC
                    write-host ""
                 
                        

                } '3' {
                 
                    cls
                    Menu-Execute

                } 'q' {return}
            }

            
            pause
            cls
    }
    Until ($input -eq 'q')
        
        
        
    

         
 }
 

 Menu