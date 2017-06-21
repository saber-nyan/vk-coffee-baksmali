.class public abstract Lme/grishka/appkit/fragments/BaseRecyclerFragment;
.super Lme/grishka/appkit/fragments/LoaderFragment;
.source "BaseRecyclerFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;
.implements Lme/grishka/appkit/utils/Preloader$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lme/grishka/appkit/fragments/LoaderFragment;",
        "Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;",
        "Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;",
        "Lme/grishka/appkit/utils/Preloader$Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected contentWrap:Landroid/view/ViewGroup;

.field protected data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected emptyButton:Landroid/widget/Button;

.field protected emptyButtonText:Ljava/lang/CharSequence;

.field protected emptyButtonVisible:Z

.field protected emptyText:Ljava/lang/CharSequence;

.field protected emptyView:Landroid/view/View;

.field protected footerError:Landroid/view/View;

.field protected footerProgress:Landroid/view/View;

.field protected footerView:Landroid/view/View;

.field protected itemsPerPage:I

.field protected list:Lme/grishka/appkit/views/UsableRecyclerView;

.field private listLayoutId:I

.field protected preloadedData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected preloader:Lme/grishka/appkit/utils/Preloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lme/grishka/appkit/utils/Preloader",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected preloadingFailed:Z

.field private refreshAfterCreate:Z

.field private refreshEnabled:Z

.field protected refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

.field protected refreshing:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "perPage"    # I

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lme/grishka/appkit/fragments/LoaderFragment;-><init>()V

    .line 49
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshing:Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshEnabled:Z

    .line 51
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshAfterCreate:Z

    .line 52
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloadingFailed:Z

    .line 58
    sget v0, Lme/grishka/appkit/R$layout;->recycler_fragment:I

    iput v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->listLayoutId:I

    .line 61
    iput p1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->itemsPerPage:I

    .line 62
    new-instance v0, Lme/grishka/appkit/utils/Preloader;

    invoke-direct {v0, p0, p1}, Lme/grishka/appkit/utils/Preloader;-><init>(Lme/grishka/appkit/utils/Preloader$Callback;I)V

    iput-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloader:Lme/grishka/appkit/utils/Preloader;

    .line 63
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/Preloader;->getData()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->data:Ljava/util/ArrayList;

    .line 64
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/Preloader;->getPreloadedData()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloadedData:Ljava/util/ArrayList;

    .line 65
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "layout"    # I
    .param p2, "perPage"    # I

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;-><init>(I)V

    .line 49
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshing:Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshEnabled:Z

    .line 51
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshAfterCreate:Z

    .line 52
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloadingFailed:Z

    .line 58
    sget v0, Lme/grishka/appkit/R$layout;->recycler_fragment:I

    iput v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->listLayoutId:I

    .line 76
    iput p2, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->itemsPerPage:I

    .line 77
    new-instance v0, Lme/grishka/appkit/utils/Preloader;

    invoke-direct {v0, p0, p2}, Lme/grishka/appkit/utils/Preloader;-><init>(Lme/grishka/appkit/utils/Preloader$Callback;I)V

    iput-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloader:Lme/grishka/appkit/utils/Preloader;

    .line 78
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/Preloader;->getData()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->data:Ljava/util/ArrayList;

    .line 79
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/Preloader;->getPreloadedData()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloadedData:Ljava/util/ArrayList;

    .line 80
    return-void
.end method


# virtual methods
.method protected beforeSetAdapter()V
    .locals 0

    .prologue
    .line 163
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    return-void
.end method

.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 207
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    invoke-virtual {v0}, Lme/grishka/appkit/api/APIRequest;->cancel()V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 211
    :cond_0
    return-void
.end method

.method protected doLoadData()V
    .locals 2

    .prologue
    .line 345
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    const/4 v0, 0x0

    iget v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->itemsPerPage:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->doLoadData(II)V

    .line 346
    return-void
.end method

.method protected abstract doLoadData(II)V
.end method

.method protected abstract getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
.end method

.method protected getSpanCount()I
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isDataLoading()Z
    .locals 1

    .prologue
    .line 356
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->dataLoading:Z

    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 361
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshing:Z

    return v0
.end method

.method public loadData(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 350
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->dataLoading:Z

    .line 351
    invoke-virtual {p0, p1, p2}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->doLoadData(II)V

    .line 352
    return-void
.end method

.method public onAppendItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget v0, Lme/grishka/appkit/R$string;->empty_list:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyText:Ljava/lang/CharSequence;

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onAttach(Landroid/app/Activity;)V

    .line 72
    return-void
.end method

.method public onClearItems()V
    .locals 0

    .prologue
    .line 178
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    const/16 v5, 0x8

    .line 96
    iget v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->listLayoutId:I

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 98
    .local v3, "view":Landroid/view/View;
    sget v4, Lme/grishka/appkit/R$id;->list:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lme/grishka/appkit/views/UsableRecyclerView;

    iput-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    .line 99
    iget-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v4, p0}, Lme/grishka/appkit/views/UsableRecyclerView;->setListener(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;)V

    .line 100
    sget v4, Lme/grishka/appkit/R$id;->empty:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyView:Landroid/view/View;

    .line 101
    sget v4, Lme/grishka/appkit/R$id;->refresh_layout:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    iput-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    .line 102
    sget v4, Lme/grishka/appkit/R$id;->content_wrap:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->contentWrap:Landroid/view/ViewGroup;

    .line 103
    iget-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyView:Landroid/view/View;

    sget v6, Lme/grishka/appkit/R$id;->empty_text:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v6, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyView:Landroid/view/View;

    sget v6, Lme/grishka/appkit/R$id;->empty_button:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyButton:Landroid/widget/Button;

    .line 105
    iget-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyButton:Landroid/widget/Button;

    iget-object v6, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v6, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyButton:Landroid/widget/Button;

    iget-boolean v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyButtonVisible:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    iget-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyButton:Landroid/widget/Button;

    new-instance v6, Lme/grishka/appkit/fragments/BaseRecyclerFragment$1;

    invoke-direct {v6, p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment$1;-><init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 115
    .local v1, "lmgr":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v4, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 116
    check-cast v4, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v2

    .local v2, "prevLookup":Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    move-object v4, v1

    .line 117
    check-cast v4, Landroid/support/v7/widget/GridLayoutManager;

    new-instance v6, Lme/grishka/appkit/fragments/BaseRecyclerFragment$2;

    invoke-direct {v6, p0, v2}, Lme/grishka/appkit/fragments/BaseRecyclerFragment$2;-><init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 127
    .end local v2    # "prevLookup":Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    :cond_0
    iget-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v4, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 128
    iget-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lme/grishka/appkit/views/UsableRecyclerView;->setHasFixedSize(Z)V

    .line 130
    iget-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    invoke-interface {v4, p0}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 131
    iget-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    iget-boolean v6, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshEnabled:Z

    invoke-interface {v4, v6}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setEnabled(Z)V

    .line 132
    iget-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v6, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyView:Landroid/view/View;

    invoke-virtual {v4, v6}, Lme/grishka/appkit/views/UsableRecyclerView;->setEmptyView(Landroid/view/View;)V

    .line 133
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 134
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-virtual {p0, p1}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->onCreateFooterView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerView:Landroid/view/View;

    .line 135
    iget-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v4, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 136
    iget-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 137
    iget-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerView:Landroid/view/View;

    sget v6, Lme/grishka/appkit/R$id;->load_more_progress:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerProgress:Landroid/view/View;

    .line 138
    iget-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerView:Landroid/view/View;

    sget v6, Lme/grishka/appkit/R$id;->load_more_error:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerError:Landroid/view/View;

    .line 139
    iget-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerError:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v5, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerView:Landroid/view/View;

    invoke-virtual {v4, v5}, Lme/grishka/appkit/views/UsableRecyclerView;->addFooterView(Landroid/view/View;)V

    .line 142
    iget-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerError:Landroid/view/View;

    sget v5, Lme/grishka/appkit/R$id;->error_retry:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lme/grishka/appkit/fragments/BaseRecyclerFragment$3;

    invoke-direct {v5, p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment$3;-><init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloader:Lme/grishka/appkit/utils/Preloader;

    iget-object v5, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerProgress:Landroid/view/View;

    iget-object v6, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerError:Landroid/view/View;

    invoke-virtual {v4, v5, v6}, Lme/grishka/appkit/utils/Preloader;->setFooterViews(Landroid/view/View;Landroid/view/View;)V

    .line 151
    :cond_1
    iget-boolean v4, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshAfterCreate:Z

    if-eqz v4, :cond_2

    .line 152
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refresh()V

    .line 154
    :cond_2
    return-object v3

    .end local v0    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    .end local v1    # "lmgr":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_3
    move v4, v5

    .line 106
    goto/16 :goto_0
.end method

.method protected onCreateFooterView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 83
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    sget v0, Lme/grishka/appkit/R$layout;->appkit_load_more:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .prologue
    .line 91
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->getSpanCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

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
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    .local p1, "d":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 222
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->dataLoading:Z

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->loaded:Z

    .line 225
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 226
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 227
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->updateList()V

    .line 228
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshing:Z

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshDone()V

    .line 231
    :cond_1
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 232
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->progress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected onDataLoaded(Ljava/util/List;Z)V
    .locals 2
    .param p2, "more"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    .local p1, "d":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->loaded:Z

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 277
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshing:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 279
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 280
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->onClearItems()V

    .line 282
    :cond_0
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->dataLoading:Z

    .line 284
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v0, p1, p2}, Lme/grishka/appkit/utils/Preloader;->onDataLoaded(Ljava/util/List;Z)V

    .line 286
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshing:Z

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshDone()V

    .line 289
    :cond_1
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 290
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->progress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 291
    return-void
.end method

.method public onDataLoaded(Lme/grishka/appkit/api/PaginatedList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/grishka/appkit/api/PaginatedList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    .local p1, "d":Lme/grishka/appkit/api/PaginatedList;, "Lme/grishka/appkit/api/PaginatedList<TT;>;"
    const/4 v1, 0x0

    .line 270
    iget-boolean v2, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshing:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 271
    .local v0, "curSize":I
    :goto_0
    invoke-virtual {p1}, Lme/grishka/appkit/api/PaginatedList;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Lme/grishka/appkit/api/PaginatedList;->total()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, p1, v1}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 272
    return-void

    .line 270
    .end local v0    # "curSize":I
    :cond_1
    iget-object v2, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v0, v2, v3

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    const/4 v1, 0x0

    .line 244
    invoke-super {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->onDestroyView()V

    .line 245
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 248
    :cond_0
    iput-object v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    .line 249
    iput-object v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyView:Landroid/view/View;

    .line 250
    iput-object v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyButton:Landroid/widget/Button;

    .line 251
    iput-object v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->progress:Landroid/view/View;

    .line 252
    iput-object v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->errorView:Landroid/view/View;

    .line 253
    iput-object v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->contentWrap:Landroid/view/ViewGroup;

    .line 254
    iput-object v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerError:Landroid/view/View;

    iput-object v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerProgress:Landroid/view/View;

    iput-object v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerView:Landroid/view/View;

    .line 255
    iput-object v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    .line 256
    return-void
.end method

.method protected onEmptyViewBtnClick()V
    .locals 0

    .prologue
    .line 198
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    return-void
.end method

.method public onError(Lme/grishka/appkit/api/ErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lme/grishka/appkit/api/ErrorResponse;

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    const/4 v1, 0x0

    .line 366
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->dataLoading:Z

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 368
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->errorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshing:Z

    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshDone()V

    .line 371
    :cond_1
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshing:Z

    if-eqz v0, :cond_2

    .line 372
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lme/grishka/appkit/api/ErrorResponse;->showToast(Landroid/content/Context;)V

    goto :goto_0

    .line 373
    :cond_2
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloadingFailed:Z

    .line 375
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerError:Landroid/view/View;

    invoke-virtual {p1, v0}, Lme/grishka/appkit/api/ErrorResponse;->bindErrorView(Landroid/view/View;)V

    .line 376
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerError:Landroid/view/View;

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 377
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    goto :goto_0

    .line 379
    :cond_3
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onError(Lme/grishka/appkit/api/ErrorResponse;)V

    goto :goto_0
.end method

.method protected onErrorRetryClick()V
    .locals 2

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    const/4 v1, 0x0

    .line 391
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloadingFailed:Z

    if-eqz v0, :cond_0

    .line 392
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloadingFailed:Z

    .line 393
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerProgress:Landroid/view/View;

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 394
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerError:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 395
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->onScrolledToLastItem()V

    .line 399
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-super {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->onErrorRetryClick()V

    goto :goto_0
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
    .line 174
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    const/4 v2, 0x0

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshing:Z

    .line 261
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerError:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->footerProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 265
    :cond_0
    iput-boolean v2, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloadingFailed:Z

    .line 266
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->doLoadData()V

    .line 267
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 189
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 194
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloadingFailed:Z

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->preloader:Lme/grishka/appkit/utils/Preloader;

    invoke-virtual {v0}, Lme/grishka/appkit/utils/Preloader;->onScrolledToLastItem()V

    goto :goto_0
.end method

.method protected refresh()V
    .locals 2

    .prologue
    .line 320
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->loadData()V

    .line 339
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    new-instance v1, Lme/grishka/appkit/fragments/BaseRecyclerFragment$4;

    invoke-direct {v1, p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment$4;-><init>(Lme/grishka/appkit/fragments/BaseRecyclerFragment;)V

    invoke-interface {v0, v1}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->post(Ljava/lang/Runnable;)Z

    .line 334
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->onRefresh()V

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshAfterCreate:Z

    goto :goto_0

    .line 337
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshAfterCreate:Z

    goto :goto_0
.end method

.method public refreshDone()V
    .locals 2

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    const/4 v1, 0x0

    .line 384
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshing:Z

    .line 385
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    invoke-interface {v0, v1}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setRefreshing(Z)V

    .line 386
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    iget-boolean v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshEnabled:Z

    invoke-interface {v0, v1}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setEnabled(Z)V

    .line 387
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 214
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->loaded:Z

    .line 215
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 216
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->onClearItems()V

    .line 217
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->showProgress()V

    .line 218
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->loadData()V

    .line 219
    return-void
.end method

.method protected setEmptyButtonText(I)V
    .locals 1
    .param p1, "text"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 304
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    invoke-virtual {p0, p1}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->setEmptyButtonText(Ljava/lang/CharSequence;)V

    .line 305
    return-void
.end method

.method protected setEmptyButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 308
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    iput-object p1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyButtonText:Ljava/lang/CharSequence;

    .line 309
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :cond_0
    return-void
.end method

.method protected setEmptyButtonVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 314
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    iput-boolean p1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyButtonVisible:Z

    .line 315
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 316
    iget-object v1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 317
    :cond_0
    return-void

    .line 316
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected setEmptyText(I)V
    .locals 1
    .param p1, "text"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 294
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    invoke-virtual {p0, p1}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 295
    return-void
.end method

.method protected setEmptyText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 298
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    iput-object p1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyText:Ljava/lang/CharSequence;

    .line 299
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->emptyView:Landroid/view/View;

    sget v1, Lme/grishka/appkit/R$id;->empty_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_0
    return-void
.end method

.method public setListLayoutId(I)V
    .locals 0
    .param p1, "listLayoutId"    # I

    .prologue
    .line 55
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    iput p1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->listLayoutId:I

    .line 56
    return-void
.end method

.method protected setRefreshEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 201
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    iput-boolean p1, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshEnabled:Z

    .line 202
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    invoke-interface {v0, p1}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setEnabled(Z)V

    .line 204
    :cond_0
    return-void
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 236
    .local p0, "this":Lme/grishka/appkit/fragments/BaseRecyclerFragment;, "Lme/grishka/appkit/fragments/BaseRecyclerFragment<TT;>;"
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->notifyDataSetChanged()V

    .line 238
    :cond_0
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lme/grishka/appkit/fragments/BaseRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->updateImages()V

    .line 240
    :cond_1
    return-void
.end method
