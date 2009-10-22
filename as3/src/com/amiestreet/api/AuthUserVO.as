/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.amiestreet.api {

  [Bindable]
  dynamic public class AuthUserVO {
    public var fingerprint:String;
    public var user:UserVO;
    public var balance:Number;
    public var recBalance:int;

    public function AuthUserVO(remote:Object = null) {
      if(remote != null) {
        fingerprint = new String(remote.fingerprint);
        user = new UserVO(remote.user);
        balance = remote.balance;
        recBalance = remote.recBalance;
      }
    }
  }
}
