.class public Lcom/vkontakte/android/upload/VideoUploadTask;
.super Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;
.source "VideoUploadTask.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/upload/VideoUploadTask$ProgressUpdateRunnable;,
        Lcom/vkontakte/android/upload/VideoUploadTask$TranscodeRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask",
        "<",
        "Lcom/vkcoffee/android/api/VideoFile;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final COMPRESS_PROGRESS_PART:F = 0.75f

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/upload/VideoUploadTask;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG:Ljava/lang/String; = "VideoUpload"

.field private static final PROGRESS_MAX:I = 0x64

.field private static final PROGRESS_REQUEST_DELAY:I = 0x12c


# instance fields
.field private accessKey:Ljava/lang/String;

.field private compress:Z

.field private descr:Ljava/lang/String;

.field private encoderSettings:Lcom/vkcoffee/android/media/video/VideoEncoderSettings;

.field private isPrivate:Z

.field private lastProgress:I

.field private name:Ljava/lang/String;

.field private outputFilePath:Ljava/lang/String;

.field private ownerID:I

.field private final progressUpdateHandler:Landroid/os/Handler;

.field private result:Lcom/vkcoffee/android/api/VideoFile;

.field private showNotification:Z

.field private transcodeThread:Ljava/lang/Thread;

.field private videoID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/vkontakte/android/upload/VideoUploadTask$1;

    invoke-direct {v0}, Lcom/vkontakte/android/upload/VideoUploadTask$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/upload/VideoUploadTask;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 101
    invoke-static {}, Lcom/vkcoffee/android/utils/OsUtil;->isAtLeastJB_MR2()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const-string v0, "vkvideo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/media/video/VideoEncoderSettings;ZIZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "videoEncoderSettings"    # Lcom/vkcoffee/android/media/video/VideoEncoderSettings;
    .param p6, "priv"    # Z
    .param p7, "ownerID"    # I
    .param p8, "notify"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->progressUpdateHandler:Landroid/os/Handler;

    .line 109
    iput-object p3, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->name:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->descr:Ljava/lang/String;

    .line 111
    iput-boolean p6, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->isPrivate:Z

    .line 112
    iput p7, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->ownerID:I

    .line 113
    iput-boolean p8, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->showNotification:Z

    .line 114
    iput-object p5, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->encoderSettings:Lcom/vkcoffee/android/media/video/VideoEncoderSettings;

    .line 115
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "compressVideos"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->compress:Z

    .line 116
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;-><init>(Landroid/os/Parcel;)V

    .line 356
    const/4 v1, 0x1

    .line 357
    .local v1, "z2":Z
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->progressUpdateHandler:Landroid/os/Handler;

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->name:Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->descr:Ljava/lang/String;

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->isPrivate:Z

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->ownerID:I

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->videoID:I

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    const/4 v0, 0x1

    .line 368
    .local v0, "z":Z
    :goto_1
    iput-boolean v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->showNotification:Z

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_0

    .line 370
    const/4 v1, 0x0

    .line 372
    :cond_0
    iput-boolean v1, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->compress:Z

    .line 373
    const-class v2, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;

    iput-object v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->encoderSettings:Lcom/vkcoffee/android/media/video/VideoEncoderSettings;

    .line 374
    return-void

    .line 360
    .end local v0    # "z":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 366
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "z":Z
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkontakte/android/upload/VideoUploadTask;)V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/vkontakte/android/upload/VideoUploadTask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/upload/VideoUploadTask;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->accessKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/upload/VideoUploadTask;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->isPrivate:Z

    return v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/upload/VideoUploadTask;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->uploadResponse:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/upload/VideoUploadTask;D)V
    .locals 1

    .prologue
    .line 399
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/upload/VideoUploadTask;->postProgress(D)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/upload/VideoUploadTask;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->progressUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/upload/VideoUploadTask;Ljava/io/File;Ljava/lang/String;Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/upload/VideoUploadTask;->transcodeVideo(Ljava/io/File;Ljava/lang/String;Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/upload/VideoUploadTask;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->server:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/upload/VideoUploadTask;I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->videoID:I

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/upload/VideoUploadTask;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->accessKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/upload/VideoUploadTask;Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->result:Lcom/vkcoffee/android/api/VideoFile;

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/upload/VideoUploadTask;)Lcom/vkcoffee/android/api/VideoFile;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->result:Lcom/vkcoffee/android/api/VideoFile;

    return-object v0
.end method

.method static native nativeCancel()V
.end method

.method static native nativeCompressFile(Ljava/lang/String;Ljava/lang/String;IIZ)I
.end method

.method static native nativeGetProgress()D
.end method

.method private postProgress(D)V
    .locals 7
    .param p1, "progress"    # D

    .prologue
    .line 400
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 401
    .local v0, "percentage":I
    iget v1, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->lastProgress:I

    if-eq v1, v0, :cond_0

    .line 402
    iput v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->lastProgress:I

    .line 403
    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-super {p0, v0, v1, v2}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->onProgress(IIZ)V

    .line 405
    :cond_0
    return-void
.end method

.method private removeTempCompressFile()V
    .locals 2

    .prologue
    .line 377
    iget-object v1, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->outputFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 378
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->outputFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, "tempFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 383
    .end local v0    # "tempFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private removeTempFile()V
    .locals 2

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/vkontakte/android/upload/VideoUploadTask;->removeTempCompressFile()V

    .line 387
    iget-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->file:Ljava/lang/String;

    .line 388
    .local v0, "sourcePath":Ljava/lang/String;
    const-string v1, "content:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->file:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/upload/UploadUtils;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 390
    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 397
    :cond_1
    :goto_0
    return-void

    .line 394
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".vkontakte/TEMP_TRIM_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vk/attachpicker/util/FileUtils;->deleteFile(Ljava/io/File;)V

    goto :goto_0
.end method

.method private transcodeApi15(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "inputPath"    # Ljava/lang/String;
    .param p2, "outputPath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 192
    invoke-static {p1}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "type":Ljava/lang/String;
    const-string v4, "video/mp4"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    new-instance v0, Lcom/vkontakte/android/upload/VideoUploadTask$ProgressUpdateRunnable;

    invoke-direct {v0, p0, v3}, Lcom/vkontakte/android/upload/VideoUploadTask$ProgressUpdateRunnable;-><init>(Lcom/vkontakte/android/upload/VideoUploadTask;Lcom/vkontakte/android/upload/VideoUploadTask$ProgressUpdateRunnable;)V

    .line 195
    .local v0, "progressUpdateRunnable":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->progressUpdateHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    iget-object v4, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->encoderSettings:Lcom/vkcoffee/android/media/video/VideoEncoderSettings;

    invoke-virtual {v4}, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;->getShorterLength()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->encoderSettings:Lcom/vkcoffee/android/media/video/VideoEncoderSettings;

    invoke-virtual {v5}, Lcom/vkcoffee/android/media/video/VideoEncoderSettings;->getBitrate()I

    move-result v5

    sget-boolean v6, Lcom/vkcoffee/android/api/APIController;->API_DEBUG:Z

    invoke-static {p1, p2, v4, v5, v6}, Lcom/vkontakte/android/upload/VideoUploadTask;->nativeCompressFile(Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v1

    .line 197
    .local v1, "result":I
    iget-object v4, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->progressUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    if-nez v1, :cond_0

    .line 207
    .end local v0    # "progressUpdateRunnable":Ljava/lang/Runnable;
    .end local v1    # "result":I
    .end local p2    # "outputPath":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 201
    .restart local v0    # "progressUpdateRunnable":Ljava/lang/Runnable;
    .restart local v1    # "result":I
    .restart local p2    # "outputPath":Ljava/lang/String;
    :cond_0
    const-string v4, "VideoUpload"

    const-string v5, "Upload without compress"

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iput-boolean v8, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->compress:Z

    move-object p2, v3

    .line 203
    goto :goto_0

    .line 205
    .end local v0    # "progressUpdateRunnable":Ljava/lang/Runnable;
    .end local v1    # "result":I
    :cond_1
    const-string v4, "VideoUpload"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Can not guess input video type format or format is not support: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iput-boolean v8, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->compress:Z

    move-object p2, v3

    .line 207
    goto :goto_0
.end method

.method private transcodeApi18(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p1, "input"    # Ljava/io/File;
    .param p2, "output"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 212
    :try_start_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/upload/VideoUploadTask$TranscodeRunnable;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/media/video/VKFormatStrategy;

    iget-object v6, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->encoderSettings:Lcom/vkcoffee/android/media/video/VideoEncoderSettings;

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/media/video/VKFormatStrategy;-><init>(Lcom/vkcoffee/android/media/video/VideoEncoderSettings;)V

    invoke-direct {v3, p0, p1, v4, v5}, Lcom/vkontakte/android/upload/VideoUploadTask$TranscodeRunnable;-><init>(Lcom/vkontakte/android/upload/VideoUploadTask;Ljava/io/File;Ljava/lang/String;Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->transcodeThread:Ljava/lang/Thread;

    .line 213
    iget-object v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->transcodeThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 214
    iget-object v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->transcodeThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 215
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 223
    :goto_0
    return-object v1

    .line 218
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->compress:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VideoUpload"

    const-string v3, "Transcoding process was interrupted"

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iput-boolean v7, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->compress:Z

    goto :goto_0
.end method

.method private transcodeVideo(Ljava/io/File;Ljava/lang/String;Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;)V
    .locals 18
    .param p1, "inputFile"    # Ljava/io/File;
    .param p2, "outputPath"    # Ljava/lang/String;
    .param p3, "strategy"    # Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 231
    const/4 v13, 0x0

    .line 232
    .local v13, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 234
    .local v12, "fileDescriptor":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 236
    .local v14, "fileInputStream2":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v14}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v12

    .line 237
    new-instance v11, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;

    invoke-direct {v11}, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;-><init>()V

    .line 238
    .local v11, "engine":Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;
    new-instance v15, Lcom/vkontakte/android/upload/VideoUploadTask$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/vkontakte/android/upload/VideoUploadTask$4;-><init>(Lcom/vkontakte/android/upload/VideoUploadTask;)V

    invoke-virtual {v11, v15}, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->setProgressCallback(Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine$ProgressCallback;)V

    .line 243
    invoke-virtual {v11, v12}, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 244
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;->transcodeVideo(Ljava/lang/String;Lnet/ypresto/androidtranscoder/format/MediaFormatStrategy;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    .line 245
    move-object v13, v14

    .line 289
    .end local v11    # "engine":Lnet/ypresto/androidtranscoder/engine/MediaTranscoderEngine;
    .end local v14    # "fileInputStream2":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 246
    .restart local v14    # "fileInputStream2":Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    .line 247
    .local v5, "e3":Ljava/io/IOException;
    move-object v2, v5

    .line 248
    .local v2, "e":Ljava/io/IOException;
    move-object v13, v14

    .line 249
    if-eqz v13, :cond_0

    .line 251
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 256
    :cond_0
    :goto_1
    if-eqz v12, :cond_1

    .line 257
    :try_start_3
    const-string v15, "VideoUpload"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Transcode failed: input file (fd: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") not found"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " or could not open output file (\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\') ."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/upload/VideoUploadTask;->removeTempCompressFile()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 270
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "e3":Ljava/io/IOException;
    .end local v14    # "fileInputStream2":Ljava/io/FileInputStream;
    :catch_1
    move-exception v8

    .line 271
    .local v8, "e6":Ljava/io/IOException;
    move-object v2, v8

    .line 272
    .restart local v2    # "e":Ljava/io/IOException;
    if-eqz v13, :cond_2

    .line 274
    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 280
    :cond_2
    :goto_2
    if-eqz v12, :cond_3

    .line 281
    const-string v15, "VideoUpload"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Transcode failed: input file (fd: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/FileDescriptor;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") not found"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " or could not open output file (\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\') ."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/upload/VideoUploadTask;->removeTempCompressFile()V

    goto/16 :goto_0

    .line 252
    .end local v8    # "e6":Ljava/io/IOException;
    .restart local v5    # "e3":Ljava/io/IOException;
    .restart local v14    # "fileInputStream2":Ljava/io/FileInputStream;
    :catch_2
    move-exception v10

    .line 253
    .local v10, "eClose":Ljava/io/IOException;
    :try_start_5
    const-string v15, "VideoUpload"

    const-string v16, "Can\'t close input stream: "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v10}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 284
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "e3":Ljava/io/IOException;
    .end local v10    # "eClose":Ljava/io/IOException;
    .end local v14    # "fileInputStream2":Ljava/io/FileInputStream;
    :catch_3
    move-exception v9

    .line 285
    .local v9, "e8":Ljava/lang/RuntimeException;
    move-object v4, v9

    .line 286
    .local v4, "e2":Ljava/lang/RuntimeException;
    const-string v15, "VideoUpload"

    const-string v16, "Fatal error while transcoding, this might be invalid format or bug in engine or Android."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/upload/VideoUploadTask;->removeTempCompressFile()V

    goto/16 :goto_0

    .line 260
    .end local v4    # "e2":Ljava/lang/RuntimeException;
    .end local v9    # "e8":Ljava/lang/RuntimeException;
    .restart local v14    # "fileInputStream2":Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    .line 261
    .local v6, "e4":Ljava/lang/InterruptedException;
    move-object v13, v14

    .line 262
    :try_start_6
    const-string v15, "VideoUpload"

    const-string v16, "Cancel transcode video file."

    invoke-static/range {v15 .. v16}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/upload/VideoUploadTask;->removeTempCompressFile()V

    goto/16 :goto_0

    .line 264
    .end local v6    # "e4":Ljava/lang/InterruptedException;
    :catch_5
    move-exception v7

    .line 265
    .local v7, "e5":Ljava/lang/RuntimeException;
    move-object v4, v7

    .line 266
    .restart local v4    # "e2":Ljava/lang/RuntimeException;
    move-object v13, v14

    .line 267
    const-string v15, "VideoUpload"

    const-string v16, "Fatal error while transcoding, this might be invalid format or bug in engine or Android."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/upload/VideoUploadTask;->removeTempCompressFile()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 275
    .end local v4    # "e2":Ljava/lang/RuntimeException;
    .end local v7    # "e5":Ljava/lang/RuntimeException;
    .end local v14    # "fileInputStream2":Ljava/io/FileInputStream;
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v8    # "e6":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 277
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public afterUpload()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-super {p0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->afterUpload()V

    .line 303
    invoke-direct {p0}, Lcom/vkontakte/android/upload/VideoUploadTask;->removeTempFile()V

    .line 304
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 292
    invoke-static {}, Lcom/vkcoffee/android/utils/OsUtil;->isAtLeastJB_MR2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    invoke-static {}, Lcom/vkontakte/android/upload/VideoUploadTask;->nativeCancel()V

    .line 297
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/vkontakte/android/upload/VideoUploadTask;->removeTempFile()V

    .line 298
    invoke-super {p0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->cancel()V

    .line 299
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->transcodeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->transcodeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method protected getNotificationTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->context:Landroid/content/Context;

    const v1, 0x7f080572

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/vkontakte/android/upload/VideoUploadTask;->getResult()Lcom/vkcoffee/android/api/VideoFile;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lcom/vkcoffee/android/api/VideoFile;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->result:Lcom/vkcoffee/android/api/VideoFile;

    return-object v0
.end method

.method public getServer()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lcom/vkcoffee/android/api/video/VideoSave;

    iget v1, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->descr:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->isPrivate:Z

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/api/video/VideoSave;-><init>(ILjava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v1, Lcom/vkontakte/android/upload/VideoUploadTask$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/upload/VideoUploadTask$2;-><init>(Lcom/vkontakte/android/upload/VideoUploadTask;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/video/VideoSave;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v6

    .line 130
    .local v6, "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    iput-object v6, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 131
    invoke-virtual {v6}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v7

    .line 132
    .local v7, "result":Z
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 133
    if-nez v7, :cond_0

    .line 134
    new-instance v0, Lcom/vkcoffee/android/upload/UploadException;

    const-string v1, "can\'t get upload server"

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    return-void
.end method

.method protected needShowNotifications()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->showNotification:Z

    return v0
.end method

.method protected onProgress(IIZ)V
    .locals 3
    .param p1, "loaded"    # I
    .param p2, "total"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->compress:Z

    if-eqz v0, :cond_0

    .line 308
    const/high16 v0, 0x3e800000    # 0.25f

    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x4b

    const/16 v1, 0x64

    invoke-super {p0, v0, v1, p3}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->onProgress(IIZ)V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->onProgress(IIZ)V

    goto :goto_0
.end method

.method protected preProcessFile()Ljava/lang/String;
    .locals 6

    .prologue
    .line 165
    iget-boolean v4, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->compress:Z

    if-nez v4, :cond_0

    .line 166
    invoke-super {p0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->preProcessFile()Ljava/lang/String;

    move-result-object v4

    .line 188
    :goto_0
    return-object v4

    .line 168
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->file:Ljava/lang/String;

    .line 169
    .local v3, "sourcePath":Ljava/lang/String;
    const-string v4, "content:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "file:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->file:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/upload/UploadUtils;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 171
    const-string v4, "unknown"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 172
    invoke-super {p0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->preProcessFile()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 175
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "input":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 177
    invoke-super {p0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->preProcessFile()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 179
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, ".vkontakte"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    .local v2, "outputFolder":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v4, "temp_upload.mp4"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    .local v1, "output":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->outputFilePath:Ljava/lang/String;

    .line 182
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 183
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 185
    :cond_4
    invoke-static {}, Lcom/vkcoffee/android/utils/OsUtil;->isAtLeastJB_MR2()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 186
    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/upload/VideoUploadTask;->transcodeApi18(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 188
    :cond_5
    iget-object v4, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->outputFilePath:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/vkontakte/android/upload/VideoUploadTask;->transcodeApi15(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public save()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 139
    new-instance v2, Lcom/vkcoffee/android/api/video/VideoGetById;

    iget v3, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->ownerID:I

    iget v4, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->videoID:I

    invoke-direct {v2, v3, v4, v5}, Lcom/vkcoffee/android/api/video/VideoGetById;-><init>(IILjava/lang/String;)V

    new-instance v3, Lcom/vkontakte/android/upload/VideoUploadTask$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/upload/VideoUploadTask$3;-><init>(Lcom/vkontakte/android/upload/VideoUploadTask;)V

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/video/VideoGetById;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 156
    .local v0, "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    iput-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 157
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v1

    .line 158
    .local v1, "result":Z
    iput-object v5, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 159
    if-nez v1, :cond_0

    .line 160
    new-instance v2, Lcom/vkcoffee/android/upload/UploadException;

    const-string v3, "can\'t get video"

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 332
    const/4 v1, 0x1

    .line 333
    .local v1, "b2":B
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->writeToParcel(Landroid/os/Parcel;I)V

    .line 334
    iget-object v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->descr:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    iget-boolean v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->isPrivate:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 337
    iget v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->ownerID:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->videoID:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget-boolean v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->showNotification:Z

    if-eqz v2, :cond_2

    .line 340
    const/4 v0, 0x1

    .line 344
    .local v0, "b":B
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 345
    iget-boolean v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->compress:Z

    if-nez v2, :cond_0

    .line 346
    const/4 v1, 0x0

    .line 348
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 349
    iget-object v2, p0, Lcom/vkontakte/android/upload/VideoUploadTask;->encoderSettings:Lcom/vkcoffee/android/media/video/VideoEncoderSettings;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 350
    return-void

    .end local v0    # "b":B
    :cond_1
    move v2, v3

    .line 336
    goto :goto_0

    .line 342
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "b":B
    goto :goto_1
.end method
