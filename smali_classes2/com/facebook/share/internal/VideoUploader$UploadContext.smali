.class Lcom/facebook/share/internal/VideoUploader$UploadContext;
.super Ljava/lang/Object;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/VideoUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadContext"
.end annotation


# instance fields
.field public final accessToken:Lcom/facebook/AccessToken;

.field public final callback:Lcom/facebook/FacebookCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;"
        }
    .end annotation
.end field

.field public chunkStart:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final graphNode:Ljava/lang/String;

.field public isCanceled:Z

.field public params:Landroid/os/Bundle;

.field public final ref:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public videoId:Ljava/lang/String;

.field public videoSize:J

.field public videoStream:Ljava/io/InputStream;

.field public final videoUri:Landroid/net/Uri;

.field public workItem:Lcom/facebook/internal/WorkQueue$WorkItem;


# direct methods
.method private constructor <init>(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V
    .locals 1
    .param p1, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .param p2, "graphNode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareVideoContent;",
            "Ljava/lang/String;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p3, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->chunkStart:Ljava/lang/String;

    .line 312
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->accessToken:Lcom/facebook/AccessToken;

    .line 313
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoUri:Landroid/net/Uri;

    .line 314
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getContentTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->title:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->description:Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getRef()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->ref:Ljava/lang/String;

    .line 317
    iput-object p2, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->graphNode:Ljava/lang/String;

    .line 318
    iput-object p3, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->callback:Lcom/facebook/FacebookCallback;

    .line 319
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareVideo;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->params:Landroid/os/Bundle;

    .line 320
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;Lcom/facebook/share/internal/VideoUploader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/share/model/ShareVideoContent;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/facebook/FacebookCallback;
    .param p4, "x3"    # Lcom/facebook/share/internal/VideoUploader$1;

    .prologue
    .line 285
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/VideoUploader$UploadContext;-><init>(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/share/internal/VideoUploader$UploadContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/facebook/share/internal/VideoUploader$UploadContext;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 324
    const/4 v1, 0x0

    .line 326
    .local v1, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isFileUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoUri:Landroid/net/Uri;

    .line 328
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 327
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 330
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoSize:J

    .line 331
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoStream:Ljava/io/InputStream;

    .line 346
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isContentUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->getContentSize(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoSize:J

    .line 335
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 336
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoUri:Landroid/net/Uri;

    .line 337
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoStream:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 344
    throw v0

    .line 339
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :try_start_1
    new-instance v2, Lcom/facebook/FacebookException;

    const-string/jumbo v3, "Uri must be a content:// or file:// uri"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
.end method
