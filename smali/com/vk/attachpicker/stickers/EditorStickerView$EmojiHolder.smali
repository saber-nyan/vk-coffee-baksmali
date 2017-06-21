.class Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EditorStickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/stickers/EditorStickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/stickers/EditorStickerView;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    .line 410
    new-instance v1, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder$1;

    invoke-direct {v1, p2, p1}, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder$1;-><init>(Landroid/content/Context;Lcom/vk/attachpicker/stickers/EditorStickerView;)V

    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 422
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    .line 423
    .local v0, "p":I
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 424
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    return-void
.end method


# virtual methods
.method synthetic lambda$new$142(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 425
    invoke-static {}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$300()Lcom/vk/attachpicker/util/TimeoutLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TimeoutLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    :goto_0
    return-void

    .line 428
    :cond_0
    invoke-static {}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$300()Lcom/vk/attachpicker/util/TimeoutLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TimeoutLock;->lock()V

    .line 430
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;->this$0:Lcom/vk/attachpicker/stickers/EditorStickerView;

    invoke-static {v0}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$400(Lcom/vk/attachpicker/stickers/EditorStickerView;)Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file:///android_asset/emoji/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/vk/attachpicker/stickers/EditorStickerView;->access$500()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;->getAdapterPosition()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vk/attachpicker/stickers/EditorStickerView$Listener;->onEmojiSelected(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x28

    .line 435
    invoke-static {}, Lcom/vk/attachpicker/Picker;->picasso()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 436
    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v1

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v0, p0, Lcom/vk/attachpicker/stickers/EditorStickerView$EmojiHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 437
    invoke-virtual {v1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 438
    return-void
.end method
