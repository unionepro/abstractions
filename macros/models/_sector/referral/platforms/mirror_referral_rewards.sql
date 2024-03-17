{% macro mirror_referral_rewards(
    blockchain
    ,WritingEditions_evt_RewardsDistributed
    )
%}

select
    '{{blockchain}}' as blockchain
    ,'mirror' as project
    ,'v1' as version
    ,evt_block_number as block_number
    ,evt_block_time as block_time
    ,cast(date_trunc('day',evt_block_time) as date) as block_date
    ,cast(date_trunc('month',evt_block_time) as date) as block_month
    ,evt_tx_hash as tx_hash
    ,'NFT' as category
    ,"mintReferral" as referrer_address
    ,tx."from" as referee_address
    ,{{ var("ETH_ERC20_ADDRESS") }} as currency_contract
    ,"mintReferralReward" as reward_amount_raw
    ,contract_address as project_contract_address
    ,evt_index as sub_tx_id
    ,tx."from" as tx_from
    ,tx.to as tx_to
from {{WritingEditions_evt_RewardsDistributed}} e
inner join {{source(blockchain, 'transactions')}} tx
    on evt_block_number = tx.block_number
    and evt_tx_hash = tx.hash
    {% if is_incremental() %}
    and {{incremental_predicate('tx.block_time')}}
    {% endif %}
{% if is_incremental() %}
where {{incremental_predicate('evt_block_time')}}
{% endif %}
{% endmacro %}
