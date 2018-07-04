<?php

$array = range(1, 100);

foreach($array as $key => $value) {
    if ($value % 3 == 0) {
        if ($value % 8 == 0) {
            $array[$key] = 'ShopRunBack';
            continue;
        }

        $array[$key] = 'Shop';
        continue;
    }

    if ($value % 8 == 0) {
        $array[$key] = 'RunBack';
    }
}

echo implode(', ', $array);