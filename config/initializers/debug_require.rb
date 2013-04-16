if ENV['DEBUG_REQUIRE']
  require 'benchmark'

  def require(file)
    @@first ||= Time.now
    rc = false
    ts = Benchmark.measure do
      rc = super
    end
    if ENV['DEBUG_REQUIRE'].to_f < ts.total
      total = ts.format("%t require #{file}")
      from_start = (Time.now - @@first).to_i
      $stdout.puts "#{total} (#{from_start} second(s) from start)"
    end
    rc
  end
end