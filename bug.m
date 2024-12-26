function result = myFunction(input)
  % This function demonstrates an uncommon MATLAB bug related to the use of cell arrays and logical indexing.
  
  % Input: a cell array of numeric arrays
  % Output: a numeric array containing the maximum value from each sub-array

  maxValues = [];
  for i = 1:length(input)
    maxValues(i) = max(input{i});
  end

  result = maxValues;
end

% Example usage that causes the error:
inputCell = {[1,2,3], [4,5,6]};
result = myFunction(inputCell);

% Example usage that does not cause the error (due to pre-allocation):
inputCell = {[1,2,3], [4,5,6]};
maxValues = zeros(1, length(inputCell)); % Pre-allocate maxValues
for i = 1:length(inputCell)
  maxValues(i) = max(inputCell{i});
 endfor
result = maxValues;