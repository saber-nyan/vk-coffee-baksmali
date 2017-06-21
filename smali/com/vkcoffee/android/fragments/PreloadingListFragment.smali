.class public abstract Lcom/vkcoffee/android/fragments/PreloadingListFragment;
.super Lcom/vkcoffee/android/fragments/BaseListFragment;
.source "PreloadingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vkcoffee/android/fragments/BaseListFragment",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private footerView:Lcom/vkcoffee/android/ui/LoadMoreFooterView;

.field protected itemsPerPage:I

.field protected moreAvailable:Z

.field protected preloadOnReady:Z

.field protected preloadedData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected preloading:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "perPage"    # I

    .prologue
    .line 20
    .local p0, "this":Lcom/vkcoffee/android/fragments/PreloadingListFragment;, "Lcom/vkcoffee/android/fragments/PreloadingListFragment<TT;>;"
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;-><init>()V

    .line 16
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->preloadedData:Ljava/util/Vector;

    .line 21
    iput p1, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->itemsPerPage:I

    .line 22
    return-void
.end method


# virtual methods
.method protected appendItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/vkcoffee/android/fragments/PreloadingListFragment;, "Lcom/vkcoffee/android/fragments/PreloadingListFragment<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    return-void
.end method

.method public beforeSetAdapter()V
    .locals 4

    .prologue
    .line 39
    .local p0, "this":Lcom/vkcoffee/android/fragments/PreloadingListFragment;, "Lcom/vkcoffee/android/fragments/PreloadingListFragment<TT;>;"
    new-instance v0, Lcom/vkcoffee/android/ui/LoadMoreFooterView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/LoadMoreFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->footerView:Lcom/vkcoffee/android/ui/LoadMoreFooterView;

    .line 40
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->footerView:Lcom/vkcoffee/android/ui/LoadMoreFooterView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 42
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->beforeSetAdapter()V

    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->footerView:Lcom/vkcoffee/android/ui/LoadMoreFooterView;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->moreAvailable:Z

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 44
    return-void
.end method

.method protected clearItems()V
    .locals 0

    .prologue
    .line 122
    .local p0, "this":Lcom/vkcoffee/android/fragments/PreloadingListFragment;, "Lcom/vkcoffee/android/fragments/PreloadingListFragment<TT;>;"
    return-void
.end method

.method public doLoadData()V
    .locals 2

    .prologue
    .line 28
    .local p0, "this":Lcom/vkcoffee/android/fragments/PreloadingListFragment;, "Lcom/vkcoffee/android/fragments/PreloadingListFragment<TT;>;"
    const/4 v0, 0x0

    iget v1, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->itemsPerPage:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->doLoadData(II)V

    .line 29
    return-void
.end method

.method protected abstract doLoadData(II)V
.end method

.method public loadData(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 33
    .local p0, "this":Lcom/vkcoffee/android/fragments/PreloadingListFragment;, "Lcom/vkcoffee/android/fragments/PreloadingListFragment<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->dataLoading:Z

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->doLoadData(II)V

    .line 35
    return-void
.end method

.method public onDataLoaded(Lcom/vkcoffee/android/data/VKList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/vkcoffee/android/fragments/PreloadingListFragment;, "Lcom/vkcoffee/android/fragments/PreloadingListFragment<TT;>;"
    .local p1, "d":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->preloadedData:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDataLoaded(Ljava/util/List;Z)V
    .locals 5
    .param p2, "more"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/fragments/PreloadingListFragment;, "Lcom/vkcoffee/android/fragments/PreloadingListFragment<TT;>;"
    .local p1, "d":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    iput-boolean v4, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->loaded:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->currentRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 61
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->refreshing:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->preloadedData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 64
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->clearItems()V

    .line 66
    :cond_0
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->preloading:Z

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->preloadedData:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 76
    :goto_0
    iput-boolean v3, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->preloading:Z

    .line 77
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->preloadOnReady:Z

    if-eqz v0, :cond_1

    .line 78
    iput-boolean v4, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->preloading:Z

    .line 79
    iput-boolean v3, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->preloadOnReady:Z

    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->itemsPerPage:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->loadData(II)V

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->updateList()V

    .line 83
    iput-boolean p2, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->moreAvailable:Z

    .line 84
    iput-boolean v3, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->dataLoading:Z

    .line 86
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->refreshing:Z

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->refreshDone()V

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->updateList()V

    .line 91
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->list:Landroid/widget/ListView;

    if-nez v0, :cond_5

    .line 97
    :goto_1
    return-void

    .line 68
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->itemsPerPage:I

    if-le v0, v1, :cond_4

    if-eqz p2, :cond_4

    .line 69
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->data:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->itemsPerPage:I

    invoke-interface {p1, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 70
    iget v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->itemsPerPage:I

    invoke-interface {p1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->appendItems(Ljava/util/List;)V

    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->preloadedData:Ljava/util/Vector;

    iget v1, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->itemsPerPage:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->appendItems(Ljava/util/List;)V

    goto :goto_0

    .line 94
    :cond_5
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->footerView:Lcom/vkcoffee/android/ui/LoadMoreFooterView;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->moreAvailable:Z

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 95
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-static {v0, v3}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 96
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lcom/vkcoffee/android/fragments/PreloadingListFragment;, "Lcom/vkcoffee/android/fragments/PreloadingListFragment<TT;>;"
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->onDestroyView()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->footerView:Lcom/vkcoffee/android/ui/LoadMoreFooterView;

    .line 50
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 101
    .local p0, "this":Lcom/vkcoffee/android/fragments/PreloadingListFragment;, "Lcom/vkcoffee/android/fragments/PreloadingListFragment<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->dataLoading:Z

    .line 102
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->refreshing:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->refreshDone()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->refreshing:Z

    if-eqz v0, :cond_2

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/vkcoffee/android/api/APIUtils;->showErrorToast(Landroid/content/Context;ILjava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/BaseListFragment;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onScrolledToLastItem()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/fragments/PreloadingListFragment;, "Lcom/vkcoffee/android/fragments/PreloadingListFragment<TT;>;"
    const/4 v2, 0x1

    .line 126
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->refreshing:Z

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->dataLoading:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->preloading:Z

    if-eqz v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->moreAvailable:Z

    if-eqz v0, :cond_0

    .line 130
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->preloading:Z

    if-eqz v0, :cond_3

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->preloading:Z

    .line 132
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->preloadOnReady:Z

    goto :goto_0

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->preloadedData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 134
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->data:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->preloadedData:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 135
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->preloadedData:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->appendItems(Ljava/util/List;)V

    .line 136
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->updateList()V

    .line 137
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->preloadedData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 138
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->preloading:Z

    .line 139
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->itemsPerPage:I

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->loadData(II)V

    goto :goto_0

    .line 141
    :cond_4
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->itemsPerPage:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/PreloadingListFragment;->loadData(II)V

    goto :goto_0
.end method

.method protected prependItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/vkcoffee/android/fragments/PreloadingListFragment;, "Lcom/vkcoffee/android/fragments/PreloadingListFragment<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    return-void
.end method
