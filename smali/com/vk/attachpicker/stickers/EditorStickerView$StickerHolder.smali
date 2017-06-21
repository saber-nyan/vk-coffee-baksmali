.class Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EditorStickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/stickers/EditorStickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StickerHolder"
.end annotation


# instance fields
.field private item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

.field private mId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;

    .prologue
    .line 218
    new-instance v1, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder$1;

    invoke-direct {v1, p1}, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder$1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 230
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    .line 231
    .local v0, "p":I
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 233
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;->itemView:Landroid/view/View;

    invoke-static {p0, p2}, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/data/orm/StickerStockItem;I)V
    .locals 3
    .param p1, "ssi"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .param p2, "id"    # I

    .prologue
    .line 247
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;->item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 248
    iput p2, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;->mId:I

    .line 249
    invoke-static {}, Lcom/vk/attachpicker/Picker;->picasso()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;->getEditorURL(Lcom/vkcoffee/android/data/orm/StickerStockItem;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 250
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->realWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 251
    invoke-virtual {v1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 252
    return-void
.end method

.method public getEditorURL(Lcom/vkcoffee/android/data/orm/StickerStockItem;I)Ljava/lang/String;
    .locals 3
    .param p1, "ssi"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .param p2, "id"    # I

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->stickers_base_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->realWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->adjustSize(I[I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x40
        0x80
        0x100
        0x160
        0x200
    .end array-data
.end method

.method synthetic lambda$new$140(Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;Landroid/view/View;)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 234
    invoke-static {}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$300()Lcom/vk/attachpicker/util/TimeoutLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TimeoutLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-static {}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$300()Lcom/vk/attachpicker/util/TimeoutLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TimeoutLock;->lock()V

    .line 239
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v0

    iget v1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;->mId:I

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;->item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v2, v2, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/stickers/Stickers;->addRecent(II)V

    .line 240
    if-eqz p1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;->item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v0, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    iget v1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;->mId:I

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;->item:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget v3, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;->mId:I

    invoke-virtual {p0, v2, v3}, Lcom/vk/attachpicker/stickers/EditorStickerView$StickerHolder;->getEditorURL(Lcom/vkcoffee/android/data/orm/StickerStockItem;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "keyboard"

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;->onStickerSelected(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
