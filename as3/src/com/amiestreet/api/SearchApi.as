/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.amiestreet.api {

  import flash.net.Responder;
  import flash.net.NetConnection;

  public class SearchApi {
    private var connection:NetConnection;

    public function SearchApi(conn:NetConnection) {
      connection = conn;
    }

    public function artists(query:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Array):void {
          if(onSuccess != null) {
            onSuccess(ThriftUtils.makeList(ArtistVO, result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('SearchApi.artists', resp, {query: query});
    } // end artists

    public function albums(query:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Array):void {
          if(onSuccess != null) {
            onSuccess(ThriftUtils.makeList(AlbumVO, result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('SearchApi.albums', resp, {query: query});
    } // end albums

    public function songs(query:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Array):void {
          if(onSuccess != null) {
            onSuccess(ThriftUtils.makeList(SongVO, result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('SearchApi.songs', resp, {query: query});
    } // end songs

    public function find(artists:String, songs:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Object):void {
          if(onSuccess != null) {
            onSuccess(new SearchFindResults(result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('SearchApi.find', resp, {artists: artists, songs: songs});
    } // end find

  }
}
