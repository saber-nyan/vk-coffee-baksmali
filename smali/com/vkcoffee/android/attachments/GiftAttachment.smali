.class public Lcom/vkcoffee/android/attachments/GiftAttachment;
.super Lcom/vkcoffee/android/attachments/Attachment;
.source "GiftAttachment.java"

# interfaces
.implements Lcom/vkcoffee/android/attachments/ImageAttachment;


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/GiftAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIZE:I = 0x160


# instance fields
.field private callback:Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;

.field public id:I

.field public images:[Ljava/lang/String;

.field public packID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/vkcoffee/android/attachments/GiftAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/GiftAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/GiftAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;I)V
    .locals 0
    .param p1, "_id"    # I
    .param p2, "_images"    # [Ljava/lang/String;
    .param p3, "pack"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 35
    iput p1, p0, Lcom/vkcoffee/android/attachments/GiftAttachment;->id:I

    .line 36
    iput-object p2, p0, Lcom/vkcoffee/android/attachments/GiftAttachment;->images:[Ljava/lang/String;

    .line 37
    iput p3, p0, Lcom/vkcoffee/android/attachments/GiftAttachment;->packID:I

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "in"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 41
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/GiftAttachment;->id:I

    .line 42
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/GiftAttachment;->images:[Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/GiftAttachment;->packID:I

    .line 44
    return-void
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 134
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    const v0, 0x7f0202ea

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    return-void
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    new-instance v0, Lcom/vkcoffee/android/attachments/GiftAttachment$2;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/attachments/GiftAttachment$2;-><init>(Lcom/vkcoffee/android/attachments/GiftAttachment;Landroid/content/Context;)V

    .line 79
    .local v0, "iv":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 80
    iget v1, p0, Lcom/vkcoffee/android/attachments/GiftAttachment;->packID:I

    if-eqz v1, :cond_0

    .line 81
    invoke-static {p0, p1}, Lcom/vkcoffee/android/attachments/GiftAttachment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/attachments/GiftAttachment;Landroid/content/Context;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :goto_0
    return-object v0

    .line 95
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/attachments/GiftAttachment$3;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/attachments/GiftAttachment$3;-><init>(Lcom/vkcoffee/android/attachments/GiftAttachment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    sget v1, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x2

    .line 124
    .local v0, "stickerSize":I
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/GiftAttachment;->images:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 123
    .end local v0    # "stickerSize":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/GiftAttachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasPackId()Z
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/vkcoffee/android/attachments/GiftAttachment;->packID:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$getFullView$198(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/attachments/GiftAttachment;->packID:I

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/stickers/Stickers;->getById(I)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v0

    .line 83
    .local v0, "item":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->active:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->promoted:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/GiftAttachment;->callback:Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/GiftAttachment;->callback:Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;

    iget v2, p0, Lcom/vkcoffee/android/attachments/GiftAttachment;->packID:I

    invoke-interface {v1, v2}, Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;->openStickerKeyboard(I)V

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_1
    if-nez v0, :cond_2

    .line 87
    iget v1, p0, Lcom/vkcoffee/android/attachments/GiftAttachment;->packID:I

    const-string/jumbo v2, "message"

    check-cast p1, Landroid/app/Activity;

    invoke-static {v1, v2, p1}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->show(ILjava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 89
    :cond_2
    const-string/jumbo v1, "message"

    iput-object v1, v0, Lcom/vkcoffee/android/data/orm/StickerStockItem;->referrer:Ljava/lang/String;

    .line 90
    check-cast p1, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->show(Lcom/vkcoffee/android/data/orm/StickerStockItem;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public overrideLayoutParams()Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 63
    iget v0, p0, Lcom/vkcoffee/android/attachments/GiftAttachment;->id:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/GiftAttachment;->images:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeStringArray([Ljava/lang/String;)V

    .line 65
    iget v0, p0, Lcom/vkcoffee/android/attachments/GiftAttachment;->packID:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 66
    return-void
.end method

.method public setCallback(Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;)V
    .locals 0
    .param p1, "c"    # Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/GiftAttachment;->callback:Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;

    .line 59
    return-void
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "fromCache"    # Z

    .prologue
    .line 129
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    return-void
.end method
