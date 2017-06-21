.class public Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;
.super Landroid/app/IntentService;
.source "AudioDownloaderIntentService.java"


# static fields
.field public static currentInstance:Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;


# instance fields
.field private cancelRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentFile:Lcom/vkcoffee/android/AudioFile;

.field private currentRequest:Lcom/squareup/okhttp/Call;

.field private fileSize:I

.field private queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentInstance:Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "Audio Downloader"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->cancelRequests:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->queue:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->url:Ljava/lang/String;

    return-object p1
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentRequest:Lcom/squareup/okhttp/Call;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentRequest:Lcom/squareup/okhttp/Call;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    .line 152
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static cancel(Lcom/vkcoffee/android/AudioFile;)Z
    .locals 5
    .param p0, "file"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 166
    sget-object v2, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentInstance:Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;

    if-nez v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    sget-object v2, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentInstance:Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;

    iget-object v2, v2, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentInstance:Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;

    iget-object v2, v2, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    invoke-virtual {v2, p0}, Lcom/vkcoffee/android/AudioFile;->equals(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    sget-object v0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentInstance:Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->cancelRequests:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentInstance:Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;

    invoke-direct {v0}, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->cancel()V

    move v0, v1

    .line 172
    goto :goto_0

    .line 173
    :cond_2
    sget-object v2, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentInstance:Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;

    iget-object v2, v2, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->queue:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    sget-object v0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentInstance:Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->cancelRequests:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 175
    goto/16 :goto_0
.end method

.method public static pauseDownload()V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentInstance:Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;

    if-nez v0, :cond_0

    .line 140
    :cond_0
    return-void
.end method

.method public static resumeDownload()V
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentInstance:Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;

    if-nez v0, :cond_0

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 127
    sput-object p0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentInstance:Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;

    .line 128
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 133
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentInstance:Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;

    .line 134
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 21
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    const-string/jumbo v16, "file"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/AudioFile;

    .line 44
    .local v7, "file":Lcom/vkcoffee/android/AudioFile;
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    .line 45
    const-string/jumbo v16, "vk"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Downloading file "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, v7, Lcom/vkcoffee/android/AudioFile;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->url:Ljava/lang/String;

    .line 47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->queue:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v7, Lcom/vkcoffee/android/AudioFile;->oid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v7, Lcom/vkcoffee/android/AudioFile;->aid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->cancelRequests:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v7, Lcom/vkcoffee/android/AudioFile;->oid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v7, Lcom/vkcoffee/android/AudioFile;->aid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->cancelRequests:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v7, Lcom/vkcoffee/android/AudioFile;->oid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v7, Lcom/vkcoffee/android/AudioFile;->aid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    :try_start_0
    new-instance v4, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;

    new-instance v16, Ljava/io/File;

    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->getCacheDir()Ljava/io/File;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v7, Lcom/vkcoffee/android/AudioFile;->oid:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v7, Lcom/vkcoffee/android/AudioFile;->aid:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;-><init>(Ljava/io/File;)V

    .line 54
    .local v4, "buf":Lcom/vkcoffee/android/media/audio/FileMediaBuffer;
    :goto_1
    invoke-virtual {v4}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->isFullyLoaded()Z

    move-result v16

    if-nez v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->cancelRequests:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v7, Lcom/vkcoffee/android/AudioFile;->oid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v7, Lcom/vkcoffee/android/AudioFile;->aid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 55
    invoke-virtual {v4}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->getNeededRanges()Ljava/util/ArrayList;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;

    .line 56
    .local v10, "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    new-instance v16, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct/range {v16 .. v16}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 57
    invoke-virtual/range {v16 .. v17}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v16

    const-string/jumbo v17, "User-Agent"

    sget-object v18, Lcom/vkcoffee/android/api/APIController;->USER_AGENT:Ljava/lang/String;

    .line 58
    invoke-virtual/range {v16 .. v18}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v3

    .line 59
    .local v3, "bldr":Lcom/squareup/okhttp/Request$Builder;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "bytes="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v10, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->end:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 60
    .local v11, "rangeHeader":Ljava/lang/String;
    const-string/jumbo v16, "vk"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Range header = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v16, "Range"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v11}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 62
    iget v0, v10, Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;->start:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->setWriteOffset(I)V

    .line 63
    invoke-virtual {v3}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v13

    .line 64
    .local v13, "req":Lcom/squareup/okhttp/Request;
    sget-object v16, Lcom/vkcoffee/android/Global;->httpclient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/OkHttpClient;->clone()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v6

    .line 65
    .local v6, "client":Lcom/squareup/okhttp/OkHttpClient;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lcom/squareup/okhttp/Protocol;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    aput-object v18, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/squareup/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/squareup/okhttp/OkHttpClient;

    .line 66
    invoke-virtual {v6, v13}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentRequest:Lcom/squareup/okhttp/Call;

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentRequest:Lcom/squareup/okhttp/Call;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v14

    .line 68
    .local v14, "resp":Lcom/squareup/okhttp/Response;
    invoke-virtual {v14}, Lcom/squareup/okhttp/Response;->code()I

    move-result v16

    const/16 v17, 0x194

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 69
    invoke-virtual {v14}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/ResponseBody;->close()V

    .line 70
    new-instance v16, Lcom/vkcoffee/android/api/audio/AudioGetById;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v7, Lcom/vkcoffee/android/AudioFile;->oid:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v7, Lcom/vkcoffee/android/AudioFile;->aid:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/vkcoffee/android/api/audio/AudioGetById;-><init>(Ljava/util/List;)V

    new-instance v17, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService$1;-><init>(Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;)V

    .line 71
    invoke-virtual/range {v16 .. v17}, Lcom/vkcoffee/android/api/audio/AudioGetById;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v16

    .line 84
    invoke-virtual/range {v16 .. v16}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 119
    .end local v3    # "bldr":Lcom/squareup/okhttp/Request$Builder;
    .end local v4    # "buf":Lcom/vkcoffee/android/media/audio/FileMediaBuffer;
    .end local v6    # "client":Lcom/squareup/okhttp/OkHttpClient;
    .end local v10    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    .end local v11    # "rangeHeader":Ljava/lang/String;
    .end local v13    # "req":Lcom/squareup/okhttp/Request;
    .end local v14    # "resp":Lcom/squareup/okhttp/Response;
    :catch_0
    move-exception v15

    .line 120
    .local v15, "x":Ljava/lang/Exception;
    const-string/jumbo v16, "vk"

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 87
    .end local v15    # "x":Ljava/lang/Exception;
    .restart local v3    # "bldr":Lcom/squareup/okhttp/Request$Builder;
    .restart local v4    # "buf":Lcom/vkcoffee/android/media/audio/FileMediaBuffer;
    .restart local v6    # "client":Lcom/squareup/okhttp/OkHttpClient;
    .restart local v10    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    .restart local v11    # "rangeHeader":Ljava/lang/String;
    .restart local v13    # "req":Lcom/squareup/okhttp/Request;
    .restart local v14    # "resp":Lcom/squareup/okhttp/Response;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->getFileSize()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->fileSize:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    :try_start_2
    invoke-virtual {v14}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v9

    .line 90
    .local v9, "in":Ljava/io/InputStream;
    const/16 v16, 0x2800

    move/from16 v0, v16

    new-array v2, v0, [B

    .line 91
    .local v2, "b":[B
    const/4 v12, 0x0

    .line 92
    .local v12, "read":I
    const/4 v8, 0x0

    .line 93
    .local v8, "i":I
    :goto_2
    invoke-virtual {v9, v2}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_4

    .line 94
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v2, v0, v12}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->write([BII)V

    .line 95
    rem-int/lit8 v16, v8, 0xa

    if-nez v16, :cond_3

    .line 96
    invoke-virtual {v4}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->logRanges()V

    .line 98
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 100
    :cond_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 104
    .end local v2    # "b":[B
    .end local v8    # "i":I
    .end local v9    # "in":Ljava/io/InputStream;
    .end local v12    # "read":I
    :goto_3
    :try_start_3
    invoke-virtual {v14}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/squareup/okhttp/ResponseBody;->close()V

    .line 105
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->currentRequest:Lcom/squareup/okhttp/Call;

    goto/16 :goto_1

    .line 101
    :catch_1
    move-exception v15

    .line 102
    .restart local v15    # "x":Ljava/lang/Exception;
    const-string/jumbo v16, "vk"

    const-string/jumbo v17, "Error downloading"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v15}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 107
    .end local v3    # "bldr":Lcom/squareup/okhttp/Request$Builder;
    .end local v6    # "client":Lcom/squareup/okhttp/OkHttpClient;
    .end local v10    # "range":Lcom/vkcoffee/android/media/audio/MediaBuffer$ByteRange;
    .end local v11    # "rangeHeader":Ljava/lang/String;
    .end local v13    # "req":Lcom/squareup/okhttp/Request;
    .end local v14    # "resp":Lcom/squareup/okhttp/Response;
    .end local v15    # "x":Ljava/lang/Exception;
    :cond_5
    const/4 v5, 0x0

    .line 108
    .local v5, "canceled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->cancelRequests:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v7, Lcom/vkcoffee/android/AudioFile;->oid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v7, Lcom/vkcoffee/android/AudioFile;->aid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->cancelRequests:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v7, Lcom/vkcoffee/android/AudioFile;->oid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v7, Lcom/vkcoffee/android/AudioFile;->aid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 110
    const/4 v5, 0x1

    .line 111
    const-string/jumbo v16, "vk"

    const-string/jumbo v17, "download canceled!"

    invoke-static/range {v16 .. v17}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_6
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/vkcoffee/android/media/audio/FileMediaBuffer;->release(Z)V

    .line 114
    if-nez v5, :cond_0

    .line 115
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->fileSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v7, Lcom/vkcoffee/android/AudioFile;->fileSize:I

    .line 116
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v0, v7}, Lcom/vkcoffee/android/cache/AudioCache;->saveFile(ZLcom/vkcoffee/android/AudioFile;)V

    .line 117
    const-string/jumbo v16, "vk"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Downloaded "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " successfully."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 160
    const-string/jumbo v1, "file"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    .line 161
    .local v0, "f":Lcom/vkcoffee/android/AudioFile;
    iget-object v1, p0, Lcom/vkcoffee/android/media/audio/AudioDownloaderIntentService;->queue:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1
.end method
