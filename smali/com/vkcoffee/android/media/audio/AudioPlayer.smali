.class public abstract Lcom/vkcoffee/android/media/audio/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/media/audio/AudioPlayer$PreparedListener;,
        Lcom/vkcoffee/android/media/audio/AudioPlayer$ErrorListener;,
        Lcom/vkcoffee/android/media/audio/AudioPlayer$CompletionListener;,
        Lcom/vkcoffee/android/media/audio/AudioPlayer$PositionListener;
    }
.end annotation


# static fields
.field public static final SHARED_SESSION_ID:I


# instance fields
.field protected completionListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$CompletionListener;

.field protected errorListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$ErrorListener;

.field protected positionListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$PositionListener;

.field protected preparedListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$PreparedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x7ffffffe

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/media/audio/AudioPlayer;->SHARED_SESSION_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method public static getInstance(IILjava/lang/String;)Lcom/vkcoffee/android/media/audio/AudioPlayer;
    .locals 5
    .param p0, "ownerID"    # I
    .param p1, "audioID"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "enableAudioCache"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 26
    .local v0, "enableCache":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    .line 27
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    invoke-direct {v1, p2, p0, p1}, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;-><init>(Ljava/lang/String;II)V

    .line 30
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-direct {v1, p2, p0, p1}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;-><init>(Ljava/lang/String;II)V

    goto :goto_0
.end method


# virtual methods
.method public abstract getAudioSessionID()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getPosition()I
.end method

.method public abstract isLooping()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract prepareAsync()V
.end method

.method public abstract release()V
.end method

.method public abstract requestCache(Z)V
.end method

.method public abstract seek(I)V
.end method

.method public setCompletionListener(Lcom/vkcoffee/android/media/audio/AudioPlayer$CompletionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkcoffee/android/media/audio/AudioPlayer$CompletionListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/AudioPlayer;->completionListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$CompletionListener;

    .line 65
    return-void
.end method

.method public setErrorListener(Lcom/vkcoffee/android/media/audio/AudioPlayer$ErrorListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkcoffee/android/media/audio/AudioPlayer$ErrorListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/AudioPlayer;->errorListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$ErrorListener;

    .line 69
    return-void
.end method

.method public abstract setLooping(Z)V
.end method

.method public setPositionListener(Lcom/vkcoffee/android/media/audio/AudioPlayer$PositionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkcoffee/android/media/audio/AudioPlayer$PositionListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/AudioPlayer;->positionListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$PositionListener;

    .line 61
    return-void
.end method

.method public setPreparedListener(Lcom/vkcoffee/android/media/audio/AudioPlayer$PreparedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkcoffee/android/media/audio/AudioPlayer$PreparedListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/AudioPlayer;->preparedListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$PreparedListener;

    .line 73
    return-void
.end method

.method public abstract setVolume(F)V
.end method
