.class public Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
.super Lcom/vkcoffee/android/media/audio/AudioPlayer;
.source "LowLevelAudioPlayer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;,
        Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;
    }
.end annotation


# static fields
.field private static final BACKOFF_DELAYS:[I

.field private static final BITRATE_TABLE:[[[I

.field public static final ID3_MAX_SIZE:I = 0xfa000

.field private static final SAMPLES_COEFFS:[[I

.field private static final SAMPLE_COUNT_TABLE:[[I

.field private static final SAMPLE_RATE_TABLE:[[I

.field private static final SLOT_SIZES:[I


# instance fields
.field private aid:I

.field private buffer:Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

.field private cacheRequested:Z

.field private codec:Landroid/media/MediaCodec;

.field private currentRequest:Lcom/squareup/okhttp/Call;

.field private dataSize:I

.field private decoderThread:Ljava/lang/Thread;

.field private delayedDownload:Ljava/lang/Runnable;

.field private downloadOffset:I

.field private downloadRetries:I

.field private downloaderSemaphore:Ljava/util/concurrent/Semaphore;

.field private downloaderThread:Ljava/lang/Thread;

.field private duration:F

.field private fileSize:I

.field private frameCount:I

.field private justStarted:Z

.field private lastTimestamp:I

.field private loop:Z

.field private mainHandler:Landroid/os/Handler;

.field private needSeekTo:I

.field private oid:I

.field private onPreparedCallbackCalled:Z

.field private final pauseLock:Ljava/lang/Object;

.field private paused:Z

.field private receiver:Landroid/content/BroadcastReceiver;

.field private released:Z

.field private requestCanceled:Z

.field private seekTable:[B

.field private track:Landroid/media/AudioTrack;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0xf

    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 53
    new-array v0, v6, [[I

    new-array v1, v7, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v5, [I

    aput-object v1, v0, v9

    const/4 v1, 0x2

    new-array v2, v7, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v7, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    sput-object v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->SAMPLE_RATE_TABLE:[[I

    .line 60
    new-array v0, v6, [[[I

    new-array v1, v6, [[I

    new-array v2, v5, [I

    aput-object v2, v1, v5

    new-array v2, v8, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v9

    const/4 v2, 0x2

    new-array v3, v8, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v2

    new-array v2, v8, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v5, [[I

    aput-object v1, v0, v9

    const/4 v1, 0x2

    new-array v2, v6, [[I

    new-array v3, v5, [I

    aput-object v3, v2, v5

    new-array v3, v8, [I

    fill-array-data v3, :array_6

    aput-object v3, v2, v9

    const/4 v3, 0x2

    new-array v4, v8, [I

    fill-array-data v4, :array_7

    aput-object v4, v2, v3

    new-array v3, v8, [I

    fill-array-data v3, :array_8

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    new-array v1, v6, [[I

    new-array v2, v5, [I

    aput-object v2, v1, v5

    new-array v2, v8, [I

    fill-array-data v2, :array_9

    aput-object v2, v1, v9

    const/4 v2, 0x2

    new-array v3, v8, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v2

    new-array v2, v8, [I

    fill-array-data v2, :array_b

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    sput-object v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->BITRATE_TABLE:[[[I

    .line 82
    new-array v0, v6, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v5

    new-array v1, v5, [I

    aput-object v1, v0, v9

    const/4 v1, 0x2

    new-array v2, v6, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v7

    sput-object v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->SAMPLE_COUNT_TABLE:[[I

    .line 89
    new-array v0, v6, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v5

    new-array v1, v5, [I

    aput-object v1, v0, v9

    const/4 v1, 0x2

    new-array v2, v6, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v7

    sput-object v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->SAMPLES_COEFFS:[[I

    .line 96
    new-array v0, v6, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->SLOT_SIZES:[I

    .line 98
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_13

    sput-object v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->BACKOFF_DELAYS:[I

    return-void

    .line 53
    :array_0
    .array-data 4
        0x2b11
        0x2ee0
        0x1f40
    .end array-data

    :array_1
    .array-data 4
        0x5622
        0x5dc0
        0x3e80
    .end array-data

    :array_2
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    .line 60
    :array_3
    .array-data 4
        -0x1
        0x8
        0x10
        0x18
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
    .end array-data

    :array_4
    .array-data 4
        -0x1
        0x8
        0x10
        0x18
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
    .end array-data

    :array_5
    .array-data 4
        -0x1
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
        0xb0
        0xc0
        0xe0
        0x100
    .end array-data

    :array_6
    .array-data 4
        -0x1
        0x8
        0x10
        0x18
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
    .end array-data

    :array_7
    .array-data 4
        -0x1
        0x8
        0x10
        0x18
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
    .end array-data

    :array_8
    .array-data 4
        -0x1
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
        0xb0
        0xc0
        0xe0
        0x100
    .end array-data

    :array_9
    .array-data 4
        -0x1
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
    .end array-data

    :array_a
    .array-data 4
        -0x1
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
    .end array-data

    :array_b
    .array-data 4
        -0x1
        0x20
        0x40
        0x60
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x120
        0x140
        0x160
        0x180
        0x1a0
        0x1c0
    .end array-data

    .line 82
    :array_c
    .array-data 4
        0x0
        0x240
        0x480
        0x180
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x240
        0x480
        0x180
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x480
        0x480
        0x180
    .end array-data

    .line 89
    :array_f
    .array-data 4
        0x0
        0x48
        0x90
        0xc
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x48
        0x90
        0xc
    .end array-data

    :array_11
    .array-data 4
        0x0
        0x90
        0x90
        0xc
    .end array-data

    .line 96
    :array_12
    .array-data 4
        0x0
        0x1
        0x1
        0x4
    .end array-data

    .line 98
    :array_13
    .array-data 4
        0x3e8
        0x9c4
        0x1388
        0x2710
        0x2710
        0x3a98
        0x3a98
        0x7530
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    invoke-direct {p0}, Lcom/vkcoffee/android/media/audio/AudioPlayer;-><init>()V

    .line 106
    iput v3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->lastTimestamp:I

    .line 108
    iput-boolean v3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->onPreparedCallbackCalled:Z

    .line 109
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->mainHandler:Landroid/os/Handler;

    .line 110
    iput-boolean v4, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->paused:Z

    .line 111
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->pauseLock:Ljava/lang/Object;

    .line 112
    iput-boolean v3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->released:Z

    .line 118
    const/4 v1, -0x1

    iput v1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->needSeekTo:I

    .line 119
    iput-boolean v3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->loop:Z

    .line 122
    iput-boolean v3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->cacheRequested:Z

    .line 123
    iput v3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloadOffset:I

    .line 125
    iput v3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloadRetries:I

    .line 127
    iput-boolean v4, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->justStarted:Z

    .line 128
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloaderSemaphore:Ljava/util/concurrent/Semaphore;

    .line 130
    new-instance v1, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$1;-><init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)V

    iput-object v1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->receiver:Landroid/content/BroadcastReceiver;

    .line 144
    iput p2, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->oid:I

    .line 145
    iput p3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->aid:I

    .line 147
    :try_start_0
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 148
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 151
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->buffer:Lcom/vkcoffee/android/media/audio/FileMediaBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "dir":Ljava/io/File;
    :goto_0
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->url:Ljava/lang/String;

    .line 156
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;-><init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$1;)V

    const-string/jumbo v3, "LLP_Decoder"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->decoderThread:Ljava/lang/Thread;

    .line 157
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$2;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$2;-><init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 176
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 177
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    return-void

    .line 152
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->cancelDelayedRetry()V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloadMissingRanges()V

    return-void
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->cacheRequested:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->cacheRequested:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloadOffset:I

    return v0
.end method

.method static synthetic access$1202(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloadOffset:I

    return p1
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/squareup/okhttp/Call;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->currentRequest:Lcom/squareup/okhttp/Call;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/Call;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # Lcom/squareup/okhttp/Call;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->currentRequest:Lcom/squareup/okhttp/Call;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloaderThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;II)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->callErrorCallback(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloadRetries:I

    return v0
.end method

.method static synthetic access$1602(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloadRetries:I

    return p1
.end method

.method static synthetic access$1608(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I
    .locals 2
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloadRetries:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloadRetries:I

    return v0
.end method

.method static synthetic access$1702(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->justStarted:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->oid:I

    return v0
.end method

.method static synthetic access$1900(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->requestCanceled:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->requestCanceled:Z

    return p1
.end method

.method static synthetic access$2000()[I
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->BACKOFF_DELAYS:[I

    return-object v0
.end method

.method static synthetic access$2100(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->retryDownloadDelayed(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/media/MediaCodec;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->codec:Landroid/media/MediaCodec;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Landroid/media/MediaCodec;)Landroid/media/MediaCodec;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # Landroid/media/MediaCodec;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->codec:Landroid/media/MediaCodec;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->onPreparedCallbackCalled:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->onPreparedCallbackCalled:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->duration:F

    return v0
.end method

.method static synthetic access$2402(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # F

    .prologue
    .line 50
    iput p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->duration:F

    return p1
.end method

.method static synthetic access$2500()[[I
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->SAMPLE_COUNT_TABLE:[[I

    return-object v0
.end method

.method static synthetic access$2600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)[B
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->seekTable:[B

    return-object v0
.end method

.method static synthetic access$2602(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # [B

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->seekTable:[B

    return-object p1
.end method

.method static synthetic access$2700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->dataSize:I

    return v0
.end method

.method static synthetic access$2702(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->dataSize:I

    return p1
.end method

.method static synthetic access$2800(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->seekNetStream(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->aid:I

    return v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->released:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->loop:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3200()[[I
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->SAMPLE_RATE_TABLE:[[I

    return-object v0
.end method

.method static synthetic access$3300()[[[I
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->BITRATE_TABLE:[[[I

    return-object v0
.end method

.method static synthetic access$3400()[[I
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->SAMPLES_COEFFS:[[I

    return-object v0
.end method

.method static synthetic access$3500()[I
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->SLOT_SIZES:[I

    return-object v0
.end method

.method static synthetic access$3600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Landroid/media/AudioTrack;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->track:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # Landroid/media/AudioTrack;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->track:Landroid/media/AudioTrack;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->frameCount:I

    return v0
.end method

.method static synthetic access$3702(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->frameCount:I

    return p1
.end method

.method static synthetic access$3800(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->paused:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->pauseLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->needSeekTo:I

    return v0
.end method

.method static synthetic access$402(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->needSeekTo:I

    return p1
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->lastTimestamp:I

    return v0
.end method

.method static synthetic access$502(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->lastTimestamp:I

    return p1
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->fileSize:I

    return v0
.end method

.method static synthetic access$602(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->fileSize:I

    return p1
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Lcom/vkcoffee/android/media/audio/FileMediaBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->buffer:Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloaderSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private callErrorCallback(II)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "ext"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$4;-><init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 380
    return-void
.end method

.method private cancelDelayedRetry()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->delayedDownload:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->delayedDownload:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->delayedDownload:Ljava/lang/Runnable;

    .line 371
    :cond_0
    return-void
.end method

.method private declared-synchronized downloadMissingRanges()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 329
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloaderThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 351
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 332
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->buffer:Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->buffer:Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    invoke-virtual {v4}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->isFullyLoaded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 335
    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->buffer:Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    invoke-virtual {v4}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->getNeededRanges()Ljava/util/ArrayList;

    move-result-object v0

    .line 336
    .local v0, "neededRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;>;"
    const/4 v2, 0x0

    .line 337
    .local v2, "toDownload":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    .line 338
    .local v1, "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    iget v5, v1, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    iget-object v6, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->buffer:Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    invoke-virtual {v6}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->getReadOffset()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 339
    move-object v2, v1

    .line 343
    .end local v1    # "r":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :cond_3
    if-nez v2, :cond_4

    iget-boolean v4, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->cacheRequested:Z

    if-eqz v4, :cond_4

    .line 344
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "toDownload":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    check-cast v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    .line 346
    .restart local v2    # "toDownload":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :cond_4
    if-nez v2, :cond_5

    iget-boolean v4, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->justStarted:Z

    if-eqz v4, :cond_0

    .line 347
    :cond_5
    if-eqz v2, :cond_6

    iget v3, v2, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    :cond_6
    iput v3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloadOffset:I

    .line 348
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;-><init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$1;)V

    const-string/jumbo v5, "LLP_Downloader"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloaderThread:Ljava/lang/Thread;

    .line 349
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloaderThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 329
    .end local v0    # "neededRanges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;>;"
    .end local v2    # "toDownload":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private retryDownloadDelayed(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 354
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->delayedDownload:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->delayedDownload:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 357
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$3;-><init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)V

    iput-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->delayedDownload:Ljava/lang/Runnable;

    .line 363
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->delayedDownload:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
    return-void
.end method

.method private declared-synchronized seekNetStream(I)V
    .locals 3
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 308
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->cancelDelayedRetry()V

    .line 309
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->currentRequest:Lcom/squareup/okhttp/Call;

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->requestCanceled:Z

    .line 311
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->currentRequest:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->currentRequest:Lcom/squareup/okhttp/Call;

    .line 314
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 315
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloaderThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 317
    :try_start_1
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    goto :goto_0

    .line 322
    :cond_1
    :try_start_2
    iput p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloadOffset:I

    .line 323
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Will download from offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloadOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Downloader;-><init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$1;)V

    const-string/jumbo v2, "LLP_Downloader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloaderThread:Ljava/lang/Thread;

    .line 325
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getAudioSessionID()I
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->duration:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 2

    .prologue
    .line 213
    iget v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->needSeekTo:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->lastTimestamp:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->needSeekTo:I

    goto :goto_0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->loop:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->paused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->paused:Z

    .line 201
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 204
    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->paused:Z

    .line 190
    iget-object v1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->pauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 192
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 196
    :cond_0
    return-void

    .line 192
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public prepareAsync()V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloadMissingRanges()V

    .line 184
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->decoderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 185
    return-void
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 233
    :try_start_0
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    :goto_0
    iput-boolean v2, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->released:Z

    .line 238
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->requestCanceled:Z

    .line 239
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->currentRequest:Lcom/squareup/okhttp/Call;

    invoke-virtual {v3}, Lcom/squareup/okhttp/Call;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 244
    :goto_1
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->decoderThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 245
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->track:Landroid/media/AudioTrack;

    if-eqz v3, :cond_0

    .line 246
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->track:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V

    .line 247
    iput-object v5, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->track:Landroid/media/AudioTrack;

    .line 249
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->codec:Landroid/media/MediaCodec;

    if-eqz v3, :cond_1

    .line 250
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 251
    iput-object v5, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->codec:Landroid/media/MediaCodec;

    .line 253
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->buffer:Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    if-eqz v3, :cond_2

    .line 254
    iget-object v3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->buffer:Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    iget-boolean v4, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->cacheRequested:Z

    if-nez v4, :cond_4

    :goto_2
    invoke-virtual {v3, v2}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->release(Z)V

    .line 255
    iput-object v5, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->buffer:Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    .line 257
    :cond_2
    iget-boolean v2, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->cacheRequested:Z

    if-eqz v2, :cond_3

    .line 258
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v0

    .line 259
    .local v0, "file":Lcom/vkcoffee/android/AudioFile;
    if-eqz v0, :cond_3

    .line 260
    const-string/jumbo v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "starting downloader service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-class v3, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 263
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 266
    .end local v0    # "file":Lcom/vkcoffee/android/AudioFile;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    return-void

    .line 254
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 240
    :catch_0
    move-exception v3

    goto :goto_1

    .line 234
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public requestCache(Z)V
    .locals 2
    .param p1, "cache"    # Z

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->cacheRequested:Z

    .line 271
    if-eqz p1, :cond_0

    .line 272
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkcoffee/android/AudioPlayerService;->getCurrentFile()Lcom/vkcoffee/android/AudioFile;

    move-result-object v0

    .line 273
    .local v0, "f":Lcom/vkcoffee/android/AudioFile;
    iget v1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->fileSize:I

    iput v1, v0, Lcom/vkcoffee/android/AudioFile;->fileSize:I

    .line 274
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/vkcoffee/android/cache/AudioCache;->saveFile(ZLcom/vkcoffee/android/AudioFile;)V

    .line 275
    invoke-direct {p0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->downloadMissingRanges()V

    .line 279
    .end local v0    # "f":Lcom/vkcoffee/android/AudioFile;
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->deleteCurrent()V

    goto :goto_0
.end method

.method public seek(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 223
    iget v1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->needSeekTo:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 224
    .local v0, "wasSeekingAlready":Z
    :goto_0
    iput p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->needSeekTo:I

    .line 225
    iget-boolean v1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->onPreparedCallbackCalled:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->decoderThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 228
    :cond_0
    return-void

    .line 223
    .end local v0    # "wasSeekingAlready":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 0
    .param p1, "loop"    # Z

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->loop:Z

    .line 295
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "vol"    # F

    .prologue
    .line 284
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    goto :goto_0
.end method
