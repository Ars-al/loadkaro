<?php

namespace App\Services;

use App\Models\Customers;
use App\Models\Transporters;
use Twilio\Rest\Client;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;

class OtpService
{
    private static $apiUrl = 'http://bhashsms.com/api/sendmsg.php';

    // Send OTP via SMS using BhashSMS
    public static function sendSms($phone, $otp)
    {
        //     $response = Http::get(self::$apiUrl, [
        //         'user' => 'nonstopcourier',
        //         'pass' => 'nonstop',
        //         'sender' => 'NONSTP',
        //         'phone' => $phone,
        //         'text' => "Welcome to LoadKaro. Your OTP is $otp",
        //         'priority' => 'ndnd',
        //         'stype' => 'normal',
        //     ]);

        //     if ($response->successful()) {
        //         return true;
        //     }

        //     return false;
        // }
        try {
            $response = Http::get(self::$apiUrl, [
                'user' => 'nonstopcourier',
                'pass' => 'nonstop',
                'sender' => 'NONSTP',
                'phone' => $phone,
                // 'template_id' => '1707161915457564042', // Template ID
                'text' => "Welcome to LoadKaro. Your OTP is $otp", // The message you want to send
                'priority' => 'ndnd',
                'stype' => 'normal',
            ]);

            if ($response->successful()) {
                return true;
            }

            // Log the response for debugging
            Log::error('SMS sending failed: ' . $response->body());
        } catch (\Exception $e) {
            // Log any exceptions that occur
            Log::error('Error sending SMS: ' . $e->getMessage());
        }

        return false;
    }

    // Store OTP in cache for verification
    public static function storeOtp($phone, $otp)
    {
        // Cache::put('otp_' . $phone, $otp, 5);
        // Cache::put('otp_' . $phone, $otp, now()->addMinutes(10));
        $customer = Customers::where('phone', $phone)->first();

        if ($customer) {
            $customer->update([
                'phone_otp' => $otp,
                'phone_otp_expires_at' => now()->addMinutes(5), // Set OTP expiration time
            ]);
        } else {
            Log::error("Customer with phone {$phone} not found.");
        }
    }

    // Verify OTP from cache
    public static function verifyOtp($phone, $otp)
    {

        $otpRecord = Customers::where('phone', $phone)
            ->where('phone_otp', $otp)
            ->latest()
            ->first();

            if ($otpRecord) {
                // Check if the OTP is still valid
                if ($otpRecord->phone_otp_expires_at && $otpRecord->phone_otp_expires_at->isFuture()) {
                    // OTP is valid, mark it as used by clearing it
                    $otpRecord->update([
                        'phone_otp' => null,
                        'phone_otp_expires_at' => null,
                    ]);

                    return true;
                }
            }

            return false;
        // $storedOtp = Cache::get('otp_' . $phone);

        // // Log the stored OTP and the input OTP for debugging
        // Log::info("Stored OTP: {$storedOtp}, Input OTP: {$otp}");

        // if ($storedOtp && $storedOtp === $otp) {
        //     // OTP matches
        //     Cache::forget('otp_' . $phone); // Remove OTP from cache after successful verification
        //     Log::info("OTP verified successfully for phone: {$phone}");
        //     return true;
        // }
        // Log::warning("Invalid OTP for phone: {$phone}. Stored OTP: {$storedOtp}, Input OTP: {$otp}");
        // return false; // OTP does not match or expired
    }

    public static function verifyOtpTransporter($phone, $otp)
    {
        $otpRecord = Transporters::where('phone', $phone)
            ->where('phone_otp', $otp)
            ->latest()
            ->first();

            if ($otpRecord) {
                if ($otpRecord->phone_otp_expires_at && $otpRecord->phone_otp_expires_at->isFuture()) {
                    $otpRecord->update([
                        'phone_otp' => null,
                        'phone_otp_expires_at' => null,
                    ]);

                    return true;
                }
            }

            return false;
    }
}
