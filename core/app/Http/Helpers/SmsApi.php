<?php

/**
 * Created by PhpStorm.
 * User: stebio
 * Date: 27/04/16
 * Time: 11:44
 */
namespace App\Helpers;

use DB;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Session;

class SmsApi
{

    public function isSmsapi($data)
    {

        $sender = $data['sender'];
        $data['message'] = urlencode($data['message']);
        $smsapiUrl = 'https://app.emisms.com/sms/api?action=send-sms&api_key='.$data['cle_api'].'&to=225'.$data['to'].'&from='.$data['sender'].'&sms='.$data['message'];
        $reste_sms = file_get_contents($smsapiUrl);
        $reste_array = json_decode($reste_sms,true);
        if ($reste_sms) {
            $reste_array['0']['code'] = 'ok';
        }

        return $reste_array['0']['code'];
    }

    public function converUnicode($text)
    {

        $convert = new Unicode();

        return $text = $convert->str_to_unicode($text, 'UTF-8');
    }

    public function soldeByApi($data){
        $solde = 0;
        $smsapiUrl = 'https://app.emisms.com/sms/api?action=check-balance&api_key='.$data.'&response=json';
        $reste_solde = file_get_contents($smsapiUrl);
        $reste_array = json_decode($reste_solde,true);

        if ($reste_solde && !empty($reste_array)) {
            $solde = isset($reste_array['balance']) ? $reste_array['balance'] : 0;
        }
        return $solde;
    }
}
