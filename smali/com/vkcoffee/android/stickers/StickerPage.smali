.class Lcom/vkcoffee/android/stickers/StickerPage;
.super Lcom/vkcoffee/android/stickers/StickersViewPage;
.source "StickerPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/stickers/StickerPage$Adapter;,
        Lcom/vkcoffee/android/stickers/StickerPage$HeaderHolder;,
        Lcom/vkcoffee/android/stickers/StickerPage$StickerHolder;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/vkcoffee/android/stickers/StickerPage$Adapter;

.field private mContentView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

.field private mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

.field private mListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private final mPurchaseManager:Lcom/vkcoffee/android/data/PurchasesManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/data/PurchasesManager",
            "<",
            "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelector:Lcom/vkcoffee/android/stickers/StickersView$Listener;

.field private mThumbDrawable:Lcom/vkcoffee/android/stickers/ThumbDrawable;

.field private mViewToUrlProjection:Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/data/orm/StickerStockItem;Lcom/vkcoffee/android/data/PurchasesManager;)V
    .locals 1
    .param p1, "data"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
            "Lcom/vkcoffee/android/data/PurchasesManager",
            "<",
            "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "manager":Lcom/vkcoffee/android/data/PurchasesManager;, "Lcom/vkcoffee/android/data/PurchasesManager<Lcom/vkcoffee/android/data/orm/StickerStockItem;>;"
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/StickersViewPage;-><init>()V

    .line 52
    new-instance v0, Lcom/vkcoffee/android/stickers/StickerPage$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/stickers/StickerPage$1;-><init>(Lcom/vkcoffee/android/stickers/StickerPage;)V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mViewToUrlProjection:Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;

    .line 73
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 74
    iput-object p2, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mPurchaseManager:Lcom/vkcoffee/android/data/PurchasesManager;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/stickers/StickerPage;)Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/StickerPage;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/stickers/StickerPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/StickerPage;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/StickerPage;->showHeader()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/stickers/StickerPage;)Lcom/vkcoffee/android/data/PurchasesManager;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/StickerPage;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mPurchaseManager:Lcom/vkcoffee/android/data/PurchasesManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/stickers/StickerPage;)Lcom/vkcoffee/android/stickers/WindowRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/StickerPage;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mContentView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/stickers/StickerPage;)Lcom/vkcoffee/android/stickers/StickersView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/StickerPage;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mSelector:Lcom/vkcoffee/android/stickers/StickersView$Listener;

    return-object v0
.end method

.method private showHeader()Z
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-boolean v0, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->purchased:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/StickerDownloaderService;->getCurrentPackId()I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v1, v1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v0, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    invoke-static {v0}, Lcom/vkcoffee/android/StickerDownloaderService;->isInQueue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method attachToScroll(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)Lcom/vkcoffee/android/stickers/StickerPage;
    .locals 0
    .param p1, "l"    # Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 79
    return-object p0
.end method

.method getId()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v0, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    return v0
.end method

.method getLocalBackgroundURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalBackgroundURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getServerBackgroundURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getServerBackgroundURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTitleDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mThumbDrawable:Lcom/vkcoffee/android/stickers/ThumbDrawable;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/vkcoffee/android/stickers/ThumbDrawable;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {v1}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getServerIconURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalIconURL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/vkcoffee/android/stickers/ThumbDrawable;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mThumbDrawable:Lcom/vkcoffee/android/stickers/ThumbDrawable;

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mThumbDrawable:Lcom/vkcoffee/android/stickers/ThumbDrawable;

    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-boolean v0, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->purchased:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/stickers/ThumbDrawable;->setAlpha(I)V

    .line 123
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mThumbDrawable:Lcom/vkcoffee/android/stickers/ThumbDrawable;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/ThumbDrawable;->load()Lcom/vkcoffee/android/ui/URLDrawable;

    move-result-object v0

    return-object v0

    .line 122
    :cond_1
    const/16 v0, 0x7f

    goto :goto_0
.end method

.method getView(Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 89
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mContentView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    if-nez v3, :cond_0

    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f030175

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    iput-object v3, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mContentView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    .line 92
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mContentView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    iget-object v5, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mViewToUrlProjection:Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;

    invoke-virtual {v3, v5}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->init(Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;)V

    .line 93
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mContentView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-virtual {v3, v0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->setHasFixedSize(Z)V

    .line 94
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mContentView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    iget-object v5, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, v5}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 95
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mContentView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-virtual {v3, v0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 98
    .local v0, "mLandscape":Z
    :goto_0
    if-eqz v0, :cond_2

    sget v2, Lcom/vkcoffee/android/stickers/StickersConfig;->KEYBOARD_COLUMNS_COUNT_LANDSCAPE:I

    .line 100
    .local v2, "spanCount":I
    :goto_1
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mContentView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-virtual {v3}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 101
    .local v1, "mLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    new-instance v3, Lcom/vkcoffee/android/stickers/StickerPage$2;

    invoke-direct {v3, p0, v2}, Lcom/vkcoffee/android/stickers/StickerPage$2;-><init>(Lcom/vkcoffee/android/stickers/StickerPage;I)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 110
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mContentView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->setClipToPadding(Z)V

    .line 111
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mContentView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    invoke-virtual {v3, v1}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 112
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mContentView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    new-instance v4, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;-><init>(Lcom/vkcoffee/android/stickers/StickerPage;)V

    iput-object v4, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mAdapter:Lcom/vkcoffee/android/stickers/StickerPage$Adapter;

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 114
    .end local v0    # "mLandscape":Z
    .end local v1    # "mLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    .end local v2    # "spanCount":I
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mContentView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    return-object v3

    :cond_1
    move v0, v4

    .line 97
    goto :goto_0

    .line 98
    .restart local v0    # "mLandscape":Z
    :cond_2
    const/4 v2, 0x4

    goto :goto_1
.end method

.method listener(Lcom/vkcoffee/android/stickers/StickersView$Listener;)Lcom/vkcoffee/android/stickers/StickerPage;
    .locals 0
    .param p1, "l"    # Lcom/vkcoffee/android/stickers/StickersView$Listener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mSelector:Lcom/vkcoffee/android/stickers/StickersView$Listener;

    .line 84
    return-object p0
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mContentView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    .line 144
    return-void
.end method

.method releaseView()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mContentView:Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    .line 139
    return-void
.end method

.method reload()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mAdapter:Lcom/vkcoffee/android/stickers/StickerPage$Adapter;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mAdapter:Lcom/vkcoffee/android/stickers/StickerPage$Adapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/StickerPage$Adapter;->notifyDataSetChanged()V

    .line 162
    :cond_0
    return-void
.end method

.method reload(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 0
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickerPage;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 149
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/StickerPage;->reload()V

    .line 150
    return-void
.end method
