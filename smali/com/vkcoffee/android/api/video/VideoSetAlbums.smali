.class public Lcom/vkcoffee/android/api/video/VideoSetAlbums;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "VideoSetAlbums.java"


# direct methods
.method public constructor <init>(IIILjava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "targetID"    # I
    .param p2, "ownerID"    # I
    .param p3, "videoID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
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
    .line 15
    .local p4, "addToAlbums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "removeFromAlbums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v0, "execute.setVideoAlbums"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string/jumbo v0, "target_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/video/VideoSetAlbums;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 17
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/video/VideoSetAlbums;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 18
    const-string/jumbo v0, "video_id"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/video/VideoSetAlbums;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 19
    const-string/jumbo v0, "add_to_album_ids"

    const-string/jumbo v1, ","

    invoke-static {v1, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/video/VideoSetAlbums;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 20
    const-string/jumbo v0, "remove_from_album_ids"

    const-string/jumbo v1, ","

    invoke-static {v1, p5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/video/VideoSetAlbums;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 21
    const-string/jumbo v0, "func_v"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/video/VideoSetAlbums;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 22
    return-void
.end method
