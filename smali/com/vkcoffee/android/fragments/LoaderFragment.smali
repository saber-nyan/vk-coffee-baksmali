.class public abstract Lcom/vkcoffee/android/fragments/LoaderFragment;
.super Lcom/vkcoffee/android/fragments/ContainerFragment;
.source "LoaderFragment.java"


# instance fields
.field protected content:Landroid/view/View;

.field protected contentView:Landroid/view/ViewGroup;

.field protected currentRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

.field protected dataLoading:Z

.field protected errorView:Lcom/vkcoffee/android/ui/ErrorView;

.field protected loaded:Z

.field protected progress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/ContainerFragment;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->dataLoading:Z

    .line 23
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->loaded:Z

    return-void
.end method


# virtual methods
.method public abstract createContentView()Landroid/view/View;
.end method

.method protected createContentViewContainer()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/LoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public dataLoaded()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->loaded:Z

    .line 86
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/LoaderFragment;->showContent()V

    .line 87
    return-void
.end method

.method public abstract doLoadData()V
.end method

.method protected getContentViewContainer(Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;
    .locals 0
    .param p1, "contentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 132
    check-cast p1, Landroid/widget/FrameLayout;

    .end local p1    # "contentView":Landroid/view/ViewGroup;
    return-object p1
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->loaded:Z

    return v0
.end method

.method public loadData()V
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/LoaderFragment;->showProgress()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->dataLoading:Z

    .line 81
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/LoaderFragment;->doLoadData()V

    .line 82
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/high16 v4, 0x42200000    # 40.0f

    const/16 v6, 0x8

    .line 32
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/LoaderFragment;->createContentViewContainer()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->contentView:Landroid/view/ViewGroup;

    .line 33
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->contentView:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 34
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/LoaderFragment;->createContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->content:Landroid/view/View;

    .line 36
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/LoaderFragment;->getContentViewContainer(Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 38
    .local v0, "contentViewContainer":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->content:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/LoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->progress:Landroid/widget/ProgressBar;

    .line 40
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->progress:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/LoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030083

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/ErrorView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorView;

    .line 43
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->loaded:Z

    if-nez v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->content:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 53
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-virtual {v1, v6}, Lcom/vkcoffee/android/ui/ErrorView;->setVisibility(I)V

    .line 55
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorView;

    new-instance v2, Lcom/vkcoffee/android/fragments/LoaderFragment$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/LoaderFragment$1;-><init>(Lcom/vkcoffee/android/fragments/LoaderFragment;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->contentView:Landroid/view/ViewGroup;

    return-object v1

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->content:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/ContainerFragment;->onDestroyView()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->content:Landroid/view/View;

    .line 70
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 112
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->dataLoading:Z

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->currentRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 114
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorView;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 119
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->progress:Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 120
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->content:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onError(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCode()I

    move-result v0

    iget-object v1, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/LoaderFragment;->onError(ILjava/lang/String;)V

    .line 109
    return-void
.end method

.method public onErrorRetryClick()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 74
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 75
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/LoaderFragment;->loadData()V

    .line 76
    return-void
.end method

.method public showContent()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 91
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->content:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->content:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 93
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 94
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->progress:Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 96
    :cond_0
    return-void
.end method

.method public showProgress()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 100
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->content:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->content:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 102
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->errorView:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 103
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/LoaderFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 105
    :cond_0
    return-void
.end method
