function result = myFunctionCorrected(input)
  % This function demonstrates the corrected version of the previous function
  % that addresses the dynamic array growth issue by pre-allocating the 
  % maxValues array.

  % Input: a cell array of numeric arrays
  % Output: a numeric array containing the maximum value from each sub-array

  maxValues = zeros(1, length(input)); % Pre-allocate maxValues
  for i = 1:length(input)
    maxValues(i) = max(input{i});
  end

  result = maxValues;
end

% Example usage:
inputCell = {[1,2,3], [4,5,6]};
result = myFunctionCorrected(inputCell); 