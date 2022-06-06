resource "aws_amplify_app" "amplify-test123-example" {
  name       = "amplify-test123-example"
  repository = "https://github.com/nrpn98/aws-amplify-static-web.git"

  # GitHub personal access token
 access_token = var.access_token
}

resource "aws_amplify_branch" "main" {
  app_id      = aws_amplify_app.amplify-test123-example.id
  branch_name = "main"
}

resource "aws_amplify_webhook" "main" {
  app_id      = aws_amplify_app.amplify-test123-example.id
  branch_name = aws_amplify_branch.main.branch_name
  description = "triggermaster"
}

#Before you associate the domain I belive you have created a domain as amplify-test123.abc.net
resource "aws_amplify_domain_association" "amplify-test123-example" {
  app_id      = aws_amplify_app.amplify-test123-example.id
  domain_name = "amplify-test123.abc.net"

  # https://amplify-test123.abc.net/
  sub_domain {
    branch_name = aws_amplify_branch.main.branch_name
    prefix      = ""
  }

  # https://www.amplify-test123.abc.net/
  sub_domain {
    branch_name = aws_amplify_branch.main.branch_name
    prefix      = "www"
  }
}