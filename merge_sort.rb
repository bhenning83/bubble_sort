def merge_sort(ary)
  if ary.length <= 2
    a = [ary[0]]
    b = [ary[-1]]
  elsif ary.length > 2
    a = merge_sort(ary.slice!(0, ary.length/2))
    b = merge_sort(ary)
  end
  merge(a, b)
end

def merge(a, b)
  ary = []
  until a.empty? && b.empty? do
    if b.empty?
      ary << a.shift 
    elsif a.empty?
      ary << b.shift 
    else
      a[0] > b[0] ? ary << b.shift : ary << a.shift 
    end
  end
  ary
end
