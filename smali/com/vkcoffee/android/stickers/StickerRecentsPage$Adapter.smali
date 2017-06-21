.class Lcom/vkcoffee/android/stickers/StickerRecentsPage$Adapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "StickerRecentsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/stickers/StickerRecentsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
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
.field final synthetic this$0:Lcom/vkcoffee/android/stickers/StickerRecentsPage;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/stickers/StickerRecentsPage;)V
    .locals 1

    .prologue
    .line 170
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$Adapter;->this$0:Lcom/vkcoffee/android/stickers/StickerRecentsPage;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/StickerRecentsPage$Adapter;->setHasStableIds(Z)V

    .line 172
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$Adapter;->this$0:Lcom/vkcoffee/android/stickers/StickerRecentsPage;

    iget-object v0, v0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$Adapter;->this$0:Lcom/vkcoffee/android/stickers/StickerRecentsPage;

    iget-object v0, v0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    iget v0, v0, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;->mId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 168
    check-cast p1, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/stickers/StickerRecentsPage$Adapter;->onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 181
    check-cast p1, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;

    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$Adapter;->this$0:Lcom/vkcoffee/android/stickers/StickerRecentsPage;

    iget-object v0, v0, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;->bind(Lcom/vkcoffee/android/stickers/Stickers$RecentSticker;)V

    .line 182
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/stickers/StickerRecentsPage$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 176
    new-instance v0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/StickerRecentsPage$Adapter;->this$0:Lcom/vkcoffee/android/stickers/StickerRecentsPage;

    invoke-static {v2}, Lcom/vkcoffee/android/stickers/StickerRecentsPage;->access$000(Lcom/vkcoffee/android/stickers/StickerRecentsPage;)Lcom/vkcoffee/android/stickers/StickersView$Listener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/stickers/StickerRecentsPage$StickerHolder;-><init>(Landroid/content/Context;Lcom/vkcoffee/android/stickers/StickersView$Listener;)V

    return-object v0
.end method
