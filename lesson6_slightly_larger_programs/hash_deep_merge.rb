h1 = { a: true, b: { c: 1 } }
h2 = { a: false, b: { x: 2 } }


def deep_merge!(set1,set2)
 hashproc =  proc {(Hash === set1 && Hash === set2 ) && set1 == set2 ? set1.merge(set2, &hashproc) : set2}
 deep_merge!(self,&hashproc)
end

deep_merge!(h1, h2)

