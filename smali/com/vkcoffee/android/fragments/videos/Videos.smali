.class Lcom/vkcoffee/android/fragments/videos/Videos;
.super Ljava/lang/Object;
.source "Videos.java"


# static fields
.field static final ACTION_ALBUM_CREATED:Ljava/lang/String; = "com.vkcoffee.android.VIDEO_ALBUM_CREATED"

.field static final ACTION_UPLOAD_DONE:Ljava/lang/String; = "com.vkcoffee.android.UPLOAD_DONE"

.field static final ACTION_VIDEO_ADDED:Ljava/lang/String; = "com.vkcoffee.android.VIDEO_ADDED"

.field static final ACTION_VIDEO_MOVED:Ljava/lang/String; = "com.vkcoffee.android.VIDEO_MOVED"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static extractAlbum(Landroid/content/Intent;)Lcom/vkcoffee/android/api/VideoAlbum;
    .locals 1
    .param p0, "data"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    const-string/jumbo v0, "album"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/VideoAlbum;

    return-object v0
.end method

.method static extractVideo(Landroid/content/Intent;)Lcom/vkcoffee/android/api/VideoFile;
    .locals 1
    .param p0, "data"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    const-string/jumbo v0, "video"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/VideoFile;

    return-object v0
.end method

.method static notifyAlbumCreated(Landroid/content/Context;Lcom/vkcoffee/android/api/VideoAlbum;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "album"    # Lcom/vkcoffee/android/api/VideoAlbum;

    .prologue
    .line 37
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.VIDEO_ALBUM_CREATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "album"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 38
    return-void
.end method

.method static notifyVideoAdded(Landroid/content/Context;Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 29
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.VIDEO_ADDED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "video"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 30
    return-void
.end method

.method static notifyVideoMoved(Landroid/content/Context;Lcom/vkcoffee/android/api/VideoFile;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/vkcoffee/android/api/VideoFile;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "add":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "remove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.VIDEO_MOVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "video"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "add"

    invoke-static {p2}, Lcom/vkcoffee/android/SystemUtils;->asIntArray(Ljava/util/List;)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "remove"

    invoke-static {p3}, Lcom/vkcoffee/android/SystemUtils;->asIntArray(Ljava/util/List;)[I

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 34
    return-void
.end method
