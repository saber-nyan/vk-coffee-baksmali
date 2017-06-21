.class Lcom/vkcoffee/android/fragments/gifts/GiftHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GiftHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/api/models/CatalogedGift;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mData:Lcom/vkcoffee/android/api/models/CatalogedGift;

.field private mListener:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/api/models/CatalogedGift;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoto:Lcom/vkcoffee/android/ui/SquareImageView;

.field private mSize:I

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    const v0, 0x7f03009d

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 28
    const v0, 0x7f100146

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/SquareImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mPhoto:Lcom/vkcoffee/android/ui/SquareImageView;

    .line 29
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mTitle:Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mPhoto:Lcom/vkcoffee/android/ui/SquareImageView;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/ui/SquareImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mPhoto:Lcom/vkcoffee/android/ui/SquareImageView;

    iget v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mSize:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/SquareImageView;->setSize(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/api/models/CatalogedGift;)V
    .locals 7
    .param p1, "item"    # Lcom/vkcoffee/android/api/models/CatalogedGift;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mData:Lcom/vkcoffee/android/api/models/CatalogedGift;

    .line 51
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/models/CatalogedGift;->isFree()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/vkcoffee/android/api/models/CatalogedGift;->disabled:Z

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    move v0, v1

    .line 52
    .local v0, "free":Z
    :goto_0
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mPhoto:Lcom/vkcoffee/android/ui/SquareImageView;

    iget-boolean v3, p1, Lcom/vkcoffee/android/api/models/CatalogedGift;->disabled:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x7f

    :goto_1
    invoke-virtual {v4, v3}, Lcom/vkcoffee/android/ui/SquareImageView;->setAlpha(I)V

    .line 53
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget-object v3, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const v3, -0xae7e48

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mTitle:Landroid/widget/TextView;

    iget-boolean v4, p1, Lcom/vkcoffee/android/api/models/CatalogedGift;->disabled:Z

    if-eqz v4, :cond_4

    const v1, 0x7f080557

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void

    .end local v0    # "free":Z
    :cond_0
    move v0, v2

    .line 51
    goto :goto_0

    .line 52
    .restart local v0    # "free":Z
    :cond_1
    const/16 v3, 0xff

    goto :goto_1

    .line 53
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 54
    :cond_3
    const v3, -0x6f6b67

    goto :goto_3

    .line 55
    :cond_4
    if-eqz v0, :cond_5

    const v4, 0x7f0e0018

    iget-object v5, p1, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/vkcoffee/android/api/models/CatalogedGift;->gifts_left:Ljava/lang/Integer;

    aput-object v6, v1, v2

    invoke-virtual {p0, v4, v5, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    const v4, 0x7f0e0003

    iget v5, p1, Lcom/vkcoffee/android/api/models/CatalogedGift;->price:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v6, p1, Lcom/vkcoffee/android/api/models/CatalogedGift;->price:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {p0, v4, v5, v1}, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/vkcoffee/android/api/models/CatalogedGift;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->bind(Lcom/vkcoffee/android/api/models/CatalogedGift;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mPhoto:Lcom/vkcoffee/android/ui/SquareImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/SquareImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    return-void
.end method

.method public onClick(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/fragments/gifts/GiftHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/api/models/CatalogedGift;",
            ">;)",
            "Lcom/vkcoffee/android/fragments/gifts/GiftHolder;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "callback":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Lcom/vkcoffee/android/api/models/CatalogedGift;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mListener:Lcom/vkcoffee/android/functions/VoidF1;

    .line 45
    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mListener:Lcom/vkcoffee/android/functions/VoidF1;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mListener:Lcom/vkcoffee/android/functions/VoidF1;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mData:Lcom/vkcoffee/android/api/models/CatalogedGift;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    .line 73
    :cond_0
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mPhoto:Lcom/vkcoffee/android/ui/SquareImageView;

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/ui/SquareImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 66
    return-void
.end method

.method public setSize(I)Lcom/vkcoffee/android/fragments/gifts/GiftHolder;
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 36
    iget v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mSize:I

    if-eq p1, v0, :cond_0

    .line 37
    iput p1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mSize:I

    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mPhoto:Lcom/vkcoffee/android/ui/SquareImageView;

    iget v1, p0, Lcom/vkcoffee/android/fragments/gifts/GiftHolder;->mSize:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/SquareImageView;->setSize(I)V

    .line 40
    :cond_0
    return-object p0
.end method
