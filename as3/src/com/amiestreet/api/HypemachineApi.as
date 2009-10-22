/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.amiestreet.api {

  import flash.net.Responder;
  import flash.net.NetConnection;

  public class HypemachineApi {
    private var connection:NetConnection;

    public function HypemachineApi(conn:NetConnection) {
      connection = conn;
    }

    public function lovedTracks(username:String, page:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Array):void {
          if(onSuccess != null) {
            onSuccess(ThriftUtils.makeList(HypemachineSongVO, result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('HypemachineApi.lovedTracks', resp, {username: username, page: page});
    } // end lovedTracks

    public function listenHistory(username:String, page:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Array):void {
          if(onSuccess != null) {
            onSuccess(ThriftUtils.makeList(HypemachineSongVO, result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('HypemachineApi.listenHistory', resp, {username: username, page: page});
    } // end listenHistory

  }
}
