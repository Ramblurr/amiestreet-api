/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.amiestreet.api {

  import flash.net.Responder;
  import flash.net.NetConnection;

  public class BrowseApi {
    private var connection:NetConnection;

    public function BrowseApi(conn:NetConnection) {
      connection = conn;
    }

    public function newReleases(offset:int, limit:int, genreGroupId:String, onSuccess:Function = null, onError:Function = null):void {
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
      connection.call('BrowseApi.newReleases', resp, {offset: offset, limit: limit, genreGroupId: genreGroupId});
    } // end newReleases

    public function popular(offset:int, limit:int, genreGroupId:String, onSuccess:Function = null, onError:Function = null):void {
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
      connection.call('BrowseApi.popular', resp, {offset: offset, limit: limit, genreGroupId: genreGroupId});
    } // end popular

    public function top25Albums(genreGroupId:String, onSuccess:Function = null, onError:Function = null):void {
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
      connection.call('BrowseApi.top25Albums', resp, {genreGroupId: genreGroupId});
    } // end top25Albums

    public function top25Songs(genreGroupId:String, onSuccess:Function = null, onError:Function = null):void {
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
      connection.call('BrowseApi.top25Songs', resp, {genreGroupId: genreGroupId});
    } // end top25Songs

    public function artists(genreIds:String, sort:int, page:int, perPage:int, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Object):void {
          if(onSuccess != null) {
            onSuccess(new PagedArtistListVO(result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('BrowseApi.artists', resp, {genreIds: genreIds, sort: sort, page: page, perPage: perPage});
    } // end artists

    public function albums(genreIds:String, sort:int, priceFilter:String, page:int, perPage:int, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Object):void {
          if(onSuccess != null) {
            onSuccess(new PagedArtistListVO(result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('BrowseApi.albums', resp, {genreIds: genreIds, sort: sort, priceFilter: priceFilter, page: page, perPage: perPage});
    } // end albums

    public function songs(genreIds:String, sort:int, priceFilter:String, page:int, perPage:int, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Object):void {
          if(onSuccess != null) {
            onSuccess(new PagedArtistListVO(result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('BrowseApi.songs', resp, {genreIds: genreIds, sort: sort, priceFilter: priceFilter, page: page, perPage: perPage});
    } // end songs

    public function genreGroupTree(onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Array):void {
          if(onSuccess != null) {
            onSuccess(ThriftUtils.makeList(GenreGroupTreeVO, result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('BrowseApi.genreGroupTree', resp, {});
    } // end genreGroupTree

  }
}
