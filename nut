function matchNutsAndBolts(nuts, bolts, n)
    quickSort(nuts, bolts, 1, n);
    disp("Matched Nuts:");
    disp(nuts);
    disp("Matched Bolts:");
    disp(bolts);
endfunction

function quickSort(nuts, bolts, low, high)
    if low < high then
        pivotIndex = partition(nuts, bolts, low, high);
        partition(bolts, nuts, low, pivotIndex - 1);
        partition(bolts, nuts, pivotIndex + 1, high);
    end
endfunction

function pivotIndex = partition(arr1, arr2, low, high)
    pivot = arr2(high); // Using a bolt as pivot
    i = low - 1;
    for j = low:high-1
        if arr1(j) < pivot then
            i = i + 1;
            temp = arr1(i);
            arr1(i) = arr1(j);
            arr1(j) = temp;
        end
    end
    temp = arr1(i + 1);
    arr1(i + 1) = arr1(high);
    arr1(high) = temp;
    pivotIndex = i + 1;
endfunction

// Example usage
nuts = [5, 3, 7, 2, 4, 6, 1];
bolts = [4, 6, 2, 5, 3, 7, 1];
n = length(nuts);

matchNutsAndBolts(nuts, bolts, n);
