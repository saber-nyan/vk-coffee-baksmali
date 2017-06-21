.class public abstract Lme/grishka/appkit/fragments/BaseListFragment;
.super Lme/grishka/appkit/fragments/LoaderFragment;
.source "BaseListFragment.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lme/grishka/appkit/fragments/LoaderFragment;",
        "Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field protected contentWrap:Landroid/widget/FrameLayout;

.field protected data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected emptyView:Landroid/view/View;

.field protected footerError:Landroid/view/View;

.field protected footerProgress:Landroid/view/View;

.field protected footerView:Landroid/view/View;

.field protected imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

.field protected itemsPerPage:I

.field protected list:Landroid/widget/ListView;

.field protected moreAvailable:Z

.field protected preloadOnReady:Z

.field protected preloadedData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected preloading:Z

.field protected preloadingFailed:Z

.field private ptrScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private refreshAfterCreate:Z

.field private refreshEnabled:Z

.field protected refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

.field protected refreshing:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "perPage"    # I

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lme/grishka/appkit/fragments/LoaderFragment;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->data:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloadedData:Ljava/util/ArrayList;

    .line 40
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloadingFailed:Z

    .line 44
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshing:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshEnabled:Z

    .line 46
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshAfterCreate:Z

    .line 47
    new-instance v0, Lme/grishka/appkit/fragments/BaseListFragment$1;

    invoke-direct {v0, p0}, Lme/grishka/appkit/fragments/BaseListFragment$1;-><init>(Lme/grishka/appkit/fragments/BaseListFragment;)V

    iput-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->ptrScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 63
    iput p1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->itemsPerPage:I

    .line 64
    return-void
.end method


# virtual methods
.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 185
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    invoke-virtual {v0}, Lme/grishka/appkit/api/APIRequest;->cancel()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 189
    :cond_0
    return-void
.end method

.method protected doLoadData()V
    .locals 2

    .prologue
    .line 277
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    const/4 v0, 0x0

    iget v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->itemsPerPage:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lme/grishka/appkit/fragments/BaseListFragment;->doLoadData(II)V

    .line 278
    return-void
.end method

.method protected abstract doLoadData(II)V
.end method

.method protected abstract getAdapter()Landroid/widget/ListAdapter;
.end method

.method protected getEmptyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    const-string/jumbo v0, "Empty"

    return-object v0
.end method

.method protected loadData(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 282
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->dataLoading:Z

    .line 283
    invoke-virtual {p0, p1, p2}, Lme/grishka/appkit/fragments/BaseListFragment;->doLoadData(II)V

    .line 284
    return-void
.end method

.method protected onAppendItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    return-void
.end method

.method protected onClearItems()V
    .locals 0

    .prologue
    .line 176
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    const/4 v6, 0x0

    .line 72
    sget v2, Lme/grishka/appkit/R$layout;->list_fragment:I

    invoke-virtual {p1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, "view":Landroid/view/View;
    sget v2, Lme/grishka/appkit/R$id;->list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    .line 75
    sget v2, Lme/grishka/appkit/R$id;->empty:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->emptyView:Landroid/view/View;

    .line 76
    sget v2, Lme/grishka/appkit/R$id;->refresh_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    iput-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    .line 77
    sget v2, Lme/grishka/appkit/R$id;->content_wrap:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->contentWrap:Landroid/widget/FrameLayout;

    .line 79
    iget-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    invoke-interface {v2, p0}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 80
    iget-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    iget-boolean v3, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshEnabled:Z

    invoke-interface {v2, v3}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setEnabled(Z)V

    .line 81
    iget-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lme/grishka/appkit/fragments/BaseListFragment;->emptyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 82
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseListFragment;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 83
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v2, v0, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    if-eqz v2, :cond_0

    .line 84
    new-instance v3, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object v2, v0

    check-cast v2, Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    iget-object v5, p0, Lme/grishka/appkit/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    invoke-direct {v3, v4, v2, v5, p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;-><init>(Landroid/content/Context;Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;)V

    iput-object v3, p0, Lme/grishka/appkit/fragments/BaseListFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lme/grishka/appkit/fragments/BaseListFragment;->onCreateFooterView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->footerView:Landroid/view/View;

    .line 87
    iget-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->footerView:Landroid/view/View;

    sget v3, Lme/grishka/appkit/R$id;->load_more_progress:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->footerProgress:Landroid/view/View;

    .line 88
    iget-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->footerView:Landroid/view/View;

    sget v3, Lme/grishka/appkit/R$id;->load_more_error:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->footerError:Landroid/view/View;

    .line 89
    iget-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->footerError:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lme/grishka/appkit/fragments/BaseListFragment;->footerView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v6, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 91
    iget-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    iget-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 94
    iget-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    if-eqz v2, :cond_2

    .line 95
    iget-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    iget-object v3, p0, Lme/grishka/appkit/fragments/BaseListFragment;->ptrScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v3}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 100
    :goto_0
    iget-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->footerError:Landroid/view/View;

    sget v3, Lme/grishka/appkit/R$id;->error_retry:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lme/grishka/appkit/fragments/BaseListFragment$2;

    invoke-direct {v3, p0}, Lme/grishka/appkit/fragments/BaseListFragment$2;-><init>(Lme/grishka/appkit/fragments/BaseListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-boolean v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshAfterCreate:Z

    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseListFragment;->refresh()V

    .line 110
    :cond_1
    return-object v1

    .line 97
    :cond_2
    iget-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lme/grishka/appkit/fragments/BaseListFragment;->ptrScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0
.end method

.method protected onCreateFooterView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 67
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    sget v0, Lme/grishka/appkit/R$layout;->appkit_load_more:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDataLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    .local p1, "d":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 203
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->dataLoading:Z

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->loaded:Z

    .line 206
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 208
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseListFragment;->updateList()V

    .line 209
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshing:Z

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseListFragment;->refreshDone()V

    .line 212
    :cond_1
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 213
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->progress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected onDataLoaded(Ljava/util/List;Z)V
    .locals 6
    .param p2, "more"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    .local p1, "d":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 303
    iput-boolean v5, p0, Lme/grishka/appkit/fragments/BaseListFragment;->loaded:Z

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 305
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshing:Z

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 307
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 308
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseListFragment;->onClearItems()V

    .line 310
    :cond_0
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloading:Z

    if-eqz v0, :cond_3

    .line 311
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 320
    :goto_0
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloading:Z

    .line 321
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloadOnReady:Z

    if-eqz v0, :cond_1

    .line 322
    iput-boolean v5, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloading:Z

    .line 323
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloadOnReady:Z

    .line 324
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lme/grishka/appkit/fragments/BaseListFragment;->itemsPerPage:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v0, v3}, Lme/grishka/appkit/fragments/BaseListFragment;->loadData(II)V

    .line 326
    :cond_1
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseListFragment;->updateList()V

    .line 327
    iput-boolean p2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->moreAvailable:Z

    .line 328
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->dataLoading:Z

    .line 330
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshing:Z

    if-eqz v0, :cond_2

    .line 331
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseListFragment;->refreshDone()V

    .line 333
    :cond_2
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseListFragment;->updateList()V

    .line 334
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    if-nez v0, :cond_5

    .line 338
    :goto_1
    return-void

    .line 312
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lme/grishka/appkit/fragments/BaseListFragment;->itemsPerPage:I

    if-le v0, v3, :cond_4

    if-eqz p2, :cond_4

    .line 313
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->data:Ljava/util/ArrayList;

    iget v3, p0, Lme/grishka/appkit/fragments/BaseListFragment;->itemsPerPage:I

    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 314
    iget v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->itemsPerPage:I

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/grishka/appkit/fragments/BaseListFragment;->onAppendItems(Ljava/util/List;)V

    .line 315
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloadedData:Ljava/util/ArrayList;

    iget v3, p0, Lme/grishka/appkit/fragments/BaseListFragment;->itemsPerPage:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 317
    :cond_4
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 318
    invoke-virtual {p0, p1}, Lme/grishka/appkit/fragments/BaseListFragment;->onAppendItems(Ljava/util/List;)V

    goto :goto_0

    .line 335
    :cond_5
    iget-object v3, p0, Lme/grishka/appkit/fragments/BaseListFragment;->footerProgress:Landroid/view/View;

    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->moreAvailable:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 337
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->progress:Landroid/view/View;

    invoke-static {v0, v2}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    goto :goto_1

    :cond_6
    move v0, v2

    .line 335
    goto :goto_2
.end method

.method public onDataLoaded(Lme/grishka/appkit/api/PaginatedList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/grishka/appkit/api/PaginatedList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    .local p1, "d":Lme/grishka/appkit/api/PaginatedList;, "Lme/grishka/appkit/api/PaginatedList<TT;>;"
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lme/grishka/appkit/api/PaginatedList;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lme/grishka/appkit/api/PaginatedList;->total()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lme/grishka/appkit/fragments/BaseListFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 300
    return-void

    .line 299
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    const/4 v1, 0x0

    .line 243
    invoke-super {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->onDestroyView()V

    .line 244
    iput-object v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    .line 245
    iput-object v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->emptyView:Landroid/view/View;

    .line 246
    iput-object v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->progress:Landroid/view/View;

    .line 247
    iput-object v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->errorView:Landroid/view/View;

    .line 248
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->deactivate()V

    .line 250
    :cond_0
    iput-object v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .line 251
    return-void
.end method

.method public onError(Lme/grishka/appkit/api/ErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lme/grishka/appkit/api/ErrorResponse;

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    const/4 v1, 0x0

    .line 224
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->dataLoading:Z

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 226
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->errorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshing:Z

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseListFragment;->refreshDone()V

    .line 229
    :cond_1
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshing:Z

    if-eqz v0, :cond_2

    .line 230
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lme/grishka/appkit/api/ErrorResponse;->showToast(Landroid/content/Context;)V

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloadingFailed:Z

    .line 233
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->footerError:Landroid/view/View;

    invoke-virtual {p1, v0}, Lme/grishka/appkit/api/ErrorResponse;->bindErrorView(Landroid/view/View;)V

    .line 234
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->footerError:Landroid/view/View;

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 235
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->footerProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    goto :goto_0

    .line 237
    :cond_3
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onError(Lme/grishka/appkit/api/ErrorResponse;)V

    goto :goto_0
.end method

.method protected onErrorRetryClick()V
    .locals 2

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    const/4 v1, 0x0

    .line 115
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloadingFailed:Z

    if-eqz v0, :cond_0

    .line 116
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloadingFailed:Z

    .line 117
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->footerProgress:Landroid/view/View;

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 118
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->footerError:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 119
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseListFragment;->onScrolledToLastItem()V

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-super {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->onErrorRetryClick()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected onPrependItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    const/4 v2, 0x0

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshing:Z

    .line 128
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->footerError:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->footerProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iput-boolean v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloadingFailed:Z

    .line 131
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseListFragment;->doLoadData()V

    .line 132
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 159
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 164
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 3

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    const/4 v2, 0x1

    .line 138
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloadingFailed:Z

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->dataLoading:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloading:Z

    if-eqz v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->moreAvailable:Z

    if-eqz v0, :cond_0

    .line 140
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloading:Z

    if-eqz v0, :cond_3

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloading:Z

    .line 142
    iput-boolean v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloadOnReady:Z

    goto :goto_0

    .line 143
    :cond_3
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 144
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->data:Ljava/util/ArrayList;

    iget-object v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lme/grishka/appkit/fragments/BaseListFragment;->onAppendItems(Ljava/util/List;)V

    .line 146
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseListFragment;->updateList()V

    .line 147
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    iput-boolean v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->preloading:Z

    .line 149
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->itemsPerPage:I

    invoke-virtual {p0, v0, v1}, Lme/grishka/appkit/fragments/BaseListFragment;->loadData(II)V

    goto :goto_0

    .line 151
    :cond_4
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->itemsPerPage:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lme/grishka/appkit/fragments/BaseListFragment;->loadData(II)V

    goto :goto_0
.end method

.method protected refresh()V
    .locals 3

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 259
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseListFragment;->loadData()V

    .line 271
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    invoke-interface {v0, v2}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setRefreshing(Z)V

    .line 265
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    invoke-interface {v0, v1}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setEnabled(Z)V

    .line 266
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseListFragment;->onRefresh()V

    .line 267
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshAfterCreate:Z

    goto :goto_0

    .line 269
    :cond_1
    iput-boolean v2, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshAfterCreate:Z

    goto :goto_0
.end method

.method public refreshDone()V
    .locals 2

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    const/4 v1, 0x0

    .line 197
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshing:Z

    .line 198
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    invoke-interface {v0, v1}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setRefreshing(Z)V

    .line 199
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    iget-boolean v1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshEnabled:Z

    invoke-interface {v0, v1}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setEnabled(Z)V

    .line 200
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 192
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshing:Z

    .line 193
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseListFragment;->loadData()V

    .line 194
    return-void
.end method

.method protected setRefreshEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 179
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    iput-boolean p1, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshEnabled:Z

    .line 180
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    invoke-interface {v0, p1}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setEnabled(Z)V

    .line 182
    :cond_0
    return-void
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 217
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment;, "Lme/grishka/appkit/fragments/BaseListFragment<TT;>;"
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseListFragment;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 218
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseListFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->updateImages()V

    .line 220
    :cond_0
    return-void
.end method
