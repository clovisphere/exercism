import gleam/option.{Option, unwrap}

pub fn two_fer(name: Option(String)) -> String {
  "One for " <> unwrap(name, or: "you") <> ", one for me."
}
