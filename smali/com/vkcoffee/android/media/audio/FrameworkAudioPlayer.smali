.class public Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;
.super Lcom/vkcoffee/android/media/audio/AudioPlayer;
.source "FrameworkAudioPlayer.java"


# static fields
.field private static final PROXY_PORT:I = 0xbcc9

.field private static final TAG:Ljava/lang/String; = "vk-framework-player"

.field private static buggyPlayer:Z


# instance fields
.field private inited:Z

.field private player:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/lib/libCedarX.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->buggyPlayer:Z

    .line 34
    sget-boolean v0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->buggyPlayer:Z

    if-eqz v0, :cond_0

    .line 35
    const-string/jumbo v0, "vk"

    const-string/jumbo v1, "Found CedarX, enabling workaround!"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    const/4 v9, 0x1

    .line 41
    invoke-direct {p0}, Lcom/vkcoffee/android/media/audio/AudioPlayer;-><init>()V

    .line 23
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->inited:Z

    .line 42
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    .line 45
    :try_start_0
    const-string/jumbo v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 46
    invoke-static {p2, p3}, Lcom/vkcoffee/android/cache/AudioCache;->isCached(II)Z

    move-result v1

    .line 47
    .local v1, "isCached":Z
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 48
    const/4 v1, 0x0

    .line 51
    :cond_0
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "enableAudioCache"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 52
    .local v0, "enableCache":Z
    if-eqz v1, :cond_1

    .line 53
    invoke-static {p2, p3}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->saveCoversFromFile(II)V

    .line 55
    :cond_1
    if-eqz v1, :cond_3

    sget-boolean v4, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->buggyPlayer:Z

    if-nez v4, :cond_3

    .line 56
    invoke-static {p2, p3}, Lcom/vkcoffee/android/cache/AudioCache;->updatePlayTime(II)V

    .line 57
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    .end local v0    # "enableCache":Z
    .end local v1    # "isCached":Z
    :goto_0
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$1;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$1;-><init>(Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 89
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$2;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$2;-><init>(Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 101
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$3;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$3;-><init>(Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 111
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$4;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$4;-><init>(Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 124
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4, v5, v9}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 125
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$5;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$5;-><init>(Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 141
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 142
    :cond_2
    return-void

    .line 58
    .restart local v0    # "enableCache":Z
    .restart local v1    # "isCached":Z
    :cond_3
    if-eqz v0, :cond_4

    :try_start_1
    invoke-static {}, Lcom/vkcoffee/android/AudioPlayerService;->isEnoughSpaceToCache()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    sget-boolean v4, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->buggyPlayer:Z

    if-eqz v4, :cond_7

    if-eqz v1, :cond_7

    .line 60
    :cond_5
    if-eqz v1, :cond_6

    .line 61
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 63
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "___"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "___"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 65
    .local v2, "u":Ljava/lang/String;
    :try_start_2
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "http://127.0.0.1:48329/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 66
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 69
    .end local v2    # "u":Ljava/lang/String;
    :cond_7
    :try_start_3
    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 72
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 78
    .end local v0    # "enableCache":Z
    .end local v1    # "isCached":Z
    :catch_1
    move-exception v3

    .line 79
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk-framework-player"

    const-string/jumbo v5, "Error setting data source"

    invoke-static {v4, v5, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 76
    .end local v3    # "x":Ljava/lang/Exception;
    :cond_8
    :try_start_4
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->inited:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method


# virtual methods
.method public getAudioSessionID()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->inited:Z

    if-nez v0, :cond_0

    .line 172
    const/4 v0, -0x1

    .line 174
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 219
    :goto_0
    return v0

    .line 217
    :catch_0
    move-exception v0

    .line 219
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 157
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 152
    return-void
.end method

.method public prepareAsync()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 147
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 187
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    .line 188
    return-void
.end method

.method public requestCache(Z)V
    .locals 1
    .param p1, "cache"    # Z

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/cache/AudioCache;->saveCurrent(Z)V

    .line 195
    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 180
    return-void
.end method

.method public setLooping(Z)V
    .locals 1
    .param p1, "loop"    # Z

    .prologue
    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "vol"    # F

    .prologue
    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    goto :goto_0
.end method
