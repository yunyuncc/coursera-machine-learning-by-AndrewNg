function res = is_in_vector(num, vec)
  res = 0;
  len = length(vec);
  for i = 1:len
    if vec(i) == num
      res = 1;
    endif
  endfor
endfunction
