pub fn get_appname_by_instid(instid: &str) -> Option<&str> {
    match instid {
        "695F627463" => Some("BTC"),
        "695F657468" => Some("ETH"),
        "695F656F73" => Some("EOS"),
        "695F636F736D6F73" => Some("COSMOS"),
        "695F6B315F66696C" => Some("FILECOIN"),
        "695F626368" => Some("BCH"),
        "695F6C7463" => Some("LTC"),
        "695F696D6B" => Some("IMK"),
        _ => None,
    }
}
pub fn get_instid_by_appname(appname: &str) -> Option<&str> {
    match appname {
        "BTC" => Some("695F627463"),
        "ETH" => Some("695F657468"),
        "EOS" => Some("695F656F73"),
        "COSMOS" => Some("695F636F736D6F73"),
        "FILECOIN" => Some("4695F6B315F66696C"),
        "BCH" => Some("695F626368"),
        "LTC" => Some("695F6C7463"),
        "IMK" => Some("695F696D6B"),
        _ => None,
    }
}

#[cfg(test)]
mod tests {
    use crate::applet::{get_appname_by_instid, get_instid_by_appname};
    #[test]
    fn get_appname_by_instid_test() {
        assert_eq!(get_appname_by_instid("695F627463").unwrap(), "BTC");
        assert_eq!(get_appname_by_instid("695F657468").unwrap(), "ETH");
        assert_eq!(get_appname_by_instid("695F656F73").unwrap(), "EOS");
        assert_eq!(get_appname_by_instid("695F636F736D6F73").unwrap(), "COSMOS");
        assert_eq!(
            get_appname_by_instid("695F6B315F66696C").unwrap(),
            "FILECOIN"
        );
        assert_eq!(get_appname_by_instid("695F626368").unwrap(), "BCH");
        assert_eq!(get_appname_by_instid("695F6C7463").unwrap(), "LTC");
        assert_eq!(get_appname_by_instid("695F696D6B").unwrap(), "IMK");
        assert!(get_appname_by_instid("1111111111").is_none());
    }

    #[test]
    fn get_instid_by_appname_test() {
        assert_eq!(get_instid_by_appname("BTC").unwrap(), "695F627463");
        assert_eq!(get_instid_by_appname("ETH").unwrap(), "695F657468");
        assert_eq!(get_instid_by_appname("EOS").unwrap(), "695F656F73");
        assert_eq!(get_instid_by_appname("COSMOS").unwrap(), "695F636F736D6F73");
        assert_eq!(get_instid_by_appname("IMK").unwrap(), "695F696D6B");
        assert_eq!(
            get_instid_by_appname("FILECOIN").unwrap(),
            "695F6B315F66696C"
        );
        assert_eq!(get_instid_by_appname("BCH").unwrap(), "695F626368");
        assert_eq!(get_instid_by_appname("LTC").unwrap(), "695F6C7463");
        assert!(get_instid_by_appname("APPLET").is_none());
    }
}
