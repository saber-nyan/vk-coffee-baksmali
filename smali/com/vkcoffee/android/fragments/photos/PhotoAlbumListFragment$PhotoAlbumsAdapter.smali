.class Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "PhotoAlbumListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoAlbumsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/api/PhotoAlbum;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$1;

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 397
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$1900(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v0, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$2000(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/PhotoAlbum;

    iget-object v0, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 402
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$2100(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/PhotoAlbum;

    iget-object v0, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$1800(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 407
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$2200(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/PhotoAlbum;

    .line 408
    .local v0, "a":Lcom/vkcoffee/android/api/PhotoAlbum;
    iget v1, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 410
    const/4 v1, 0x2

    .line 416
    :goto_0
    return v1

    .line 412
    :cond_0
    iget v1, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/vkcoffee/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 414
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 416
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 372
    check-cast p1, Lcom/vkcoffee/android/BindableViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;->onBindViewHolder(Lcom/vkcoffee/android/BindableViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/BindableViewHolder;I)V
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/BindableViewHolder",
            "<",
            "Lcom/vkcoffee/android/api/PhotoAlbum;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "holder":Lcom/vkcoffee/android/BindableViewHolder;, "Lcom/vkcoffee/android/BindableViewHolder<Lcom/vkcoffee/android/api/PhotoAlbum;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;->access$1700(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/BindableViewHolder;->bind(Ljava/lang/Object;)V

    .line 388
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/BindableViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/BindableViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/vkcoffee/android/BindableViewHolder",
            "<",
            "Lcom/vkcoffee/android/api/PhotoAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 377
    new-instance v0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$EmptyPhotoAlbumViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$EmptyPhotoAlbumViewHolder;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)V

    .line 382
    :goto_0
    return-object v0

    .line 379
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 380
    new-instance v0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$SectionHeaderViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$SectionHeaderViewHolder;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)V

    goto :goto_0

    .line 382
    :cond_1
    new-instance v0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumsAdapter;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment$PhotoAlbumViewHolder;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoAlbumListFragment;)V

    goto :goto_0
.end method
