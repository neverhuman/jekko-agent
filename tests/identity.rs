use jekko_agent::{identity, validate_identity};

#[test]
fn public_identity_contract_is_stable() {
    validate_identity().expect("identity validates");
    let (repo, role, profile) = identity();
    assert_eq!(repo, "jekko-agent");
    assert_eq!(role, "agent");
    assert_eq!(profile, "rust-agent");
}
