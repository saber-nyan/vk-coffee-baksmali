.class Lcom/vkcoffee/android/stickers/StickerEmojiPage;
.super Lcom/vkcoffee/android/stickers/StickersViewPage;
.source "StickerEmojiPage.java"


# instance fields
.field final mListener:Lcom/vkcoffee/android/stickers/EmojiView$Listener;

.field mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field final mTitleDrawable:Landroid/graphics/drawable/Drawable;

.field mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/vkcoffee/android/stickers/EmojiView$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/vkcoffee/android/stickers/EmojiView$Listener;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/StickersViewPage;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/vkcoffee/android/stickers/StickerEmojiPage;->mListener:Lcom/vkcoffee/android/stickers/EmojiView$Listener;

    .line 26
    new-instance v0, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020210

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, -0x726c67

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickerEmojiPage;->mTitleDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerEmojiPage;->mTitleDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 28
    return-void
.end method


# virtual methods
.method public attachToScroll(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)Lcom/vkcoffee/android/stickers/StickerEmojiPage;
    .locals 0
    .param p1, "l"    # Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickerEmojiPage;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 32
    return-object p0
.end method

.method getId()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, -0x1

    return v0
.end method

.method getLocalBackgroundURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method getServerBackgroundURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method getTitleDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerEmojiPage;->mTitleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerEmojiPage;->mView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 38
    new-instance v0, Lcom/vkcoffee/android/stickers/EmojiView;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerEmojiPage;->mListener:Lcom/vkcoffee/android/stickers/EmojiView$Listener;

    invoke-direct {v0, p1, v1}, Lcom/vkcoffee/android/stickers/EmojiView;-><init>(Landroid/content/Context;Lcom/vkcoffee/android/stickers/EmojiView$Listener;)V

    .line 39
    .local v0, "view":Lcom/vkcoffee/android/stickers/EmojiView;
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerEmojiPage;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/stickers/EmojiView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 40
    iput-object v0, p0, Lcom/vkcoffee/android/stickers/StickerEmojiPage;->mView:Landroid/view/View;

    .line 42
    .end local v0    # "view":Lcom/vkcoffee/android/stickers/EmojiView;
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/StickerEmojiPage;->mView:Landroid/view/View;

    return-object v1
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerEmojiPage;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerEmojiPage;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    :cond_0
    return-void
.end method

.method releaseView()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method reload()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method reload(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 0
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    .line 75
    return-void
.end method
