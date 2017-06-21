.class public Lcom/vkcoffee/android/fragments/fave/FaveVideoListFragment;
.super Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;
.source "FaveVideoListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/videos/AbsVideoListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOwnerID()I
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "news"

    return-object v0
.end method

.method protected getRequest(II)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/vkcoffee/android/api/VKAPIRequest",
            "<",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/api/VideoFile;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {p1, p2}, Lcom/vkcoffee/android/api/video/VideoGet;->getBookmarks(II)Lcom/vkcoffee/android/api/video/VideoGet;

    move-result-object v0

    return-object v0
.end method
