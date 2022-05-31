<?php
include_once './inc_common.php';
include_once './TmallProduct.php';

$tm = new TmallProduct();
$detail = $tm->productInfo('DE8506671-0f108');
$item = $detail['data'];
foreach ($item['items'] as $k => $v) {
    $item['items'][$k]['barcode'] = addSuffix(substr($v['barcode'], 0, 10));
}
$item['title'] = '[Kakao Friends] MILKY 不锈钢保温杯 - 狮子(500ml)';

$_products = [];
$_product = [];
$_product['code'] = $item['code'];
$_product['model'] = $item['model'];
$_product['brand'] = $item['brand'];
$_product['category'] = $item['category'];
$_product['tkofCategoryId'] = $item['tkofCategoryId'];
$_product['title'] = $item['title'];
$_product['color'] = $item['color'];
$_product['material'] = $item['material'];
$_product['description'] = $item['description'];
$_product['origin'] = $item['origin'];
$_product['productImages'] = $item['productImages'];
$_product['productType'] = $item['productType'];
$_product['sizeChartType'] = $item['sizeChartType'];
$_product['sizeType'] = $item['sizeType'];
$_product['industry'] = $item['industry'];
$_product['saleType'] = $item['saleType'];
$_product['customAttributes'] = $item['customAttributes'];
$_product['items'] = $item['items'];
$_products[] = $_product;
$strjson = json_encode($_products);
$result = $tm->_curl('/v2/restapi/product/market/update', $strjson);
echo '<pre style="border: 1px solid #126cb8;">' . print_r($result, 1) . '</pre>';
$detailok = $tm->productInfo('DE8506671-0f108');
echo '<pre style="border: 1px solid #126cb8;">'.print_r($detailok,1).'</pre>';exit;

function addSuffix($str)
{
    $uniq = uniqid();
    $uniq = substr($uniq, -5);
    return $str . '-' . $uniq;
}

//$productData = $TmallProduct->makeProductData($itemNo, $templateNo);
//$updateRes = $TmallProduct->productUpdate($sRow['sellerProductId'], $productData, $title);
//echo '<pre style="border: 1px solid #126cb8;">' . print_r($opts, 1) . '</pre>';
echo '<pre style="border: 1px solid #126cb8;">' . print_r($ks . ': ok->' . $knum, 1) . '</pre>';
exit;
