.class public Lcom/vkcoffee/android/ui/FixedScrollListView;
.super Landroid/widget/ListView;
.source "FixedScrollListView.java"


# static fields
.field private static final SCROLLBAR_SIZE:I = 0xc8


# instance fields
.field private onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private onScrollListenerLogic:Landroid/widget/AbsListView$OnScrollListener;

.field private onScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object v0, p0, Lcom/vkcoffee/android/ui/FixedScrollListView;->onScrollListenerLogic:Landroid/widget/AbsListView$OnScrollListener;

    .line 15
    iput-object v0, p0, Lcom/vkcoffee/android/ui/FixedScrollListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 16
    iput-object v0, p0, Lcom/vkcoffee/android/ui/FixedScrollListView;->onScrollListeners:Ljava/util/List;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput-object v0, p0, Lcom/vkcoffee/android/ui/FixedScrollListView;->onScrollListenerLogic:Landroid/widget/AbsListView$OnScrollListener;

    .line 15
    iput-object v0, p0, Lcom/vkcoffee/android/ui/FixedScrollListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 16
    iput-object v0, p0, Lcom/vkcoffee/android/ui/FixedScrollListView;->onScrollListeners:Ljava/util/List;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    iput-object v0, p0, Lcom/vkcoffee/android/ui/FixedScrollListView;->onScrollListenerLogic:Landroid/widget/AbsListView$OnScrollListener;

    .line 15
    iput-object v0, p0, Lcom/vkcoffee/android/ui/FixedScrollListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 16
    iput-object v0, p0, Lcom/vkcoffee/android/ui/FixedScrollListView;->onScrollListeners:Ljava/util/List;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/FixedScrollListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/FixedScrollListView;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FixedScrollListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/FixedScrollListView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/FixedScrollListView;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/FixedScrollListView;->getOnScrollListeners()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getOnScrollListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FixedScrollListView;->onScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/FixedScrollListView;->onScrollListeners:Ljava/util/List;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FixedScrollListView;->onScrollListeners:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/FixedScrollListView;->getOnScrollListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FixedScrollListView;->getOnScrollListenerLogic()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 96
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v0

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 34
    const/16 v0, 0xc8

    .line 36
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 5

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v3

    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, -0x64

    .line 42
    .local v0, "maxscroll":I
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 43
    .local v1, "offset":I
    int-to-float v3, v1

    int-to-float v4, v0

    div-float v2, v3, v4

    .line 44
    .local v2, "scp":F
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollRange()I

    move-result v3

    add-int/lit16 v3, v3, -0xc8

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    return v3
.end method

.method public getOnScrollListenerLogic()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FixedScrollListView;->onScrollListenerLogic:Landroid/widget/AbsListView$OnScrollListener;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/vkcoffee/android/ui/FixedScrollListView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/FixedScrollListView$1;-><init>(Lcom/vkcoffee/android/ui/FixedScrollListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/FixedScrollListView;->onScrollListenerLogic:Landroid/widget/AbsListView$OnScrollListener;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FixedScrollListView;->onScrollListenerLogic:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method public removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/FixedScrollListView;->getOnScrollListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vkcoffee/android/ui/FixedScrollListView;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 90
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FixedScrollListView;->getOnScrollListenerLogic()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 91
    return-void
.end method
