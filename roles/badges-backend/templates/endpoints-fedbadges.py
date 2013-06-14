{% if env == 'staging' %}
suffix  = 'stg.phx2.fedoraproject.org'
{% else %}
suffix = 'phx2.fedoraproject.org'
{% endif %}

config = dict(
    endpoints={
        "fedbadges.badges-backend01": [
            "tcp://badges-backend01.%s:3000",
        ],
    },
)
