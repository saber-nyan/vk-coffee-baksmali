.class Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "StickerManagerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mActionButton:Landroid/widget/ImageView;

.field private mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

.field private mPhoto:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    .line 234
    const v0, 0x7f030176

    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 228
    const v0, 0x7f10021e

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->mActionButton:Landroid/widget/ImageView;

    .line 230
    const v0, 0x7f100146

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->mPhoto:Landroid/widget/ImageView;

    .line 231
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->mTitle:Landroid/widget/TextView;

    .line 235
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->mActionButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;)Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 2
    .param p1, "item"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 241
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->mActionButton:Landroid/widget/ImageView;

    iget-boolean v0, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->active:Z

    if-eqz v0, :cond_0

    const v0, 0x7f02017c

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    return-void

    .line 242
    :cond_0
    const v0, 0x7f02017a

    goto :goto_0
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->bind(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f0202ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    return-void
.end method

.method lambda$onClick$609(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->setActiveState(Lcom/vkcoffee/android/data/orm/StickerStockItem;Z)V

    .line 267
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->mActionButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-boolean v0, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->active:Z

    if-eqz v0, :cond_1

    .line 256
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080517

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$StickerManagerFragment$Holder$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->setActiveState(Lcom/vkcoffee/android/data/orm/StickerStockItem;Z)V

    goto :goto_0

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->itemView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->this$0:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->show(Lcom/vkcoffee/android/data/orm/StickerStockItem;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 251
    return-void
.end method
