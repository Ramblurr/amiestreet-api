/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.amiestreet.api {

  import flash.net.Responder;
  import flash.net.NetConnection;

  public class UserApi {
    private var connection:NetConnection;

    public function UserApi(conn:NetConnection) {
      connection = conn;
    }

    public function playlists(user:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Array):void {
          if(onSuccess != null) {
            onSuccess(ThriftUtils.makeList(PlaylistVO, result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('UserApi.playlists', resp, {user: user});
    } // end playlists

    public function get(user:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Object):void {
          if(onSuccess != null) {
            onSuccess(new UserVO(result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('UserApi.get', resp, {user: user});
    } // end get

    public function multiGet(userIdList:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Object):void {
          if(onSuccess != null) {
            onSuccess(new UserVO(result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('UserApi.multiGet', resp, {userIdList: userIdList});
    } // end multiGet

    public function friends(user:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Array):void {
          if(onSuccess != null) {
            onSuccess(ThriftUtils.makeList(UserVO, result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('UserApi.friends', resp, {user: user});
    } // end friends

    public function create(email:String, password:String, username:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Object):void {
          if(onSuccess != null) {
            onSuccess(new CreateUserResponseVO(result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('UserApi.create', resp, {email: email, password: password, username: username});
    } // end create

    public function savedItemCount(user:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Object):void {
          if(onSuccess != null) {
            onSuccess(new int(result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('UserApi.savedItemCount', resp, {user: user});
    } // end savedItemCount

    public function savedAlbums(user:String, onSuccess:Function = null, onError:Function = null):void {
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
      connection.call('UserApi.savedAlbums', resp, {user: user});
    } // end savedAlbums

    public function savedSongs(user:String, onSuccess:Function = null, onError:Function = null):void {
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
      connection.call('UserApi.savedSongs', resp, {user: user});
    } // end savedSongs

    public function recs(user:String, limit:int, offset:int, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Array):void {
          if(onSuccess != null) {
            onSuccess(ThriftUtils.makeList(RecVO, result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('UserApi.recs', resp, {user: user, limit: limit, offset: offset});
    } // end recs

    public function playHistory(user:String, limit:int, offset:int, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Array):void {
          if(onSuccess != null) {
            onSuccess(ThriftUtils.makeList(PlayHistoryVO, result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('UserApi.playHistory', resp, {user: user, limit: limit, offset: offset});
    } // end playHistory

    public function save(fingerprint:String, type:String, id:String, onSuccess:Function = null, onError:Function = null):void {
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
      connection.call('UserApi.save', resp, {fingerprint: fingerprint, type: type, id: id});
    } // end save

    public function fannedArtists(user:String, onSuccess:Function = null, onError:Function = null):void {
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
      connection.call('UserApi.fannedArtists', resp, {user: user});
    } // end fannedArtists

  }
}
