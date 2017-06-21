.class public Lcom/vkcoffee/android/attachments/StickerAttachment;
.super Lcom/vkcoffee/android/attachments/Attachment;
.source "StickerAttachment.java"

# interfaces
.implements Lcom/vkcoffee/android/attachments/ImageAttachment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/StickerAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callback:Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;

.field public height:I

.field public id:I

.field public images:[Ljava/lang/String;

.field public localPath:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public packID:I

.field public stickerReferrer:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/vkcoffee/android/attachments/StickerAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/StickerAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;III)V
    .locals 0
    .param p1, "_id"    # I
    .param p2, "_images"    # [Ljava/lang/String;
    .param p3, "_width"    # I
    .param p4, "_height"    # I
    .param p5, "pack"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 41
    iput p1, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->id:I

    .line 42
    iput-object p2, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    .line 43
    iput p3, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->width:I

    .line 44
    iput p4, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->height:I

    .line 45
    iput p5, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->packID:I

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "in"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 49
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->id:I

    .line 50
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->width:I

    .line 52
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->height:I

    .line 53
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->packID:I

    .line 54
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->localPath:Ljava/lang/String;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/attachments/StickerAttachment;)Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/attachments/StickerAttachment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->callback:Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;

    return-object v0
.end method

.method private getUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 151
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v3

    iget v4, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->packID:I

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/stickers/Stickers;->getById(I)Lcom/vkcoffee/android/data/orm/StickerStockItem;

    move-result-object v0

    .line 152
    .local v0, "item":Lcom/vkcoffee/android/data/orm/StickerStockItem;
    if-eqz v0, :cond_1

    .line 153
    iget v3, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->id:I

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getLocalStickerViewURL(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 157
    .restart local v2    # "url":Ljava/lang/String;
    :cond_0
    iget v3, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->id:I

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getServerStickerViewURL(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 159
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    sget v3, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    const/4 v1, 0x2

    .line 160
    .local v1, "stickerSize":I
    :goto_1
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    aget-object v2, v3, v1

    goto :goto_0

    .line 159
    .end local v1    # "stickerSize":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 170
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    const v0, 0x7f0202ea

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    return-void
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    new-instance v0, Lcom/vkcoffee/android/attachments/StickerAttachment$2;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/attachments/StickerAttachment$2;-><init>(Lcom/vkcoffee/android/attachments/StickerAttachment;Landroid/content/Context;)V

    .line 110
    .local v0, "iv":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 111
    sget v1, Lcom/vkcoffee/android/stickers/StickersConfig;->STICKER_SIZE:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 112
    sget v1, Lcom/vkcoffee/android/stickers/StickersConfig;->STICKER_SIZE:I

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 113
    new-instance v1, Lcom/vkcoffee/android/attachments/StickerAttachment$3;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/attachments/StickerAttachment$3;-><init>(Lcom/vkcoffee/android/attachments/StickerAttachment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/StickerAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/StickerAttachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public overrideLayoutParams()Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "p"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 74
    iget v0, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->id:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 75
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeStringArray([Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->width:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->height:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->packID:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 79
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->localPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setCallback(Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;)V
    .locals 0
    .param p1, "c"    # Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;->callback:Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;

    .line 70
    return-void
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "fromCache"    # Z

    .prologue
    .line 165
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    return-void
.end method
