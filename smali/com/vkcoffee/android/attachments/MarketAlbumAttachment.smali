.class public Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;
.super Lcom/vkcoffee/android/attachments/Attachment;
.source "MarketAlbumAttachment.java"

# interfaces
.implements Lcom/vkcoffee/android/attachments/ThumbAttachment;
.implements Lcom/vkcoffee/android/attachments/ImageAttachment;


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public breakAfter:Z

.field public displayH:I

.field public displayW:I

.field public floating:Z

.field goodAlbum:Lcom/vkcoffee/android/data/GoodAlbum;

.field public hasSize:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment$2;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment$2;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/data/GoodAlbum;)V
    .locals 0
    .param p1, "goodAlbum"    # Lcom/vkcoffee/android/data/GoodAlbum;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->goodAlbum:Lcom/vkcoffee/android/data/GoodAlbum;

    .line 31
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->fillEmptyImages()V

    .line 32
    return-void
.end method

.method private fillEmptyImages()V
    .locals 3

    .prologue
    .line 40
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->goodAlbum:Lcom/vkcoffee/android/data/GoodAlbum;

    iget-object v1, v1, Lcom/vkcoffee/android/data/GoodAlbum;->photo:Lcom/vkcoffee/android/Photo;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v0

    .line 41
    .local v0, "image":Lcom/vkcoffee/android/Photo$Image;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/vkcoffee/android/Photo$Image;->width:I

    if-nez v1, :cond_0

    iget v1, v0, Lcom/vkcoffee/android/Photo$Image;->height:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    const-string/jumbo v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const/16 v1, 0x1b0

    iput v1, v0, Lcom/vkcoffee/android/Photo$Image;->width:I

    .line 43
    const/16 v1, 0xf9

    iput v1, v0, Lcom/vkcoffee/android/Photo$Image;->height:I

    .line 44
    iget v1, v0, Lcom/vkcoffee/android/Photo$Image;->width:I

    iput v1, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->displayW:I

    .line 45
    iget v1, v0, Lcom/vkcoffee/android/Photo$Image;->height:I

    iput v1, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->displayH:I

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 133
    const v0, 0x7f10000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xd0d0e

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    return-void
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->displayH:I

    return v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRatio()F
    .locals 1

    .prologue
    .line 138
    const/high16 v0, 0x3fc00000    # 1.5f

    return v0
.end method

.method public getThumbURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->goodAlbum:Lcom/vkcoffee/android/data/GoodAlbum;

    iget-object v0, v0, Lcom/vkcoffee/android/data/GoodAlbum;->photo:Lcom/vkcoffee/android/Photo;

    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/Photo;->getImageByWidth(I)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v0

    iget-object v0, v0, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const v10, 0x7f10000b

    const/4 v7, 0x1

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v9, 0x0

    .line 50
    const-string/jumbo v3, "market_album"

    invoke-static {p1, v3}, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;

    .line 51
    .local v0, "iv":Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;
    const v3, 0x7f020271

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->setImageResource(I)V

    .line 52
    invoke-virtual {v0, v7}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->setId(I)V

    .line 53
    iget v3, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->displayW:I

    if-nez v3, :cond_0

    .line 54
    const/16 v3, 0x87

    iput v3, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->displayW:I

    .line 56
    :cond_0
    iget v3, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->displayH:I

    if-nez v3, :cond_1

    .line 57
    const/16 v3, 0x64

    iput v3, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->displayH:I

    .line 59
    :cond_1
    iget v3, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->displayH:I

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->setMinimumHeight(I)V

    .line 60
    iget v3, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->displayH:I

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->setMaxHeight(I)V

    .line 61
    iget v3, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->displayW:I

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->setMinimumWidth(I)V

    .line 62
    iget v3, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->displayW:I

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->setMaxWidth(I)V

    .line 63
    iget v3, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->displayW:I

    iput v3, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->displayW:I

    .line 64
    iget v3, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->displayH:I

    iput v3, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->displayH:I

    .line 65
    new-instance v1, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v1, "params":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    iget-boolean v3, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->breakAfter:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->floating:Z

    if-eqz v3, :cond_3

    .line 67
    :cond_2
    iget-boolean v3, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->breakAfter:Z

    iput-boolean v3, v1, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 68
    iget-boolean v3, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->floating:Z

    iput-boolean v3, v1, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->floating:Z

    .line 70
    :cond_3
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-static {p0}, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {v0, v10}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->setId(I)V

    .line 73
    const-string/jumbo v3, "album"

    invoke-static {p1, v3}, Lcom/vkcoffee/android/attachments/Attachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 74
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f10013e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->goodAlbum:Lcom/vkcoffee/android/data/GoodAlbum;

    iget-object v4, v4, Lcom/vkcoffee/android/data/GoodAlbum;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v3, 0x7f10013f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e001a

    iget-object v6, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->goodAlbum:Lcom/vkcoffee/android/data/GoodAlbum;

    iget v6, v6, Lcom/vkcoffee/android/data/GoodAlbum;->count:I

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->goodAlbum:Lcom/vkcoffee/android/data/GoodAlbum;

    iget v8, v8, Lcom/vkcoffee/android/data/GoodAlbum;->count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const v3, 0x7f100140

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, v2

    .line 77
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    move-object v3, v2

    .line 78
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_4
    move-object v3, v2

    .line 80
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move-object v3, v2

    .line 81
    check-cast v3, Lcom/vkcoffee/android/ui/FixedSizeFrameLayout;

    iget v4, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->displayW:I

    iget v5, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->displayH:I

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/ui/FixedSizeFrameLayout;->setSize(II)V

    .line 82
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, -0xd0d0e

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment$1;

    invoke-direct {v4, p0, v2}, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment$1;-><init>(Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 97
    return-object v2
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->displayW:I

    return v0
.end method

.method public getWidth(C)I
    .locals 1
    .param p1, "size"    # C

    .prologue
    .line 166
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->goodAlbum:Lcom/vkcoffee/android/data/GoodAlbum;

    iget-object v0, v0, Lcom/vkcoffee/android/data/GoodAlbum;->photo:Lcom/vkcoffee/android/Photo;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v0

    iget v0, v0, Lcom/vkcoffee/android/Photo$Image;->width:I

    return v0
.end method

.method synthetic lambda$getViewForList$200(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    new-instance v0, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->goodAlbum:Lcom/vkcoffee/android/data/GoodAlbum;

    iget v1, v1, Lcom/vkcoffee/android/data/GoodAlbum;->owner_id:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;-><init>(I)V

    iget-object v1, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->goodAlbum:Lcom/vkcoffee/android/data/GoodAlbum;

    iget v1, v1, Lcom/vkcoffee/android/data/GoodAlbum;->id:I

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;->setAlbum(I)Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/market/MarketFragment$Builder;->go(Landroid/content/Context;)V

    return-void
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->goodAlbum:Lcom/vkcoffee/android/data/GoodAlbum;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeSerializable(Lcom/vkcoffee/android/utils/Serializer$Serializable;)V

    .line 103
    return-void
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "fromCache"    # Z

    .prologue
    const v1, 0x7f10000b

    .line 123
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    if-nez p3, :cond_0

    .line 125
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->animateAlpha()V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->dontAnimate()V

    goto :goto_0
.end method

.method public setViewSize(FFZZ)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "breakAfter"    # Z
    .param p4, "floating"    # Z

    .prologue
    .line 143
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->displayW:I

    .line 144
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->displayH:I

    .line 145
    iput-boolean p3, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->breakAfter:Z

    .line 146
    iput-boolean p4, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->floating:Z

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;->hasSize:Z

    .line 148
    return-void
.end method
