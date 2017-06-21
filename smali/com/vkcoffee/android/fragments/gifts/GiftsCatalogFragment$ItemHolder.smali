.class Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GiftsCatalogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder$HorizontalListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/api/models/GiftCategory;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/models/CatalogedGift;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMinHeight:I

.field mLastPosition:I

.field private final mRecycler:Lme/grishka/appkit/views/UsableRecyclerView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;Landroid/view/ViewGroup;)V
    .locals 4
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 367
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;

    .line 368
    new-instance v0, Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(Landroid/view/View;)V

    .line 365
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->mLastPosition:I

    .line 369
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->itemView:Landroid/view/View;

    check-cast v0, Lme/grishka/appkit/views/UsableRecyclerView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->mRecycler:Lme/grishka/appkit/views/UsableRecyclerView;

    .line 370
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->mRecycler:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->setNestedScrollingEnabled(Z)V

    .line 371
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->mRecycler:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->setClipToPadding(Z)V

    .line 372
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->mRecycler:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {p1}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->access$700(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;)I

    move-result v1

    invoke-static {p1}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->access$700(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 373
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->mRecycler:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 374
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->mRecycler:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v1, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder$HorizontalListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder$HorizontalListAdapter;-><init>(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$1;)V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 375
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->mRecycler:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->access$900()Lcom/vkcoffee/android/ui/recyclerview/SpaceItemDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 376
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->mRecycler:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->access$900()Lcom/vkcoffee/android/ui/recyclerview/SpaceItemDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 377
    return-void
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->mData:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/api/models/GiftCategory;)V
    .locals 2
    .param p1, "item"    # Lcom/vkcoffee/android/api/models/GiftCategory;

    .prologue
    .line 381
    iget-object v0, p1, Lcom/vkcoffee/android/api/models/GiftCategory;->items:Ljava/util/List;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->mData:Ljava/util/List;

    .line 382
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/api/models/GiftCategory;->setTag(Ljava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 384
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->mRecycler:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->updateImages()V

    .line 385
    iget v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->mLastMinHeight:I

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->access$1000(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->access$1000(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->mLastMinHeight:I

    .line 387
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->mRecycler:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;->access$1000(Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->setMinimumHeight(I)V

    .line 389
    :cond_0
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 359
    check-cast p1, Lcom/vkcoffee/android/api/models/GiftCategory;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftsCatalogFragment$ItemHolder;->bind(Lcom/vkcoffee/android/api/models/GiftCategory;)V

    return-void
.end method
