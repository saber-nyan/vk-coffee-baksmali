.class public Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "StickerStoreListHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
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
.field private final mActionListener:Landroid/view/View$OnClickListener;

.field private mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

.field private mError:Landroid/view/View;

.field private mOkButton:Landroid/view/View;

.field private mPhoto:Landroid/widget/ImageView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mStickerButton:Landroid/widget/TextView;

.field private mSubtitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "actionListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v2, 0x0

    .line 40
    const v1, 0x7f030179

    invoke-direct {p0, v1, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 41
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mActionListener:Landroid/view/View$OnClickListener;

    .line 43
    new-instance v0, Lcom/vkcoffee/android/ui/CircularProgressDrawable;

    invoke-direct {v0, v2}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;-><init>(Z)V

    .line 44
    .local v0, "pd":Lcom/vkcoffee/android/ui/CircularProgressDrawable;
    const v1, -0xae7e48

    invoke-virtual {v0, v2, v1}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->setColors(II)V

    .line 45
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->setThickness(F)V

    .line 46
    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->setPad(Z)V

    .line 47
    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/ui/CircularProgressDrawable;->setDimBackground(Z)V

    .line 49
    const v1, 0x7f1003c2

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mStickerButton:Landroid/widget/TextView;

    .line 50
    const v1, 0x7f1003c4

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->$(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mOkButton:Landroid/view/View;

    .line 51
    const v1, 0x7f1003c3

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mProgress:Landroid/widget/ProgressBar;

    .line 52
    const v1, 0x7f1003c5

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->$(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mError:Landroid/view/View;

    .line 53
    const v1, 0x7f100146

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mPhoto:Landroid/widget/ImageView;

    .line 54
    const v1, 0x7f1000dd

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mTitle:Landroid/widget/TextView;

    .line 55
    const v1, 0x7f100169

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mSubtitle:Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mStickerButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mError:Landroid/view/View;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method public static bindButtons(Lcom/vkcoffee/android/data/orm/StickerStockItem;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/view/View;)V
    .locals 5
    .param p0, "data"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;
    .param p1, "stickerButton"    # Landroid/widget/TextView;
    .param p2, "okButton"    # Landroid/view/View;
    .param p3, "progress"    # Landroid/widget/ProgressBar;
    .param p4, "error"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    const/16 v3, 0x8

    .line 65
    invoke-static {}, Lcom/vkcoffee/android/StickerDownloaderService;->getCurrentPackId()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    invoke-static {v1}, Lcom/vkcoffee/android/StickerDownloaderService;->isInQueue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    :cond_0
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 68
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 69
    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->id:I

    invoke-static {v1}, Lcom/vkcoffee/android/StickerDownloaderService;->isInQueue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 92
    :goto_1
    return-void

    .line 70
    :cond_1
    invoke-static {}, Lcom/vkcoffee/android/StickerDownloaderService;->getCurrentProgress()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 71
    :cond_2
    iget-boolean v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->purchased:Z

    if-eqz v1, :cond_3

    .line 72
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    invoke-virtual {p3, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 74
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75
    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    invoke-virtual {p3, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->payment_type:Lcom/vkcoffee/android/api/models/PaymentType;

    sget-object v2, Lcom/vkcoffee/android/api/models/PaymentType;->Inapp:Lcom/vkcoffee/android/api/models/PaymentType;

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/vkcoffee/android/data/PurchasesManager;->canUseInApps()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->can_purchase:Z

    if-nez v1, :cond_6

    .line 83
    :cond_5
    const v1, 0x7f080557

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 85
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 87
    :cond_6
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->free:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0803b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 89
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 87
    :cond_7
    iget-object v0, p0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->price_str:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 6
    .param p1, "data"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x40e00000    # 7.0f

    const/4 v3, 0x0

    .line 96
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .line 97
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-boolean v1, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->isNew:Z

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020223

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 100
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 101
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mTitle:Landroid/widget/TextView;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 106
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mSubtitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->author:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mStickerButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mOkButton:Landroid/view/View;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mProgress:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mError:Landroid/view/View;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->bindButtons(Lcom/vkcoffee/android/data/orm/StickerStockItem;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/view/View;)V

    .line 109
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mStickerButton:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 110
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mError:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->bind(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f0202ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->itemView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    const-string/jumbo v1, "store"

    iput-object v1, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->referrer:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mData:Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->show(Lcom/vkcoffee/android/data/orm/StickerStockItem;Landroid/app/Activity;)V

    .line 130
    :cond_0
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerStoreListHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    return-void
.end method
