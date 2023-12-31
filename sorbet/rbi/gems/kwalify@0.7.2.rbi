# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `kwalify` gem.
# Please instead update this file by running `bin/tapioca gem kwalify`.

# source://kwalify//lib/kwalify/types.rb#58
class Date
  include ::Comparable
  include ::Kwalify::Scalar
end

# source://kwalify//lib/kwalify/types.rb#17
class FalseClass
  include ::Kwalify::Boolean
  include ::Kwalify::Scalar
end

# source://kwalify//lib/kwalify.rb#8
module Kwalify
  extend ::Kwalify::Types
  extend ::Kwalify::ErrorHelper

  class << self
    # obsolete
    #
    # source://kwalify//lib/kwalify/meta-validator.rb#271
    def meta_validator; end

    # source://kwalify//lib/kwalify/messages.rb#11
    def msg(key); end

    # source://kwalify//lib/kwalify/messages.rb#163
    def word(key); end
  end
end

# source://kwalify//lib/kwalify/errors.rb#15
class Kwalify::AssertionError < ::Kwalify::KwalifyError
  # @return [AssertionError] a new instance of AssertionError
  #
  # source://kwalify//lib/kwalify/errors.rb#16
  def initialize(msg); end
end

# source://kwalify//lib/kwalify/errors.rb#22
class Kwalify::BaseError < ::Kwalify::KwalifyError
  # @return [BaseError] a new instance of BaseError
  #
  # source://kwalify//lib/kwalify/errors.rb#23
  def initialize(message = T.unsafe(nil), path = T.unsafe(nil), value = T.unsafe(nil), rule = T.unsafe(nil), error_symbol = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/errors.rb#49
  def <=>(ex); end

  def _to_s; end

  # Returns the value of attribute column.
  #
  # source://kwalify//lib/kwalify/errors.rb#31
  def column; end

  # Sets the attribute column
  #
  # @param value the value to set the attribute column to.
  #
  # source://kwalify//lib/kwalify/errors.rb#31
  def column=(_arg0); end

  # Returns the value of attribute error_symbol.
  #
  # source://kwalify//lib/kwalify/errors.rb#30
  def error_symbol; end

  # Sets the attribute error_symbol
  #
  # @param value the value to set the attribute error_symbol to.
  #
  # source://kwalify//lib/kwalify/errors.rb#30
  def error_symbol=(_arg0); end

  # Returns the value of attribute filename.
  #
  # source://kwalify//lib/kwalify/errors.rb#31
  def filename; end

  # Sets the attribute filename
  #
  # @param value the value to set the attribute filename to.
  #
  # source://kwalify//lib/kwalify/errors.rb#31
  def filename=(_arg0); end

  # Returns the value of attribute linenum.
  #
  # source://kwalify//lib/kwalify/errors.rb#31
  def linenum; end

  # Sets the attribute linenum
  #
  # @param value the value to set the attribute linenum to.
  #
  # source://kwalify//lib/kwalify/errors.rb#31
  def linenum=(_arg0); end

  def message; end

  # Returns the value of attribute path.
  #
  # source://kwalify//lib/kwalify/errors.rb#33
  def path; end

  # Sets the attribute path
  #
  # @param value the value to set the attribute path to.
  #
  # source://kwalify//lib/kwalify/errors.rb#30
  def path=(_arg0); end

  # Returns the value of attribute rule.
  #
  # source://kwalify//lib/kwalify/errors.rb#30
  def rule; end

  # Sets the attribute rule
  #
  # @param value the value to set the attribute rule to.
  #
  # source://kwalify//lib/kwalify/errors.rb#30
  def rule=(_arg0); end

  # source://kwalify//lib/kwalify/errors.rb#40
  def to_s; end

  # Returns the value of attribute value.
  #
  # source://kwalify//lib/kwalify/errors.rb#30
  def value; end

  # Sets the attribute value
  #
  # @param value the value to set the attribute value to.
  #
  # source://kwalify//lib/kwalify/errors.rb#30
  def value=(_arg0); end
end

# base class for Yaml::Parser
#
# source://kwalify//lib/kwalify/parser/base.rb#15
class Kwalify::BaseParser
  # source://kwalify//lib/kwalify/parser/base.rb#67
  def _getch; end

  # source://kwalify//lib/kwalify/parser/base.rb#36
  def _set_column_and_linenum(s); end

  # Returns the value of attribute column.
  #
  # source://kwalify//lib/kwalify/parser/base.rb#25
  def column; end

  # @return [Boolean]
  #
  # source://kwalify//lib/kwalify/parser/base.rb#57
  def eos?; end

  # Returns the value of attribute filename.
  #
  # source://kwalify//lib/kwalify/parser/base.rb#25
  def filename; end

  # source://kwalify//lib/kwalify/parser/base.rb#52
  def group(n); end

  # Returns the value of attribute linenum.
  #
  # source://kwalify//lib/kwalify/parser/base.rb#25
  def linenum; end

  # @return [Boolean]
  #
  # source://kwalify//lib/kwalify/parser/base.rb#47
  def match?(regexp); end

  # source://kwalify//lib/kwalify/parser/base.rb#62
  def peep(n = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/parser/base.rb#18
  def reset(input, filename = T.unsafe(nil), untabify = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/parser/base.rb#28
  def scan(regexp); end

  # source://kwalify//lib/kwalify/parser/base.rb#81
  def scan_string; end

  protected

  # source://kwalify//lib/kwalify/parser/base.rb#120
  def _syntax_error(message, path = T.unsafe(nil), linenum = T.unsafe(nil), column = T.unsafe(nil)); end
end

# source://kwalify//lib/kwalify/parser/base.rb#79
Kwalify::BaseParser::CHAR_TABLE = T.let(T.unsafe(nil), Hash)

# source://kwalify//lib/kwalify/types.rb#11
module Kwalify::Boolean; end

# source://kwalify//lib/kwalify/errors.rb#93
module Kwalify::ErrorHelper
  # module_function
  #
  # @raise [AssertionError]
  #
  # source://kwalify//lib/kwalify/errors.rb#97
  def assert_error(message = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/errors.rb#108
  def schema_error(error_symbol, rule, path, val, args = T.unsafe(nil)); end

  private

  # source://kwalify//lib/kwalify/errors.rb#114
  def _build_message(message_key, val, args); end

  # source://kwalify//lib/kwalify/errors.rb#101
  def validate_error(error_symbol, rule, path, val, args = T.unsafe(nil)); end

  class << self
    # source://kwalify//lib/kwalify/errors.rb#114
    def _build_message(message_key, val, args); end

    # source://kwalify//lib/kwalify/errors.rb#101
    def validate_error(error_symbol, rule, path, val, args = T.unsafe(nil)); end
  end
end

# source://kwalify//lib/kwalify.rb#64
module Kwalify::Json; end

# source://kwalify//lib/kwalify/errors.rb#11
class Kwalify::KwalifyError < ::StandardError; end

# source://kwalify//lib/kwalify/meta-validator.rb#269
Kwalify::META_VALIDATOR = T.let(T.unsafe(nil), Kwalify::MetaValidator)

# ex.
#   meta_validator = Kwalify::MetaValidator.instance()
#   schema = File.load_file('schema.yaml')
#   errors = meta_validator.validate(schema)
#   if !errors.empty?
#     errors.each do |error|
#       puts "[#{error.path}] #{error.message}"
#     end
#   end
#
# source://kwalify//lib/kwalify/meta-validator.rb#27
class Kwalify::MetaValidator < ::Kwalify::Validator
  # @return [MetaValidator] a new instance of MetaValidator
  #
  # source://kwalify//lib/kwalify/meta-validator.rb#40
  def initialize(schema, &block); end

  # source://kwalify//lib/kwalify/meta-validator.rb#44
  def validate_hook(value, rule, path, errors); end

  class << self
    # source://kwalify//lib/kwalify/meta-validator.rb#32
    def instance; end
  end
end

# source://kwalify//lib/kwalify/meta-validator.rb#30
Kwalify::MetaValidator::META_SCHEMA = T.let(T.unsafe(nil), String)

# alias of YamlParser class
#
# source://kwalify//lib/kwalify/yaml-parser.rb#862
class Kwalify::Parser < ::Kwalify::YamlParser
  # @return [Parser] a new instance of Parser
  #
  # source://kwalify//lib/kwalify/yaml-parser.rb#863
  def initialize(yaml_str); end
end

# base class of yaml parser
#
# ex.
#   str = ARGF.read()
#   parser = Kwalify::PlainYamlParser.new(str)
#   doc = parser.parse()
#   p doc
#
# source://kwalify//lib/kwalify/yaml-parser.rb#25
class Kwalify::PlainYamlParser
  # @return [PlainYamlParser] a new instance of PlainYamlParser
  #
  # source://kwalify//lib/kwalify/yaml-parser.rb#36
  def initialize(yaml_str); end

  # @return [Boolean]
  #
  # source://kwalify//lib/kwalify/yaml-parser.rb#55
  def has_next?; end

  # source://kwalify//lib/kwalify/yaml-parser.rb#45
  def parse; end

  # source://kwalify//lib/kwalify/yaml-parser.rb#60
  def parse_all; end

  protected

  # source://kwalify//lib/kwalify/yaml-parser.rb#89
  def add_to_map(map, key, value, linenum); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#77
  def add_to_seq(seq, value, linenum); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#85
  def create_mapping(linenum = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#107
  def create_scalar(value, linenum = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#73
  def create_sequence(linenum = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#112
  def current_line; end

  # source://kwalify//lib/kwalify/yaml-parser.rb#116
  def current_linenum; end

  # source://kwalify//lib/kwalify/yaml-parser.rb#101
  def merge_map(map, map2, linenum); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#97
  def set_default(map, value, linenum); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#93
  def set_map_with(map, key, value, linenum); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#81
  def set_seq_at(seq, i, value, linenum); end

  private

  # source://kwalify//lib/kwalify/yaml-parser.rb#149
  def _getchar; end

  # source://kwalify//lib/kwalify/yaml-parser.rb#130
  def _getline; end

  # source://kwalify//lib/kwalify/yaml-parser.rb#720
  def assert(bool_expr); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#173
  def current_char; end

  # source://kwalify//lib/kwalify/yaml-parser.rb#161
  def getchar; end

  # source://kwalify//lib/kwalify/yaml-parser.rb#167
  def getchar_or_nl; end

  # source://kwalify//lib/kwalify/yaml-parser.rb#177
  def getlabel; end

  # source://kwalify//lib/kwalify/yaml-parser.rb#124
  def getline; end

  # source://kwalify//lib/kwalify/yaml-parser.rb#478
  def parse_alias(column, value); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#451
  def parse_anchor(column, value); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#546
  def parse_block_text(column, value); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#199
  def parse_child(column); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#267
  def parse_flow(depth); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#346
  def parse_flow_map(depth); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#376
  def parse_flow_map_item(depth); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#389
  def parse_flow_scalar(depth); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#314
  def parse_flow_seq(depth); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#342
  def parse_flow_seq_item(depth); end

  # flowstyle     ::=  flow_seq | flow_map | flow_scalar | alias
  #
  # flow_seq      ::=  '[' [ flow_seq_item { ',' sp flow_seq_item } ] ']'
  # flow_seq_item ::=  flowstyle
  #
  # flow_map      ::=  '{' [ flow_map_item { ',' sp flow_map_item } ] '}'
  # flow_map_item ::=  flowstyle ':' sp flowstyle
  #
  # flow_scalar   ::=  string | number | boolean | symbol | date
  #
  # source://kwalify//lib/kwalify/yaml-parser.rb#252
  def parse_flowstyle(column, value); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#625
  def parse_mapping(column, value); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#672
  def parse_scalar(indent, value); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#588
  def parse_sequence(column, value); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#435
  def parse_tag(column, value); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#210
  def parse_value(column, value, value_start_column); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#496
  def register_alias(label); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#470
  def register_anchor(label, data); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#143
  def reset_sbuf(str); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#503
  def resolve_aliases(data); end

  # --
  # def syntax_error(error_symbol, linenum=@linenum)
  #  msg = Kwalify.msg(error_symbol) % [linenum]
  #  return Kwalify::YamlSyntaxError.new(msg, linenum,error_symbol)
  # end
  # ++
  #
  # source://kwalify//lib/kwalify/yaml-parser.rb#193
  def syntax_error(error_symbol, arg = T.unsafe(nil), linenum = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#679
  def to_scalar(str); end

  # @return [Boolean]
  #
  # source://kwalify//lib/kwalify/yaml-parser.rb#235
  def white?(ch); end
end

# source://kwalify//lib/kwalify/yaml-parser.rb#27
class Kwalify::PlainYamlParser::Alias
  # @return [Alias] a new instance of Alias
  #
  # source://kwalify//lib/kwalify/yaml-parser.rb#28
  def initialize(label, linenum); end

  # Returns the value of attribute label.
  #
  # source://kwalify//lib/kwalify/yaml-parser.rb#32
  def label; end

  # Returns the value of attribute linenum.
  #
  # source://kwalify//lib/kwalify/yaml-parser.rb#32
  def linenum; end
end

# source://kwalify//lib/kwalify.rb#10
Kwalify::RELEASE = T.let(T.unsafe(nil), String)

# source://kwalify//lib/kwalify/rule.rb#15
class Kwalify::Rule
  include ::Kwalify::ErrorHelper

  # @return [Rule] a new instance of Rule
  #
  # source://kwalify//lib/kwalify/rule.rb#40
  def initialize(hash = T.unsafe(nil), parent = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/rule.rb#46
  def _init(hash, path = T.unsafe(nil), rule_table = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/rule.rb#539
  def _uniqueness_check_table; end

  # Returns the value of attribute assert.
  #
  # source://kwalify//lib/kwalify/rule.rb#29
  def assert; end

  # Returns the value of attribute assert_proc.
  #
  # source://kwalify//lib/kwalify/rule.rb#30
  def assert_proc; end

  # Returns the value of attribute classname.
  #
  # source://kwalify//lib/kwalify/rule.rb#36
  def classname; end

  # Returns the value of attribute classobj.
  #
  # source://kwalify//lib/kwalify/rule.rb#37
  def classobj; end

  # Returns the value of attribute default.
  #
  # source://kwalify//lib/kwalify/rule.rb#35
  def default; end

  # Returns the value of attribute desc.
  #
  # source://kwalify//lib/kwalify/rule.rb#20
  def desc; end

  # Returns the value of attribute enum.
  #
  # source://kwalify//lib/kwalify/rule.rb#21
  def enum; end

  # Returns the value of attribute ident.
  #
  # source://kwalify//lib/kwalify/rule.rb#33
  def ident; end

  # Returns the value of attribute length.
  #
  # source://kwalify//lib/kwalify/rule.rb#32
  def length; end

  # Returns the value of attribute mapping.
  #
  # source://kwalify//lib/kwalify/rule.rb#28
  def mapping; end

  # Returns the value of attribute name.
  #
  # source://kwalify//lib/kwalify/rule.rb#19
  def name; end

  # Returns the value of attribute parent.
  #
  # source://kwalify//lib/kwalify/rule.rb#18
  def parent; end

  # Sets the attribute parent
  #
  # @param value the value to set the attribute parent to.
  #
  # source://kwalify//lib/kwalify/rule.rb#18
  def parent=(_arg0); end

  # Returns the value of attribute pattern.
  #
  # source://kwalify//lib/kwalify/rule.rb#25
  def pattern; end

  # Returns the value of attribute range.
  #
  # source://kwalify//lib/kwalify/rule.rb#31
  def range; end

  # Returns the value of attribute regexp.
  #
  # source://kwalify//lib/kwalify/rule.rb#26
  def regexp; end

  # Returns the value of attribute required.
  #
  # source://kwalify//lib/kwalify/rule.rb#22
  def required; end

  # Returns the value of attribute sequence.
  #
  # source://kwalify//lib/kwalify/rule.rb#27
  def sequence; end

  # Returns the value of attribute type.
  #
  # source://kwalify//lib/kwalify/rule.rb#23
  def type; end

  # Returns the value of attribute type_class.
  #
  # source://kwalify//lib/kwalify/rule.rb#24
  def type_class; end

  # Returns the value of attribute unique.
  #
  # source://kwalify//lib/kwalify/rule.rb#34
  def unique; end

  protected

  # source://kwalify//lib/kwalify/rule.rb#473
  def _inspect(str = T.unsafe(nil), level = T.unsafe(nil), done = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/rule.rb#86
  def get_init_method(sym); end

  private

  # source://kwalify//lib/kwalify/rule.rb#427
  def _check_confliction(hash, rule, path); end

  # source://kwalify//lib/kwalify/rule.rb#197
  def _init_assert_value(val, rule, path); end

  # source://kwalify//lib/kwalify/rule.rb#116
  def _init_class_value(val, rule, path); end

  # source://kwalify//lib/kwalify/rule.rb#358
  def _init_default_value(val, rule, path); end

  # source://kwalify//lib/kwalify/rule.rb#135
  def _init_desc_value(val, rule, path); end

  # source://kwalify//lib/kwalify/rule.rb#172
  def _init_enum_value(val, rule, path); end

  # source://kwalify//lib/kwalify/rule.rb#319
  def _init_ident_value(val, rule, path); end

  # source://kwalify//lib/kwalify/rule.rb#268
  def _init_length_value(val, rule, path); end

  # source://kwalify//lib/kwalify/rule.rb#396
  def _init_mapping_value(val, rule, path, rule_table); end

  # source://kwalify//lib/kwalify/rule.rb#130
  def _init_name_value(val, rule, path); end

  # source://kwalify//lib/kwalify/rule.rb#149
  def _init_pattern_value(val, rule, path); end

  # source://kwalify//lib/kwalify/rule.rb#216
  def _init_range_value(val, rule, path); end

  # source://kwalify//lib/kwalify/rule.rb#140
  def _init_required_value(val, rule, path); end

  # source://kwalify//lib/kwalify/rule.rb#375
  def _init_sequence_value(val, rule, path, rule_table); end

  # source://kwalify//lib/kwalify/rule.rb#95
  def _init_type_value(val, rule, path); end

  # source://kwalify//lib/kwalify/rule.rb#341
  def _init_unique_value(val, rule, path); end
end

# source://kwalify//lib/kwalify/types.rb#49
module Kwalify::Scalar; end

# source://kwalify//lib/kwalify/errors.rb#60
class Kwalify::SchemaError < ::Kwalify::BaseError
  # @return [SchemaError] a new instance of SchemaError
  #
  # source://kwalify//lib/kwalify/errors.rb#61
  def initialize(message = T.unsafe(nil), path = T.unsafe(nil), rule = T.unsafe(nil), value = T.unsafe(nil), error_symbol = T.unsafe(nil)); end
end

# syntax error for YAML and JSON
#
# source://kwalify//lib/kwalify/errors.rb#75
class Kwalify::SyntaxError < ::Kwalify::BaseError
  # KwalifyError
  #
  # @return [SyntaxError] a new instance of SyntaxError
  #
  # source://kwalify//lib/kwalify/errors.rb#76
  def initialize(msg, linenum = T.unsafe(nil), error_symbol = T.unsafe(nil)); end

  # attr_accessor :linenum, :error_symbol
  #
  # source://kwalify//lib/kwalify/errors.rb#82
  def message; end
end

# source://kwalify//lib/kwalify/types.rb#30
module Kwalify::Text
  include ::Kwalify::Scalar
end

# source://kwalify//lib/kwalify/types.rb#83
module Kwalify::Types
  private

  # --
  # def collection_class?(klass)
  #  return klass.is_a?(Array) || klass.is_a?(Hash)
  # end
  #
  # def scalar_class?(klass)
  #  return !klass.is_a?(Array) && !klass.is_a?(Hash) && klass != Object
  # end
  #
  # @return [Boolean]
  #
  # source://kwalify//lib/kwalify/types.rb#134
  def collection?(val); end

  # @return [Boolean]
  #
  # source://kwalify//lib/kwalify/types.rb#143
  def collection_type?(type); end

  # @return [Boolean]
  #
  # source://kwalify//lib/kwalify/types.rb#138
  def scalar?(val); end

  # @return [Boolean]
  #
  # source://kwalify//lib/kwalify/types.rb#147
  def scalar_type?(type); end

  class << self
    # --
    # def collection_class?(klass)
    #  return klass.is_a?(Array) || klass.is_a?(Hash)
    # end
    #
    # def scalar_class?(klass)
    #  return !klass.is_a?(Array) && !klass.is_a?(Hash) && klass != Object
    # end
    #
    # @return [Boolean]
    #
    # source://kwalify//lib/kwalify/types.rb#134
    def collection?(val); end

    # @return [Boolean]
    #
    # source://kwalify//lib/kwalify/types.rb#143
    def collection_type?(type); end

    # source://kwalify//lib/kwalify/types.rb#119
    def get_type_class(type); end

    # @return [Boolean]
    #
    # source://kwalify//lib/kwalify/types.rb#138
    def scalar?(val); end

    # @return [Boolean]
    #
    # source://kwalify//lib/kwalify/types.rb#147
    def scalar_type?(type); end

    # source://kwalify//lib/kwalify/types.rb#113
    def type_class(type); end

    # source://kwalify//lib/kwalify/types.rb#109
    def type_table; end
  end
end

# use "str" as default of @type
#
# source://kwalify//lib/kwalify/types.rb#86
Kwalify::Types::DEFAULT_TYPE = T.let(T.unsafe(nil), String)

# source://kwalify//lib/kwalify/util.rb#9
module Kwalify::Util
  private

  # source://kwalify//lib/kwalify/util.rb#77
  def _traverse_rule(rule, _done = T.unsafe(nil), &block); end

  # source://kwalify//lib/kwalify/util.rb#50
  def _traverse_schema(hash, _done = T.unsafe(nil), &block); end

  # create a hash table from list of hash with primary key.
  #
  # ex.
  #   hashlist = [
  #     { "name"=>"Foo", "gender"=>"M", "age"=>20, },
  #     { "name"=>"Bar", "gender"=>"F", "age"=>25, },
  #     { "name"=>"Baz", "gender"=>"M", "age"=>30, },
  #   ]
  #   hashtable = YamlHelper.create_hashtable(hashlist, "name")
  #   p hashtable
  #       # => { "Foo" => { "name"=>"Foo", "gender"=>"M", "age"=>20, },
  #       #      "Bar" => { "name"=>"Bar", "gender"=>"F", "age"=>25, },
  #       #      "Baz" => { "name"=>"Baz", "gender"=>"M", "age"=>30, }, }
  #
  # source://kwalify//lib/kwalify/util.rb#118
  def create_hashtable(hashlist, primarykey, flag_duplicate_check = T.unsafe(nil)); end

  # get class object. if not found, NameError raised.
  #
  # source://kwalify//lib/kwalify/util.rb#94
  def get_class(classname); end

  # get nested value directly.
  #
  # ex.
  #   val = YamlHelper.get_value(obj, ['aaa', 0, 'xxx'])
  #
  # This is equal to the following:
  #   begin
  #     val = obj['aaa'][0]['xxx']
  #   rescue NameError
  #     val = nil
  #   end
  #
  # source://kwalify//lib/kwalify/util.rb#147
  def get_value(obj, path); end

  # traverse rule
  #
  # ex.
  #   schema = YAML.load_file('myschema.yaml')
  #   validator = Kwalify::Validator.new(schema)
  #   Kwalify::Util.traverse_rule(validator) do |rule|
  #     p rule if rule.classname
  #   end
  #
  # source://kwalify//lib/kwalify/util.rb#71
  def traverse_rule(validator, &block); end

  # traverse schema
  #
  # ex.
  #   schema = YAML.load_file('myschema.yaml')
  #   Kwalify::Util.traverse_schema(schema) do |rulehash|
  #     ## add module prefix to class name
  #     if rulehash['class']
  #       rulehash['class'] = 'MyModule::' + rulehash['class']
  #     end
  #   end
  #
  # source://kwalify//lib/kwalify/util.rb#44
  def traverse_schema(schema, &block); end

  # expand tab character to spaces
  #
  # ex.
  #   untabified_str = YamlHelper.untabify(tabbed_str)
  #
  # source://kwalify//lib/kwalify/util.rb#19
  def untabify(str, width = T.unsafe(nil)); end

  class << self
    # @yield [rule]
    #
    # source://kwalify//lib/kwalify/util.rb#77
    def _traverse_rule(rule, _done = T.unsafe(nil), &block); end

    # @yield [hash]
    #
    # source://kwalify//lib/kwalify/util.rb#50
    def _traverse_schema(hash, _done = T.unsafe(nil), &block); end

    # create a hash table from list of hash with primary key.
    #
    # ex.
    #   hashlist = [
    #     { "name"=>"Foo", "gender"=>"M", "age"=>20, },
    #     { "name"=>"Bar", "gender"=>"F", "age"=>25, },
    #     { "name"=>"Baz", "gender"=>"M", "age"=>30, },
    #   ]
    #   hashtable = YamlHelper.create_hashtable(hashlist, "name")
    #   p hashtable
    #       # => { "Foo" => { "name"=>"Foo", "gender"=>"M", "age"=>20, },
    #       #      "Bar" => { "name"=>"Bar", "gender"=>"F", "age"=>25, },
    #       #      "Baz" => { "name"=>"Baz", "gender"=>"M", "age"=>30, }, }
    #
    # source://kwalify//lib/kwalify/util.rb#118
    def create_hashtable(hashlist, primarykey, flag_duplicate_check = T.unsafe(nil)); end

    # get class object. if not found, NameError raised.
    #
    # source://kwalify//lib/kwalify/util.rb#94
    def get_class(classname); end

    # get nested value directly.
    #
    # ex.
    #   val = YamlHelper.get_value(obj, ['aaa', 0, 'xxx'])
    #
    # This is equal to the following:
    #   begin
    #     val = obj['aaa'][0]['xxx']
    #   rescue NameError
    #     val = nil
    #   end
    #
    # source://kwalify//lib/kwalify/util.rb#147
    def get_value(obj, path); end

    # traverse rule
    #
    # ex.
    #   schema = YAML.load_file('myschema.yaml')
    #   validator = Kwalify::Validator.new(schema)
    #   Kwalify::Util.traverse_rule(validator) do |rule|
    #     p rule if rule.classname
    #   end
    #
    # source://kwalify//lib/kwalify/util.rb#71
    def traverse_rule(validator, &block); end

    # traverse schema
    #
    # ex.
    #   schema = YAML.load_file('myschema.yaml')
    #   Kwalify::Util.traverse_schema(schema) do |rulehash|
    #     ## add module prefix to class name
    #     if rulehash['class']
    #       rulehash['class'] = 'MyModule::' + rulehash['class']
    #     end
    #   end
    #
    # source://kwalify//lib/kwalify/util.rb#44
    def traverse_schema(schema, &block); end

    # expand tab character to spaces
    #
    # ex.
    #   untabified_str = YamlHelper.untabify(tabbed_str)
    #
    # source://kwalify//lib/kwalify/util.rb#19
    def untabify(str, width = T.unsafe(nil)); end
  end
end

# add hash-like methods
#
# source://kwalify//lib/kwalify/util/hashlike.rb#14
module Kwalify::Util::HashLike
  # source://kwalify//lib/kwalify/util/hashlike.rb#16
  def [](key); end

  # source://kwalify//lib/kwalify/util/hashlike.rb#20
  def []=(key, val); end

  # not necessary
  #
  # source://kwalify//lib/kwalify/util/hashlike.rb#39
  def each; end

  # --
  # def keys()
  #  instance_variables().collect { |name| name[1, name.length-1] }
  # end
  # ++
  #
  # @return [Boolean]
  #
  # source://kwalify//lib/kwalify/util/hashlike.rb#30
  def key?(key); end
end

# source://kwalify//lib/kwalify/errors.rb#67
class Kwalify::ValidationError < ::Kwalify::BaseError
  # @return [ValidationError] a new instance of ValidationError
  #
  # source://kwalify//lib/kwalify/errors.rb#68
  def initialize(message = T.unsafe(nil), path = T.unsafe(nil), rule = T.unsafe(nil), value = T.unsafe(nil), error_symbol = T.unsafe(nil)); end
end

# validate YAML document
#
# ex1. validate yaml document
#   schema = YAML.load_file('schema.yaml')
#   validator = Kwalify::Validator.new(schema)
#   document = YAML.load_file('document.yaml')
#   erros = validator.validate(document)
#   if errors && !errors.empty?
#     errors.each do |err|
#       puts "- [#{err.path}] #{err.message}"
#     end
#   end
#
# ex2. validate with parsing
#   schema = YAML.load_file('schema.yaml')
#   validator = Kwalify::Validator.new(schema)
#   parser = Kwalify::Yaml::Parser.new(validator)
#   document = parser.parse(File.read('document.yaml'))
#   errors = parser.errors
#   if errors && errors.empty?
#     errors.each do |e|
#       puts "#{e.linenum}:#{e.column} [#{e.path}] #{e.message}"
#     end
#   end
#
# source://kwalify//lib/kwalify/validator.rb#40
class Kwalify::Validator
  include ::Kwalify::ErrorHelper

  # @return [Validator] a new instance of Validator
  #
  # source://kwalify//lib/kwalify/validator.rb#44
  def initialize(hash_or_rule, &block); end

  # source://kwalify//lib/kwalify/validator.rb#52
  def _inspect; end

  # source://kwalify//lib/kwalify/validator.rb#75
  def _validate(value, rule, path, errors, done, uniq_table, recursive = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/validator.rb#161
  def _validate_mapping_required_keys(hash, map_rule, path, errors); end

  # source://kwalify//lib/kwalify/validator.rb#188
  def _validate_unique(value, rule, path, errors, uniq_table); end

  # Returns the value of attribute rule.
  #
  # source://kwalify//lib/kwalify/validator.rb#49
  def rule; end

  # source://kwalify//lib/kwalify/validator.rb#57
  def validate(value); end

  protected

  # source://kwalify//lib/kwalify/validator.rb#67
  def validate_hook(value, rule, path, errors); end

  private

  # source://kwalify//lib/kwalify/validator.rb#202
  def _validate_assert(value, rule, path, errors); end

  # source://kwalify//lib/kwalify/validator.rb#211
  def _validate_enum(value, rule, path, errors); end

  # source://kwalify//lib/kwalify/validator.rb#255
  def _validate_length(value, rule, path, errors); end

  # source://kwalify//lib/kwalify/validator.rb#140
  def _validate_mapping(hash, map_rule, path, errors, done, uniq_table, recursive = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/validator.rb#222
  def _validate_pattern(value, rule, path, errors); end

  # source://kwalify//lib/kwalify/validator.rb#231
  def _validate_range(value, rule, path, errors); end

  # source://kwalify//lib/kwalify/validator.rb#175
  def _validate_scalar(value, rule, path, errors, done, uniq_table); end

  # source://kwalify//lib/kwalify/validator.rb#127
  def _validate_sequence(list, seq_rule, path, errors, done, uniq_table, recursive = T.unsafe(nil)); end
end

# source://kwalify//lib/kwalify/parser/yaml.rb#16
module Kwalify::Yaml
  class << self
    # read yaml_str, parse it, and return yaml document.
    #
    # opts:
    # ::validator:        Kwalify::Validator object
    # ::preceding_aliass: allow preceding alias if true
    # ::data_binding:     enable data binding if true
    # ::untabify:         expand tab chars if true
    # ::filename:         filename
    #
    # source://kwalify//lib/kwalify.rb#45
    def load(yaml_str, opts = T.unsafe(nil)); end

    # read file, parse it, and return yaml document.
    # see Kwalify::Yaml::Parser.load()
    #
    # source://kwalify//lib/kwalify.rb#57
    def load_file(filename, opts = T.unsafe(nil)); end
  end
end

# YAML parser with validator
#
# ex.
#   schema = YAML.load_file('schema.yaml')
#   require 'kwalify'
#   validator = Kwalify::Validator.new(schema)
#   parser = Kwalify::Yaml::Parser.new(validator)  # validator is optional
#   #parser.preceding_alias = true  # optional
#   #parser.data_binding = true     # optional
#   ydoc = parser.parse_file('data.yaml')
#   errors = parser.errors
#   if errors && !errors.empty?
#     errors.each do |e|
#       puts "line=#{e.linenum}, path=#{e.path}, mesg=#{e.message}"
#     end
#   end
#
# source://kwalify//lib/kwalify/parser/yaml.rb#40
class Kwalify::Yaml::Parser < ::Kwalify::BaseParser
  # @return [Parser] a new instance of Parser
  #
  # source://kwalify//lib/kwalify/parser/yaml.rb#46
  def initialize(validator = T.unsafe(nil), properties = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#335
  def _parse_map_value(map, map_rule, path, level, key, is_merged, uniq_table, _linenum, _column, _linenum2, _column2); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#90
  def _set_error_info(linenum = T.unsafe(nil), column = T.unsafe(nil), &block); end

  # *V
  #
  # source://kwalify//lib/kwalify/parser/yaml.rb#408
  def _validate_map_value(map, map_rule, rule, path, uniq_table, key, val, _linenum, _column); end

  # boolean
  #
  # source://kwalify//lib/kwalify/parser/yaml.rb#54
  def data_binding; end

  # boolean
  #
  # source://kwalify//lib/kwalify/parser/yaml.rb#54
  def data_binding=(_arg0); end

  # @return [Boolean]
  #
  # source://kwalify//lib/kwalify/parser/yaml.rb#112
  def document_start?; end

  # Returns the value of attribute errors.
  #
  # source://kwalify//lib/kwalify/parser/yaml.rb#68
  def errors; end

  # @return [Boolean]
  #
  # source://kwalify//lib/kwalify/parser/yaml.rb#122
  def has_next?; end

  # source://kwalify//lib/kwalify/parser/yaml.rb#795
  def location(path); end

  # Class
  #
  # source://kwalify//lib/kwalify/parser/yaml.rb#57
  def mapping_class; end

  # Class
  #
  # source://kwalify//lib/kwalify/parser/yaml.rb#57
  def mapping_class=(_arg0); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#127
  def parse(input = T.unsafe(nil), opts = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#198
  def parse_alias(rule, path, uniq_table, container); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#187
  def parse_anchor(rule, path, uniq_table, container); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#426
  def parse_block_map(map, map_rule, path, uniq_table); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#463
  def parse_block_scalar(rule, path, uniq_table); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#307
  def parse_block_seq(seq, seq_rule, path, uniq_table); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#484
  def parse_block_text(column, rule, path, uniq_table); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#235
  def parse_block_value(level, rule, path, uniq_table, container); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#166
  def parse_documents(input, opts = T.unsafe(nil), &block); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#133
  def parse_file(filename, opts = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#634
  def parse_flow_map(map, map_rule, path, uniq_table); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#673
  def parse_flow_scalar(rule, path, uniq_table); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#597
  def parse_flow_seq(seq, seq_rule, path, uniq_table); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#555
  def parse_flow_value(rule, path, uniq_table, container); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#139
  def parse_next; end

  # source://kwalify//lib/kwalify/parser/yaml.rb#166
  def parse_stream(input, opts = T.unsafe(nil), &block); end

  # boolean
  #
  # source://kwalify//lib/kwalify/parser/yaml.rb#55
  def preceding_alias; end

  # boolean
  #
  # source://kwalify//lib/kwalify/parser/yaml.rb#55
  def preceding_alias=(_arg0); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#60
  def reset_parser; end

  # source://kwalify//lib/kwalify/parser/base.rb#18
  def reset_scanner(input, filename = T.unsafe(nil), untabify = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#215
  def resolve_preceding_aliases(val); end

  # Class
  #
  # source://kwalify//lib/kwalify/parser/yaml.rb#56
  def sequence_class; end

  # Class
  #
  # source://kwalify//lib/kwalify/parser/yaml.rb#56
  def sequence_class=(_arg0); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#834
  def set_errors_linenum(errors); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#103
  def skip_spaces_and_comments; end

  # @return [Boolean]
  #
  # source://kwalify//lib/kwalify/parser/yaml.rb#117
  def stream_end?; end

  # source://kwalify//lib/kwalify/parser/yaml.rb#702
  def to_scalar(str); end

  # Validator
  #
  # source://kwalify//lib/kwalify/parser/yaml.rb#53
  def validator; end

  # Validator
  #
  # source://kwalify//lib/kwalify/parser/yaml.rb#53
  def validator=(_arg0); end

  protected

  # source://kwalify//lib/kwalify/parser/yaml.rb#783
  def _getclass(classname); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#762
  def add_to_seq(rule, seq, val, linenum, column); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#743
  def create_mapping(rule, linenum, column); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#757
  def create_scalar(rule, value, linenum, column); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#736
  def create_sequence(rule, linenum, column); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#768
  def put_to_map(rule, map, key, val, linenum, column); end

  private

  # source://kwalify//lib/kwalify/parser/yaml.rb#71
  def _error(klass, message, path, linenum, column); end

  # source://kwalify//lib/kwalify/parser/yaml.rb#453
  def to_mapkey(str); end
end

# source://kwalify//lib/kwalify/parser/yaml.rb#182
Kwalify::Yaml::Parser::MAPKEY_PATTERN = T.let(T.unsafe(nil), Regexp)

# source://kwalify//lib/kwalify/parser/yaml.rb#184
Kwalify::Yaml::Parser::PRECEDING_ALIAS_PLACEHOLDER = T.let(T.unsafe(nil), Object)

# (OBSOLETE) yaml parser
#
# this class has been obsoleted. use Kwalify::Yaml::Parser instead.
#
# ex.
#  # load document with YamlParser
#  str = ARGF.read()
#  parser = Kwalify::YamlParser.new(str)
#  document = parser.parse()
#
#  # validate document
#  schema = YAML.load(File.read('schema.yaml'))
#  validator = Kwalify::Validator.new(schema)
#  errors = validator.validate(document)
#
#  # print validation result
#  if errors && !errors.empty?
#    parser.set_errors_linenum(errors)
#    errors.sort.each do |error|
#      print "line %d: path %s: %s" % [error.linenum, error.path, error.message]
#    end
#  end
#
# source://kwalify//lib/kwalify/yaml-parser.rb#752
class Kwalify::YamlParser < ::Kwalify::PlainYamlParser
  # @return [YamlParser] a new instance of YamlParser
  #
  # source://kwalify//lib/kwalify/yaml-parser.rb#754
  def initialize(*args); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#759
  def parse; end

  # source://kwalify//lib/kwalify/yaml-parser.rb#764
  def path_linenum(path); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#794
  def set_error_linenums(errors); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#788
  def set_errors_linenum(errors); end

  protected

  # source://kwalify//lib/kwalify/yaml-parser.rb#823
  def add_to_map(map, key, value, linenum); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#807
  def add_to_seq(seq, value, linenum); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#817
  def create_mapping(linenum = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#852
  def create_scalar(value, linenum = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#801
  def create_sequence(linenum = T.unsafe(nil)); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#838
  def merge_map(map, collection, linenum); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#833
  def set_default(map, value, linenum); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#828
  def set_map_with(map, key, value, linenum); end

  # source://kwalify//lib/kwalify/yaml-parser.rb#812
  def set_seq_at(seq, i, value, linenum); end
end

# (obsolete) use Kwalify::SyntaxError instead
#
# source://kwalify//lib/kwalify/errors.rb#89
class Kwalify::YamlSyntaxError < ::Kwalify::SyntaxError; end

# source://kwalify//lib/kwalify/types.rb#70
class NilClass
  include ::Kwalify::Scalar
end

# source://kwalify//lib/kwalify/types.rb#36
class Numeric
  include ::Comparable
  include ::Kwalify::Text
  include ::Kwalify::Scalar
end

# source://kwalify//lib/kwalify/types.rb#33
class String
  include ::Comparable
  include ::Kwalify::Text
  include ::Kwalify::Scalar
end

# source://kwalify//lib/kwalify/types.rb#61
class Time
  include ::Comparable
  include ::Kwalify::Scalar
end

# source://kwalify//lib/kwalify/types.rb#14
class TrueClass
  include ::Kwalify::Boolean
  include ::Kwalify::Scalar
end
