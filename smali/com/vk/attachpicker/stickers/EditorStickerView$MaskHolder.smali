.class Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EditorStickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/stickers/EditorStickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaskHolder"
.end annotation


# instance fields
.field private id:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;

    .prologue
    .line 265
    new-instance v1, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder$1;

    invoke-direct {v1, p1}, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder$1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 277
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    .line 278
    .local v0, "p":I
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 280
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder;->itemView:Landroid/view/View;

    invoke-static {p0, p2}, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder;Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 293
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder;->url:Ljava/lang/String;

    .line 294
    iput p2, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder;->id:I

    .line 295
    invoke-static {}, Lcom/vk/attachpicker/Picker;->picasso()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 296
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->realWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 297
    invoke-virtual {v1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 298
    return-void
.end method

.method synthetic lambda$new$141(Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;Landroid/view/View;)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 281
    invoke-static {}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$300()Lcom/vk/attachpicker/util/TimeoutLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TimeoutLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-static {}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$300()Lcom/vk/attachpicker/util/TimeoutLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TimeoutLock;->lock()V

    .line 286
    if-eqz p1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder;->url:Ljava/lang/String;

    iget v1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$MaskHolder;->id:I

    invoke-interface {p1, v0, v1}, Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;->onMaskSelected(Ljava/lang/String;I)V

    goto :goto_0
.end method
