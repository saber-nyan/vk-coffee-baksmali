.class final Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GiftSendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GiftHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/api/models/CatalogedGift;",
        ">;"
    }
.end annotation


# instance fields
.field private mDescription:Landroid/widget/TextView;

.field private final mPhoto:Landroid/widget/ImageView;

.field private mSubTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;Landroid/view/ViewGroup;)V
    .locals 1
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    .line 272
    const v0, 0x7f030099

    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 266
    const v0, 0x7f10012e

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->mDescription:Landroid/widget/TextView;

    .line 267
    const v0, 0x7f100146

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->mPhoto:Landroid/widget/ImageView;

    .line 268
    const v0, 0x7f100169

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->mSubTitle:Landroid/widget/TextView;

    .line 269
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->mTitle:Landroid/widget/TextView;

    .line 273
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/api/models/CatalogedGift;)V
    .locals 4
    .param p1, "item"    # Lcom/vkcoffee/android/api/models/CatalogedGift;

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "i":I
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->mDescription:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/api/models/CatalogedGift;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->mDescription:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/vkcoffee/android/api/models/CatalogedGift;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->mSubTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mSubtitleText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->mSubTitle:Landroid/widget/TextView;

    .line 282
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->this$0:Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;

    iget-boolean v2, v2, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment;->mSubTitleVisible:Z

    if-nez v2, :cond_0

    .line 283
    const/16 v0, 0x8

    .line 285
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    return-void

    .line 277
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/models/CatalogedGift;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->bind(Lcom/vkcoffee/android/api/models/CatalogedGift;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftSendFragment$GiftHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 294
    return-void
.end method
