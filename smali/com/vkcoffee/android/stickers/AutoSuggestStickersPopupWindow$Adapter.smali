.class Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "AutoSuggestStickersPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mData:Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

.field private mListener:Lcom/vkcoffee/android/stickers/StickersView$Listener;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;Lcom/vkcoffee/android/stickers/StickersView$Listener;)V
    .locals 0
    .param p1, "data"    # Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;
    .param p2, "listener"    # Lcom/vkcoffee/android/stickers/StickersView$Listener;

    .prologue
    .line 261
    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->mData:Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    .line 263
    iput-object p2, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->mListener:Lcom/vkcoffee/android/stickers/StickersView$Listener;

    .line 264
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;)Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->mData:Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;)Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;
    .param p1, "x1"    # Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->mData:Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;)Lcom/vkcoffee/android/stickers/StickersView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->mListener:Lcom/vkcoffee/android/stickers/StickersView$Listener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;Lcom/vkcoffee/android/stickers/StickersView$Listener;)Lcom/vkcoffee/android/stickers/StickersView$Listener;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;
    .param p1, "x1"    # Lcom/vkcoffee/android/stickers/StickersView$Listener;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->mListener:Lcom/vkcoffee/android/stickers/StickersView$Listener;

    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 295
    .local v0, "cnt":I
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->mData:Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    iget-object v1, v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->mData:Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    iget-object v1, v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    array-length v1, v1

    add-int/2addr v0, v1

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->mData:Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    iget-object v1, v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->promoted_stickers:[I

    if-eqz v1, :cond_1

    .line 300
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->mData:Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    iget-object v1, v1, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->promoted_stickers:[I

    array-length v1, v1

    add-int/2addr v0, v1

    .line 305
    :cond_1
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 257
    check-cast p1, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 274
    const/4 v1, 0x1

    .line 275
    .local v1, "isUserSticker":Z
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->mData:Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    iget-object v2, v2, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->mData:Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    iget-object v2, v2, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    array-length v2, v2

    if-le v2, p2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->mData:Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    iget-object v2, v2, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    aget v0, v2, p2

    .line 288
    .local v0, "id":I
    :goto_0
    check-cast p1, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;

    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    invoke-virtual {p1, v0, v1}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;->bind(IZ)V

    .line 289
    return-void

    .line 278
    .end local v0    # "id":I
    .restart local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->mData:Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    iget-object v2, v2, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    if-eqz v2, :cond_1

    .line 279
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->mData:Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    iget-object v2, v2, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->user_stickers:[I

    array-length v2, v2

    sub-int/2addr p2, v2

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->mData:Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;

    iget-object v2, v2, Lcom/vkcoffee/android/data/orm/StickersDictionaryItem;->promoted_stickers:[I

    aget v0, v2, p2

    .line 283
    .restart local v0    # "id":I
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 268
    new-instance v0, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;

    new-instance v1, Lcom/vkcoffee/android/ui/SquareImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/ui/SquareImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter$AutoSuggestStickersHolder;-><init>(Lcom/vkcoffee/android/stickers/AutoSuggestStickersPopupWindow$Adapter;Landroid/view/View;)V

    return-object v0
.end method
