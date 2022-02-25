    
    
    cfn_config = get_config()
    for elb_group in cfn_config.data['elb']:
        elb_base_name = elb_group['name']
        elb_name = cfn_config._get_elb_canonical_name(elb_base_name)
        elb_dns_name = elb.get_elb_dns_name(elb_name)
