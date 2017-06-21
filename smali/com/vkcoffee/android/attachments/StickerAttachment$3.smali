.class Lcom/vkcoffee/android/attachments/StickerAttachment$3;
.super Ljava/lang/Object;
.source "StickerAttachment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/attachments/StickerAttachment;->getFullView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/attachments/StickerAttachment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/attachments/StickerAttachment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/attachments/StickerAttachment;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/StickerAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/StickerAttachment;

    iput-object p2, p0, Lcom/vkcoffee/android/attachments/StickerAttachment$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/StickerAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/StickerAttachment;

    iget v2, v2, Lcom/vkcoffee/android/attachments/StickerAttachment;->packID:I

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/stickers/Stickers;->getById(I)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v0

    .line 117
    .local v0, "item":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->active:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->promoted:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/StickerAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/StickerAttachment;

    invoke-static {v1}, Lcom/vkcoffee/android/attachments/StickerAttachment;->access$000(Lcom/vkcoffee/android/attachments/StickerAttachment;)Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/StickerAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/StickerAttachment;

    invoke-static {v1}, Lcom/vkcoffee/android/attachments/StickerAttachment;->access$000(Lcom/vkcoffee/android/attachments/StickerAttachment;)Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/StickerAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/StickerAttachment;

    iget v2, v2, Lcom/vkcoffee/android/attachments/StickerAttachment;->packID:I

    invoke-interface {v1, v2}, Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;->openStickerKeyboard(I)V

    .line 128
    :goto_0
    return-void

    .line 120
    :cond_1
    if-nez v0, :cond_2

    .line 122
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/StickerAttachment$3;->this$0:Lcom/vkcoffee/android/attachments/StickerAttachment;

    iget v2, v1, Lcom/vkcoffee/android/attachments/StickerAttachment;->packID:I

    const-string/jumbo v3, "message"

    iget-object v1, p0, Lcom/vkcoffee/android/attachments/StickerAttachment$3;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v2, v3, v1}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->show(ILjava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 124
    :cond_2
    const-string/jumbo v1, "message"

    iput-object v1, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->referrer:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/StickerAttachment$3;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->show(Lcom/vkcoffee/android/data/orm/StickerStockItem;Landroid/app/Activity;)V

    goto :goto_0
.end method
