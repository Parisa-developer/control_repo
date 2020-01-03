class profile::agent_nodes {
  include dockeragent
  dockeragent::nodes {'web.puppet.vm':}
  dockeragent::nodes {'db.puppet.vm':}
}
