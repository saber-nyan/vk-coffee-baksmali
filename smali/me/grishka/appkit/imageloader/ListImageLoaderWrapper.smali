.class public Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
.super Ljava/lang/Object;
.source "ListImageLoaderWrapper.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;,
        Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DefaultListViewDelegate;,
        Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;,
        Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ScrollStopDetector;,
        Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ExtendedListener;,
        Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "appkit-img-wrapper"


# instance fields
.field private context:Landroid/content/Context;

.field private imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

.field private isScrolling:Z

.field private lastChangeTime:J

.field private lastScrollFwd:Z

.field private list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

.field private listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

.field private loadRunnable:Ljava/lang/Runnable;

.field private observer:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;

.field private preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private prevVisFirst:I

.field private prevVisLast:I

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private scrollStopRunnable:Ljava/lang/Runnable;

.field private viCount:I

.field private viStart:I

.field private wasFastScrolling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    .param p4, "listener"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    .local p3, "listView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DefaultListViewDelegate;

    invoke-direct {v0, p3}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DefaultListViewDelegate;-><init>(Landroid/widget/AdapterView;)V

    invoke-direct {p0, p1, p2, v0, p4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;-><init>(Landroid/content/Context;Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    .param p3, "listView"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;
    .param p4, "listener"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->lastScrollFwd:Z

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->lastChangeTime:J

    .line 27
    iput-boolean v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->wasFastScrolling:Z

    .line 30
    iput-boolean v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->isScrolling:Z

    .line 32
    new-instance v0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;

    invoke-direct {v0, p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$1;-><init>(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)V

    iput-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 68
    new-instance v0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$2;

    invoke-direct {v0, p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$2;-><init>(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)V

    iput-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->observer:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;

    .line 92
    new-instance v0, Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-direct {v0}, Lme/grishka/appkit/imageloader/ListImageLoader;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    .line 93
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-virtual {v0, p2}, Lme/grishka/appkit/imageloader/ListImageLoader;->setAdapter(Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;)V

    .line 94
    iput-object p4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    .line 95
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->context:Landroid/content/Context;

    .line 96
    iput-object p3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    .line 97
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v0, p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 98
    invoke-interface {p3}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 99
    invoke-static {p1}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/grishka/appkit/imageloader/ImageCache;->registerLoader(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)V

    .line 100
    instance-of v0, p2, Lme/grishka/appkit/imageloader/ObservableListImageLoaderAdapter;

    if-eqz v0, :cond_0

    .line 101
    check-cast p2, Lme/grishka/appkit/imageloader/ObservableListImageLoaderAdapter;

    .end local p2    # "adapter":Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->observer:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;

    invoke-interface {p2, v0}, Lme/grishka/appkit/imageloader/ObservableListImageLoaderAdapter;->addDataSetObserver(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;)V

    .line 102
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .prologue
    .line 17
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .prologue
    .line 17
    iget-boolean v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->isScrolling:Z

    return v0
.end method

.method static synthetic access$102(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->isScrolling:Z

    return p1
.end method

.method static synthetic access$200(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .prologue
    .line 17
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->scrollStopRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 17
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->scrollStopRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;II)V
    .locals 0
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->reloadRange(II)V

    return-void
.end method

.method static synthetic access$500(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)V
    .locals 0
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .prologue
    .line 17
    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->doUpdateImages()V

    return-void
.end method

.method static synthetic access$600(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;I)V
    .locals 0
    .param p0, "x0"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->realScrollStateChanged(I)V

    return-void
.end method

.method private doUpdateImages()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 173
    iput-boolean v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->isScrolling:Z

    .line 175
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/imageloader/ListImageLoader;->setIsScrolling(Z)V

    .line 176
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    .line 177
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    .line 178
    iget v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x5

    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v1}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getLastVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v2}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    .line 180
    :cond_0
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoader;->preparePartialCancel()V

    .line 181
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    iget v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    iget v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v2, v3

    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lme/grishka/appkit/imageloader/ListImageLoader;->loadRange(IILandroid/content/Context;)V

    .line 182
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    iget v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    iget v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    iget v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lme/grishka/appkit/imageloader/ListImageLoader;->loadRange(IILandroid/content/Context;)V

    .line 183
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    iget v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    sub-int/2addr v1, v2

    iget v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    iget v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lme/grishka/appkit/imageloader/ListImageLoader;->loadRange(IILandroid/content/Context;)V

    .line 184
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoader;->commitPartialCancel()V

    .line 185
    return-void
.end method

.method private getNumFooters()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    .line 335
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNumHeaders()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private realScrollStateChanged(I)V
    .locals 5
    .param p1, "scrollState"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 297
    if-nez p1, :cond_0

    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;->onScrollStopped()V

    .line 298
    :cond_0
    if-ne p1, v4, :cond_1

    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;->onScrollStarted()V

    .line 302
    :cond_1
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    :goto_0
    invoke-interface {v2, v0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 303
    :cond_2
    if-nez p1, :cond_5

    .line 304
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-virtual {v0, v3}, Lme/grishka/appkit/imageloader/ListImageLoader;->setIsScrolling(Z)V

    .line 306
    iput-boolean v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->wasFastScrolling:Z

    .line 307
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoader;->preparePartialCancel()V

    .line 308
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    iget v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    iget v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lme/grishka/appkit/imageloader/ListImageLoader;->loadRange(IILandroid/content/Context;)V

    .line 309
    iget-boolean v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->lastScrollFwd:Z

    if-eqz v0, :cond_4

    .line 310
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    iget v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    iget v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    iget v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lme/grishka/appkit/imageloader/ListImageLoader;->loadRange(IILandroid/content/Context;)V

    .line 311
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    iget v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    sub-int/2addr v1, v2

    iget v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    iget v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lme/grishka/appkit/imageloader/ListImageLoader;->loadRange(IILandroid/content/Context;)V

    .line 316
    :goto_1
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoader;->commitPartialCancel()V

    .line 324
    :goto_2
    return-void

    :cond_3
    move-object v0, v1

    .line 302
    goto :goto_0

    .line 313
    :cond_4
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    iget v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    sub-int/2addr v1, v2

    iget v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    iget v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lme/grishka/appkit/imageloader/ListImageLoader;->loadRange(IILandroid/content/Context;)V

    .line 314
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    iget v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    iget v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    iget v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lme/grishka/appkit/imageloader/ListImageLoader;->loadRange(IILandroid/content/Context;)V

    goto :goto_1

    .line 318
    :cond_5
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->loadRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 319
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->loadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 320
    iput-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->loadRunnable:Ljava/lang/Runnable;

    .line 322
    :cond_6
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-virtual {v0, v4}, Lme/grishka/appkit/imageloader/ListImageLoader;->setIsScrolling(Z)V

    goto :goto_2
.end method

.method private reloadRange(II)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 164
    iget-object v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getFirstVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v5}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getVisibleItemCount()I

    move-result v5

    sub-int v2, v4, v5

    .line 165
    .local v2, "posMin":I
    iget-object v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getLastVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v5}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getVisibleItemCount()I

    move-result v5

    add-int v1, v4, v5

    .line 166
    .local v1, "posMax":I
    add-int v4, p1, p2

    if-lt v4, v2, :cond_0

    if-le p1, v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 168
    .local v3, "start":I
    add-int v4, p1, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 169
    .local v0, "end":I
    iget-object v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    iget-object v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->context:Landroid/content/Context;

    invoke-virtual {v4, v3, v0, v5}, Lme/grishka/appkit/imageloader/ListImageLoader;->loadRange(IILandroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 193
    invoke-virtual {p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->updateImages()V

    .line 194
    return-void
.end method

.method public bindImageView(Landroid/widget/ImageView;ILjava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "placeholderRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->bindImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public bindImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "placeholder"    # Landroid/graphics/drawable/Drawable;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 343
    invoke-virtual {p0, p3}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0, p3}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 347
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public bindViewHolder(Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;I)V
    .locals 3
    .param p1, "adapter"    # Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;
    .param p2, "holder"    # Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;
    .param p3, "position"    # I

    .prologue
    .line 350
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1, p3}, Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;->getImageCountForItem(I)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 351
    invoke-interface {p1, p3, v0}, Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    invoke-virtual {p0, v1}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;->setImage(ILandroid/graphics/Bitmap;)V

    .line 350
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_0
    invoke-interface {p2, v0}, Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;->clearImage(I)V

    goto :goto_1

    .line 357
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public callScrolledToLastItem()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;->onScrolledToLastItem()V

    .line 293
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoader;->cancelAll()V

    .line 198
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 201
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->context:Landroid/content/Context;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/grishka/appkit/imageloader/ImageCache;->getFromTop(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isAlreadyLoaded(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->context:Landroid/content/Context;

    invoke-static {v0}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/grishka/appkit/imageloader/ImageCache;->isInTopCache(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method onCacheEntryRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/imageloader/ListImageLoader;->onCacheEntryRemoved(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 10
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 225
    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 226
    :cond_0
    iget v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    if-eq v3, p2, :cond_1

    .line 227
    iget v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    if-ge v3, p2, :cond_6

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->lastScrollFwd:Z

    .line 228
    :cond_1
    iput p3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    .line 229
    iput p2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    .line 231
    iget v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    iget v6, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    add-int v2, v3, v6

    .line 232
    .local v2, "visLast":I
    iget v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->prevVisLast:I

    if-eq v2, v3, :cond_3

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->lastChangeTime:J

    sub-long v0, v6, v8

    .line 235
    .local v0, "tDiff":J
    const-wide/16 v6, 0x12c

    cmp-long v3, v0, v6

    if-lez v3, :cond_c

    .line 236
    iget-boolean v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->wasFastScrolling:Z

    if-eqz v3, :cond_8

    .line 237
    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-virtual {v3, v4}, Lme/grishka/appkit/imageloader/ListImageLoader;->setIsScrolling(Z)V

    .line 238
    iput-boolean v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->wasFastScrolling:Z

    .line 239
    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    iget-object v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v4}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getFirstVisiblePosition()I

    move-result v4

    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v5}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getLastVisiblePosition()I

    move-result v5

    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v5, v6}, Lme/grishka/appkit/imageloader/ListImageLoader;->loadRange(IILandroid/content/Context;)V

    .line 240
    iget-boolean v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->lastScrollFwd:Z

    if-eqz v3, :cond_7

    .line 241
    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    iget v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    iget v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v4, v5

    iget v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    iget v6, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v5, v6}, Lme/grishka/appkit/imageloader/ListImageLoader;->loadRange(IILandroid/content/Context;)V

    .line 242
    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    iget v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    sub-int/2addr v4, v5

    iget v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    iget v6, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v5, v6}, Lme/grishka/appkit/imageloader/ListImageLoader;->loadRange(IILandroid/content/Context;)V

    .line 269
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->lastChangeTime:J

    .line 270
    iget v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    iput v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->prevVisFirst:I

    .line 271
    iput v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->prevVisLast:I

    .line 274
    .end local v0    # "tDiff":J
    :cond_3
    add-int v3, p2, p3

    add-int/lit8 v4, p4, -0x1

    if-lt v3, v4, :cond_4

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    .line 275
    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    invoke-interface {v3}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;->onScrolledToLastItem()V

    .line 277
    :cond_4
    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    instance-of v3, v3, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ExtendedListener;

    if-eqz v3, :cond_5

    .line 278
    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    check-cast v3, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ExtendedListener;

    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v4

    sub-int v4, p2, v4

    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v5

    sub-int v5, p4, v5

    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->getNumFooters()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-interface {v3, v4, p3, v5}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ExtendedListener;->onScroll(III)V

    .line 280
    :cond_5
    return-void

    .end local v2    # "visLast":I
    :cond_6
    move v3, v5

    .line 227
    goto/16 :goto_0

    .line 244
    .restart local v0    # "tDiff":J
    .restart local v2    # "visLast":I
    :cond_7
    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    iget v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    invoke-direct {p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->getNumHeaders()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    sub-int/2addr v4, v5

    iget v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    iget v6, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v5, v6}, Lme/grishka/appkit/imageloader/ListImageLoader;->loadRange(IILandroid/content/Context;)V

    .line 245
    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    iget v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    iget v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    add-int/2addr v4, v5

    iget v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    iget v6, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viCount:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v5, v6}, Lme/grishka/appkit/imageloader/ListImageLoader;->loadRange(IILandroid/content/Context;)V

    goto :goto_1

    .line 248
    :cond_8
    iget v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->prevVisFirst:I

    iget v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    if-le v3, v4, :cond_9

    .line 250
    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    iget v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    iget v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->prevVisFirst:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v5, v6}, Lme/grishka/appkit/imageloader/ListImageLoader;->loadRange(IILandroid/content/Context;)V

    .line 252
    :cond_9
    iget v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->prevVisLast:I

    if-ge v3, v2, :cond_a

    .line 254
    iget v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->prevVisLast:I

    sub-int v3, v2, v3

    mul-int/lit8 v4, p3, 0x4

    if-ge v3, v4, :cond_a

    .line 255
    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    iget v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->prevVisLast:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v5}, Lme/grishka/appkit/imageloader/ListImageLoader;->loadRange(IILandroid/content/Context;)V

    .line 257
    :cond_a
    iget v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->prevVisLast:I

    if-le v3, v2, :cond_b

    .line 258
    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    add-int/lit8 v4, v2, 0x1

    iget v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->prevVisLast:I

    invoke-virtual {v3, v4, v5}, Lme/grishka/appkit/imageloader/ListImageLoader;->cancelRange(II)V

    .line 260
    :cond_b
    iget v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->prevVisFirst:I

    iget v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    if-ge v3, v4, :cond_2

    .line 261
    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    iget v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->prevVisFirst:I

    iget v5, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->viStart:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Lme/grishka/appkit/imageloader/ListImageLoader;->cancelRange(II)V

    goto/16 :goto_1

    .line 265
    :cond_c
    iget-boolean v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->wasFastScrolling:Z

    if-nez v3, :cond_d

    .line 266
    iget-object v3, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-virtual {v3}, Lme/grishka/appkit/imageloader/ListImageLoader;->cancelAll()V

    .line 267
    :cond_d
    iput-boolean v4, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->wasFastScrolling:Z

    goto/16 :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 285
    if-eqz p2, :cond_0

    .line 286
    invoke-direct {p0, p2}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->realScrollStateChanged(I)V

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->isScrolling:Z

    .line 289
    :cond_0
    return-void
.end method

.method public setAdapter(Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    .prologue
    .line 105
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoader;->getAdapter()Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    move-result-object v0

    instance-of v0, v0, Lme/grishka/appkit/imageloader/ObservableListImageLoaderAdapter;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoader;->getAdapter()Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/imageloader/ObservableListImageLoaderAdapter;

    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->observer:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;

    invoke-interface {v0, v1}, Lme/grishka/appkit/imageloader/ObservableListImageLoaderAdapter;->removeDataSetObserver(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoader;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/imageloader/ListImageLoader;->setAdapter(Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;)V

    .line 108
    invoke-virtual {p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->updateImages()V

    .line 109
    instance-of v0, p1, Lme/grishka/appkit/imageloader/ObservableListImageLoaderAdapter;

    if-eqz v0, :cond_1

    .line 110
    check-cast p1, Lme/grishka/appkit/imageloader/ObservableListImageLoaderAdapter;

    .end local p1    # "adapter":Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->observer:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;

    invoke-interface {p1, v0}, Lme/grishka/appkit/imageloader/ObservableListImageLoaderAdapter;->addDataSetObserver(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;)V

    .line 111
    :cond_1
    return-void
.end method

.method public setListView(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "listView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DefaultListViewDelegate;

    invoke-direct {v0, p1}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DefaultListViewDelegate;-><init>(Landroid/widget/AdapterView;)V

    invoke-virtual {p0, v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->setListView(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;)V

    .line 119
    return-void
.end method

.method public setListView(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;)V
    .locals 3
    .param p1, "listView"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v0, v2}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 124
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->scrollStopRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->scrollStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 126
    iput-object v2, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->scrollStopRunnable:Ljava/lang/Runnable;

    .line 128
    :cond_0
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 130
    :cond_1
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    .line 131
    iget-object v0, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v0, p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 132
    invoke-interface {p1}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 133
    return-void
.end method

.method public setListener(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;)V
    .locals 0
    .param p1, "listener"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    .prologue
    .line 114
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    .line 115
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "sl"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 136
    iput-object p1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 137
    return-void
.end method

.method public updateImages()V
    .locals 4

    .prologue
    .line 140
    iget-boolean v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->wasFastScrolling:Z

    if-eqz v1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$3;

    invoke-direct {v0, p0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$3;-><init>(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;)V

    .line 152
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v1}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$4;

    invoke-direct {v2, p0, v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$4;-><init>(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 160
    iget-object v1, p0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->list:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;

    invoke-interface {v1}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;->getView()Landroid/view/View;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
