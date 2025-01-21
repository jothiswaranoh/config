local ls = require("luasnip")

-- Define snippets for Ruby
local ruby_snippets = {
  -- Minitest Spec snippet
  ls.parser.parse_snippet("minitest_spec", 
[[
# frozen_string_literal: true

require "spec_helper"

class $1 < Minitest::Spec
  describe "$2" do
    it "$3" do
      $0
      assert(true)
    end
  end
end
]]),

  -- Minitest Test snippet
  ls.parser.parse_snippet("minitest_test", 
[[
# frozen_string_literal: true

require "test_helper"

class $1 < Minitest::Test
  def test_$2
    $0
    assert(true)
  end
end
]]),

  -- RSpec Test snippet
  ls.parser.parse_snippet("rspec_test", 
[[
# frozen_string_literal: true

describe $1 do
  describe "$2" do
    it "$3" do
      $0
      expect(true).to eq(true)
    end
  end
end
]]),
}

-- Add all Ruby snippets at once
ls.add_snippets("ruby", ruby_snippets)
