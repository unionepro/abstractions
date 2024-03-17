{{
    config(
        schema = 'tokens_celo',
        alias = 'erc20',
        tags = ['static'],
        materialized = 'table'
    )
}}

SELECT
        contract_address as contract_address
        , trim(symbol) as symbol
        , decimals
FROM (VALUES
        (0x471ece3750da237f93b8e339c536989b8978a438, 'CELO', 18),
        (0x765de816845861e75a25fca122bb6898b8b1282a, 'cUSD', 18),
        (0xd8763cba276a3738e6de85b4b3bf5fded6d6ca73, 'cEUR', 18),
        (0xe8537a3d056DA446677B9E9d6c5dB704EaAb4787, 'cREAL', 18),
        (0xEB466342C4d449BC9f53A865D5Cb90586f405215, 'axlUSDC', 6),
        (0x061cc5a2C863E0C1Cb404006D559dB18A34C762d, 'axlEUROC', 6),
        (0x1a35EE4640b0A3B87705B0A4B45D227Ba60Ca2ad, 'axlWBTC', 8),
        (0xb829b68f57CC546dA7E5806A929e53bE32a4625D, 'axlETH', 18),
        (0x88DfaAABaf06f3a41D2606EA98BC8edA109AbeBb, 'axlWMAI', 18),
        (0x5E2Cf56A562b1bDD32ec26315063074ADC420C73, 'axlFIL', 18),
        (0x66803fb87abd4aac3cbb3fad7c3aa01f6f3fb207, 'WETH', 18), -- Wrapped Ether (Wormhole)
        (0xd71Ffd0940c920786eC4DbB5A12306669b5b81EF, 'WBTC', 8),
        (0x02De4766C272abc10Bc88c220D214A26960a7e92, 'NCT', 18),
        (0x0CcB0071e8B8B716A2a5998aB4d97b83790873Fe, 'BCT', 18),
        (0x7D3FE34Be22e646411E20e06a65d665ff8b508c1, 'WHL', 18),
        (0x00be915b9dcf56a3cbe739d9b9c202ca692409ec, 'UBE', 18),
        (0x17700282592d6917f6a73d0bf8accf4d578c131e, 'MOO', 18),
        (0x20677d4f3d0f08e735ab512393524a3cfceb250c, 'ARI', 18),
        (0x2a3684e9dc20b857375ea04235f2f7edbe818fa7, 'USDC', 6),
        (0x4510104cf2cc3be071f171be7c47b8d6beaba234, 'CCAT', 18),
        (0x46c9757c5497c5b1f2eb73ae79b6b67d119b0b58, 'PACT', 18),
        (0x49b8990f14c0b85f528d798fc618b97bc3299c35, 'cDOGEx', 9),
        (0x5927fd244e11db1c7b1215619144d2aabac80a4f, 'cLA', 18),
        (0x635aec36c4b61bac5eb1c3eee191147d006f8a21, 'MobLP', 18),
        (0x7037f7296b2fc7908de7b57a89efaa8319f0c500, 'mCELO', 18),
        (0x73a210637f6f6b7005512677ba6b3c96bb4aa44b, 'MOBI', 18),
        (0x74c0c58b99b68cf16a717279ac2d056a34ba2bfe, 'SOURCE', 18),
        (0x7d00cd74ff385c955ea3d79e47bf06bd7386387d, 'mCELO', 18),
        (0x8d68062c179d2ca080c7bc3b04ab89442129daff, 'L99', 18),
        (0xa81d9a2d29373777e4082d588958678a6df5645c, 'KNX', 18),
        (0xbe50a3013a1c94768a1abb78c3cb79ab28fc1ace, 'WBTC', 8),
        (0xc16b81af351ba9e64c1a069e3ab18c244a1e3049, 'agEUR', 18),
        (0xc7a4c6ef4a16dc24634cc2a951ba5fec4398f7e0, 'MobLP', 18),
        (0xc8acba0068b0f80f5176b6e14b9c7d1af9b0f9a2, 'mooSushicUSD-USDC', 18),
        (0xe685d21b7b0fc7a248a6a8e03b8db22d013aa2ee, 'IMMO', 9),
        (0xed6961928066d3238134933ee9cdd510ff157a6e, 'cDOGE', 18),
        (0xef4229c8c3250c675f21bcefa42f58efbff6002a, 'USDC', 6),
        (0xf3608f846ca73147f08fde8d57f45e27ceea4d61, 'cMETA', 18),
        (0x123ED050805E0998EBEf43671327139224218e50, 'NTMX', 18),
        (0x2879BFD5e7c4EF331384E908aaA3Bd3014b703fA, 'sCELO', 18),
        (0x452EF5a4bD00796e62E5e5758548e0dA6e8CCDF3, 'cStar', 18),
        (0x2DEf4285787d58a2f811AF24755A8150622f4361, 'cETH', 18),
        (0x1C552a9ec7FB11D63BEfaf08b28dca0922C4104a, 'ULP', 18),
        (0x6626da55d43425A4EC1067b091Cf87a7EFBDAD6b, 'ULP', 18),
        (0xf5b1BC6C9c180b64F5711567b1d6a51A350f8422, 'ULP', 18),
        (0xb87080110c4F2E3025138F6dAaB5928de7900E1a, 'LAPIS', 18),
        (0x1a8Dbe5958c597a744Ba51763AbEBD3355996c3e, 'rCELO', 18),
        (0x22401536505dd5d85F7d57f8B37172feDa8f499d, 'CSHIBA', 9),
        (0xD90BBdf5904cb7d275c41f897495109B9A5adA58, 'CDOGE', 9),
        (0xBa647Ff9B1032cA3aA7F7Cc9e33D55785f49CD8e, 'LAPIS', 8),
        (0xBd601dCAbCaA7BFCdea35B4062684c1Ec605fcAa, 'CHI', 18),
        (0x18414Ce6dAece0365f935F3e78A7C1993e77d8Cd, 'LAPIS', 18),
        (0x5Ed248077bD07eE9B530f7C40BE0c1dAE4c131C0, 'rUBE', 18),
        (0xa8E0a0226DBC6B5e462d576E919f8d64d2947222, 'ULP', 18),
        (0x1E593F1FE7B61c53874B54EC0c59FD0d5eb8621e, 'ULP', 18),
        (0xD629eb00dEced2a080B7EC630eF6aC117e614f1b, 'BTC', 18),
        (0x00400FcbF0816bebB94654259de7273f4A05c762, 'POOF', 18),
        (0x695218A22c805Bab9C6941546CF5395F169Ad871, 'rPOOF', 18),
        (0x03943C3ef00d92e130185CeBC0bcc435Def2cC94, 'FM', 18),
        (0x8834ECD9c86e0712DC763796791D43365F6f55a8, 'MINION', 18),
        (0x18885CC1733EBF923D400F2d66DD28a5187856d5, 'cAKITA', 18),
        (0xd1725ef082cCDA9d99FBA47B05C045989b817441, 'TMG', 18),
        (0xD566269EFfd2d3a5e4C8FA93c976cab5Fa99Eb78, 'Cave', 8),
        (0xDB452CC669D3Ae454226AbF232Fe211bAfF2a1F9, 'celoDUCO', 18),
        (0x93DB49bE12B864019dA9Cb147ba75cDC0506190e, 'cUSDC', 18),
        (0x32A9FE697a32135BFd313a6Ac28792DaE4D9979d, 'cMCO2', 18),
        (0x1345eB2c36A9d6bA912f08A0303967a9FD1e2245, 'MINION', 18),
        (0x6619c56302e3eA787fcd31A7e6DadEc796da0381, 'UbeC', 9),
        (0xbDd31EFfb9E9f7509fEaAc5B4091b31645A47e4b, 'TFBX', 18),
        (0x4D7bC7472b78EbFD76670c516D098aFB030B8296, 'cShibaNinja', 18),
        (0x9a81E75F00C0491A3d85Ca076804C1A0c88B42B4, 'wmcUSD', 18),
        (0x48F6A413be4100Cd2038ea4BA1b361Ec865eBE15, 'cShibaFarm', 18),
        (0x3F9219C96F8C613900620f8a02E4FA684D0F52e4, 'CHEESE', 18),
        (0x7248657F0f77BdE82DCE549e2FC9A2A671b50c64, 'Myss', 18),
        (0x59764477A9809E6cC521AdE5ec4b39a5D3fb4796, 'MyK', 18),
        (0xD61D342c95B4EE641380631508cc3b58046748a4, 'BabyCelo', 9),
        (0x5c42279Bff45790b427F0cFE6d1c628F7aE03e90, 'BabyCelo', 9),
        (0x20656108f51b30688b3A84ef3e3F776f825CB0e2, 'BabyCelo', 9),
        (0xB4D0E4Aa5d953823Ed4286347630d8AA3c353105, 'HAREM', 18),
        (0x8B156e10dF6Ee8Fd4030945EDCca6DB475A12152, 'WANNA', 18),
        (0x5920cb256F3A04acDeFcc69e58c521F4aF251632, 'cIRON', 18),
        (0x4F2F84A93Cb1daE69e18867fcF38902001d3A112, 'GUPPY', 18),
        (0xdD947983A29A297C29E44d02e854351904D1Cf99, 'ULP', 18),
        (0x7cdC85bE7A6a71fe58943Af22b68c7136f6642DB, 'CORIS', 18),
        (0xc7cF849496E24e3fBc0864c7E76b5369164cB0d6, 'WANNA', 18),
        (0xe3305d2c398B6AD1f2228621154a3Daf2a47f478, 'wmCELO', 18),
        (0xC21984be83Af1e000ab04f63b61E0866Cb01e686, 'wmcUSD', 18),
        (0x99319f8d95110fb26171B98fE24Af088f981c650, 'wmcEUR', 18),
        (0x6c2457fdbCb6992659f28E1CbBF08EF9258F7f00, 'pCELO', 18),
        (0x691e6877271675eaf372a9dBcDf4b39eb8c06d69, 'pUSD', 18),
        (0x7015A9e168a2Dc8Ef2afdABb7dD3b47F8E83d07A, 'pCELO', 18),
        (0xba13bD87671fA4Ff861D1dE16F751784027be09b, 'pUSD', 18),
        (0xb789eB26B60585D91BafD8927189cc17b820D3C2, 'pEUR', 18),
        (0x0DbD6958DBC84382ec3Dfdcc4FE068D3D7f3bF80, 'SFM', 18),
        (0x888dEea85f486eaeFe3c84575045b5107b90DA25, 'SNR', 18),
        (0xfCc6CeDf0559064D8E24014cc2151170657363a2, 'SNRW', 18),
        (0xE61c6A2df08269918448BAD6cb93F9EA59474eFd, 'WETH', 18),
        (0x26C17F72DEa13200F562E0438F718cF9e103D316, 'ALIENO', 18),
        (0xe2739BF64D6ad3a5a43B0f10baF5081A9dbEF9B1, 'EGG', 18),
        (0x8C09Af664a2f1eC92A86c797f0fFcc471E25c84a, 'supraCELO-wETH_Sushiswap', 18),
        (0xace33022dC4870bD65F18112d2a3CAf413642087, 'supraMOO-mCELO_UbeSwap', 18),
        (0x66b8E9091B8B31D13BE872b22b52b9c8B9D2eF92, 'supracUSD/DAI_SushiSwap', 18),
        (0x4A2b0596c01e0C93eEADD4735bFDb73D1CB99dc4, 'BTCDT', 18),
        (0xB4aa2986622249B1F45eb93F28Cfca2b2606d809, 'pUSD', 18),
        (0xE74AbF23E1Fdf7ACbec2F3a30a772eF77f1601E1, 'pCELO', 18),
        (0x56072D4832642dB29225dA12d6Fd1290E4744682, 'pEUR', 18),
        (0x5b46A20284366F5e79D9B3e5e2FA0F5702b8C72F, 'wmcUSD', 18),
        (0xd3D7831D502Ab85319E1F0A18109aa9aBEBC2603, 'wmCELO', 18),
        (0xb7e4e9329DA677969376cc76e87938563B07Ac6A, 'wmcEUR', 18),
        (0xd954C4c006189d967507b8ba758605364eB660D2, 'LAPIS', 18),
        (0x3db648A8173abAf27a5705c079a0bF951ff28432, 'OBS', 18),
        (0x0631DD22cd83508f50ea11e1CAE82801Bb9904aC, 'CELL', 18),
        (0xa5aaE3a55cA356C62b5425AA4bFC212542B17777, 'mooSushicEUR-WETH', 18),
        (0xA338D34c5de06B88197609956a2dEAAfF7Af46c8, 'mooSushicUSD-cEUR', 18),
        (0x8a198BCbF313A5565c64A7Ed61FaA413eB4E0931, 'mooSushiCELO-WETH', 18),
        (0x7f6fE34C51d5352A0CF375C0Fbe03bD19eCD8460, 'mooSushicUSD-DAI', 18),
        (0x82244CeA637b2fc499809be656f279F5a8d31cCc, 'cLA', 18),
        (0x0996D52FF86d5ae703bFcb5A808224944230d114, 'Smol', 18),
        (0x696aEEaA0D7C039D1C2FD410bceae391C739186C, 'SYRUP', 18),
        (0xC1CBe5aB272056166f0f1D26f091958a8Cc92F69, 'cLA', 18),
        (0xf6fD90FE8f057a63F0368B0B551D5e52C7Ae821F, 'mooSushicUSD-WETH', 18),
        (0xAd59C75Eb9568E699dFC71D530E27F8D12e135ca, 'cXOF', 8),
        (0x4622E9F21F56D5E07467B131d4DFfdfd3bcb4997, 'Nano', 18),
        (0x961cbbAA52077dD3Aa09bb0503CD27740236dFCC, 'TEO', 18),
        (0x146ae897Cc7f32B35839d6fEc7fC9e2694817ffa, 'WTC', 18),
        (0x94140c2eA9D208D8476cA4E3045254169791C59e, 'PREMIO', 18),
        (0xef5b13D633fFEda2E05c1D1C398D8d185D3e03E8, 'supraUBE', 18),
        (0x9ef8756633414f648ba8597C3FcD5f02b45DcCA2, 'stabUSD', 18),
        (0x7047E61F3Aa4A1312252dD61a292143abC67F78f, 'mobVAULT', 18),
        (0x0a60c25Ef6021fC3B479914E6bcA7C03c18A97f1, 'stabilUSD', 18),
        (0xe6CbF90a7a33eddC9e27eD2bb383B7baA93cC7Dc, 'STABIL', 18),
        (0xf68C61E3c2f9C48E53391E1FCd2db1f19998151b, 'mooCeloBIFI', 18),
        (0xF66Abb0d63C60D39FA9E6E9c20ABE0F7635E4D94, 'SNT', 18),
        (0xf79a3881713BFA9Fe080Ef6f2D7579Fd595F4f76, 'NOTHING', 18),
        (0x3Cb66518424c91602dd0250c160BBe9ffC1Ea0e3, 'StarToken', 18),
        (0x2C9F82812D44C3f996d56FB3cc8AAd72b95576cF, 'ALPHABETA', 18),
        (0xFdD41e07BD7d3fb920810a407cACe43B0653c721, 'ABLP', 18),
        (0x7cFF0c64f92F125e10557339b15Cf11833B29328, 'mobVAULT', 18),
        (0x4195bD7afC2ceCABdF2949f7CBD8E204F44045d7, 'mooVAULT', 18),
        (0x2999B189A6b06081c58bC4dA898C38089C4ad13A, 'WETH', 18),
        (0xFcBE2a5Bc6F0F2Cb1599f47543e35D67ccE98265, 'cLA', 18),
        (0xd30255D23196B7782524FCC7Fd2A6B2f474da21E, 'cLA', 18),
        (0xd5Ffb242bedcdfD2930465dB073F8e712e25De72, 'cLA', 18),
        (0x3BF4F92c07907f14793Af6C966ea6E55bf272dA1, 'cLA', 18),
        (0xaAAaaAaaA12c8d5501D3AEfd29C1969a3270DD38, 'ACS', 18),
        (0x44CD920344A04d707d2b994Ae66A5E1f284a0cE5, 'CSVR', 18),
        (0x9ebaF6e1Edd4cC6D86Ec621Ace0E312061660eC7, 'GST2', 2),
        (0x62A25e867f7853B362BBDA8c0F400466A8063880, 'CHI', 0),
        (0x38D1e20B0039bFBEEf4096be00175227F8939E51, 'USDC.c', 6),
        (0x7036f519EC6EFf4414b26c53283F6Be6650C263e, 'acSolCelo', 18),
        (0x4a87da7666F4997d8b2F581787cb2C4DC470E5DB, 'acAvaxMcusd', 18),
        (0x17E492233288fd6b2e1c34fe3Fc830292e211f34, 'acCeloKnx', 18),
        (0x5e9A629C8C2C444145CB83BC556d79F1d6bf2538, 'acSrcMcusd', 18),
        (0x0ea231fc89A7D3D5Bf75e3ac423FD340EC155c7c, 'acSrcMcusd', 18),
        (0xBb376142614442846dAbEe6Db6A178beEEbA6873, 'acMOOmCELO', 18),
        (0xEadf4A7168A82D30Ba0619e64d5BCf5B30B45226, 'pUSD', 18),
        (0x48421FF1c6B93988138130865C4B7Cce10358271, 'openUSDC', 6),
        (0x1FBD282fdcF0C6FA9c77Eb61f95535dE3CCB8B78, 'openWETH', 18),
        (0x80666229E78165BFCbB7690DE4f3de50b9105a0A, 'acmCusdWbtc', 18),
        (0x221702dc6913F203780BEF4186AbE88e43a3Bd9D, 'acPactCelo', 18),
        (0xBc99E5DF9C583F0721A54bA9deB89d3775e33218, 'acAriCelo', 18),
        (0x84356B8Ad1692b1ec725d95D1faE18e253EE62D8, 'FORS', 18),
        (0xf3de7C25880b30ad406320d4648096E6AEee226c, 'T-TCL', 18),
        (0x107035446FeE56c31e6C02BC0d6982A22CCBD146, 'cLA', 18),
        (0xF9b0B7c36B6d20c4EDE79704548273C23464a264, 'cLA', 18),
        (0x301a61D01A63c8D670c2B8a43f37d12eF181F997, 'pCELO', 18),
        (0xD8761DD6c7cB54febD33adD699F5E4440b62E01B, 'pEUR', 18),
        (0x75BB7366014EfBdFAD02067F8029Bf76d79a26af, 'cLA', 18),
        (0x64e570Df5a748E7fAD3B251b2e6B2248A2928184, 'DAI', 18),
        (0xCb4A7569a61300C50Cf80A2be16329AD9F5F8F9e, 'PEOPLE', 18),
        (0xc1eE7C595c45193d6b22d672a8637Fd72d1Fe4D5, 'wsIMMO', 18),
        (0xF71c475F566273CC549f597872c6432642D96deF, 'sIMMO', 9),
        (0x30EBAa15830a4c52F741029b204f612cf9612ec8, 'DAI', 18),
        (0x459277127535efe9eB6c387f66432Fbd615617F2, 'pIMMO', 18),
        (0xc63C3243601E038286a82c0f97F47BF20f2f1b82, 'cMETA', 18),
        (0x5261780fc6e0AE1FfCe37682044371932c2e8E97, 'mooSushiCELO-WETHv2', 18),
        (0x6ad6c1f5c2Fb80e1240D7B8242496B3A4e021c68, 'mooSushicUSD-cEURv2', 18),
        (0x8F2894459026CaE358C4613eD6779e515f1F514e, 'mooSushicUSD-WETHv2', 18),
        (0xCA99D0cfc8b4f9881bdAB084542d58BF24Dd7657, 'acCUSDUSDC', 18),
        (0x305dbFD4e55C35c16aFdC5D8c470DaB195FA54C7, 'NRG', 18),
        (0x821D47D9183B99d0CF2b9e23179bAB40e1a76B98, 'acStabliCelo', 18),
        (0xe7a81f866F5957C22c2E058a949e8A64C0409913, 'STR', 18),
        (0x6e512BFC33be36F2666754E996ff103AD1680Cc9, 'ABR', 18),
        (0xBBF52efE321E6DABe73A533028806dcC1a76602D, 'pitax', 18),
        (0x2eCEC7afD95AD402c69a4EA5AFeE49695e1e80a4, 'acmcUSDmcEUR', 18),
        (0x0956525490C753fe8134BC64873374167D0f3923, 'vNOM', 18),
        (0x24805F9EB91aC4e46C939782907E153e7ac2AAb0, 'ORALP', 18),
        (0x50359e800aCde1D93BB673E235Bafb86D0846c14, 'ORANGE', 18),
        (0xafb01F7fdd2E5534Aa171126AaE1aeF17A3BBAEC, 'ORALP', 18),
        (0xF5Be782d75D9dB30D7F03DdC092Dd4505D06eDe0, 'SushicUSD-USDC', 18),
        (0xf1E0Cd564A51cE5902b0787C817F38B58E8B7D27, 'DAI', 18),
        (0x37A8b016EF27fBCF73F73Fb9Dc1C09C47A5d7E48, 'mooSushiWETH-USDT', 18),
        (0xecCb80E860561Ca9Ffb183A557F32CC90B05d3c3, 'mooSushiCELO-MOBI', 18),
        (0xbA79aC22fA300961A89547955d1363d7896B497d, 'mooSushiWETH-DAIv2', 18),
        (0x02401c0b1a044e56B78Af502b29b656646a14E35, 'SushicUSD-USDC', 18),
        (0x6aA94886967405Ad0956189De8e8cbbaA27fB27b, 'PXL', 0),
        (0x19A949BbFb661a6Ed92195AF73C69C1e0CbC8Ab5, 'PXL', 0),
        (0x252f03EEf977fa0900B9EE0D100064972d528472, 'SushicUSD-USDC', 18),
        (0x9aB7Cd67dDb8e56a53bd76622448149F01b7CD20, 'ORALP', 18),
        (0xc2F6fFB34352Ce559b3C1B3706c56bd325f6e453, 'PXL', 0),
        (0x30293839E2bB5aDE1719977fa5b6EE62aA413DB2, 'cDOGEx', 9),
        (0x2e031Fd9930b6aa96e8aC7ad528459817c96Ed70, 'RFP', 18),
        (0x542F6F3aB2a18a7831aac734d280374AA86f3596, 'wmcREAL', 18),
        (0x71D69A62d652dD8a8BF62897Ef7aA2e36871ad84, 'AGRI', 18),
        (0x39eCEF094be9526ab46FeA3F0f92581A8295ED8B, 'AS', 9),
        (0xCB34fbfC3b9a73bc04D2eb43B62532c7918d9E81, 'RFP', 18),
        (0x266C13DeD5A1d636E502fd56B3F76d38c3107EC2, 'kUSD', 18),
        (0x5d3be0Ef8F83d2Df0782a89BDCd28978eD4dD13F, 'ULP', 18),
        (0xe7B5AD135fa22678F426A381C7748f6A5f2c9E6C, 'ULP', 18),
        (0x806e181798465edF56C66E29e2df01CAF4013f76, 'ULP', 18),
        (0xb460F9Ae1fEa4f77107146C1960bb1C978118816, 'ULP', 18),
        (0x9a23A61A8988fAA730A1Af09EaD45a993d7f5f3C, 'ULP', 18),
        (0x9c895B5edb4a07CDF16cD0e62356E757F4C11C52, 'ULP', 18),
        (0xC2Fd7BD1C2A86b57F8dA0837D32AA9ca86Cc1d6b, 'ULP', 18),
        (0x0B81CF47C8F97275d14C006E537D5101b6C87300, 'ULP', 18),
        (0x65596e0f281b0CBcba0aA261982690E9BCBa7247, 'ULP', 18),
        (0xe852915873ce5Cb61DF6478Bc5D6BAe1ec9190c3, 'ULP', 18),
        (0x684dA04524b1A6BAF99566D722DE94CE989Ea722, 'ULP', 18),
        (0x063A34237BB7E4F130dcfdaD6e94C32825649975, 'ULP', 18),
        (0xA303752e36a9D134b971a5C43f8B1d700707BE60, 'ULP', 18),
        (0x69d5646e63C7cE63171F76EBA89348b52c1D552c, 'ULP', 18),
        (0x7d63809EBF83EF54c7CE8dEd3591D4E8Fc2102eE, 'ULP', 18),
        (0x27616d3DBa43f55279726c422daf644bc60128a8, 'ULP', 18),
        (0x9f437509E61896738ea8CDb6cDeD618C0e509032, 'ULP', 18),
        (0x3dBE84b0445e2862D883c885e47bf618A8dB44a7, 'ULP', 18),
        (0x7b510325aeA6F3FFF1cc004c66b01409e7A093Ac, 'ULP', 18),
        (0xe81E989Deea15646c9305053B6aDBE13b1446D71, 'ULP', 18),
        (0xF97E6168283e38FC42725082FC63b47B6cD16B18, 'ULP', 18),
        (0xE081E2FD9B2e1ae939239b601946564aDC9E7541, 'ULP', 18),
        (0xaE9A62F50171B3E1C4b3345D3638764Ecf1A78a6, 'ULP', 18),
        (0xF94fEA0C87D2b357DC72b743b45A8cB682b0716E, 'ULP', 18),
        (0x39AC98447f28612D3583e46E57cb106337FCAe3F, 'ULP', 18),
        (0xf69E376126F5EAD7aBFA5A4A0351C18fEfff8b94, 'ULP', 18),
        (0xC0864bec4E878371D2BfB1E92928e30A2FE91cF1, 'ULP', 18),
        (0x999F2de619464FCE1A1085f902836aA52c09dBd7, 'ULP', 18),
        (0x2004d4b6edeA896433B9614031caeC7412440862, 'ULP', 18),
        (0x9272388FDf2D6bFbA8b1Cdd99732A3D552a71346, 'ULP', 18),
        (0x19a75250c5A3ab22a8662e55a2B90FF9d3334B00, 'ULP', 18),
        (0x01522C42cA43D7BfD34f373d41AD7d90a95E714C, 'ULP', 18),
        (0x573bcEBD09Ff805eD32df2cb1A968418DC74DCf7, 'ULP', 18),
        (0xa813Bb1DF70128d629F1A41830578fA616dAEeEc, 'ULP', 18),
        (0x58FfF7110e39c733fD37742b8850f9205fBC351B, 'ULP', 18),
        (0x0c672CF5131eB81D1b141A0C1c9631e751E3c608, 'ULP', 18),
        (0x9f3574DAe1AeFfD65ef739e9F50e2B9dd8831056, 'ULP', 18),
        (0xb41Aae43E6ac45C8e6CE7cbB4979329E2E73eD8F, 'ULP', 18),
        (0x0fa312Bbc0038d2a680A7922CCee0298D11D023C, 'ULP', 18),
        (0x148C4ce0019a2e53f63DF50a6D9E9C09c5969629, 'ULP', 18),
        (0x63bfA7dBe921b4aA19d30692540959E2D5086773, 'ULP', 18),
        (0x0931738d2C2998173058B635524e437172a6a96C, 'ULP', 18),
        (0x5ef55c5bBF1a927bA0fEc614210832E1869a42F4, 'ULP', 18),
        (0x427c95a1379182121791cc415125acD73ea02e97, 'ULP', 18),
        (0x12E42ccf14B283Ef0a36A791892D18BF75Da5c80, 'ULP', 18),
        (0x4857E2F4e0b68bD31149f3f44CE0d883B7c4E440, 'ULP', 18),
        (0x736fC67F144e208381b85Dd0898fA1a6677bc437, 'ULP', 18),
        (0xd76eee106e10dcbF8b24D319e785a211D29BB8B1, 'ULP', 18),
        (0x59b22100751b7fda0c88201FB7a0eAf6fC30BCc7, 'ULP', 18),
        (0x1265bb3e69968A14fF7c4d8204b17c6B79A7FF52, 'ULP', 18),
        (0x2e6F82359d24598F0143B5Cc8edaa1D32be0d75d, 'ULP', 18),
        (0x6F3324B3E3C4d8b0106c42BedDC8BBD23c1bDaB7, 'ULP', 18),
        (0x0400cbCD2Bf5835949be4b4A74a37c73254345fa, 'ULP', 18),
        (0xe37EFCD3188cb9b6801009466aED2Dc9BBa19C0F, 'ULP', 18),
        (0xFf58607B98b986ff06D4C5a5E77e9881E610DD8c, 'ULP', 18),
        (0x8bDF901f22C100d5f13eCd00709a48919DD28015, 'ULP', 18),
        (0x9566991B6246Cf98df184272b97a1a40a93722De, 'ULP', 18),
        (0xd56FB0A18f7b0077d76d148e567f311Ad7935E9f, 'ULP', 18),
        (0x15292280Dd7fa91D4460e26fAfB5F6dD457C5A5D, 'ULP', 18),
        (0x1Eb738eC1D46c9BEfE95e830E19d0f537619F2D7, 'ULP', 18),
        (0xb5108b01280f994e67dc8BC3cd1E2433FA3A1B41, 'ULP', 18),
        (0x911923b25c6Ca2B916da8005F0554B365d7dDf33, 'ULP', 18),
        (0xCD1D049abdff6d1781d419cA7A897C389F2440E5, 'ULP', 18),
        (0xB715157F6C16Dd6523973c944F79aE4173DfebFe, 'ULP', 18),
        (0x83CF02F79Be87A7402A3Cac013d0e1C95FeFcAba, 'ULP', 18),
        (0x993B0d1A2C7EFF889F7e4dDC9a03b5085A2D1f27, 'ULP', 18),
        (0xFfe7989Aeb05f41D4579Ec267015F17dE66b08f7, 'ULP', 18),
        (0xc67d2557aDAdCbA1FCaa546DB146001e7624e5d3, 'ULP', 18),
        (0x832e6f1499fFC4512a316A6457BE8C2d7bBC102A, 'ULP', 18),
        (0xaA2cD92f13c5bA72291b3fDa9D0D860Aa48A514a, 'ULP', 18),
        (0x218AEd024d51EcBd6a82D143be04Cd25d563628e, 'ULP', 18),
        (0xf35E9cA7AD819A748F678C6Bd23A4987287C713C, 'ULP', 18),
        (0x25938830FBd7619bf6CFcFDf5C37A22AB15A93cA, 'ULP', 18),
        (0x59995cFa8713857C56404ad5a2C1B4e5881E976D, 'ULP', 18),
        (0x55222A2A85f0C2A41Ff51133ac150836ce802A45, 'ULP', 18),
        (0x86068E566dB5c30668F3AE03d9C1700D0B39c641, 'ULP', 18),
        (0xF105Df1aCdd02C10818C1F61DE64D0b65d161F5B, 'ULP', 18),
        (0xB18F5187cFDAcF1EDaF4f7B4E144a7867AaEcF04, 'ULP', 18),
        (0x8c774d1E374c08BbDBD5515cd6B063d0e5Cc110A, 'ULP', 18),
        (0xB08D69f18a94e08534Ffd3A6D06372B1823dFc47, 'ULP', 18),
        (0x583090d9f05f2Fac2D9B5A9960C8F27F68823E86, 'ULP', 18),
        (0xdE609bDAB5136D415FcAefD06c93E83CcB0a6D82, 'ULP', 18),
        (0x4550aa33f162A2887e40673Da1Bc8c23113Ce1F7, 'ULP', 18),
        (0xda36A59Ea2D8e5A4dE21Fb153b8dEd5a62BAd9D1, 'ULP', 18),
        (0xcc625BAa27335eA9537B2caD61246c586D0d635A, 'ULP', 18),
        (0xa6CF9D689C7a401F53943b5C23266EeE8812FCb5, 'ULP', 18),
        (0xEF921D5C41C53507886774e558A4B8ad6f3b0451, 'ULP', 18),
        (0x8C89f7bB791d94E10EEd4Eb78D0E886C82D7A2e3, 'ULP', 18),
        (0x17d524836916d1845F611287131990A42DB36400, 'ULP', 18),
        (0x35a3353546C258D94285dd5445d5Cc40ff49195a, 'ULP', 18),
        (0x70fc1242b727b11c7aAD8088aC2d1d0c959e6023, 'ULP', 18),
        (0xEa6fE86DdF41B0b75816BB69dc6a9e40Bc0D79F2, 'ULP', 18),
        (0x797139C73AF13396Db933238432452cd4035Fd9A, 'ULP', 18),
        (0x2BB94C21204589599D0905E9b3D05970D5f555CA, 'ULP', 18),
        (0x3fc81d6D7Fa2b2a58a6B399867E917510C927723, 'ULP', 18),
        (0xE225Bd7D8a1E55764A5Ee3349D9e723f76630576, 'ULP', 18),
        (0xf8E3891a38016dE2E6Ed5Fcc433Ca2BDB5e8f90c, 'ULP', 18),
        (0x11Ce57AaAE0418d120e4415691B6F174219e4b02, 'ULP', 18),
        (0xcc90d7b497eC7D3a0C086D1B804BbA8A4a8e747C, 'ULP', 18),
        (0xd0Ad5957BA831a1225AeAF4181fb242a52158BA7, 'ULP', 18),
        (0xaeD086cd3f714623b52Da05EF3fC2E944010a0D4, 'ULP', 18),
        (0x125D1DcA8957055d88fa80596bb538F53E5Ee599, 'ULP', 18),
        (0x0448d034D4A6D138c01e26bA64eC6011E93716eB, 'ULP', 18),
        (0x552ac6d7506BB64eF7BeF0E98953a7f35f1A5f06, 'ULP', 18),
        (0x696E8429D87dB245110F83296FB2f80Df2aD58Fc, 'ULP', 18),
        (0x6b5B32Fba10bd44Af0302F74abE9fAde21f835Ca, 'ULP', 18),
        (0xCd19ab14Be7a8E9Cdcc0617099c483b0146B870C, 'ULP', 18),
        (0x98b88dD1a0187cEDffb94b983c10bDCaa62e652B, 'ULP', 18),
        (0x313e1B5edEEbaB73b6e869a74A896dC999E204Cc, 'ULP', 18),
        (0x999AE8370c8F51198EdC87bC2ee131d34a747701, 'ULP', 18),
        (0x30F1639B42E5F14c176E47d07199F001F122238c, 'ULP', 18),
        (0xac9ab918A0F36C1Ff53f14E9CB49F81bE01b88F7, 'ULP', 18),
        (0x5326C288b431e8D01787114662c7B3c2eC730A39, 'ULP', 18),
        (0x724ff4aaFA4fd2C44a1726707C2f1b3d1650Eab9, 'ULP', 18),
        (0x239b062fB893cA0E1A6163f684575CB4Bf07B59B, 'ULP', 18),
        (0x7703874bd9fDAcCeca5085eaE2776E276411F171, 'ULP', 18),
        (0xf1281273C7261240304A3062378c7B91B74b6134, 'ULP', 18),
        (0xa121608BA08c6b1EB61924e4e4c0A983c13F75D4, 'ULP', 18),
        (0x3eA1e47F5126F6A6077A92965b9D1b1aa241893E, 'ULP', 18),
        (0xa966E30aF0dF1A3254C2f1Fc2ba6651684217933, 'ULP', 18),
        (0x2994297c01A441097535781731711a8122139B06, 'ULP', 18),
        (0xFB4157a258394c349eb44174132b048E82833904, 'ULP', 18),
        (0x5f5a52C9D3CA54D9804B60a1af1eC9D5cCcd2d74, 'ULP', 18),
        (0xC88f10D2db5994Bf299951bA52286EF5AB702614, 'ULP', 18),
        (0x216915F5edd69617cf10d3325286b13605a4347C, 'ULP', 18),
        (0x7BCc5047071D7F1dA46ca6Cb00f9eb42f1DbbB64, 'ULP', 18),
        (0x68e9c4f4676274B2A5D981423524dFe2ED360759, 'ULP', 18),
        (0x302C1cc85ef9642bFb6b14b9Ab4a8934CB8C171f, 'ULP', 18),
        (0x176F4d0B5F57D6972f7Db2977d15fe1a03C05e27, 'ULP', 18),
        (0xE7cC82Be4BFD3D127E6034A68831C0e381123319, 'ULP', 18),
        (0x2D4D6193edfe8748B9b00E1294655789EC51Ac27, 'ULP', 18),
        (0xfe801495eaAc62257a1258652a3e3c923B61C45d, 'ULP', 18),
        (0x4E0Abf0C52e6AE85FD9F128053aCf15fAf7f7360, 'ULP', 18),
        (0x2163bEDAe9dB6f4d60870c81754c3c173cC26F6A, 'ULP', 18),
        (0x3538072ad4f25ACf0c8dAB5CAb56f853B7F9656a, 'ULP', 18),
        (0x107F94409746E8c8E6eFF139A100D17D9ca7FdfE, 'MobLP-gauge', 18),
        (0xD0d57a6689188F854F996BEAE0Cb1949FDB5FF86, 'MobLP-gauge', 18),
        (0xc96AeeaFF32129da934149F6134Aa7bf291a754E, 'MobLP-gauge', 18),
        (0x27D9Bfa5F864862BeDC23cFab7e00b6b94488CC6, 'MobLP-gauge', 18),
        (0xdAA2ab880b7f3D5697e6F85e63c28b9120AA9E07, 'MobLP-gauge', 18),
        (0x127b524c74C2162Ee4BB2e42d8d2eB9050C0293E, 'MobLP-gauge', 18),
        (0xE1f9D952EecC07cfEFa69df9fBB0cEF260957119, 'MobLP-gauge', 18),
        (0x0A125D473cd3b1968e728DDF7d424c928C09222A, 'MobLP-gauge', 18),
        (0x487c30CB18AA9Ced435911E2B414e0e85D7E52bB, 'MobLP-gauge', 18),
        (0xd1B3C05FE24bda6F52e704daf1ACBa8c440d8573, 'MobLP-gauge', 18),
        (0xE7195E651Cc47853f0054d85c8ADFc79D532929f, 'MobLP-gauge', 18),
        (0xCAEd243de23264Bdd8297c6eECcF320846eee18A, 'MobLP-gauge', 18),
        (0xe2d6095685248F38Ae9fef1b360D772b78Ea19D1, 'MobLP-gauge', 18),
        (0x5489b2F0A1992b889F47601D71E068Fd15c63f26, 'MobLP-gauge', 18),
        (0x1A8938a37093d34581B21bAd2AE7DC1c19150C05, 'MobLP-gauge', 18),
        (0x52517feb1Fc6141d5CF6718111C7Cc0FD764fA5d, 'MobLP-gauge', 18),
        (0xD38e76E17E66b562B61c149Ca0EE53CEa1145733, 'MobLP-gauge', 18),
        (0x2459BDb59a3BF6Ab6C412Ac0b220e7CDA1D4ea26, 'MobLP-gauge', 18),
        (0xF2ae5c2D2D2eD13dd324C0942163054fc4A3D4d9, 'MobLP-gauge', 18),
        (0xCF34F4ec5DC9E09428A4f4a45475f6277694166c, 'MobLP-gauge', 18),
        (0x1250D6dd3B51D20c14a8ECb10CC2dd713967767e, 'mobLP-gauge', 18),
        (0xC5375860b33915Ee26184cD35CC57DE1Ca97b6E4, 'MobLP-gauge', 18),
        (0xaD18fda9B6eBD42d8bADE94fe55144A79b2E8EDb, 'MobLP-gauge', 18),
        (0x1A648004d8AB84eE34d2D1cd2F2A7a7828D6939F, 'MobLP-gauge', 18),
        (0xAb32a0b6d427ce11a4cEf7Be174A3F291a2753E6, 'wmcEUR', 18),
        (0x664092b9d48612f53F2995205DEDc6F21eff9770, 'acMcusdIMMO', 18),
        (0x337ddAD7Fcb34E93a54a7B6df7C8Bae00fA91D09, 'wmCELO', 18),
        (0xeC17fB85529A6A48cB6ed7e3c1d1a7cc57D742C1, 'RFP', 18),
        (0xeD4ba7a44f0e1A8a92276861Fcb15fb30c7f6f1c, 'CGEARN', 18),
        (0x34C11A932853Ae24E845Ad4B633E3cEf91afE583, 'cRECY', 18),
        (0x833fD14F0FD4eaA47433A07428a46d1Ac60fA591, 'KNOX', 18),
        (0xa5033ad7F1928566225057Fa3e6F704e8401BC25, 'FLN', 18),
        (0x0690D67D7Cb8853F08832F05F4a4f8Ad6E674CA3, 'CBTC', 2),
        (0x84c4e1f2965235f60073e3029788888252c4557e, 'NRG', 18),
        (0x4eA676E377e717D078193ab9347c1e6836B06b22, 'KMC', 18),
        (0x555aD69103f8101645A797459b748A5B822AB9A5, 'YANKEE', 18),
        (0xf2283840cE37DAe0a06B40a9A80603977f36fA3F, 'G$', 2),
        (0x977CFf494d0095a70eAFa2168226F7a5C28c3444, 'MIA', 18),
        (0x0dd7554275c8c702cb1007b76817E6eFA48864bd, 'MIA', 18),
        (0x4213E7aB42dD21366508B18edfc33C29e7cBD81B, 'KMGE', 18),
        (0x7CDc41129b3fDfCB2bA55f616D61ad45b7A8Cc74, 'cCUSD', 8),
        (0x9de4171EDc1F69EAD07f7595bD3beD62d9215532, 'cCELO', 8),
        (0x1affBc17938a25d245e1B7eC6f2fc949df8E9760, 'PAPER', 18),
        (0x32975907733f93305BE28E2bfd123666b7A9c863, 'INK', 18),
        (0x54257B7845688193230F9e8cF386423d8Fe194b6, 'rKMGE', 18),
        (0xE509Be8dfB13a97340959b939b2552C1916CC7c9, 'GUPPY', 18),
        (0x1cEC3e5722CB0a2FFB78e299b9607ea7efA92090, 'RFP', 18),
        (0xC668583dcbDc9ae6FA3CE46462758188adfdfC24, 'stCELO', 18),
        (0xDc5762753043327d74e0a538199c1488FC1F44cf, 'rstCELO', 18),
        (0xFC39D3f2cBE4D5efc21CE48047bB2511ACa5cAF3, 'SPACT', 18),
        (0x175D9Db34c67C15D1a39008Cb0Ae375fCAbA3f92, 'MONAR', 18),
        (0x3B07929950357629c7Cb353bA298eD092Ab51B2e, 'D2D', 18),
        (0x23FaCed31c5d1c5cb06778eBE46A29eb4E7106dB, 'PXT', 18),
        (0xFee23Aeb633D20703173e727508CAfAD6930cb47, 'supraPOOF-UBE_Ubeswap', 18),
        (0x132DB9d8ee6Ff5a397f0f0e2e771388da2ee477C, 'spcUSD', 18),
        (0x6eB778dC6Afc2c0E5fAa0Bb505BBd9D891afb6EE, 'spcUSD', 18),
        (0xd89064E0b68B50c6AC51904a6abab7dE88d3b0D3, 'spCELO', 18),
        (0x0DDA45D87751e9b5c8542527eeC57d001942898a, 'spcUSD', 18),
        (0x412534C87468d47cA440ADf3A4EAc5Cdddc37fA6, 'uWTA', 2),
        (0xBE5c38776e2F06aB83a246B028fDcc082F3C04E5, 'uWC', 2),
        (0x4925554248994eAA30Ae9F4A47738b740fa804f6, 'STC', 18),
        (0x6E8c30f31aF6a5a860aCfDd1d312773cFb280B14, 'FIRU', 8),
        (0x15ED066CA50f85d8106D27111F599ff357C490Ef, 'pTDF', 18),
        (0xF93781122043Afc1D1C7A90f2DB93Bd21D8229F1, 'SCAMMER', 18),
        (0xD96A74081440C28E9a3c09a3256D6e0454c52E41, 'wmcUSD', 18),
        (0xD5BEE31f819dd19131d7bde9127c1B37DB8f3882, 'TT', 18),
        (0x00a3f5e633E094e401d9e94FDefF1c75Ba85Cc8D, 'uWAC', 2),
        (0xdABe72469Eb9DFd465F33933B83f9d7039630269, 'uWIBES', 2),
        (0x37f750B7cC259A2f741AF45294f6a16572CF5cAd, 'USDC', 6),
        (0x27cd006548dF7C8c8e9fdc4A67fa05C2E3CA5CF9, 'PLASTIK', 9),
        (0xF9d922c055A3f1759299467dAfaFdf43BE844f7a, 'MNEC', 8),
        (0x5a78818b26791fBB0870bf15D96DcfD5ACABb92c, 'uWLC', 2),
        (0x759Fdbc9Bd4156C513cD70ef1e1A5777b234664d, 'SUNE', 18),
        (0x653eAd45a8c49C6d86b430fB742A5bfF55BAe53F, 'CPC02STG', 18),
        (0x62B8B11039FcfE5aB0C56E502b1C372A3d2a9c7A, 'G$', 18),
        (0x8Ab457C4c818153DE31bEF5Aa5D696A7E1EaD267, 'TUSDC', 18),
        (0x9779a9D28862Eb20d2aEf4DabFB1552cE76E0071, 'MEMO', 9),
        (0xc3377Ea71F1dc8e55Ba360724eff2d7aD62a8670, 'ATLASX', 18),
        (0x3617Dd643d3991565c6D62B6Be44990dD550aE99, 'fCELO', 18),
        (0x2d6823Fc318843265C3178C67A99c63Acd0eC85b, 'tcUSD', 18),
        (0x0e43906FBef1945d88cfbf173cB14B07c2Eb04aB, 'CPCO2STGv2', 18),
        (0xd7dd367ea602bE314e5050C3334A3d4c2FdeFe21, 'CPCO2', 18),
        (0xFa51eFDc0910CCdA91732e6806912Fa12e2FD475, 'G$', 18),
        (0x55A57528a03c53203D809c982Eac3F2140326319, 'uWBY', 2),
        (0x981caDA0d62254c5244402Eb39bd5E1A50a22468, 'msIMTX', 18),
        (0x84084B3a9fF2cb1f617355D0773Eb37722BA1D49, 'IMTX', 18),
        (0x59578a7381a77770B46153A7443a4c566fCC5427, 'TDF', 18),
        (0x87680B0a24aa4B079C6ba106E999Eb061FF9136B, 'tcUSD', 18),
        (0x98A90EcFB163d138eC289D05362f20613A0C02aC, 'RESERVE', 18),
        (0x10CB7F49389787A99b59B2f87dfDd3bba141559f, 'TDF', 18),
        (0x9238eC5588F39F6f8E23f4bbF8f2336049365DA3, 'CRED', 18),
        (0x1dF2013adCadFab51D7233547c78331f23B03e04, 'CRED', 18),
        (0x73F93dcc49cB8A239e2032663e9475dd5ef29A08, 'eXOF', 18),
        (0x832F03bCeE999a577cb592948983E35C048B5Aa4, 'cXOF', 18),
        (0x918146359264c492bd6934071c6bd31c854edbc3, 'mCUSD', 18),
        (0x122013fd7df1c6f636a5bb8f03108e876548b455, 'WETH', 18),
        (0x64defa3544c695db8c535d289d843a189aa26b98, 'mCUSD', 18),
        (0xe919f65739c26a42616b7b8eedc6b5524d1e3ac4, 'WETH', 18),
        (0xe273ad7ee11dcfaa87383ad5977ee1504ac07568, 'mCEUR', 18),
        (0xd15ec721c2a896512ad29c671997dd68f9593226, 'SUSHI', 18),
        (0xa8d0e6799ff3fd19c6459bf02689ae09c4d78ba7, 'mCEUR', 18),
        (0xe4fe50cdd716522a56204352f00aa110f731932d, 'DAI', 18),
        (0x29dfce9c22003a4999930382fd00f9fd6133acd1, 'SUSHI', 18),
        (0xbaab46e28388d2779e6e31fd00cf0e5ad95e327b, 'WBTC', 8),
        (0x2e3487f967df2ebc2f236e16f8fcaeac7091324d, 'WMATIC', 18),
        (0x90ca507a5d4458a4c6c6249d186b6dcb02a5bccd, 'DAI', 18),
        (0x9ee153d4fdf0e3222efd092c442ebb21dfd346ac, 'MZPN', 18),
        (0x9802d866fde4563d088a6619f7cef82c0b991a55, 'mCREAL', 18),
        (0x0a7432cf27f1ae3825c313f3c81e7d3efd7639ab, 'CRV', 18),
        (0x8e3670fd7b0935d3fe832711debfe13bb689b690, 'AVAX', 18),
        (0x88eec49252c8cbc039dcdb394c0c2ba2f1637ea0, 'USDT', 6),
        (0x218c3c3d49d0e7b37aff0d8bb079de36ae61a4c0, 'FTM', 18),
        (0x035ee610693a29cb77fd6efbeb9d9d278703e145, 'TFBX', 18),
        (0x9995cc8f20db5896943afc8ee0ba463259c931ed, 'ETHIX', 18),
        (0xa649325aa7c5093d12d6f98eb4378deae68ce23f, 'BNB', 18),
        (0x503681c68f03bbbce48005dcd7b83ae8d4fd745c, 'AAVE', 18),
        (0x37191488fbee23652ec7794cfb81020528968c7d, 'cTOKEN', 18),
        (0x173234922eb27d5138c5e481be9df5261faed450, 'SOL', 18),
        (0x3af556b48469d2398ab7be1563a0cfd80ea4ac84, 'WMATIC', 18),
        (0x8427bd503dd3169ccc9aff7326c15258bc305478, 'SYMM', 18),
        (0x7c64ad5f9804458b8c9f93f7300c15d55956ac2a, 'SYMM', 18),
        (0x1d18d0386f51ab03e7e84e71bda1681eba865f1f, 'JMPT', 18),
        (0xb020d981420744f6b0fedd22bb67cd37ce18a1d5, 'USDT', 6),
        (0x639a647fbe20b6c8ac19e48e2de44ea792c62c5c, 'BIFI', 18),
        (0x47264ae1fc0c8e6418ebe78630718e11a07346a8, 'SBR', 18),
        (0xa287a3722c367849efa5c76e96be36efd65c290e, 'cDEFI', 18),
        (0xced8a99d977203521a81e7be8baa684f450b62ba, 'APP', 10),
        (0x4f604735c1cf31399c6e711d5962b2b3e0225ad3, 'USDGLO', 18),
        (0x091733f0245a4395d8bfe42c74a619328269f12f, 'KNOX', 18),
        (0xe9dc987b939a7b33270e56532297cf82716c79a3, 'BTCBR', 18),
        (0xe79880d1d2b3b051d39aa7186b2445b744a61c02, 'DOOR', 18),
        (0xfb42e2e90fc79cfa6a6b4eba4877d5faf4e29287, 'spcUSD', 18),
        (0xd2ff6a40087c94e1462a13619cf3801ab58af5c5, 'OKT', 18),
        (0xcc82628f6a8defa1e2b0ad7ed448bef3647f7941, 'USDC', 6),
        (0xed7160273e3f64183383b958a4140a394349d213, 'NEVERCELL', 18),
        (0x98587fa3fe8ae28ace515281c1fec1e992a7f214, 'WBUSD', 18),
        (0xd252e98c5b6ea1e29a7e2789a9ec0493707a60b9, 'KRW', 18),
        (0x3d3b92fe0b4c26b74f8ff13a32dd764f4dfd8b51, 'CKSP', 18),
        (0xee9801669c6138e84bd50deb500827b776777d28, 'O3', 18),
        (0x5c68fb7b31d4b0d0208d75057fbdccc949531f59, 'SDA', 18),
        (0x1bfc26ce035c368503fae319cc2596716428ca44, 'USDC', 6),
        (0x1b8f82d79afd2c5ea4485e59646da79612761810, 'BTC', 18),
        (0x113d761de46d0b4423e8395cdfabf64eccc2f4a9, 'DB', 8),
        (0xeb966c6ae397f28de1723a4a37baa0f3da86c867, 'STATE', 18),
        (0x173fd7434b8b50df08e3298f173487ebdb35fd14, 'CRV', 18),
        (0xcc82ce5fa524dc69fa94a9bdec9525123b611b6a, 'ERUND', 18),
        (0x48608c180ce3e21bf26370b5fa3c0904ebfffbb6, 'CVR', 18),
        (0xc9baa8cfdde8e328787e29b4b078abf2dadc2055, 'MATIC', 18),
        (0xcfffe0c89a779c09df3df5624f54cdf7ef5fdd5d, 'cUSDT', 18),
        (0x8d2c7789652342e9405a15fa4f4721362495f92d, 'APYS', 18),
        (0xc173a5cf9d4192de161b7fdf79456680854f1dc3, 'CMOON', 18),
        (0xed193c4e69f591e42398ef54dea65aa1bb02835c, 'atUST', 18),
        (0x0fe15362017b91a1d7c904b981cc369fe28c4a89, 'ZOO', 18),
        (0x0c1e45f503d16d637de61d796266c69562750f24, 'NTECH', 16),
        (0xcaf9e5bb8703188a7f0a62b738479b0cbbb83899, 'GTPS', 18),
        (0x61732bb7de2799e50d5259752c25e8193b346e01, 'USPX', 0),
        (0x32eeebe0139bbcc49c1d309440b832378958d17b, 'labor', 18),
        (0x1b9f208c45885cfbc503af0f9192c8ea9e6bcc1d, 'CWAIFU', 18),
        (0x0f2177ac29eeccb9e2897ca0d7d1c545858e14ac, 'HEAVENS', 2),
        (0xb9c8f0d3254007ee4b98970b94544e473cd610ec, 'MAI', 18),
        (0xac19994ce62cdaa187bbbf808786159e7334664a, 'SOKA', 18),
        (0xe57705c6193342b51f745f496e25d7b82e13adac, 'NITROX', 18),
        (0x25383211ad30b1e00c8d656911f960b6c5668327, 'T-cLA', 18),
        (0x60163d35494f2a9db815f78299abbb5c99f0193c, 'WERUND', 18),
        (0x2da2d5ce68403f31f704c44174e75fa1062e6995, 'HNL', 9),
        (0x8d6a7fae6b35b6b7b828ed4037fd096c6612c13b, 'BabyDoge', 9),
        (0x8517ffbebfbd03837c2ff9e7445bad40fa15a583, 'KING', 9),
        (0xc1db80b47455ce7e4d9a749eb65c046e9b153e71, 'CEO', 18),
        (0x1da12e0bb9cf5de3e6cbdde427ffd9fe6d4df970, 'GUIDE', 18),
        (0xf6d198cd2a85bb2f3021cdbdab6b878474079be7, 'cUSDT', 18),
        (0xd86292c57c20c4fabea609e9d76b9bd7e11a9bc7, 'ECUSD', 18),
        (0xa86d2b5574824b767d9af2a074fb4a312b0fbf18, 'GFI', 18),
        (0xd6c56a9b281307259e425fa53485a09d2954e9b7, 'BabyCelo', 18),
        (0x4cb70de91e6bb85fb132880d5af3418477a90083, 'KGA', 9),
        (0x774b29bf6017bb36e7b7595e8dfde19de6d4c583, 'USBL', 18),
        (0x42d0a49065db8cdb2502782f1daf2ea8453ff850, 'PC', 18),
        (0x3e7b5a63d7b66bd21dd644a56aa0a17656a7a5e5, 'BLACKSWAN', 9),
        (0xda28ca613fac4ad75dff43da2d0613938c633e8c, 'tDev-C', 18),
        (0x59b0628f1443f484f3644f4b176d63665746115c, 'SC', 18),
        (0xd71e89bc2e0ab53042d7a0e20c15d34ccfd6dd18, 'UNEU', 1),
        (0xe6f3626b017531ae8e9671de32428f24e010b1da, '3M', 9),
        (0xeaf59c188d61e163b633d387c7038a9ce7ba1a19, 'MafiaGame', 6),
        (0xf4ed736f74644139dd97aa39a086d2627dbd58ff, 'TCL', 18),
        (0xb977dc82969e28e8f3458e60f728a6b176283e78, 'PUNK', 9),
        (0x6162488911cc12c5b801eb9332fc6defe9cc2e11, 'CLG', 9),
        (0x204f20b3e8fb53b1d42debf0af73e10fecdb4401, 'EWCL', 18),
        (0xceaf336f7ff8957c47d514dab90e4ef69dfce6eb, 'pCELO', 18),
        (0xcb7bbe3825f41e9d16277245515804caed9ad476, 'D2', 18),
        (0x13da25fc16b6e7297b204b250f0ddffac4f344c4, 'T-cLA', 18),
        (0xc6686060a1bfa583566ebca400a2c8771b20cb8c, 'RFP', 18),
        (0x5f25b65813885f4b6e22d83df217412c240f0433, 'UKKN', 2),
        (0xccdf6eaa55350c7aa8e22393784d64942f8097e8, 'RMD', 9),
        (0xeda0a92877c9607b5b75ee2be012b4bce2599c81, 'TGNT', 18)
) AS temp_table (contract_address, symbol, decimals)
