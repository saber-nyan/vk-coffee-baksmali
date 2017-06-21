.class public Lcom/vkcoffee/android/stickers/StickerRecentsPage;
.super Lcom/vkcoffee/android/stickers/StickersViewPage;
.source "StickerRecentsPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;,
        Lcom/vkcoffee/android/stickers/StickerRecentsPage$Adapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/vkcoffee/android/stickers/StickerRecentsPage$Adapter;

.field mContentView:Landroid/view/View;

.field mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/widget/TextView;

.field private mListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mProjection:Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;

.field private mSelector:Lcom/vkcoffee/android/stickers/StickersView$Listener;

.field final mStickers:Lcom/vkcoffee/android/stickers/Stickers;

.field final mTitleDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/StickersViewPage;-><init>()V

    .line 49
    new-instance v0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/stickers/StickerRecentsPage$1;-><init>(Lcom/vkcoffee/android/stickers/StickerRecentsPage;)V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mProjection:Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;

    .line 70
    new-instance v0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020225

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, -0x726c67

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mTitleDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mTitleDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 72
    invoke-static {p1}, Lcom/vkcoffee/android/stickers/Stickers;->get(Landroid/content/Context;)Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mStickers:Lcom/vkcoffee/android/stickers/Stickers;

    .line 73
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mStickers:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/Stickers;->getRecent()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mData:Ljava/util/List;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/stickers/StickerRecentsPage;)Lcom/vkcoffee/android/stickers/StickersView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/StickerRecentsPage;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mSelector:Lcom/vkcoffee/android/stickers/StickersView$Listener;

    return-object v0
.end method


# virtual methods
.method attachToScroll(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)Lcom/vkcoffee/android/stickers/StickerRecentsPage;
    .locals 0
    .param p1, "l"    # Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 78
    return-object p0
.end method

.method getId()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, -0x2

    return v0
.end method

.method getLocalBackgroundURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method getServerBackgroundURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method getTitleDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mTitleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getView(Landroid/content/Context;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, -0x1

    const/4 v11, -0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 88
    iget-object v8, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mContentView:Landroid/view/View;

    if-nez v8, :cond_0

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030175

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    .line 90
    .local v3, "mList":Lcom/vkcoffee/android/stickers/WindowRecyclerView;
    iget-object v8, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mProjection:Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;

    invoke-virtual {v3, v8}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->init(Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;)V

    .line 91
    invoke-virtual {v3, v7}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->setHasFixedSize(Z)V

    .line 92
    iget-object v8, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, v8}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 93
    invoke-virtual {v3, v7}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    move v0, v7

    .line 96
    .local v0, "landscape":Z
    :goto_0
    if-eqz v0, :cond_2

    sget v5, Lcom/vkcoffee/android/stickers/StickersConfig;->KEYBOARD_COLUMNS_COUNT_LANDSCAPE:I

    .line 99
    .local v5, "spanCount":I
    :goto_1
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v2, p1, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 100
    .local v2, "mLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    invoke-virtual {v3, v2}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 101
    new-instance v8, Lcom/vkcoffee/android/stickers/StickerRecentsPage$Adapter;

    invoke-direct {v8, p0}, Lcom/vkcoffee/android/stickers/StickerRecentsPage$Adapter;-><init>(Lcom/vkcoffee/android/stickers/StickerRecentsPage;)V

    iput-object v8, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mAdapter:Lcom/vkcoffee/android/stickers/StickerRecentsPage$Adapter;

    invoke-virtual {v3, v8}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 102
    invoke-virtual {v3, v6}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->setClipToPadding(Z)V

    .line 105
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 107
    .local v1, "layout":Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mEmptyView:Landroid/widget/TextView;

    .line 108
    iget-object v8, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mEmptyView:Landroid/widget/TextView;

    const v9, 0x7f080157

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v8, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mEmptyView:Landroid/widget/TextView;

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v8, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 110
    iget-object v7, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mEmptyView:Landroid/widget/TextView;

    const v8, -0x777778

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 112
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x11

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 114
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v7, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iput-object v1, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mContentView:Landroid/view/View;

    .line 118
    .end local v0    # "landscape":Z
    .end local v1    # "layout":Landroid/widget/FrameLayout;
    .end local v2    # "mLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    .end local v3    # "mList":Lcom/vkcoffee/android/stickers/WindowRecyclerView;
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "spanCount":I
    :cond_0
    iget-object v7, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mAdapter:Lcom/vkcoffee/android/stickers/StickerRecentsPage$Adapter;

    invoke-virtual {v7}, Lcom/vkcoffee/android/stickers/StickerRecentsPage$Adapter;->notifyDataSetChanged()V

    .line 119
    iget-object v7, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mEmptyView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mData:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v6, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mContentView:Landroid/view/View;

    return-object v6

    .restart local v3    # "mList":Lcom/vkcoffee/android/stickers/WindowRecyclerView;
    :cond_1
    move v0, v6

    .line 95
    goto :goto_0

    .line 96
    .restart local v0    # "landscape":Z
    :cond_2
    const/4 v5, 0x4

    goto :goto_1

    .line 119
    .end local v0    # "landscape":Z
    .end local v3    # "mList":Lcom/vkcoffee/android/stickers/WindowRecyclerView;
    :cond_3
    const/16 v6, 0x8

    goto :goto_2
.end method

.method listener(Lcom/vkcoffee/android/stickers/StickersView$Listener;)Lcom/vkcoffee/android/stickers/StickerRecentsPage;
    .locals 0
    .param p1, "l"    # Lcom/vkcoffee/android/stickers/StickersView$Listener;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mSelector:Lcom/vkcoffee/android/stickers/StickersView$Listener;

    .line 83
    return-object p0
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mContentView:Landroid/view/View;

    .line 148
    return-void
.end method

.method releaseView()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mContentView:Landroid/view/View;

    .line 143
    return-void
.end method

.method reload()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mAdapter:Lcom/vkcoffee/android/stickers/StickerRecentsPage$Adapter;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mAdapter:Lcom/vkcoffee/android/stickers/StickerRecentsPage$Adapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/StickerRecentsPage$Adapter;->notifyDataSetChanged()V

    .line 166
    :cond_0
    return-void
.end method

.method reload(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 1
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mStickers:Lcom/vkcoffee/android/stickers/Stickers;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/Stickers;->getRecent()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mData:Ljava/util/List;

    .line 153
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->reload()V

    .line 154
    return-void
.end method
