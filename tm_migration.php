<?php
include_once './inc_common.php';
include_once './TmallProduct.php';

$tm = new TmallProduct();
//$detail = $tm->productInfo('SE10214525-628edeceeaed1');
//echo '<pre style="border: 1px solid #f44336;">'.print_r($detail,1).'</pre>';exit;
//$data = [];
for ($k = 6; $k < 20; $k++) {
    $temp = $tm->productList($k, 100);
    if (empty($temp['data']['record'][0]['code'])) {
        continue;
    }
    foreach ($temp['data']['record'] as $v) {
        $code = substr($v['code'], 0, 2);
        if ($code == 'SE') {
            foreach ($v['items'] as $key => $item) {
                $_products = [];
                $_product = [];
                $_product['code'] = $v['code'];
                $_product['sku'] = $item['sku'];
                $_product['barcode'] = addSuffix(substr($item['barcode'], 0, 10));
                $size = explode('-', $item['size']);
                $_product['size'] = addSuffix($size[0]);
                $_product['weight'] = $item['weight'];
                $_product['weightUnit'] = $item['weightUnit'];
                $_product['currency'] = $item['currency'];
                $_product['priceMsrp'] = $item['priceMsrp'];
                $_product['priceCost'] = $item['priceCost'];
                $_product['priceRetail'] = $item['priceRetail'];
                $_product['saleCurrency'] = $item['saleCurrency'];
                $_product['saleMsrp'] = $item['saleMsrp'];
                $_product['saleRetail'] = $item['saleRetail'];
                $_product['saleCost'] = $item['saleCost'];
                $_product['qty'] = $item['qty'];
                $_products[] = $_product;
                $strjson = json_encode($_products);
                $result = $tm->_curl('/v2/restapi/product/market/sku/update', $strjson);
                echo '<pre style="border: 1px solid #f44336;">'.print_r($result,1).'</pre>';exit;
            }
            //$detail = $tm->productInfo($v['code']);
            //$data[] = $v['code'];
        }
    }

}
function addSuffix($str)
{
    $uniq = uniqid();
    $uniq = substr($uniq, -5);
    return $str . '-' . $uniq;
}

//$productData = $TmallProduct->makeProductData($itemNo, $templateNo);
//$updateRes = $TmallProduct->productUpdate($sRow['sellerProductId'], $productData, $title);
//echo '<pre style="border: 1px solid #126cb8;">' . print_r($opts, 1) . '</pre>';
echo '<pre style="border: 1px solid #126cb8;">' . print_r('ok', 1) . '</pre>';
exit;
