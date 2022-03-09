CREATE TABLE IF NOT EXISTS chainlink.oracle_addresses (
	feed_name text,
	decimals numeric, 
	proxy bytea,
	address bytea,
	underlying_token_address bytea,
		UNIQUE (feed_name, decimals, proxy, address, underlying_token_address)
);

BEGIN;
DELETE FROM chainlink.oracle_addresses *;


COPY chainlink.oracle_addresses (feed_name, decimals, proxy, address, underlying_token_address) FROM stdin;
AAVE / USD	8	\\x338ed6787f463394D24813b297401B9F05a8C9d1	\\x81cc0c227bf9bfb8088b14755dfca65f7892203b	\\x76FB31fb4af56892A25e32cFC43De717950c9278
BTC / USD	8	\\xD702DD976Fb76Fffc2D3963D037dfDae5b04E593	\\x0c1272d2ac652d10d03bb4deb0d31f15ea3eab2b	\\x68f180fcCe6836688e9084f035309E29Bf0A2095
CRV / USD	8	\\xbD92C6c284271c227a1e0bF1786F468b539f51D9	\\x7c56d3650f9acd992b3aa635c04a311c54ad264c	\\x0994206dfE8De6Ec6920FF4D779B0d950605Fb53
DAI / USD	8	\\x8dBa75e83DA73cc766A7e5a0ee71F656BAb470d6	\\xbce7579e241e5d676c2371dc21891489dacda250	\\xDA10009cBd5D07dd0CeCc66161FC93D7c9000da1
ETH / USD	8	\\x13e3Ee699D1909E989722E753853AE30b17e08c5	\\x02f5e9e9dcc66ba6392f6904d5fcf8625d9b19c9	\\xDeadDeAddeAddEAddeadDEaDDEAdDeaDDeAD0000
EUR / USD	8	\\x3626369857A10CcC6cc3A6e4f5C2f5984a519F20	\\xaa75ace4575abbe1d237d991a7461f497a56a8f0	NULL
LINK / USD	8	\\xCc232dcFAAE6354cE191Bd574108c1aD03f86450	\\x5d101824c693c70a68ffc3cdb0cc394f3a4fb9ec	\\x350a791Bfc2C21F9Ed5d10980Dad2e2638ffa7f6
MATIC / USD	8	\\x0ded608AFc23724f614B76955bbd9dFe7dDdc828	\\x1C1df24f0d06415fc3F58b1c1fDadd5fC85d2950	NULL
NEAR / USD	8	\\xca6fa4b8CB365C02cd3Ba70544EFffe78f63ac82	\\xf9eCc598293bd5Fb4F700AEB5C4Fb63B23CFE8Aa	NULL
ONE / USD	8	\\x7CFB4fac1a2FDB1267F8bc17FADc12804AC13CFE	\\x663ed3D2aB9F8d5282a94BA4636E346e59bDdEB9	NULL
SAND / USD	8	\\xAE33e077a02071E62d342E449Afd9895b016d541	\\x5d1345669278128B77AF9662C5D6B5e0b2FFD54A	NULL
SNX / USD	8	\\x2FCF37343e916eAEd1f1DdaaF84458a359b53877	\\x584f57911b6eedab5503e202f8e193663c9bd3db	\\x8700dAec35aF8Ff88c16BdF0418774CB3D7599B4
SOL / USD	8	\\xC663315f7aF904fbbB0F785c32046dFA03e85270	\\x92c9b9c512759f5d04563efa3698fc4fbf735d59	NULL
Total Marketcap USD	8	\\x15772F61e4cDC81c7C1c6c454724CE9c7065A6fF	\\x530ab34385ca1d134ffd33d267f5a2788d645039	NULL
UNI / USD	8	\\x11429eE838cC01071402f21C219870cbAc0a59A0	\\x85a48ded8c35d82f8f29844e25dd51a70a23c93d	\\x6fd9d7AD17242c41f7131d257212c54A0e816691
USDC / USD	8	\\x16a9FA2FDa030272Ce99B29CF780dFA30361E0f3	\\xd1cb03cc31caa72d34dba7ebe21897d9580c4af0	\\x7F5c764cBc14f9669B88837ca1490cCa17c31607
USDT / USD	8	\\xECef79E109e997bCA29c1c0897ec9d7b03647F5E	\\xac37790ff4abf9483fae2d1f62fc61fe6b8e4789	\\x94b008aA00579c1307B0EF2c499aD98a8ce58e58
sETH / USD	8	\\xA969bEB73d918f6100163Cd0fba3C586C269bee1	\\x25e1c58040f27ecf20bbd4ca83a09290326896b3	\\xE405de8F52ba7559f9df3C368500B6E6ae6Cee49
sBTC / USD	8	\\xc326371d4D866C6Ff522E69298e36Fe75797D358	\\xad3dfa54004f0f5d296002bb091cac10eb8a4891	\\x298B9B95708152ff6968aafd889c6586e9169f1D
sLINK / USD	8	\\x74d6B50283AC1D651f9Afdc33521e4c1E3332b78	\\x8ce8c13d816fe6daf12d6fd9e4952e1fc88850af	\\xc5Db22719A06418028A40A9B5E9A7c02959D0d08
FLOW / USD	8	\\x2fF1EB7D0ceC35959F0248E9354c3248c6683D9b	\\x0542BbBfbc26A86EA92d2b7f6Da07DAf0CA091eD	NULL
FTM / USD	8	\\xc19d58652d6BfC6Db6FB3691eDA6Aa7f3379E4E9	\\x13f11f2139C10A48eCD7A6A14d804f90b2cFC89A	NULL
BNB / USD	8	\\xD38579f7cBD14c22cF1997575eA8eF7bfe62ca2c	\\x25dD1949cDb81f5fc38841a8abF342c4EF48dbfd	NULL
STETH / USD	8	\\x41878779a388585509657CE5Fb95a80050502186	\\x12922291D1FcD0d121B5C88f061047fE18732743	NULL
\.


COMMIT;

CREATE INDEX IF NOT EXISTS chainlink_oracle_addresses_feed_name_idx ON chainlink.oracle_addresses (feed_name);
CREATE INDEX IF NOT EXISTS chainlink_oracle_addresses_address_idx ON chainlink.oracle_addresses (address);
CREATE INDEX IF NOT EXISTS chainlink_oracle_addresses_proxy_idx ON chainlink.oracle_addresses (proxy);
CREATE INDEX IF NOT EXISTS chainlink_oracle_addresses_underlying_token_address_idx ON chainlink.oracle_addresses (underlying_token_address);
CREATE INDEX IF NOT EXISTS chainlink_oracle_addresses_feed_name_address_idx ON chainlink.oracle_addresses (feed_name, address);
CREATE INDEX IF NOT EXISTS chainlink_oracle_addresses_feed_name_underlying_token_address_idx ON chainlink.oracle_addresses (feed_name, underlying_token_address);
