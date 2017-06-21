.class public abstract Lcom/vkcoffee/android/fragments/BaseListFragment;
.super Lcom/vkcoffee/android/fragments/LoaderFragment;
.source "BaseListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;
.implements Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vkcoffee/android/fragments/LoaderFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;",
        "Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;"
    }
.end annotation


# instance fields
.field protected contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

.field protected data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected emptyView:Lcom/vkcoffee/android/ui/EmptyView;

.field protected imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

.field protected list:Landroid/widget/ListView;

.field private mFabHelper:Lcom/vkcoffee/android/ui/FABHelper;

.field private mOnScrollListeners:Lcom/vkcoffee/android/ui/ScrollListenerComposer;

.field private refreshAfterCreate:Z

.field private refreshEnabled:Z

.field protected refreshing:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/LoaderFragment;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->data:Ljava/util/ArrayList;

    .line 40
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->refreshing:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->refreshEnabled:Z

    .line 42
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->refreshAfterCreate:Z

    .line 43
    new-instance v0, Lcom/vkcoffee/android/ui/ScrollListenerComposer;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/ScrollListenerComposer;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->mOnScrollListeners:Lcom/vkcoffee/android/ui/ScrollListenerComposer;

    .line 44
    invoke-static {}, Lcom/vkcoffee/android/ui/FABHelper;->newInstance()Lcom/vkcoffee/android/ui/FABHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->mFabHelper:Lcom/vkcoffee/android/ui/FABHelper;

    .line 48
    return-void
.end method


# virtual methods
.method public addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 271
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->mOnScrollListeners:Lcom/vkcoffee/android/ui/ScrollListenerComposer;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/ScrollListenerComposer;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 272
    return-void
.end method

.method protected beforeSetAdapter()V
    .locals 4

    .prologue
    .line 112
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    new-instance v0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->getImageLoaderAdapter()Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2, v3, p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;-><init>(Landroid/content/Context;Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .line 113
    return-void
.end method

.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->currentRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->currentRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->cancel()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->currentRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 131
    :cond_0
    return-void
.end method

.method public createContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 71
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    new-instance v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    .line 72
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->createListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    .line 73
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->setListViewAppearance(Landroid/widget/ListView;)V

    .line 74
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->beforeSetAdapter()V

    .line 75
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/ui/EmptyView;->create(Landroid/content/Context;)Lcom/vkcoffee/android/ui/EmptyView;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->emptyView:Lcom/vkcoffee/android/ui/EmptyView;

    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->emptyView:Lcom/vkcoffee/android/ui/EmptyView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->getEmptyText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/EmptyView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->emptyView:Lcom/vkcoffee/android/ui/EmptyView;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/EmptyView;->setId(I)V

    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->emptyView:Lcom/vkcoffee/android/ui/EmptyView;

    new-instance v1, Lcom/vkcoffee/android/fragments/BaseListFragment$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/BaseListFragment$1;-><init>(Lcom/vkcoffee/android/fragments/BaseListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/EmptyView;->setOnBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->emptyView:Lcom/vkcoffee/android/ui/EmptyView;

    invoke-virtual {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->emptyView:Lcom/vkcoffee/android/ui/EmptyView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 94
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh;->from(Landroid/app/Activity;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 98
    invoke-virtual {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->theseChildrenArePullable([I)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p0}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->listener(Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    .line 101
    invoke-virtual {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->setup(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;)V

    .line 103
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->refreshEnabled:Z

    invoke-virtual {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setEnabled(Z)V

    .line 104
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->refreshAfterCreate:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->refresh()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    return-object v0

    .line 94
    :array_0
    .array-data 4
        0x102000a
        0x1020004
    .end array-data
.end method

.method protected createListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 51
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    new-instance v0, Lcom/vkcoffee/android/ui/FixedScrollListView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/FixedScrollListView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected abstract getAdapter()Landroid/widget/ListAdapter;
.end method

.method protected getEmptyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    const v0, 0x7f08015a

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getImageLoaderAdapter()Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    .locals 1

    .prologue
    .line 163
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 64
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/LoaderFragment;->onAttach(Landroid/app/Activity;)V

    .line 67
    return-void
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
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    .local p1, "d":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 139
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->dataLoading:Z

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->currentRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->loaded:Z

    .line 142
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 143
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 144
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->updateList()V

    .line 145
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->refreshing:Z

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->refreshDone()V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 152
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    const/4 v1, 0x0

    .line 183
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/LoaderFragment;->onDestroyView()V

    .line 184
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    .line 185
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->contentView:Landroid/view/ViewGroup;

    .line 186
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    .line 187
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->emptyView:Lcom/vkcoffee/android/ui/EmptyView;

    .line 188
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->progress:Landroid/widget/ProgressBar;

    .line 189
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorView;

    .line 190
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->deactivate()V

    .line 192
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 194
    :cond_0
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .line 195
    return-void
.end method

.method protected onEmptyViewBtnClick()V
    .locals 0

    .prologue
    .line 117
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 168
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->dataLoading:Z

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->currentRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 170
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorView;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->refreshing:Z

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/vkcoffee/android/api/APIUtils;->showErrorToast(Landroid/content/Context;ILjava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->refreshDone()V

    goto :goto_0

    .line 177
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/LoaderFragment;->onError(ILjava/lang/String;)V

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
    .line 231
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
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
    .line 225
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onRefreshStarted(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 244
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->refreshing:Z

    .line 245
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->doLoadData()V

    .line 246
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 235
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/LoaderFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->setUserVisibleHint(Z)V

    .line 240
    :cond_0
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 263
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 268
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 0

    .prologue
    .line 258
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    return-void
.end method

.method protected refresh()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    const/4 v1, 0x1

    .line 202
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->loadData()V

    .line 213
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setRefreshing(Z)V

    .line 208
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->onRefreshStarted(Landroid/view/View;)V

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->refreshAfterCreate:Z

    goto :goto_0

    .line 211
    :cond_1
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->refreshAfterCreate:Z

    goto :goto_0
.end method

.method public refreshDone()V
    .locals 1

    .prologue
    .line 249
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setRefreshComplete()V

    .line 252
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->refreshing:Z

    .line 253
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->refreshing:Z

    .line 135
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->loadData()V

    .line 136
    return-void
.end method

.method public removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 275
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->mOnScrollListeners:Lcom/vkcoffee/android/ui/ScrollListenerComposer;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/ScrollListenerComposer;->removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 276
    return-void
.end method

.method public setFloatingMenuItem(Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 216
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->mFabHelper:Lcom/vkcoffee/android/ui/FABHelper;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->mFabHelper:Lcom/vkcoffee/android/ui/FABHelper;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/FABHelper;->attach(Landroid/widget/FrameLayout;)V

    .line 218
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->mFabHelper:Lcom/vkcoffee/android/ui/FABHelper;

    invoke-virtual {v0, p1, p0}, Lcom/vkcoffee/android/ui/FABHelper;->setData(Landroid/view/MenuItem;Lcom/vkcoffee/android/ui/FABHelper$OnOptionItemSelectedListener;)V

    .line 219
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->mFabHelper:Lcom/vkcoffee/android/ui/FABHelper;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/FABHelper;->attachToScroll()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 221
    :cond_0
    return-void
.end method

.method protected setListViewAppearance(Landroid/widget/ListView;)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;

    .prologue
    .line 55
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    const v0, 0x7f020101

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 56
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0x201d1b

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 58
    return-void
.end method

.method protected setRefreshEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 120
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->refreshEnabled:Z

    .line 121
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setEnabled(Z)V

    .line 124
    :cond_0
    return-void
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 156
    .local p0, "this":Lcom/vkcoffee/android/fragments/BaseListFragment;, "Lcom/vkcoffee/android/fragments/BaseListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/BaseListFragment;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 157
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/BaseListFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->updateImages()V

    .line 160
    :cond_0
    return-void
.end method
