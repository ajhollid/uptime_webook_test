[
    {
      "id": "redeploy-webhook",
      "execute-command": "/home/ubuntu/test.sh",
      "command-working-directory": "/home/ubuntu",
      "trigger-rule":
      {
        "and":
        [
          {
            "match":
            {
              "type": "payload-hmac-sha1",
              "secret": "mysecret",
              "parameter":
              {
                "source": "header",
                "name": "X-Hub-Signature"
              }
            }
          },
          {
            "match":
            {
              "type": "value",
              "value": "closed",
              "parameter":
              {
                "source": "payload",
                "name": "action"
              }
            }
          },
          {
            "match":
            {
              "type": "value",
              "value": "master",
              "parameter":
              {
                "source": "payload",
                "name": "pull_request.base.ref"
              }
            }
          }
        ]
      }
    }
  ]
