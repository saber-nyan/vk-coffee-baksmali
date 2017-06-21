.class public Lcom/vk/attachpicker/stickers/StickersDrawingState;
.super Ljava/lang/Object;
.source "StickersDrawingState.java"


# instance fields
.field private final stickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/stickers/Sticker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingState;->stickers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addSticker(Lcom/vk/attachpicker/stickers/Sticker;)V
    .locals 1
    .param p1, "sticker"    # Lcom/vk/attachpicker/stickers/Sticker;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingState;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
.end method

.method public copy()Lcom/vk/attachpicker/stickers/StickersDrawingState;
    .locals 4

    .prologue
    .line 54
    new-instance v0, Lcom/vk/attachpicker/stickers/StickersDrawingState;

    invoke-direct {v0}, Lcom/vk/attachpicker/stickers/StickersDrawingState;-><init>()V

    .line 55
    .local v0, "drawingState":Lcom/vk/attachpicker/stickers/StickersDrawingState;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vk/attachpicker/stickers/StickersDrawingState;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 56
    iget-object v3, v0, Lcom/vk/attachpicker/stickers/StickersDrawingState;->stickers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/StickersDrawingState;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vk/attachpicker/stickers/Sticker;

    invoke-virtual {v2}, Lcom/vk/attachpicker/stickers/Sticker;->copy()Lcom/vk/attachpicker/stickers/Sticker;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vk/attachpicker/stickers/StickersDrawingState;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 34
    iget-object v2, p0, Lcom/vk/attachpicker/stickers/StickersDrawingState;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/stickers/Sticker;

    .line 35
    .local v1, "s":Lcom/vk/attachpicker/stickers/Sticker;
    invoke-virtual {v1}, Lcom/vk/attachpicker/stickers/Sticker;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    invoke-virtual {v1, p1}, Lcom/vk/attachpicker/stickers/Sticker;->draw(Landroid/graphics/Canvas;)V

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "s":Lcom/vk/attachpicker/stickers/Sticker;
    :cond_1
    return-void
.end method

.method public get(I)Lcom/vk/attachpicker/stickers/Sticker;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingState;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/stickers/Sticker;

    return-object v0
.end method

.method public getStickers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/stickers/Sticker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingState;->stickers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleCrop(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "before"    # Landroid/graphics/Matrix;
    .param p2, "after"    # Landroid/graphics/Matrix;

    .prologue
    .line 21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingState;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 22
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingState;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/stickers/Sticker;

    invoke-virtual {v1, p1, p2}, Lcom/vk/attachpicker/stickers/Sticker;->handleCrop(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public handleSizeChange(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingState;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingState;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/attachpicker/stickers/Sticker;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/vk/attachpicker/stickers/Sticker;->setCanvasDimension(FF)V

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public removeSticker(Lcom/vk/attachpicker/stickers/Sticker;)V
    .locals 1
    .param p1, "sticker"    # Lcom/vk/attachpicker/stickers/Sticker;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingState;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingState;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
