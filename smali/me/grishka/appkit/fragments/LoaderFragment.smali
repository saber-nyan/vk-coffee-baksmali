.class public abstract Lme/grishka/appkit/fragments/LoaderFragment;
.super Lme/grishka/appkit/fragments/ContainerFragment;
.source "LoaderFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field private autoRetry:Z

.field protected content:Landroid/view/View;

.field protected contentView:Landroid/view/ViewGroup;

.field protected currentRequest:Lme/grishka/appkit/api/APIRequest;

.field protected dataLoading:Z

.field private errorReceiverRegistered:Z

.field protected errorView:Landroid/view/View;

.field private layoutID:I

.field public loaded:Z

.field protected progress:Landroid/view/View;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    sget v0, Lme/grishka/appkit/R$layout;->loader_fragment:I

    invoke-direct {p0, v0}, Lme/grishka/appkit/fragments/LoaderFragment;-><init>(I)V

    .line 53
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "layout"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0}, Lme/grishka/appkit/fragments/ContainerFragment;-><init>()V

    .line 35
    new-instance v0, Lme/grishka/appkit/fragments/LoaderFragment$1;

    invoke-direct {v0, p0}, Lme/grishka/appkit/fragments/LoaderFragment$1;-><init>(Lme/grishka/appkit/fragments/LoaderFragment;)V

    iput-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->errorReceiverRegistered:Z

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->autoRetry:Z

    .line 56
    iput p1, p0, Lme/grishka/appkit/fragments/LoaderFragment;->layoutID:I

    .line 57
    return-void
.end method


# virtual methods
.method public dataLoaded()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->loaded:Z

    .line 138
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->showContent()V

    .line 139
    return-void
.end method

.method protected abstract doLoadData()V
.end method

.method protected getLayout()I
    .locals 1
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation

    .prologue
    .line 61
    iget v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->layoutID:I

    return v0
.end method

.method public isRetryInNetworkConnect()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->autoRetry:Z

    return v0
.end method

.method public loadData()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->showProgress()V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->dataLoading:Z

    .line 133
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->doLoadData()V

    .line 134
    return-void
.end method

.method public abstract onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 75
    iget v3, p0, Lme/grishka/appkit/fragments/LoaderFragment;->layoutID:I

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lme/grishka/appkit/fragments/LoaderFragment;->contentView:Landroid/view/ViewGroup;

    .line 76
    iget-object v3, p0, Lme/grishka/appkit/fragments/LoaderFragment;->contentView:Landroid/view/ViewGroup;

    sget v6, Lme/grishka/appkit/R$id;->content_stub:I

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "stub":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 78
    .local v2, "stubParent":Landroid/view/ViewGroup;
    invoke-virtual {p0, p1, v2, p3}, Lme/grishka/appkit/fragments/LoaderFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lme/grishka/appkit/fragments/LoaderFragment;->content:Landroid/view/View;

    .line 79
    iget-object v3, p0, Lme/grishka/appkit/fragments/LoaderFragment;->content:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v3, p0, Lme/grishka/appkit/fragments/LoaderFragment;->content:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 81
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 82
    iget-object v3, p0, Lme/grishka/appkit/fragments/LoaderFragment;->contentView:Landroid/view/ViewGroup;

    sget v6, Lme/grishka/appkit/R$id;->loading:I

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lme/grishka/appkit/fragments/LoaderFragment;->progress:Landroid/view/View;

    .line 83
    iget-object v3, p0, Lme/grishka/appkit/fragments/LoaderFragment;->contentView:Landroid/view/ViewGroup;

    sget v6, Lme/grishka/appkit/R$id;->error:I

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lme/grishka/appkit/fragments/LoaderFragment;->errorView:Landroid/view/View;

    .line 84
    iget-object v6, p0, Lme/grishka/appkit/fragments/LoaderFragment;->content:Landroid/view/View;

    iget-boolean v3, p0, Lme/grishka/appkit/fragments/LoaderFragment;->loaded:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v3, p0, Lme/grishka/appkit/fragments/LoaderFragment;->progress:Landroid/view/View;

    iget-boolean v6, p0, Lme/grishka/appkit/fragments/LoaderFragment;->loaded:Z

    if-eqz v6, :cond_2

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v3, p0, Lme/grishka/appkit/fragments/LoaderFragment;->errorView:Landroid/view/View;

    sget v4, Lme/grishka/appkit/R$id;->error_retry:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "retryBtn":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 89
    new-instance v3, Lme/grishka/appkit/fragments/LoaderFragment$2;

    invoke-direct {v3, p0}, Lme/grishka/appkit/fragments/LoaderFragment$2;-><init>(Lme/grishka/appkit/fragments/LoaderFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    :cond_0
    iget-object v3, p0, Lme/grishka/appkit/fragments/LoaderFragment;->contentView:Landroid/view/ViewGroup;

    return-object v3

    .end local v0    # "retryBtn":Landroid/view/View;
    :cond_1
    move v3, v5

    .line 84
    goto :goto_0

    :cond_2
    move v5, v4

    .line 85
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lme/grishka/appkit/fragments/ContainerFragment;->onDestroy()V

    .line 112
    iget-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    invoke-virtual {v0}, Lme/grishka/appkit/api/APIRequest;->cancel()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 116
    :cond_0
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->errorReceiverRegistered:Z

    if-eqz v0, :cond_1

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/fragments/LoaderFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->errorReceiverRegistered:Z

    .line 122
    :cond_1
    return-void

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-super {p0}, Lme/grishka/appkit/fragments/ContainerFragment;->onDestroyView()V

    .line 103
    iput-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->content:Landroid/view/View;

    .line 104
    iput-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->errorView:Landroid/view/View;

    .line 105
    iput-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->progress:Landroid/view/View;

    .line 106
    iput-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->contentView:Landroid/view/ViewGroup;

    .line 107
    return-void
.end method

.method public onError(Lme/grishka/appkit/api/ErrorResponse;)V
    .locals 4
    .param p1, "error"    # Lme/grishka/appkit/api/ErrorResponse;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 170
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/LoaderFragment;->dataLoading:Z

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 172
    iget-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->errorView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->errorView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lme/grishka/appkit/api/ErrorResponse;->bindErrorView(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->errorView:Landroid/view/View;

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 175
    iget-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->progress:Landroid/view/View;

    invoke-static {v0, v2}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 176
    iget-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->content:Landroid/view/View;

    invoke-static {v0, v2}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 177
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->errorReceiverRegistered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->autoRetry:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/fragments/LoaderFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->errorReceiverRegistered:Z

    goto :goto_0
.end method

.method protected onErrorRetryClick()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->errorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 126
    iget-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->progress:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 127
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->loadData()V

    .line 128
    return-void
.end method

.method protected setLayout(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->content:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t set layout when view is already created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iput p1, p0, Lme/grishka/appkit/fragments/LoaderFragment;->layoutID:I

    .line 68
    return-void
.end method

.method public setRetryOnNetworkConnect(Z)V
    .locals 0
    .param p1, "retry"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lme/grishka/appkit/fragments/LoaderFragment;->autoRetry:Z

    .line 184
    return-void
.end method

.method protected showContent()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->content:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->content:Landroid/view/View;

    invoke-static {v0, v2}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 144
    iget-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->errorView:Landroid/view/View;

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 145
    iget-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->progress:Landroid/view/View;

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 147
    :cond_0
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->errorReceiverRegistered:Z

    if-eqz v0, :cond_1

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/fragments/LoaderFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    iput-boolean v2, p0, Lme/grishka/appkit/fragments/LoaderFragment;->errorReceiverRegistered:Z

    .line 153
    :cond_1
    return-void

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected showProgress()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->content:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->content:Landroid/view/View;

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 158
    iget-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->errorView:Landroid/view/View;

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 159
    iget-object v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->progress:Landroid/view/View;

    invoke-static {v0, v2}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 161
    :cond_0
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/LoaderFragment;->errorReceiverRegistered:Z

    if-eqz v0, :cond_1

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/fragments/LoaderFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    iput-boolean v2, p0, Lme/grishka/appkit/fragments/LoaderFragment;->errorReceiverRegistered:Z

    .line 167
    :cond_1
    return-void

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method
