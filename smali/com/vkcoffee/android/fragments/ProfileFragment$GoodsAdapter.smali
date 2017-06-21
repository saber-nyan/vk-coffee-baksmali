.class Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;
.super Lcom/vkcoffee/android/ui/adapters/LoadingAdapter;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView$ItemWidthFixable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoodsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/adapters/LoadingAdapter",
        "<",
        "Lcom/vkcoffee/android/data/Good;",
        "Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;",
        ">;",
        "Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView$ItemWidthFixable;"
    }
.end annotation


# instance fields
.field itemWidth:I

.field mainAlbumId:I

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Ljava/util/List;Lme/grishka/appkit/views/UsableRecyclerView;I)V
    .locals 1
    .param p3, "list"    # Lme/grishka/appkit/views/UsableRecyclerView;
    .param p4, "mainAlbumId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/Good;",
            ">;",
            "Lme/grishka/appkit/views/UsableRecyclerView;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 877
    .local p2, "initialList":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/data/Good;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 878
    const/16 v0, 0xa

    invoke-direct {p0, p2, p3, v0}, Lcom/vkcoffee/android/ui/adapters/LoadingAdapter;-><init>(Ljava/util/List;Lme/grishka/appkit/views/UsableRecyclerView;I)V

    .line 879
    iput p4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->mainAlbumId:I

    .line 880
    return-void
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;Z)V
    .locals 0

    .prologue
    .line 873
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->dataLoading:Z

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;)Lme/grishka/appkit/utils/Preloader;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->preloader:Lme/grishka/appkit/utils/Preloader;

    return-object v0
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 892
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/Good;

    iget-object v0, v0, Lcom/vkcoffee/android/data/Good;->photos:[Lcom/vkcoffee/android/Photo;

    invoke-static {v0}, Lcom/vkcoffee/android/utils/Utils;->isEmptyArray([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    const/4 v2, 0x0

    .line 900
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/data/Good;

    iget-object v1, v1, Lcom/vkcoffee/android/data/Good;->photos:[Lcom/vkcoffee/android/Photo;

    invoke-static {v1}, Lcom/vkcoffee/android/utils/Utils;->isEmptyArray([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 904
    :goto_0
    return-object v2

    .line 903
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/data/Good;

    iget-object v1, v1, Lcom/vkcoffee/android/data/Good;->photos:[Lcom/vkcoffee/android/Photo;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    const/high16 v3, 0x43080000    # 136.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/Photo;->getImageByWidth(I)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v0

    .line 904
    .local v0, "image1":Lcom/vkcoffee/android/Photo$Image;
    if-nez v0, :cond_1

    move-object v1, v2

    :goto_1
    move-object v2, v1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    goto :goto_1
.end method

.method public loadData(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 909
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->dataLoading:Z

    .line 910
    iget v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->mainAlbumId:I

    if-ltz v1, :cond_0

    .line 911
    new-instance v0, Lcom/vkcoffee/android/api/market/MarketGet;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->mainAlbumId:I

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/vkcoffee/android/api/market/MarketGet;-><init>(IIII)V

    .line 915
    .local v0, "marketGet":Lcom/vkcoffee/android/api/market/MarketGet;
    :goto_0
    new-instance v1, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter$1;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/market/MarketGet;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 929
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 930
    return-void

    .line 913
    .end local v0    # "marketGet":Lcom/vkcoffee/android/api/market/MarketGet;
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/api/market/MarketGet;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/vkcoffee/android/api/market/MarketGet;-><init>(III)V

    .restart local v0    # "marketGet":Lcom/vkcoffee/android/api/market/MarketGet;
    goto :goto_0
.end method

.method public onAppendItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/Good;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 933
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/data/Good;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 936
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 937
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$14(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileFragment$GoodsAdapter$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 939
    :cond_0
    return-void

    .line 933
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/Good;

    .line 934
    .local v0, "good":Lcom/vkcoffee/android/data/Good;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->onBindViewHolder(Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 887
    iget v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->itemWidth:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->setItemWidth(I)V

    .line 888
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->displayItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/Good;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;->bind(Ljava/lang/Object;)V

    .line 889
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 883
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodViewHolder;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public setItemWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 896
    iput p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$GoodsAdapter;->itemWidth:I

    .line 897
    return-void
.end method
