.class public Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DefaultListViewDelegate;
.super Ljava/lang/Object;
.source "ListImageLoaderWrapper.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultListViewDelegate"
.end annotation


# instance fields
.field private adapterView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DefaultListViewDelegate;->adapterView:Landroid/widget/AdapterView;

    .line 393
    return-void
.end method


# virtual methods
.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DefaultListViewDelegate;->adapterView:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 417
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DefaultListViewDelegate;->adapterView:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DefaultListViewDelegate;->adapterView:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 418
    :cond_0
    const/4 v0, 0x0

    .line 419
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DefaultListViewDelegate;->adapterView:Landroid/widget/AdapterView;

    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DefaultListViewDelegate;->adapterView:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DefaultListViewDelegate;->adapterView:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DefaultListViewDelegate;->adapterView:Landroid/widget/AdapterView;

    return-object v0
.end method

.method public getVisibleItemCount()I
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DefaultListViewDelegate;->adapterView:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public isVertical()Z
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x1

    return v0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 424
    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DefaultListViewDelegate;->adapterView:Landroid/widget/AdapterView;

    instance-of v3, v3, Landroid/widget/AbsListView;

    if-eqz v3, :cond_1

    .line 425
    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DefaultListViewDelegate;->adapterView:Landroid/widget/AdapterView;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    :try_start_0
    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DefaultListViewDelegate;->adapterView:Landroid/widget/AdapterView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 429
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "setOnScrollListener"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/widget/AbsListView$OnScrollListener;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 430
    .local v1, "m":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DefaultListViewDelegate;->adapterView:Landroid/widget/AdapterView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 432
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
