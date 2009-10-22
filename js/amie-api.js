var amiestreet = amiestreet || {
  __gateway: 'http://amiestreet.com/api/v0.1/',
  __argsToObj: function(args){
      var ret = {};
      jQuery.each(args.callee.toString().split(') {')[0].replace('function '+args.callee.name+'(', '').split(','), function(i){
          if(jQuery.trim(this)!='callback'){
              ret[jQuery.trim(this)] = args[i];
          }
      });
      return ret;
  },
  __call:function(service, method, args){
      var callback = (jQuery.isFunction(args[args.length-1])) ? args[args.length-1] : null;
      var url=amiestreet.__gateway+service+'/'+method+'.json?jsoncallback=?';
      var r = function(){
          jQuery.getJSON(
              url, 
              jQuery.param(amiestreet.__argsToObj(args)), 
              function(data){
                  if(jQuery.isFunction(callback)){
                      callback(data);
                  }
              }
          );
      };
      if(!jQuery){
          var s = document.createElement('<script />');
          s.src='http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js';
          s.type='text/javascript';
          s.onload=function(){
              jQuery.noConflict();
              r();
          };
          document.getElementsByTagName('head')[0].appendChild(s);
      }else{
          r();
      }
  },
  AmieApiErrorCode : {API_EC_UNKNOWN:0,API_EC_METHOD:1,API_EC_BADFINGERPRINT:2,API_EC_ARTIST_ALREADY_EXISTS:3,API_EC_USER_NOT_FOUND:4,API_EC_SONG_NOT_FOUND:5,API_EC_ALBUM_NOT_FOUND:6,API_EC_ARTIST_NOT_FOUND:7,API_EC_PLAYLIST_NOT_FOUND:8,API_EC_ALBUM_ALREADY_EXISTS:9,API_EC_SONG_ALREADY_EXISTS:10,API_EC_LOGIN_REQUIRED:11,API_EC_REC_NOT_FOUND:12,API_EC_SEARCH_ERROR:13,API_EC_SEARCH_FIND_MISMATCH:14,API_EC_SEARCH_FIND_ARTIST_REQUIRED:15,API_EC_PANDORA_INVALID_USERNAME:16,API_EC_PANDORA_PRIVATE_PROFILE:17,API_EC_CREATE_USER_ERROR:18,API_EC_OFFLINE_TOKEN_DENIED:19},
  AmieBrowseSortOptions : {SORT_BEST_SELLING:0,SORT_AMIE_INDEX:1,SORT_DATE_ADDED:2,SORT_NAME_DESC:3},
  AmieBrowsePriceFilterOptions : {FILTER_PRICE_NONE:0,FILTER_PRICE_FREE:1,FILTER_PRICE_CHEAP:2,FILTER_PRICE_BARGAIN:3,FILTER_PRICE_DEAL:4,FILTER_PRICE_POPULAR:5},
  // Service: ArtistApi
  ArtistApi_get:function(artist,callback){this.__call('ArtistApi', 'get', arguments);},
  ArtistApi_multiGet:function(artistIdString,callback){this.__call('ArtistApi', 'multiGet', arguments);},
  ArtistApi_info:function(artist,callback){this.__call('ArtistApi', 'info', arguments);},
  ArtistApi_songs:function(artist,callback){this.__call('ArtistApi', 'songs', arguments);},
  ArtistApi_topSongs:function(artist,callback){this.__call('ArtistApi', 'topSongs', arguments);},
  ArtistApi_albums:function(artist,callback){this.__call('ArtistApi', 'albums', arguments);},
  ArtistApi_topAlbums:function(artist,callback){this.__call('ArtistApi', 'topAlbums', arguments);},
  ArtistApi_similarArtists:function(artist,callback){this.__call('ArtistApi', 'similarArtists', arguments);},
  ArtistApi_labelSimilarArtists:function(artist,callback){this.__call('ArtistApi', 'labelSimilarArtists', arguments);},
  ArtistApi_genreSimilarArtists:function(artist,callback){this.__call('ArtistApi', 'genreSimilarArtists', arguments);},
  ArtistApi_recs:function(artist,callback){this.__call('ArtistApi', 'recs', arguments);},
  ArtistApi_bio:function(artist,callback){this.__call('ArtistApi', 'bio', arguments);},
  // Service: AlbumApi
  AlbumApi_get:function(album,callback){this.__call('AlbumApi', 'get', arguments);},
  AlbumApi_multiGet:function(albumIdString,callback){this.__call('AlbumApi', 'multiGet', arguments);},
  AlbumApi_similar:function(album,callback){this.__call('AlbumApi', 'similar', arguments);},
  AlbumApi_songs:function(album,callback){this.__call('AlbumApi', 'songs', arguments);},
  AlbumApi_info:function(album,callback){this.__call('AlbumApi', 'info', arguments);},
  AlbumApi_topSongs:function(album, limit,callback){this.__call('AlbumApi', 'topSongs', arguments);},
  AlbumApi_recs:function(album,callback){this.__call('AlbumApi', 'recs', arguments);},
  AlbumApi_topRecsWithReview:function(album,callback){this.__call('AlbumApi', 'topRecsWithReview', arguments);},
  AlbumApi_editorNote:function(album,callback){this.__call('AlbumApi', 'editorNote', arguments);},
  AlbumApi_getUsersWhoPurchasedWithPrices:function(album, offset, limit,callback){this.__call('AlbumApi', 'getUsersWhoPurchasedWithPrices', arguments);},
  // Service: SongApi
  SongApi_getSongById:function(id,callback){this.__call('SongApi', 'getSongById', arguments);},
  SongApi_recordPostPurchasePlay:function(id,callback){this.__call('SongApi', 'recordPostPurchasePlay', arguments);},
  SongApi_getUsersWhoPurchasedWithPrices:function(song, offset, limit,callback){this.__call('SongApi', 'getUsersWhoPurchasedWithPrices', arguments);},
  // Service: LibraryApi
  LibraryApi_numSongs:function(user,callback){this.__call('LibraryApi', 'numSongs', arguments);},
  LibraryApi_songs:function(user, page, limit,callback){this.__call('LibraryApi', 'songs', arguments);},
  LibraryApi_artists:function(user,callback){this.__call('LibraryApi', 'artists', arguments);},
  LibraryApi_albums:function(user,callback){this.__call('LibraryApi', 'albums', arguments);},
  LibraryApi_genres:function(user,callback){this.__call('LibraryApi', 'genres', arguments);},
  LibraryApi_banSong:function(fingerprint, songId,callback){this.__call('LibraryApi', 'banSong', arguments);},
  LibraryApi_banSongList:function(fingerprint, songIdList,callback){this.__call('LibraryApi', 'banSongList', arguments);},
  LibraryApi_unbanSong:function(fingerprint, songId,callback){this.__call('LibraryApi', 'unbanSong', arguments);},
  LibraryApi_unbanSongList:function(fingerprint, songIdList,callback){this.__call('LibraryApi', 'unbanSongList', arguments);},
  LibraryApi_bannedSongs:function(user,callback){this.__call('LibraryApi', 'bannedSongs', arguments);},
  LibraryApi_refreshLibrary:function(user, songIds,callback){this.__call('LibraryApi', 'refreshLibrary', arguments);},
  // Service: PlayerApi
  PlayerApi_scrobble:function(fingerprint, songId, status, instance,callback){this.__call('PlayerApi', 'scrobble', arguments);},
  // Service: AuthApi
  AuthApi_login:function(username, password,callback){this.__call('AuthApi', 'login', arguments);},
  AuthApi_logout:function(fingerprint,callback){this.__call('AuthApi', 'logout', arguments);},
  AuthApi_getFingerprint:function(callback){this.__call('AuthApi', 'getFingerprint', arguments);},
  AuthApi_isFingerprintValid:function(fingerprint,callback){this.__call('AuthApi', 'isFingerprintValid', arguments);},
  AuthApi_getActor:function(fingerprint,callback){this.__call('AuthApi', 'getActor', arguments);},
  AuthApi_requestOfflineToken:function(username, password, appName,callback){this.__call('AuthApi', 'requestOfflineToken', arguments);},
  AuthApi_useOfflineToken:function(token, appName,callback){this.__call('AuthApi', 'useOfflineToken', arguments);},
  // Service: FreebiesApi
  FreebiesApi_getPlaylist:function(genreGroupId, excludeSongIds,callback){this.__call('FreebiesApi', 'getPlaylist', arguments);},
  FreebiesApi_getPlaylistSongIds:function(genreGroupId, excludeSongIds,callback){this.__call('FreebiesApi', 'getPlaylistSongIds', arguments);},
  FreebiesApi_getAllGenresList:function(callback){this.__call('FreebiesApi', 'getAllGenresList', arguments);},
  FreebiesApi_getAllGenreGroups:function(callback){this.__call('FreebiesApi', 'getAllGenreGroups', arguments);},
  FreebiesApi_freeCountInGroup:function(genreGroupId,callback){this.__call('FreebiesApi', 'freeCountInGroup', arguments);},
  // Service: BrowseApi
  BrowseApi_newReleases:function(offset, limit, genreGroupId,callback){this.__call('BrowseApi', 'newReleases', arguments);},
  BrowseApi_popular:function(offset, limit, genreGroupId,callback){this.__call('BrowseApi', 'popular', arguments);},
  BrowseApi_top25Albums:function(genreGroupId,callback){this.__call('BrowseApi', 'top25Albums', arguments);},
  BrowseApi_top25Songs:function(genreGroupId,callback){this.__call('BrowseApi', 'top25Songs', arguments);},
  BrowseApi_artists:function(genreIds, sort, page, perPage,callback){this.__call('BrowseApi', 'artists', arguments);},
  BrowseApi_albums:function(genreIds, sort, priceFilter, page, perPage,callback){this.__call('BrowseApi', 'albums', arguments);},
  BrowseApi_songs:function(genreIds, sort, priceFilter, page, perPage,callback){this.__call('BrowseApi', 'songs', arguments);},
  BrowseApi_genreGroupTree:function(callback){this.__call('BrowseApi', 'genreGroupTree', arguments);},
  // Service: SearchApi
  SearchApi_artists:function(query,callback){this.__call('SearchApi', 'artists', arguments);},
  SearchApi_albums:function(query,callback){this.__call('SearchApi', 'albums', arguments);},
  SearchApi_songs:function(query,callback){this.__call('SearchApi', 'songs', arguments);},
  SearchApi_find:function(artists, songs,callback){this.__call('SearchApi', 'find', arguments);},
  // Service: PricingApi
  PricingApi_song:function(id,callback){this.__call('PricingApi', 'song', arguments);},
  // Service: UserApi
  UserApi_playlists:function(user,callback){this.__call('UserApi', 'playlists', arguments);},
  UserApi_get:function(user,callback){this.__call('UserApi', 'get', arguments);},
  UserApi_multiGet:function(userIdList,callback){this.__call('UserApi', 'multiGet', arguments);},
  UserApi_friends:function(user,callback){this.__call('UserApi', 'friends', arguments);},
  UserApi_create:function(email, password, username,callback){this.__call('UserApi', 'create', arguments);},
  UserApi_savedItemCount:function(user,callback){this.__call('UserApi', 'savedItemCount', arguments);},
  UserApi_savedAlbums:function(user,callback){this.__call('UserApi', 'savedAlbums', arguments);},
  UserApi_savedSongs:function(user,callback){this.__call('UserApi', 'savedSongs', arguments);},
  UserApi_recs:function(user, limit, offset,callback){this.__call('UserApi', 'recs', arguments);},
  UserApi_playHistory:function(user, limit, offset,callback){this.__call('UserApi', 'playHistory', arguments);},
  UserApi_save:function(fingerprint, type, id,callback){this.__call('UserApi', 'save', arguments);},
  UserApi_fannedArtists:function(user,callback){this.__call('UserApi', 'fannedArtists', arguments);},
  // Service: PlaylistApi
  PlaylistApi_get:function(playlistId,callback){this.__call('PlaylistApi', 'get', arguments);},
  PlaylistApi_multiGet:function(playlistIdList,callback){this.__call('PlaylistApi', 'multiGet', arguments);},
  PlaylistApi_create:function(fingerprint, title, description,callback){this.__call('PlaylistApi', 'create', arguments);},
  PlaylistApi_copy:function(fingerprint, playlistId,callback){this.__call('PlaylistApi', 'copy', arguments);},
  PlaylistApi_info:function(playlistId,callback){this.__call('PlaylistApi', 'info', arguments);},
  PlaylistApi_addCollaborator:function(fingerprint, playlistId, collaboratorId,callback){this.__call('PlaylistApi', 'addCollaborator', arguments);},
  PlaylistApi_removeCollaborator:function(fingerprint, playlistId, collaboratorId,callback){this.__call('PlaylistApi', 'removeCollaborator', arguments);},
  PlaylistApi_addSong:function(fingerprint, playlistId, songId, position,callback){this.__call('PlaylistApi', 'addSong', arguments);},
  PlaylistApi_addSongList:function(fingerprint, playlistId, songIdList, position,callback){this.__call('PlaylistApi', 'addSongList', arguments);},
  PlaylistApi_removeSong:function(fingerprint, playlistId, songId,callback){this.__call('PlaylistApi', 'removeSong', arguments);},
  PlaylistApi_removeSongList:function(fingerprint, playlistId, songIdList,callback){this.__call('PlaylistApi', 'removeSongList', arguments);},
  PlaylistApi_updateSequence:function(fingerprint, playlistId, songIdList,callback){this.__call('PlaylistApi', 'updateSequence', arguments);},
  PlaylistApi_updateTitle:function(fingerprint, playlistId, title,callback){this.__call('PlaylistApi', 'updateTitle', arguments);},
  PlaylistApi_updateDescription:function(fingerprint, playlistId, description,callback){this.__call('PlaylistApi', 'updateDescription', arguments);},
  PlaylistApi_deletePlaylist:function(fingerprint, playlistId,callback){this.__call('PlaylistApi', 'deletePlaylist', arguments);},
  // Service: ShrekApi
  ShrekApi_autocomplete:function(query,callback){this.__call('ShrekApi', 'autocomplete', arguments);},
  ShrekApi_recommend:function(pids,callback){this.__call('ShrekApi', 'recommend', arguments);},
  ShrekApi_playlist:function(artistIds, excludeSongIds,callback){this.__call('ShrekApi', 'playlist', arguments);},
  ShrekApi_stationToPids:function(station,callback){this.__call('ShrekApi', 'stationToPids', arguments);},
  // Service: AutocompleteApi
  AutocompleteApi_artists:function(query,callback){this.__call('AutocompleteApi', 'artists', arguments);},
  AutocompleteApi_albums:function(query,callback){this.__call('AutocompleteApi', 'albums', arguments);},
  AutocompleteApi_songs:function(query,callback){this.__call('AutocompleteApi', 'songs', arguments);},
  // Service: RecApi
  RecApi_latest:function(offset, limit,callback){this.__call('RecApi', 'latest', arguments);},
  RecApi_score:function(fingerprint, recId, score,callback){this.__call('RecApi', 'score', arguments);},
  RecApi_latestForTraining:function(fingerprint,callback){this.__call('RecApi', 'latestForTraining', arguments);},
  // Service: RecommendationsApi
  RecommendationsApi_isNew:function(callback){this.__call('RecommendationsApi', 'isNew', arguments);},
  RecommendationsApi_refresh:function(callback){this.__call('RecommendationsApi', 'refresh', arguments);},
  RecommendationsApi_addSeedArtist:function(name, source,callback){this.__call('RecommendationsApi', 'addSeedArtist', arguments);},
  RecommendationsApi_removeSeedArtist:function(name,callback){this.__call('RecommendationsApi', 'removeSeedArtist', arguments);},
  RecommendationsApi_listSeedArtists:function(callback){this.__call('RecommendationsApi', 'listSeedArtists', arguments);},
  RecommendationsApi_recommend:function(offset, count, genreGroup, fingerprint,callback){this.__call('RecommendationsApi', 'recommend', arguments);},
  // Service: SalesReportApi
  SalesReportApi_getBasicSalesReport:function(quarter, year,callback){this.__call('SalesReportApi', 'getBasicSalesReport', arguments);},
  // Service: PandoraApi
  PandoraApi_stations:function(user,callback){this.__call('PandoraApi', 'stations', arguments);},
  PandoraApi_bookmarkedSongs:function(user,callback){this.__call('PandoraApi', 'bookmarkedSongs', arguments);},
  PandoraApi_bookmarkedArtists:function(user,callback){this.__call('PandoraApi', 'bookmarkedArtists', arguments);},
  // Service: LastfmApi
  LastfmApi_userTopArtists:function(user, period,callback){this.__call('LastfmApi', 'userTopArtists', arguments);},
  // Service: HypemachineApi
  HypemachineApi_lovedTracks:function(username, page,callback){this.__call('HypemachineApi', 'lovedTracks', arguments);},
  HypemachineApi_listenHistory:function(username, page,callback){this.__call('HypemachineApi', 'listenHistory', arguments);},
  // Service: SongzaApi
  SongzaApi_playlist:function(username,callback){this.__call('SongzaApi', 'playlist', arguments);},
  // Service: TumblrApi
  TumblrApi_newPost:function(email, password, title, body, tags, group,callback){this.__call('TumblrApi', 'newPost', arguments);},
  // Service: NewsletterApi
  NewsletterApi_get:function(id,callback){this.__call('NewsletterApi', 'get', arguments);},
  NewsletterApi_latest:function(limit, offset,callback){this.__call('NewsletterApi', 'latest', arguments);},
  NewsletterApi_items:function(id,callback){this.__call('NewsletterApi', 'items', arguments);},
};
