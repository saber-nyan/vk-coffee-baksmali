.class public Lcom/vk/attachpicker/crop/CircleCropOverlayView;
.super Lcom/vk/attachpicker/crop/CropOverlayView;
.source "CircleCropOverlayView.java"

# interfaces
.implements Lcom/vk/attachpicker/crop/CropAreaProvider;


# static fields
.field public static final SIDE_PADDING:I


# instance fields
.field private final COLOR_OVERLAY_SOLID:I

.field private bottomSidePadding:F

.field private final eraser:Landroid/graphics/Paint;

.field private leftSidePadding:F

.field private final minCropSide:I

.field private onCropChangeListener:Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;

.field private overlayBitmap:Landroid/graphics/Bitmap;

.field private rightSidePadding:F

.field private topSidePadding:F

.field private touchEnabled:Z

.field private x0:F

.field private x1:F

.field private y0:F

.field private y1:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/crop/CropOverlayView;-><init>(Landroid/content/Context;)V

    .line 13
    const v0, -0x19000001

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->COLOR_OVERLAY_SOLID:I

    .line 15
    const/16 v0, 0x80

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->minCropSide:I

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->eraser:Landroid/graphics/Paint;

    .line 18
    sget v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x0:F

    .line 19
    sget v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y0:F

    .line 20
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->width()I

    move-result v0

    sget v1, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x1:F

    .line 21
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->width()I

    move-result v0

    sget v1, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y1:F

    .line 23
    sget v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->leftSidePadding:F

    .line 24
    sget v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->topSidePadding:F

    .line 25
    sget v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->rightSidePadding:F

    .line 26
    sget v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->bottomSidePadding:F

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->touchEnabled:Z

    .line 35
    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/vk/attachpicker/crop/CropOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const v0, -0x19000001

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->COLOR_OVERLAY_SOLID:I

    .line 15
    const/16 v0, 0x80

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->minCropSide:I

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->eraser:Landroid/graphics/Paint;

    .line 18
    sget v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x0:F

    .line 19
    sget v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y0:F

    .line 20
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->width()I

    move-result v0

    sget v1, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x1:F

    .line 21
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->width()I

    move-result v0

    sget v1, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y1:F

    .line 23
    sget v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->leftSidePadding:F

    .line 24
    sget v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->topSidePadding:F

    .line 25
    sget v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->rightSidePadding:F

    .line 26
    sget v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->bottomSidePadding:F

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->touchEnabled:Z

    .line 40
    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/attachpicker/crop/CropOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const v0, -0x19000001

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->COLOR_OVERLAY_SOLID:I

    .line 15
    const/16 v0, 0x80

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->minCropSide:I

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->eraser:Landroid/graphics/Paint;

    .line 18
    sget v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x0:F

    .line 19
    sget v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y0:F

    .line 20
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->width()I

    move-result v0

    sget v1, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x1:F

    .line 21
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->width()I

    move-result v0

    sget v1, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y1:F

    .line 23
    sget v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->leftSidePadding:F

    .line 24
    sget v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->topSidePadding:F

    .line 25
    sget v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->rightSidePadding:F

    .line 26
    sget v0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->bottomSidePadding:F

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->touchEnabled:Z

    .line 45
    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->init()V

    .line 46
    return-void
.end method

.method private clampX0(F)F
    .locals 3
    .param p1, "v"    # F

    .prologue
    .line 70
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x1:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x1:F

    sub-float/2addr v0, p1

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getXMinCropSide()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 71
    :cond_0
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x1:F

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getXMinCropSide()F

    move-result v1

    sub-float p1, v0, v1

    .line 75
    :cond_1
    :goto_0
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->leftSidePadding:F

    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->rightSidePadding:F

    sub-float/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/vk/attachpicker/util/Utils;->clamp(FFF)F

    move-result v0

    return v0

    .line 72
    :cond_2
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x1:F

    sub-float/2addr v0, p1

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->maxWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 73
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x1:F

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->maxWidth()F

    move-result v1

    sub-float p1, v0, v1

    goto :goto_0
.end method

.method private clampX1(F)F
    .locals 3
    .param p1, "v"    # F

    .prologue
    .line 88
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x0:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x0:F

    sub-float v0, p1, v0

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getXMinCropSide()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 89
    :cond_0
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x0:F

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getXMinCropSide()F

    move-result v1

    add-float p1, v0, v1

    .line 93
    :cond_1
    :goto_0
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->leftSidePadding:F

    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->rightSidePadding:F

    sub-float/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/vk/attachpicker/util/Utils;->clamp(FFF)F

    move-result v0

    return v0

    .line 90
    :cond_2
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x0:F

    sub-float v0, p1, v0

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->maxWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 91
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x0:F

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->maxWidth()F

    move-result v1

    add-float p1, v0, v1

    goto :goto_0
.end method

.method private clampY0(F)F
    .locals 3
    .param p1, "v"    # F

    .prologue
    .line 79
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y1:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y1:F

    sub-float/2addr v0, p1

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getYMinCropSide()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 80
    :cond_0
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y1:F

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getYMinCropSide()F

    move-result v1

    sub-float p1, v0, v1

    .line 84
    :cond_1
    :goto_0
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->topSidePadding:F

    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->bottomSidePadding:F

    sub-float/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/vk/attachpicker/util/Utils;->clamp(FFF)F

    move-result v0

    return v0

    .line 81
    :cond_2
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y1:F

    sub-float/2addr v0, p1

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->maxHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 82
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y1:F

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->maxHeight()F

    move-result v1

    sub-float p1, v0, v1

    goto :goto_0
.end method

.method private clampY1(F)F
    .locals 3
    .param p1, "v"    # F

    .prologue
    .line 97
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y0:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y0:F

    sub-float v0, p1, v0

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getYMinCropSide()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 98
    :cond_0
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y0:F

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getYMinCropSide()F

    move-result v1

    add-float p1, v0, v1

    .line 102
    :cond_1
    :goto_0
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->topSidePadding:F

    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->bottomSidePadding:F

    sub-float/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/vk/attachpicker/util/Utils;->clamp(FFF)F

    move-result v0

    return v0

    .line 99
    :cond_2
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y0:F

    sub-float v0, p1, v0

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->maxHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 100
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y0:F

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->maxHeight()F

    move-result v1

    add-float p1, v0, v1

    goto :goto_0
.end method

.method private getXMinCropSide()F
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->minCropSide:I

    int-to-float v0, v0

    return v0
.end method

.method private getYMinCropSide()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->minCropSide:I

    int-to-float v0, v0

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->eraser:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->eraser:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 51
    return-void
.end method

.method private maxHeight()F
    .locals 4

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->leftSidePadding:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->rightSidePadding:F

    sub-float v1, v2, v3

    .line 267
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->topSidePadding:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->bottomSidePadding:F

    sub-float v0, v2, v3

    .line 268
    .local v0, "height":F
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method private maxWidth()F
    .locals 4

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->leftSidePadding:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->rightSidePadding:F

    sub-float v1, v2, v3

    .line 261
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->topSidePadding:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->bottomSidePadding:F

    sub-float v0, v2, v3

    .line 262
    .local v0, "height":F
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method


# virtual methods
.method public calculatePosition(F)Landroid/graphics/RectF;
    .locals 7
    .param p1, "cropAr"    # F

    .prologue
    .line 255
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->leftSidePadding:F

    iget v4, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->topSidePadding:F

    iget v5, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->rightSidePadding:F

    iget v6, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->bottomSidePadding:F

    invoke-static/range {v0 .. v6}, Lcom/vk/attachpicker/crop/CropUtils;->calculatePosition(FFFFFFF)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getBottomSidePadding()F
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->bottomSidePadding:F

    return v0
.end method

.method public getCenterX()F
    .locals 3

    .prologue
    .line 227
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x0:F

    iget v1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x1:F

    iget v2, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x0:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCenterY()F
    .locals 3

    .prologue
    .line 232
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y0:F

    iget v1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y1:F

    iget v2, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y0:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCropAspectRatio()F
    .locals 3

    .prologue
    .line 222
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x1:F

    iget v1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x0:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y1:F

    iget v2, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y0:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getCropHeight()F
    .locals 2

    .prologue
    .line 242
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y1:F

    iget v1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y0:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getCropRect()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 217
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x0:F

    iget v2, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y0:F

    iget v3, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x1:F

    iget v4, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y1:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getCropScale()F
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 248
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x1:F

    iget v1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x0:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 250
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y1:F

    iget v1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y0:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getCropWidth()F
    .locals 2

    .prologue
    .line 237
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x1:F

    iget v1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x0:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLeftSidePadding()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->leftSidePadding:F

    return v0
.end method

.method public getRightSidePadding()F
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->rightSidePadding:F

    return v0
.end method

.method public getTopSidePadding()F
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->topSidePadding:F

    return v0
.end method

.method public getX0()F
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x0:F

    return v0
.end method

.method public getX1()F
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x1:F

    return v0
.end method

.method public getY0()F
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y0:F

    return v0
.end method

.method public getY1()F
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y1:F

    return v0
.end method

.method public initWithAspectRatio(F)V
    .locals 2
    .param p1, "aspectRatio"    # F

    .prologue
    .line 183
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->calculatePosition(F)Landroid/graphics/RectF;

    move-result-object v0

    .line 184
    .local v0, "rectF":Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iput v1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x0:F

    .line 185
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iput v1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y0:F

    .line 186
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iput v1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x1:F

    .line 187
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iput v1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y1:F

    .line 188
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->invalidate()V

    .line 189
    return-void
.end method

.method public isTouchEnabled()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->touchEnabled:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 161
    iget-object v2, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->overlayBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->overlayBitmap:Landroid/graphics/Bitmap;

    .line 164
    .local v1, "oldBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->overlayBitmap:Landroid/graphics/Bitmap;

    .line 165
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->overlayBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 166
    .local v0, "c":Landroid/graphics/Canvas;
    const v2, -0x19000001

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 167
    iget v2, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x1:F

    iget v3, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x0:F

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    iget v3, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y1:F

    iget v4, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y0:F

    add-float/2addr v3, v4

    div-float/2addr v3, v7

    iget v4, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x1:F

    iget v5, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x0:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    iget v5, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y1:F

    iget v6, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y0:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v5, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->eraser:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 169
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 174
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "oldBitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->overlayBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 176
    return-void
.end method

.method public setBottomSidePadding(F)V
    .locals 0
    .param p1, "bottomSidePadding"    # F

    .prologue
    .line 138
    iput p1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->bottomSidePadding:F

    .line 139
    return-void
.end method

.method public setForcedAspectRatio(FFZ)V
    .locals 1
    .param p1, "cropAspectRatio"    # F
    .param p2, "forcedAspectRatio"    # F
    .param p3, "doSpringback"    # Z

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->initWithAspectRatio(F)V

    .line 55
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->onCropChangeListener:Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 56
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->onCropChangeListener:Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;

    invoke-interface {v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;->onCropChange()V

    .line 57
    iget-object v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->onCropChangeListener:Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;

    invoke-interface {v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;->onCropEnd()V

    .line 59
    :cond_0
    return-void
.end method

.method public setLeftSidePadding(F)V
    .locals 0
    .param p1, "leftSidePadding"    # F

    .prologue
    .line 126
    iput p1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->leftSidePadding:F

    .line 127
    return-void
.end method

.method public setLinesAndTransparentOverlayVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 180
    return-void
.end method

.method public setOnCropChangeListener(Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;)V
    .locals 0
    .param p1, "onCropChangeListener"    # Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->onCropChangeListener:Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;

    .line 193
    return-void
.end method

.method public setRightSidePadding(F)V
    .locals 0
    .param p1, "rightSidePadding"    # F

    .prologue
    .line 134
    iput p1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->rightSidePadding:F

    .line 135
    return-void
.end method

.method public setTopSidePadding(F)V
    .locals 0
    .param p1, "topSidePadding"    # F

    .prologue
    .line 130
    iput p1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->topSidePadding:F

    .line 131
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0
    .param p1, "touchEnabled"    # Z

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->touchEnabled:Z

    .line 277
    return-void
.end method

.method public setX0(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->clampX0(F)F

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x0:F

    .line 107
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->invalidate()V

    .line 108
    return-void
.end method

.method public setX1(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->clampX1(F)F

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->x1:F

    .line 112
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->invalidate()V

    .line 113
    return-void
.end method

.method public setY0(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->clampY0(F)F

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y0:F

    .line 117
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->invalidate()V

    .line 118
    return-void
.end method

.method public setY1(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->clampY1(F)F

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->y1:F

    .line 122
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/CircleCropOverlayView;->invalidate()V

    .line 123
    return-void
.end method
