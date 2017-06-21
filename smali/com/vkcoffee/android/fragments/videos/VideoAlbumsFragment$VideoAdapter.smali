.class Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAdapter;
.super Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;
.source "VideoAlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/GridFragment",
        "<",
        "Lcom/vkcoffee/android/api/VideoAlbum;",
        ">.GridAdapter<",
        "Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAdapter;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/base/GridFragment$GridAdapter;-><init>(Lcom/vkcoffee/android/fragments/base/GridFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$1;

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAdapter;-><init>(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAdapter;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;->access$700(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/VideoAlbum;

    iget-object v0, v0, Lcom/vkcoffee/android/api/VideoAlbum;->photoBig:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 214
    new-instance v0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAdapter;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment$VideoAlbumHolder;-><init>(Lcom/vkcoffee/android/fragments/videos/VideoAlbumsFragment;Landroid/view/ViewGroup;)V

    return-object v0
.end method
