.class public Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;
.super Ljava/lang/Object;
.source "VideoAddHelper.java"


# static fields
.field public static final ACTION_RELOAD_VIDEO_ALBUMS:Ljava/lang/String; = "com.vkcoffee.android.RELOAD_VIDEO_ALBUMS"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public showAlbumsDialog(ILcom/vkcoffee/android/api/VideoFile;)V
    .locals 3
    .param p1, "targetID"    # I
    .param p2, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 41
    new-instance v0, Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo;

    iget v1, p2, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    iget v2, p2, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    invoke-direct {v0, p1, v1, v2}, Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo;-><init>(III)V

    new-instance v1, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;-><init>(Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;Landroid/content/Context;Lcom/vkcoffee/android/api/VideoFile;I)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;->context:Landroid/content/Context;

    .line 150
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 151
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/os/Looper;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 152
    return-void
.end method
