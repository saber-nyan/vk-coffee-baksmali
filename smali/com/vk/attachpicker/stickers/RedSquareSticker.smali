.class public Lcom/vk/attachpicker/stickers/RedSquareSticker;
.super Lcom/vk/attachpicker/stickers/Sticker;
.source "RedSquareSticker.java"


# instance fields
.field private final originalHeight:F

.field private final originalWidth:F

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(FF)V
    .locals 2
    .param p1, "originalWidth"    # F
    .param p2, "originalHeight"    # F

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/vk/attachpicker/stickers/Sticker;-><init>()V

    .line 9
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/RedSquareSticker;->paint:Landroid/graphics/Paint;

    .line 15
    iput p1, p0, Lcom/vk/attachpicker/stickers/RedSquareSticker;->originalWidth:F

    .line 16
    iput p2, p0, Lcom/vk/attachpicker/stickers/RedSquareSticker;->originalHeight:F

    .line 17
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/RedSquareSticker;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    return-void
.end method


# virtual methods
.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/RedSquareSticker;->getOriginalWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/RedSquareSticker;->getOriginalHeight()F

    move-result v4

    iget-object v5, p0, Lcom/vk/attachpicker/stickers/RedSquareSticker;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 23
    return-void
.end method

.method public getOriginalHeight()F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/vk/attachpicker/stickers/RedSquareSticker;->originalHeight:F

    return v0
.end method

.method public getOriginalWidth()F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/vk/attachpicker/stickers/RedSquareSticker;->originalWidth:F

    return v0
.end method
