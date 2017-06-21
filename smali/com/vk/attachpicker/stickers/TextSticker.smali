.class public Lcom/vk/attachpicker/stickers/TextSticker;
.super Lcom/vk/attachpicker/stickers/Sticker;
.source "TextSticker.java"


# instance fields
.field private final maxWidth:I

.field private staticLayout:Landroid/text/StaticLayout;

.field private stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

.field private text:Ljava/lang/String;

.field private final textPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILcom/vk/attachpicker/stickers/StickerFont;)V
    .locals 1
    .param p1, "maxWidth"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "color"    # I
    .param p4, "typeface"    # Lcom/vk/attachpicker/stickers/StickerFont;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/vk/attachpicker/stickers/Sticker;-><init>()V

    .line 38
    iput p1, p0, Lcom/vk/attachpicker/stickers/TextSticker;->maxWidth:I

    .line 39
    iput-object p4, p0, Lcom/vk/attachpicker/stickers/TextSticker;->stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

    .line 40
    iget-object v0, p4, Lcom/vk/attachpicker/stickers/StickerFont;->typeface:Landroid/graphics/Typeface;

    invoke-static {v0, p3}, Lcom/vk/attachpicker/stickers/TextSticker;->createPaint(Landroid/graphics/Typeface;I)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/TextSticker;->textPaint:Landroid/text/TextPaint;

    .line 41
    invoke-virtual {p0, p2}, Lcom/vk/attachpicker/stickers/TextSticker;->setText(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/vk/attachpicker/stickers/TextSticker;)V
    .locals 2
    .param p1, "sticker"    # Lcom/vk/attachpicker/stickers/TextSticker;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vk/attachpicker/stickers/Sticker;-><init>()V

    .line 31
    iget v0, p1, Lcom/vk/attachpicker/stickers/TextSticker;->maxWidth:I

    iput v0, p0, Lcom/vk/attachpicker/stickers/TextSticker;->maxWidth:I

    .line 32
    iget-object v0, p1, Lcom/vk/attachpicker/stickers/TextSticker;->stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/TextSticker;->stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

    .line 33
    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p1, Lcom/vk/attachpicker/stickers/TextSticker;->textPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/TextSticker;->textPaint:Landroid/text/TextPaint;

    .line 34
    iget-object v0, p1, Lcom/vk/attachpicker/stickers/TextSticker;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/stickers/TextSticker;->setText(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static createPaint(Landroid/graphics/Typeface;I)Landroid/text/TextPaint;
    .locals 2
    .param p0, "typeface"    # Landroid/graphics/Typeface;
    .param p1, "color"    # I

    .prologue
    .line 14
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 15
    .local v0, "tp":Landroid/text/TextPaint;
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 16
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 17
    const/16 v1, 0x28

    invoke-static {v1}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 18
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 19
    return-object v0
.end method


# virtual methods
.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextSticker;->staticLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 82
    .local v0, "saveCount":I
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/TextSticker;->getOriginalWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 83
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextSticker;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 84
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 86
    .end local v0    # "saveCount":I
    :cond_0
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextSticker;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOriginalHeight()F
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextSticker;->staticLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextSticker;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getOriginalWidth()F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextSticker;->staticLayout:Landroid/text/StaticLayout;

    if-nez v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextSticker;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 94
    iget v0, p0, Lcom/vk/attachpicker/stickers/TextSticker;->maxWidth:I

    int-to-float v0, v0

    goto :goto_0

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/TextSticker;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextSticker;->staticLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    goto :goto_0
.end method

.method public getStickerFont()Lcom/vk/attachpicker/stickers/StickerFont;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextSticker;->stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextSticker;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextSticker;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextSticker;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/stickers/TextSticker;->setText(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    const-string/jumbo p1, "..."

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/TextSticker;->text:Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/TextSticker;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/vk/attachpicker/stickers/TextSticker;->maxWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/TextSticker;->staticLayout:Landroid/text/StaticLayout;

    .line 62
    return-void
.end method

.method public setTypeface(Lcom/vk/attachpicker/stickers/StickerFont;)V
    .locals 2
    .param p1, "typeface"    # Lcom/vk/attachpicker/stickers/StickerFont;

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/TextSticker;->stickerFont:Lcom/vk/attachpicker/stickers/StickerFont;

    .line 74
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextSticker;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p1, Lcom/vk/attachpicker/stickers/StickerFont;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 75
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/TextSticker;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/stickers/TextSticker;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method
