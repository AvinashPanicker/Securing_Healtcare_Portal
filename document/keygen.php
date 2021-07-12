<?php
function generate()
{
    // Set the key parameters
    $config = array(
        "digest_alg" => "sha256",
        "private_key_bits" => 1024,
        "private_key_type" => OPENSSL_KEYTYPE_RSA,
    );

    // Create the private and public key
    $res = openssl_pkey_new($config);

    // Extract the private key from $res to $privKey
    openssl_pkey_export($res, $privKey);

    // Extract the public key from $res to $pubKey
    $pubKey = openssl_pkey_get_details($res);

echo $privKey."<br><br><br>";

echo $pubKey["key"];

$myfile = fopen("private.txt", "w") or die("Unable to open file!");

fwrite($myfile, $privKey);
fclose($myfile);




$myfile = fopen("public.txt", "w") or die("Unable to open file!");

fwrite($myfile, $pubKey["key"]);
fclose($myfile);






    return array(
        'private' => $privKey,
        'public' => $pubKey["key"],
        'type' => $config,
    );
}

// Encrypt data using the public key
function encrypt($data, $publicKey)
{
    // Encrypt the data using the public key
    openssl_public_encrypt($data, $encryptedData, $publicKey);

    // Return encrypted data
    return $encryptedData;
}

// Decrypt data using the private key
function decrypt($data, $privateKey)
{
    // Decrypt the data using the private key
    openssl_private_decrypt($data, $decryptedData, $privateKey);

    // Return decrypted data
    return $decryptedData;
}


$arrKeys = generate();




$data="ANISH MATHEW";

$my_file = 'public.txt';
$handle = fopen($my_file, 'r');
$publicKey = fread($handle,filesize($my_file));


echo "<br><br>ENCRYPTED DATA -----------------------------------------------------<br>";
echo encrypt($data, $publicKey);
$enc=encrypt($data, $publicKey);
echo "<br><br>DECRYPTED DATA-----------------------------------------------------<br>";


$my_file = 'private.txt';
$handle = fopen($my_file, 'r');
$privateKey = fread($handle,filesize($my_file));



echo decrypt($enc, $privateKey);




?>