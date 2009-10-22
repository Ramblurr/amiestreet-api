/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.amiestreet.api {

  import flash.net.Responder;
  import flash.net.NetConnection;

  public class AuthApi {
    private var connection:NetConnection;

    public function AuthApi(conn:NetConnection) {
      connection = conn;
    }

    public function login(username:String, password:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Object):void {
          if(onSuccess != null) {
            onSuccess(new AuthUserVO(result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('AuthApi.login', resp, {username: username, password: password});
    } // end login

    public function logout(fingerprint:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Object):void {
          if(onSuccess != null) {
            onSuccess(new Boolean(result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('AuthApi.logout', resp, {fingerprint: fingerprint});
    } // end logout

    public function getFingerprint(onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Object):void {
          if(onSuccess != null) {
            onSuccess(new String(result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('AuthApi.getFingerprint', resp, {});
    } // end getFingerprint

    public function isFingerprintValid(fingerprint:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Object):void {
          if(onSuccess != null) {
            onSuccess(new Boolean(result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('AuthApi.isFingerprintValid', resp, {fingerprint: fingerprint});
    } // end isFingerprintValid

    public function getActor(fingerprint:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Object):void {
          if(onSuccess != null) {
            onSuccess(new AuthUserVO(result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('AuthApi.getActor', resp, {fingerprint: fingerprint});
    } // end getActor

    public function requestOfflineToken(username:String, password:String, appName:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Object):void {
          if(onSuccess != null) {
            onSuccess(new String(result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('AuthApi.requestOfflineToken', resp, {username: username, password: password, appName: appName});
    } // end requestOfflineToken

    public function useOfflineToken(token:String, appName:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Object):void {
          if(onSuccess != null) {
            onSuccess(new AuthUserVO(result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('AuthApi.useOfflineToken', resp, {token: token, appName: appName});
    } // end useOfflineToken

  }
}