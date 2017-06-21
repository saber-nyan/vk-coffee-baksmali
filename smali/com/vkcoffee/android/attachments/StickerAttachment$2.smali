.class Lcom/vkcoffee/android/attachments/StickerAttachment$2;
.super Landroid/widget/ImageView;
.source "StickerAttachment.java"


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


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/attachments/StickerAttachment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/attachments/StickerAttachment;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/StickerAttachment$2;->this$0:Lcom/vkcoffee/android/attachments/StickerAttachment;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 5
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 86
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/StickerAttachment$2;->this$0:Lcom/vkcoffee/android/attachments/StickerAttachment;

    iget v2, v3, Lcom/vkcoffee/android/attachments/StickerAttachment;->width:I

    .line 87
    .local v2, "width":I
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/StickerAttachment$2;->this$0:Lcom/vkcoffee/android/attachments/StickerAttachment;

    iget v1, v3, Lcom/vkcoffee/android/attachments/StickerAttachment;->height:I

    .line 91
    .local v1, "height":I
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/StickerAttachment$2;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 93
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 96
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz v2, :cond_2

    if-nez v1, :cond_3

    .line 97
    :cond_2
    sget v1, Lcom/vkcoffee/android/stickers/StickersConfig;->STICKER_SIZE:I

    move v2, v1

    .line 100
    :cond_3
    if-le v2, v1, :cond_4

    .line 101
    sget p1, Lcom/vkcoffee/android/stickers/StickersConfig;->STICKER_SIZE:I

    .line 102
    mul-int v3, p1, v1

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    float-to-int p2, v3

    .line 107
    :goto_0
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p0, p1, v3}, Lcom/vkcoffee/android/attachments/StickerAttachment$2;->setMeasuredDimension(II)V

    .line 108
    return-void

    .line 104
    :cond_4
    sget p2, Lcom/vkcoffee/android/stickers/StickersConfig;->STICKER_SIZE:I

    .line 105
    mul-int v3, p2, v2

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-int p1, v3

    goto :goto_0
.end method
