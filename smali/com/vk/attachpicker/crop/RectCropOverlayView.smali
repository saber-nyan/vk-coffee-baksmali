.class public Lcom/vk/attachpicker/crop/RectCropOverlayView;
.super Lcom/vk/attachpicker/crop/CropOverlayView;
.source "RectCropOverlayView.java"

# interfaces
.implements Lcom/vk/attachpicker/crop/CropAreaProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;
    }
.end annotation


# static fields
.field private static final CORNER_DIFF:I

.field private static final CORNER_SIZE:I

.field private static final CORNER_SIZE_M_DIFF:I

.field private static final DRAG_STATE_BOTTOM:I = 0x8

.field private static final DRAG_STATE_LEFT:I = 0x5

.field private static final DRAG_STATE_LEFT_BOTTOM:I = 0x4

.field private static final DRAG_STATE_LEFT_TOP:I = 0x1

.field private static final DRAG_STATE_NONE:I = 0x0

.field private static final DRAG_STATE_RIGHT:I = 0x7

.field private static final DRAG_STATE_RIGHT_BOTTOM:I = 0x3

.field private static final DRAG_STATE_RIGHT_TOP:I = 0x2

.field private static final DRAG_STATE_TOP:I = 0x6

.field public static final HIDE_DELAY:J = 0x320L

.field private static final LINES_ALPHA:Ljava/lang/String; = "linesAlpha"

.field private static final OVERLAY_COLOR:Ljava/lang/String; = "overlayColor"

.field public static final SIDE_PADDING:I


# instance fields
.field private final BORDER_LINE:I

.field private final COLOR_OVERLAY_SOLID:I

.field private final COLOR_OVERLAY_TRANSPARENT:I

.field private final THIN_LINE:I

.field private animationToVisible:Z

.field private final borderPaint:Landroid/graphics/Paint;

.field private final bottom:Landroid/graphics/RectF;

.field private bottomSidePadding:F

.field private final cornerSize:I

.field private final cornersPaint:Landroid/graphics/Paint;

.field private final darkOverlayPaint:Landroid/graphics/Paint;

.field private final darkOverlayPath:Landroid/graphics/Path;

.field private draggingState:I

.field private forcedAspectRatio:F

.field private final left:Landroid/graphics/RectF;

.field private final leftBottomCorner:Landroid/graphics/RectF;

.field private leftBottomCornerDrawable:Landroid/graphics/drawable/Drawable;

.field private leftSidePadding:F

.field private final leftTopCorner:Landroid/graphics/RectF;

.field private leftTopCornerDrawable:Landroid/graphics/drawable/Drawable;

.field private linesAlpha:F

.field private linesAnimator:Landroid/animation/AnimatorSet;

.field private final linesPaint:Landroid/graphics/Paint;

.field private final linesPath:Landroid/graphics/Path;

.field private final minCropSide:I

.field private onCropChangeListener:Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;

.field private overlayColor:I

.field private final right:Landroid/graphics/RectF;

.field private final rightBottomCorner:Landroid/graphics/RectF;

.field private rightBottomCornerDrawable:Landroid/graphics/drawable/Drawable;

.field private rightSidePadding:F

.field private final rightTopCorner:Landroid/graphics/RectF;

.field private rightTopCornerDrawable:Landroid/graphics/drawable/Drawable;

.field private startedTrackingPointerId:I

.field private final top:Landroid/graphics/RectF;

.field private topSidePadding:F

.field private touchEnabled:Z

.field private touchX:F

.field private touchY:F

.field private x0:F

.field private x1:F

.field private y0:F

.field private y1:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    .line 27
    const/16 v0, 0x28

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_SIZE:I

    .line 28
    const v0, 0x412e6666    # 10.9f

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(F)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_DIFF:I

    .line 29
    sget v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_SIZE:I

    sget v1, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_DIFF:I

    sub-int/2addr v0, v1

    sput v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_SIZE_M_DIFF:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, -0x19000001

    .line 94
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/crop/CropOverlayView;-><init>(Landroid/content/Context;)V

    .line 31
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(F)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->THIN_LINE:I

    .line 32
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->BORDER_LINE:I

    .line 33
    const v0, 0x66ffffff

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->COLOR_OVERLAY_TRANSPARENT:I

    .line 34
    iput v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->COLOR_OVERLAY_SOLID:I

    .line 46
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    .line 47
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->minCropSide:I

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftTopCorner:Landroid/graphics/RectF;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightTopCorner:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftBottomCorner:Landroid/graphics/RectF;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightBottomCorner:Landroid/graphics/RectF;

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->left:Landroid/graphics/RectF;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->top:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->right:Landroid/graphics/RectF;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->bottom:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->darkOverlayPath:Landroid/graphics/Path;

    .line 59
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPath:Landroid/graphics/Path;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->borderPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornersPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->darkOverlayPaint:Landroid/graphics/Paint;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    .line 66
    sget v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    .line 67
    sget v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    .line 68
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->width()I

    move-result v0

    sget v1, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    .line 69
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->width()I

    move-result v0

    sget v1, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    .line 75
    sget v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftSidePadding:F

    .line 76
    sget v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->topSidePadding:F

    .line 77
    sget v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightSidePadding:F

    .line 78
    sget v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->bottomSidePadding:F

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->touchEnabled:Z

    .line 89
    iput v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->overlayColor:I

    .line 95
    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->init()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v2, -0x19000001

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/vk/attachpicker/crop/CropOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(F)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->THIN_LINE:I

    .line 32
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->BORDER_LINE:I

    .line 33
    const v0, 0x66ffffff

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->COLOR_OVERLAY_TRANSPARENT:I

    .line 34
    iput v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->COLOR_OVERLAY_SOLID:I

    .line 46
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    .line 47
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->minCropSide:I

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftTopCorner:Landroid/graphics/RectF;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightTopCorner:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftBottomCorner:Landroid/graphics/RectF;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightBottomCorner:Landroid/graphics/RectF;

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->left:Landroid/graphics/RectF;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->top:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->right:Landroid/graphics/RectF;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->bottom:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->darkOverlayPath:Landroid/graphics/Path;

    .line 59
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPath:Landroid/graphics/Path;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->borderPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornersPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->darkOverlayPaint:Landroid/graphics/Paint;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    .line 66
    sget v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    .line 67
    sget v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    .line 68
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->width()I

    move-result v0

    sget v1, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    .line 69
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->width()I

    move-result v0

    sget v1, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    .line 75
    sget v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftSidePadding:F

    .line 76
    sget v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->topSidePadding:F

    .line 77
    sget v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightSidePadding:F

    .line 78
    sget v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->bottomSidePadding:F

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->touchEnabled:Z

    .line 89
    iput v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->overlayColor:I

    .line 100
    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->init()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v2, -0x19000001

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/vk/attachpicker/crop/CropOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(F)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->THIN_LINE:I

    .line 32
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->BORDER_LINE:I

    .line 33
    const v0, 0x66ffffff

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->COLOR_OVERLAY_TRANSPARENT:I

    .line 34
    iput v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->COLOR_OVERLAY_SOLID:I

    .line 46
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    .line 47
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->minCropSide:I

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftTopCorner:Landroid/graphics/RectF;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightTopCorner:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftBottomCorner:Landroid/graphics/RectF;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightBottomCorner:Landroid/graphics/RectF;

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->left:Landroid/graphics/RectF;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->top:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->right:Landroid/graphics/RectF;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->bottom:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->darkOverlayPath:Landroid/graphics/Path;

    .line 59
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPath:Landroid/graphics/Path;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->borderPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornersPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->darkOverlayPaint:Landroid/graphics/Paint;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    .line 66
    sget v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    .line 67
    sget v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    .line 68
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->width()I

    move-result v0

    sget v1, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    .line 69
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->width()I

    move-result v0

    sget v1, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    .line 75
    sget v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftSidePadding:F

    .line 76
    sget v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->topSidePadding:F

    .line 77
    sget v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightSidePadding:F

    .line 78
    sget v0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->SIDE_PADDING:I

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->bottomSidePadding:F

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->touchEnabled:Z

    .line 89
    iput v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->overlayColor:I

    .line 105
    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->init()V

    .line 106
    return-void
.end method

.method static synthetic access$002(Lcom/vk/attachpicker/crop/RectCropOverlayView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/crop/RectCropOverlayView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private clampX0(F)F
    .locals 3
    .param p1, "v"    # F

    .prologue
    .line 209
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    sub-float/2addr v0, p1

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getXMinCropSide()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 210
    :cond_0
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getXMinCropSide()F

    move-result v1

    sub-float p1, v0, v1

    .line 214
    :cond_1
    :goto_0
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftSidePadding:F

    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightSidePadding:F

    sub-float/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/vk/attachpicker/util/Utils;->clamp(FFF)F

    move-result v0

    return v0

    .line 211
    :cond_2
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    sub-float/2addr v0, p1

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->maxWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 212
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->maxWidth()F

    move-result v1

    sub-float p1, v0, v1

    goto :goto_0
.end method

.method private clampX1(F)F
    .locals 3
    .param p1, "v"    # F

    .prologue
    .line 227
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    sub-float v0, p1, v0

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getXMinCropSide()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 228
    :cond_0
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getXMinCropSide()F

    move-result v1

    add-float p1, v0, v1

    .line 232
    :cond_1
    :goto_0
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftSidePadding:F

    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightSidePadding:F

    sub-float/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/vk/attachpicker/util/Utils;->clamp(FFF)F

    move-result v0

    return v0

    .line 229
    :cond_2
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    sub-float v0, p1, v0

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->maxWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 230
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->maxWidth()F

    move-result v1

    add-float p1, v0, v1

    goto :goto_0
.end method

.method private clampY0(F)F
    .locals 3
    .param p1, "v"    # F

    .prologue
    .line 218
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    sub-float/2addr v0, p1

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getYMinCropSide()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 219
    :cond_0
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getYMinCropSide()F

    move-result v1

    sub-float p1, v0, v1

    .line 223
    :cond_1
    :goto_0
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->topSidePadding:F

    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->bottomSidePadding:F

    sub-float/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/vk/attachpicker/util/Utils;->clamp(FFF)F

    move-result v0

    return v0

    .line 220
    :cond_2
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    sub-float/2addr v0, p1

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->maxHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 221
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->maxHeight()F

    move-result v1

    sub-float p1, v0, v1

    goto :goto_0
.end method

.method private clampY1(F)F
    .locals 3
    .param p1, "v"    # F

    .prologue
    .line 236
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    sub-float v0, p1, v0

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getYMinCropSide()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 237
    :cond_0
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getYMinCropSide()F

    move-result v1

    add-float p1, v0, v1

    .line 241
    :cond_1
    :goto_0
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->topSidePadding:F

    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->bottomSidePadding:F

    sub-float/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/vk/attachpicker/util/Utils;->clamp(FFF)F

    move-result v0

    return v0

    .line 238
    :cond_2
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    sub-float v0, p1, v0

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->maxHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 239
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->maxHeight()F

    move-result v1

    add-float p1, v0, v1

    goto :goto_0
.end method

.method private diffX0Y0(FF)V
    .locals 3
    .param p1, "diffX"    # F
    .param p2, "diffY"    # F

    .prologue
    .line 265
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 266
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setX0(F)V

    .line 267
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    add-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setY0(F)V

    .line 277
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 270
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setX0(F)V

    .line 271
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setY0(F)V

    goto :goto_0

    .line 273
    :cond_1
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    add-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setY0(F)V

    .line 274
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setX0(F)V

    goto :goto_0
.end method

.method private diffX0Y1(FF)V
    .locals 3
    .param p1, "diffX"    # F
    .param p2, "diffY"    # F

    .prologue
    const/4 v2, 0x0

    .line 310
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 311
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setX0(F)V

    .line 312
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    add-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setY1(F)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 315
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setX0(F)V

    .line 316
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 317
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->clampY1(F)F

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    goto :goto_0

    .line 320
    :cond_2
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    add-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setY1(F)V

    .line 321
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 322
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->clampX0(F)F

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    goto :goto_0
.end method

.method private diffX1Y0(FF)V
    .locals 3
    .param p1, "diffX"    # F
    .param p2, "diffY"    # F

    .prologue
    .line 280
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 281
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setX1(F)V

    .line 282
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    add-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setY0(F)V

    .line 292
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 285
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setX1(F)V

    .line 286
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setY0(F)V

    goto :goto_0

    .line 288
    :cond_1
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    add-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setY0(F)V

    .line 289
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setX1(F)V

    goto :goto_0
.end method

.method private diffX1Y1(FF)V
    .locals 3
    .param p1, "diffX"    # F
    .param p2, "diffY"    # F

    .prologue
    .line 295
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 296
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setX1(F)V

    .line 297
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    add-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setY1(F)V

    .line 307
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 300
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setX1(F)V

    .line 301
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setY1(F)V

    goto :goto_0

    .line 303
    :cond_1
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    add-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setY1(F)V

    .line 304
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setX1(F)V

    goto :goto_0
.end method

.method private getXMinCropSide()F
    .locals 2

    .prologue
    .line 185
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 186
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 187
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->minCropSide:I

    int-to-float v0, v0

    .line 192
    :goto_0
    return v0

    .line 189
    :cond_0
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->minCropSide:I

    int-to-float v0, v0

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    mul-float/2addr v0, v1

    goto :goto_0

    .line 192
    :cond_1
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->minCropSide:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method private getYMinCropSide()F
    .locals 2

    .prologue
    .line 197
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 198
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 199
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->minCropSide:I

    int-to-float v0, v0

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    div-float/2addr v0, v1

    .line 204
    :goto_0
    return v0

    .line 201
    :cond_0
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->minCropSide:I

    int-to-float v0, v0

    goto :goto_0

    .line 204
    :cond_1
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->minCropSide:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->BORDER_LINE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->borderPaint:Landroid/graphics/Paint;

    const v1, -0x666667

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPaint:Landroid/graphics/Paint;

    const v1, 0x66ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->THIN_LINE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->darkOverlayPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->overlayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->darkOverlayPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornersPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornersPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020296

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 124
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020297

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 125
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020295

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightBottomCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 126
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020294

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftBottomCornerDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 128
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 129
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightBottomCornerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 130
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftBottomCornerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 131
    return-void
.end method

.method private maxHeight()F
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 625
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftSidePadding:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightSidePadding:F

    sub-float v3, v4, v5

    .line 626
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->topSidePadding:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->bottomSidePadding:F

    sub-float v1, v4, v5

    .line 628
    .local v1, "height":F
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 650
    .end local v1    # "height":F
    :goto_0
    return v1

    .line 631
    .restart local v1    # "height":F
    :cond_0
    div-float v0, v3, v1

    .line 634
    .local v0, "availableAspectRatio":F
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_1

    .line 635
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .local v2, "targetHeight":F
    :goto_1
    move v1, v2

    .line 650
    goto :goto_0

    .line 636
    .end local v2    # "targetHeight":F
    :cond_1
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    .line 637
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_2

    .line 638
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    div-float v4, v3, v4

    float-to-int v4, v4

    int-to-float v2, v4

    .restart local v2    # "targetHeight":F
    goto :goto_1

    .line 640
    .end local v2    # "targetHeight":F
    :cond_2
    move v2, v1

    .restart local v2    # "targetHeight":F
    goto :goto_1

    .line 643
    .end local v2    # "targetHeight":F
    :cond_3
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_4

    .line 644
    move v2, v1

    .restart local v2    # "targetHeight":F
    goto :goto_1

    .line 646
    .end local v2    # "targetHeight":F
    :cond_4
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    div-float v4, v3, v4

    float-to-int v4, v4

    int-to-float v2, v4

    .restart local v2    # "targetHeight":F
    goto :goto_1
.end method

.method private maxWidth()F
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 595
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftSidePadding:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightSidePadding:F

    sub-float v3, v4, v5

    .line 596
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->topSidePadding:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->bottomSidePadding:F

    sub-float v1, v4, v5

    .line 598
    .local v1, "height":F
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 620
    .end local v3    # "width":F
    :goto_0
    return v3

    .line 601
    .restart local v3    # "width":F
    :cond_0
    div-float v0, v3, v1

    .line 604
    .local v0, "availableAspectRatio":F
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_1

    .line 605
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .local v2, "targetWidth":F
    :goto_1
    move v3, v2

    .line 620
    goto :goto_0

    .line 606
    .end local v2    # "targetWidth":F
    :cond_1
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    .line 607
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_2

    .line 608
    move v2, v3

    .restart local v2    # "targetWidth":F
    goto :goto_1

    .line 610
    .end local v2    # "targetWidth":F
    :cond_2
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    mul-float/2addr v4, v1

    float-to-int v4, v4

    int-to-float v2, v4

    .restart local v2    # "targetWidth":F
    goto :goto_1

    .line 613
    .end local v2    # "targetWidth":F
    :cond_3
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_4

    .line 614
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    mul-float/2addr v4, v1

    float-to-int v4, v4

    int-to-float v2, v4

    .restart local v2    # "targetWidth":F
    goto :goto_1

    .line 616
    .end local v2    # "targetWidth":F
    :cond_4
    move v2, v3

    .restart local v2    # "targetWidth":F
    goto :goto_1
.end method

.method private updateRects()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 134
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftTopCorner:Landroid/graphics/RectF;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    iget v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    iget v5, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 139
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightTopCorner:Landroid/graphics/RectF;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    iget v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    iget v5, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 140
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightBottomCorner:Landroid/graphics/RectF;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    iget v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    iget v5, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 141
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftBottomCorner:Landroid/graphics/RectF;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    iget v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    iget v5, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 144
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->left:Landroid/graphics/RectF;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    iget v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 145
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->top:Landroid/graphics/RectF;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    iget v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    iget v5, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 146
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->right:Landroid/graphics/RectF;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    iget v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 147
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->bottom:Landroid/graphics/RectF;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    iget v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    iget v5, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->cornerSize:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0
.end method


# virtual methods
.method public calculatePosition(F)Landroid/graphics/RectF;
    .locals 7
    .param p1, "cropAr"    # F

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getMeasuredWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getMeasuredHeight()I

    move-result v0

    int-to-float v2, v0

    iget v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftSidePadding:F

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->topSidePadding:F

    iget v5, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightSidePadding:F

    iget v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->bottomSidePadding:F

    move v0, p1

    invoke-static/range {v0 .. v6}, Lcom/vk/attachpicker/crop/CropUtils;->calculatePosition(FFFFFFF)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getBottomSidePadding()F
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->bottomSidePadding:F

    return v0
.end method

.method public getCenterX()F
    .locals 3

    .prologue
    .line 557
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCenterY()F
    .locals 3

    .prologue
    .line 562
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCropAspectRatio()F
    .locals 3

    .prologue
    .line 552
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public getCropHeight()F
    .locals 2

    .prologue
    .line 572
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getCropRect()Landroid/graphics/RectF;
    .locals 5

    .prologue
    .line 547
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    iget v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getCropScale()F
    .locals 2

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 578
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 580
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getCropWidth()F
    .locals 2

    .prologue
    .line 567
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getForcedAspectRatio()F
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    return v0
.end method

.method public getLeftSidePadding()F
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftSidePadding:F

    return v0
.end method

.method public getLinesAlpha()F
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesAlpha:F

    return v0
.end method

.method public getOverlayColor()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->overlayColor:I

    return v0
.end method

.method public getRightSidePadding()F
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightSidePadding:F

    return v0
.end method

.method public getTopSidePadding()F
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->topSidePadding:F

    return v0
.end method

.method public getX0()F
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    return v0
.end method

.method public getX1()F
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    return v0
.end method

.method public getY0()F
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    return v0
.end method

.method public getY1()F
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    return v0
.end method

.method public initWithAspectRatio(F)V
    .locals 3
    .param p1, "aspectRatio"    # F

    .prologue
    .line 509
    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 510
    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->calculatePosition(F)Landroid/graphics/RectF;

    move-result-object v0

    .line 514
    .local v0, "rectF":Landroid/graphics/RectF;
    :goto_0
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iput v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    .line 515
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iput v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    .line 516
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iput v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    .line 517
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iput v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    .line 518
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->invalidate()V

    .line 519
    return-void

    .line 512
    .end local v0    # "rectF":Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->calculatePosition(F)Landroid/graphics/RectF;

    move-result-object v0

    .restart local v0    # "rectF":Landroid/graphics/RectF;
    goto :goto_0
.end method

.method public isTouchEnabled()Z
    .locals 1

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->touchEnabled:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->darkOverlayPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 442
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->darkOverlayPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 443
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->darkOverlayPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 444
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->darkOverlayPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 445
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->darkOverlayPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 446
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->darkOverlayPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->darkOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 448
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 449
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v11, v0

    .line 450
    .local v11, "smallSquareWidth":I
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v10, v0

    .line 451
    .local v10, "smallSquareHeight":I
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    int-to-float v2, v11

    add-float/2addr v1, v2

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    int-to-float v2, v11

    add-float/2addr v1, v2

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 452
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    mul-int/lit8 v2, v11, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    mul-int/lit8 v2, v11, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 453
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    int-to-float v3, v10

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    int-to-float v3, v10

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 454
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    mul-int/lit8 v3, v10, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    mul-int/lit8 v3, v10, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 455
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 456
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 458
    iget v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    iget v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    iget v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    iget-object v5, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->borderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 461
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    float-to-int v6, v0

    .line 462
    .local v6, "ix0":I
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    float-to-int v7, v0

    .line 463
    .local v7, "ix1":I
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    float-to-int v8, v0

    .line 464
    .local v8, "iy0":I
    iget v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    float-to-int v9, v0

    .line 466
    .local v9, "iy1":I
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_DIFF:I

    sub-int v1, v6, v1

    sget v2, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_DIFF:I

    sub-int v2, v8, v2

    sget v3, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_SIZE_M_DIFF:I

    add-int/2addr v3, v6

    sget v4, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_SIZE_M_DIFF:I

    add-int/2addr v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 467
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 469
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_SIZE_M_DIFF:I

    sub-int v1, v7, v1

    sget v2, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_DIFF:I

    sub-int v2, v8, v2

    sget v3, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_DIFF:I

    add-int/2addr v3, v7

    sget v4, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_SIZE_M_DIFF:I

    add-int/2addr v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 470
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightTopCornerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 472
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightBottomCornerDrawable:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_SIZE_M_DIFF:I

    sub-int v1, v7, v1

    sget v2, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_SIZE_M_DIFF:I

    sub-int v2, v9, v2

    sget v3, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_DIFF:I

    add-int/2addr v3, v7

    sget v4, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_DIFF:I

    add-int/2addr v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 473
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightBottomCornerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 475
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftBottomCornerDrawable:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_DIFF:I

    sub-int v1, v6, v1

    sget v2, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_SIZE_M_DIFF:I

    sub-int v2, v9, v2

    sget v3, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_SIZE_M_DIFF:I

    add-int/2addr v3, v6

    sget v4, Lcom/vk/attachpicker/crop/RectCropOverlayView;->CORNER_DIFF:I

    add-int/2addr v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 476
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftBottomCornerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 478
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 362
    iget-boolean v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->touchEnabled:Z

    if-nez v6, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v4

    .line 366
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 367
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 369
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_a

    .line 370
    invoke-direct {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->updateRects()V

    .line 371
    iget-object v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftTopCorner:Landroid/graphics/RectF;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 372
    iput v5, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->draggingState:I

    .line 399
    :goto_1
    iget v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->draggingState:I

    if-eqz v6, :cond_0

    .line 402
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->startedTrackingPointerId:I

    .line 403
    iput v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->touchX:F

    .line 404
    iput v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->touchY:F

    .line 405
    invoke-virtual {p0, v5}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setLinesAndTransparentOverlayVisible(Z)V

    move v4, v5

    .line 406
    goto :goto_0

    .line 374
    :cond_2
    iget-object v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightTopCorner:Landroid/graphics/RectF;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 375
    iput v7, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->draggingState:I

    goto :goto_1

    .line 377
    :cond_3
    iget-object v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightBottomCorner:Landroid/graphics/RectF;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 378
    iput v9, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->draggingState:I

    goto :goto_1

    .line 380
    :cond_4
    iget-object v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftBottomCorner:Landroid/graphics/RectF;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 381
    const/4 v6, 0x4

    iput v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->draggingState:I

    goto :goto_1

    .line 383
    :cond_5
    iget-object v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->left:Landroid/graphics/RectF;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 384
    const/4 v6, 0x5

    iput v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->draggingState:I

    goto :goto_1

    .line 386
    :cond_6
    iget-object v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->top:Landroid/graphics/RectF;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 387
    const/4 v6, 0x6

    iput v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->draggingState:I

    goto :goto_1

    .line 389
    :cond_7
    iget-object v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->right:Landroid/graphics/RectF;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 390
    const/4 v6, 0x7

    iput v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->draggingState:I

    goto :goto_1

    .line 392
    :cond_8
    iget-object v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->bottom:Landroid/graphics/RectF;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 393
    const/16 v6, 0x8

    iput v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->draggingState:I

    goto :goto_1

    .line 396
    :cond_9
    iput v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->draggingState:I

    goto :goto_1

    .line 407
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v9, :cond_d

    .line 408
    :cond_b
    iput v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->draggingState:I

    .line 409
    iget-object v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->onCropChangeListener:Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;

    if-eqz v6, :cond_c

    .line 410
    iget-object v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->onCropChangeListener:Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;

    invoke-interface {v6}, Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;->onCropEnd()V

    .line 412
    :cond_c
    invoke-virtual {p0, v4}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setLinesAndTransparentOverlayVisible(Z)V

    move v4, v5

    .line 413
    goto/16 :goto_0

    .line 414
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v7, :cond_0

    iget v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->draggingState:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->startedTrackingPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 415
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->touchX:F

    sub-float v0, v2, v4

    .line 416
    .local v0, "diffX":F
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->touchY:F

    sub-float v1, v3, v4

    .line 418
    .local v1, "diffY":F
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->draggingState:I

    packed-switch v4, :pswitch_data_0

    .line 428
    :cond_e
    :goto_2
    iput v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->touchX:F

    .line 429
    iput v3, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->touchY:F

    .line 430
    iget-object v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->onCropChangeListener:Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;

    if-eqz v4, :cond_f

    .line 431
    iget-object v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->onCropChangeListener:Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;

    invoke-interface {v4}, Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;->onCropChange()V

    :cond_f
    move v4, v5

    .line 433
    goto/16 :goto_0

    .line 419
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->diffX0Y0(FF)V

    goto :goto_2

    .line 420
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->diffX1Y0(FF)V

    goto :goto_2

    .line 421
    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->diffX1Y1(FF)V

    goto :goto_2

    .line 422
    :pswitch_3
    invoke-direct {p0, v0, v1}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->diffX0Y1(FF)V

    goto :goto_2

    .line 423
    :pswitch_4
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_e

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    add-float/2addr v4, v0

    invoke-virtual {p0, v4}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setX0(F)V

    goto :goto_2

    .line 424
    :pswitch_5
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_e

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    add-float/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setY0(F)V

    goto :goto_2

    .line 425
    :pswitch_6
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_e

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    add-float/2addr v4, v0

    invoke-virtual {p0, v4}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setX1(F)V

    goto :goto_2

    .line 426
    :pswitch_7
    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_e

    iget v4, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    add-float/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->setY1(F)V

    goto :goto_2

    .line 418
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setBottomSidePadding(F)V
    .locals 0
    .param p1, "bottomSidePadding"    # F

    .prologue
    .line 341
    iput p1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->bottomSidePadding:F

    .line 342
    return-void
.end method

.method public setForcedAspectRatio(FFZ)V
    .locals 1
    .param p1, "cropAspectRatio"    # F
    .param p2, "forcedAspectRatio"    # F
    .param p3, "doSpringback"    # Z

    .prologue
    .line 174
    iput p2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->forcedAspectRatio:F

    .line 175
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->initWithAspectRatio(F)V

    .line 177
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->onCropChangeListener:Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 178
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->onCropChangeListener:Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;

    invoke-interface {v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;->onCropChange()V

    .line 179
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->onCropChangeListener:Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;

    invoke-interface {v0}, Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;->onCropEnd()V

    .line 182
    :cond_0
    return-void
.end method

.method public setLeftSidePadding(F)V
    .locals 0
    .param p1, "leftSidePadding"    # F

    .prologue
    .line 329
    iput p1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->leftSidePadding:F

    .line 330
    return-void
.end method

.method public setLinesAlpha(F)V
    .locals 0
    .param p1, "linesAlpha"    # F

    .prologue
    .line 155
    iput p1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesAlpha:F

    .line 156
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->invalidate()V

    .line 157
    return-void
.end method

.method public setLinesAndTransparentOverlayVisible(Z)V
    .locals 7
    .param p1, "visible"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 481
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->animationToVisible:Z

    if-eq p1, v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesAnimator:Landroid/animation/AnimatorSet;

    .line 487
    :cond_0
    iput-boolean p1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->animationToVisible:Z

    .line 488
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesAnimator:Landroid/animation/AnimatorSet;

    .line 489
    iget-object v1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesAnimator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v2, v0, [Landroid/animation/Animator;

    const-string/jumbo v3, "linesAlpha"

    new-array v4, v6, [F

    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    aput v0, v4, v5

    .line 490
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v5

    const-string/jumbo v3, "overlayColor"

    new-array v4, v6, [I

    if-eqz p1, :cond_4

    const v0, 0x66ffffff

    :goto_1
    aput v0, v4, v5

    .line 491
    invoke-static {p0, v3, v4}, Lcom/vk/attachpicker/util/AnimationUtils;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v6

    .line 489
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 494
    iget-object v2, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_5

    const-wide/16 v0, 0xc8

    :goto_2
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 495
    if-nez p1, :cond_1

    .line 496
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/vk/attachpicker/crop/RectCropOverlayView$1;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView$1;-><init>(Lcom/vk/attachpicker/crop/RectCropOverlayView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 504
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 505
    :goto_3
    return-void

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->linesAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->animationToVisible:Z

    if-ne p1, v0, :cond_0

    goto :goto_3

    .line 489
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 490
    :cond_4
    const v0, -0x19000001

    goto :goto_1

    .line 494
    :cond_5
    const-wide/16 v0, 0x190

    goto :goto_2
.end method

.method public setOnCropChangeListener(Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;)V
    .locals 0
    .param p1, "onCropChangeListener"    # Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->onCropChangeListener:Lcom/vk/attachpicker/crop/RectCropOverlayView$OnCropChangeListener;

    .line 523
    return-void
.end method

.method public setOverlayColor(I)V
    .locals 1
    .param p1, "overlayColor"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->overlayColor:I

    .line 165
    iget-object v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->darkOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->invalidate()V

    .line 167
    return-void
.end method

.method public setRightSidePadding(F)V
    .locals 0
    .param p1, "rightSidePadding"    # F

    .prologue
    .line 337
    iput p1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->rightSidePadding:F

    .line 338
    return-void
.end method

.method public setTopSidePadding(F)V
    .locals 0
    .param p1, "topSidePadding"    # F

    .prologue
    .line 333
    iput p1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->topSidePadding:F

    .line 334
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0
    .param p1, "touchEnabled"    # Z

    .prologue
    .line 659
    iput-boolean p1, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->touchEnabled:Z

    .line 660
    return-void
.end method

.method public setX0(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->clampX0(F)F

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x0:F

    .line 246
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->invalidate()V

    .line 247
    return-void
.end method

.method public setX1(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->clampX1(F)F

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->x1:F

    .line 251
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->invalidate()V

    .line 252
    return-void
.end method

.method public setY0(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->clampY0(F)F

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y0:F

    .line 256
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->invalidate()V

    .line 257
    return-void
.end method

.method public setY1(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->clampY1(F)F

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/crop/RectCropOverlayView;->y1:F

    .line 261
    invoke-virtual {p0}, Lcom/vk/attachpicker/crop/RectCropOverlayView;->invalidate()V

    .line 262
    return-void
.end method
