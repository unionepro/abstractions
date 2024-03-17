{{
  config(
    
    alias='vrf_request_daily',
    post_hook='{{ expose_spells(\'["arbitrum","avalanche_c","bnb","ethereum","fantom","polygon"]\',
                            "project",
                            "chainlink",
                            \'["linkpool_jon"]\') }}'
  )
}}

{% set models = [
  'chainlink_arbitrum_vrf_request_daily',
  'chainlink_avalanche_c_vrf_request_daily',
  'chainlink_bnb_vrf_request_daily',
  'chainlink_ethereum_vrf_request_daily',
  'chainlink_fantom_vrf_request_daily',
  'chainlink_polygon_vrf_request_daily'
] %}

SELECT *
FROM (
    {% for model in models %}
    SELECT
      blockchain,
      date_start,
      date_month,
      node_address,
      fulfilled_requests,
      reverted_requests,
      total_requests
    FROM {{ ref(model) }}
    {% if not loop.last %}
    UNION ALL
    {% endif %}
    {% endfor %}
)