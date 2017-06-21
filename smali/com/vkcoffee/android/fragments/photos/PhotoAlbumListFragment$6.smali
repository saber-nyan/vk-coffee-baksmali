.class Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$6;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "PhotoAlbumListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$6;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;)V
    .locals 10
    .param p1, "result"    # Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;

    .prologue
    const/4 v9, 0x0

    .line 253
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/PhotoAlbum;>;"
    const/4 v2, 0x0

    .line 255
    .local v2, "prevID":I
    new-instance v1, Lcom/vkcoffee/android/api/PhotoAlbum;

    invoke-direct {v1}, Lcom/vkcoffee/android/api/PhotoAlbum;-><init>()V

    .line 256
    .local v1, "divider":Lcom/vkcoffee/android/api/PhotoAlbum;
    const/high16 v4, -0x80000000

    iput v4, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    .line 257
    iget-object v4, p1, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;->albums:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    .line 258
    iget-object v4, p1, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;->albums:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/PhotoAlbum;

    .line 259
    .local v0, "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    if-gez v2, :cond_0

    iget v5, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    if-lez v5, :cond_0

    .line 260
    iget v5, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    .line 261
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget v2, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    .line 265
    goto :goto_0

    .line 266
    .end local v0    # "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$6;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0002

    iget v6, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 267
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$6;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-static {v4, v3, v9}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$1200(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;Ljava/util/List;Z)V

    .line 268
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 250
    check-cast p1, Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$6;->success(Lcom/vkcoffee/android/api/photos/PhotosGetAlbums$Result;)V

    return-void
.end method
