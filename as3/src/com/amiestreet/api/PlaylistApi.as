/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */
package com.amiestreet.api {

  import flash.net.Responder;
  import flash.net.NetConnection;

  public class PlaylistApi {
    private var connection:NetConnection;

    public function PlaylistApi(conn:NetConnection) {
      connection = conn;
    }

    public function get(playlistId:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Object):void {
          if(onSuccess != null) {
            onSuccess(new PlaylistVO(result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('PlaylistApi.get', resp, {playlistId: playlistId});
    } // end get

    public function multiGet(playlistIdList:String, onSuccess:Function = null, onError:Function = null):void {
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
      connection.call('PlaylistApi.multiGet', resp, {playlistIdList: playlistIdList});
    } // end multiGet

    public function create(fingerprint:String, title:String, description:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Object):void {
          if(onSuccess != null) {
            onSuccess(new PlaylistVO(result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('PlaylistApi.create', resp, {fingerprint: fingerprint, title: title, description: description});
    } // end create

    public function copy(fingerprint:String, playlistId:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Object):void {
          if(onSuccess != null) {
            onSuccess(new PlaylistVO(result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('PlaylistApi.copy', resp, {fingerprint: fingerprint, playlistId: playlistId});
    } // end copy

    public function info(playlistId:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Object):void {
          if(onSuccess != null) {
            onSuccess(new PlaylistProfileVO(result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('PlaylistApi.info', resp, {playlistId: playlistId});
    } // end info

    public function addCollaborator(fingerprint:String, playlistId:String, collaboratorId:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Array):void {
          if(onSuccess != null) {
            onSuccess(ThriftUtils.makeList(PlaylistCollaboratorVO, result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('PlaylistApi.addCollaborator', resp, {fingerprint: fingerprint, playlistId: playlistId, collaboratorId: collaboratorId});
    } // end addCollaborator

    public function removeCollaborator(fingerprint:String, playlistId:String, collaboratorId:String, onSuccess:Function = null, onError:Function = null):void {
      var resp:Responder = new Responder(
        function(result:Array):void {
          if(onSuccess != null) {
            onSuccess(ThriftUtils.makeList(PlaylistCollaboratorVO, result));
          }
        },
        function(error:Object):void {
          if(onError != null) {
            onError(error);
          }
        });
      connection.call('PlaylistApi.removeCollaborator', resp, {fingerprint: fingerprint, playlistId: playlistId, collaboratorId: collaboratorId});
    } // end removeCollaborator

    public function addSong(fingerprint:String, playlistId:String, songId:String, position:int, onSuccess:Function = null, onError:Function = null):void {
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
      connection.call('PlaylistApi.addSong', resp, {fingerprint: fingerprint, playlistId: playlistId, songId: songId, position: position});
    } // end addSong

    public function addSongList(fingerprint:String, playlistId:String, songIdList:String, position:int, onSuccess:Function = null, onError:Function = null):void {
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
      connection.call('PlaylistApi.addSongList', resp, {fingerprint: fingerprint, playlistId: playlistId, songIdList: songIdList, position: position});
    } // end addSongList

    public function removeSong(fingerprint:String, playlistId:String, songId:String, onSuccess:Function = null, onError:Function = null):void {
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
      connection.call('PlaylistApi.removeSong', resp, {fingerprint: fingerprint, playlistId: playlistId, songId: songId});
    } // end removeSong

    public function removeSongList(fingerprint:String, playlistId:String, songIdList:String, onSuccess:Function = null, onError:Function = null):void {
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
      connection.call('PlaylistApi.removeSongList', resp, {fingerprint: fingerprint, playlistId: playlistId, songIdList: songIdList});
    } // end removeSongList

    public function updateSequence(fingerprint:String, playlistId:String, songIdList:String, onSuccess:Function = null, onError:Function = null):void {
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
      connection.call('PlaylistApi.updateSequence', resp, {fingerprint: fingerprint, playlistId: playlistId, songIdList: songIdList});
    } // end updateSequence

    public function updateTitle(fingerprint:String, playlistId:String, title:String, onSuccess:Function = null, onError:Function = null):void {
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
      connection.call('PlaylistApi.updateTitle', resp, {fingerprint: fingerprint, playlistId: playlistId, title: title});
    } // end updateTitle

    public function updateDescription(fingerprint:String, playlistId:String, description:String, onSuccess:Function = null, onError:Function = null):void {
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
      connection.call('PlaylistApi.updateDescription', resp, {fingerprint: fingerprint, playlistId: playlistId, description: description});
    } // end updateDescription

    public function deletePlaylist(fingerprint:String, playlistId:String, onSuccess:Function = null, onError:Function = null):void {
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
      connection.call('PlaylistApi.deletePlaylist', resp, {fingerprint: fingerprint, playlistId: playlistId});
    } // end deletePlaylist

  }
}
