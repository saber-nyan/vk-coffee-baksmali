.class abstract Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;
.super Lcom/vkcoffee/android/ui/adapters/LoadingAdapter;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PhotoFeedAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/adapters/LoadingAdapter",
        "<",
        "Lcom/vkcoffee/android/Photo;",
        "Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;",
        ">;",
        "Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Ljava/util/List;Lme/grishka/appkit/views/UsableRecyclerView;)V
    .locals 1
    .param p3, "list"    # Lme/grishka/appkit/views/UsableRecyclerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;",
            "Lme/grishka/appkit/views/UsableRecyclerView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 426
    .local p2, "initialList":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/Photo;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 427
    const/16 v0, 0x32

    invoke-direct {p0, p2, p3, v0}, Lcom/vkcoffee/android/ui/adapters/LoadingAdapter;-><init>(Ljava/util/List;Lme/grishka/appkit/views/UsableRecyclerView;I)V

    .line 428
    return-void
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)Lme/grishka/appkit/utils/Preloader;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)Lcom/vkcoffee/android/fragments/ProfileFragment;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 5
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    const/16 v2, 0x6d

    .line 456
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/Photo;

    .line 457
    .local v1, "photo":Lcom/vkcoffee/android/Photo;
    sget v3, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    sget v3, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/16 v0, 0x70

    .line 458
    .local v0, "c":C
    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/vkcoffee/android/Photo;->getImage(CC)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v2

    iget-object v2, v2, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    return-object v2

    .line 457
    .end local v0    # "c":C
    :cond_0
    const/16 v0, 0x6f

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public getPhotoBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "index"    # I
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "outClip"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 477
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v5}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildCount()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 497
    :cond_0
    :goto_1
    return-void

    .line 478
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v5, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 479
    .local v4, "v":Landroid/view/View;
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v5, v4}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildViewHolder(Landroid/view/View;)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v0

    .line 480
    .local v0, "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    instance-of v5, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;

    if-eqz v5, :cond_3

    .line 481
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v5}, Lme/grishka/appkit/utils/Preloader;->getData()Ljava/util/ArrayList;

    move-result-object v6

    check-cast v0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;

    .end local v0    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/Photo;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 482
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 483
    .local v2, "loc":[I
    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 484
    aget v5, v2, v7

    aget v6, v2, v9

    aget v7, v2, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v2, v9

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 485
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v4, v5}, Lme/grishka/appkit/utils/V;->getViewOffset(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v3

    .line 486
    .local v3, "offset":Landroid/graphics/Point;
    iget v5, v3, Landroid/graphics/Point;->y:I

    if-gez v5, :cond_2

    .line 487
    iget v5, v3, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    iput v5, p3, Landroid/graphics/Rect;->top:I

    .line 489
    :cond_2
    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v6}, Lme/grishka/appkit/views/UsableRecyclerView;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 490
    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v6}, Lme/grishka/appkit/views/UsableRecyclerView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 477
    .end local v2    # "loc":[I
    .end local v3    # "offset":Landroid/graphics/Point;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isMoreAvailable()Z
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/Preloader;->isMoreAvailable()Z

    move-result v0

    return v0
.end method

.method lambda$onAppendItems$583()V
    .locals 0

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->loadMore()V

    .line 422
    return-void
.end method

.method public abstract loadData(II)V
.end method

.method public loadMore()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/Preloader;->onScrolledToLastItem()V

    .line 505
    return-void
.end method

.method public onAppendItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/Photo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 467
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$12(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/PhotoViewer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 468
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$12(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/PhotoViewer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vkcoffee/android/PhotoViewer;->appendPhotos(Ljava/util/List;)V

    .line 470
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 471
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$14(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$PhotoFeedAdapter$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 473
    :cond_2
    return-void

    .line 462
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Photo;

    .line 463
    .local v0, "photo":Lcom/vkcoffee/android/Photo;
    iget-boolean v2, v0, Lcom/vkcoffee/android/Photo;->hidden:Z

    if-nez v2, :cond_0

    .line 464
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->onBindViewHolder(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 448
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Photo;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;->bind(Ljava/lang/Object;)V

    .line 449
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 431
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter$1;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    return-object v0
.end method

.method public onDismissed()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$PhotoFeedAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$13(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/PhotoViewer;)V

    .line 509
    return-void
.end method
