.class public Lcom/flask/colorpicker/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;
    }
.end annotation


# static fields
.field private static final STROKE_RATIO:F = 2.0f


# instance fields
.field private alpha:F

.field private alphaPatternPaint:Landroid/graphics/Paint;

.field private alphaSliderViewId:I

.field private backgroundColor:I

.field private colorPreview:Landroid/widget/LinearLayout;

.field private colorSelection:I

.field private colorWheelFill:Landroid/graphics/Paint;

.field private currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

.field private density:I

.field private initialColor:Ljava/lang/Integer;

.field private initialColors:[Ljava/lang/Integer;

.field private lightness:F

.field private lightnessSliderViewId:I

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flask/colorpicker/OnColorSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private renderer:Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

.field private selectorStroke1:Landroid/graphics/Paint;

.field private selectorStroke2:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    .line 29
    iput v1, p0, Lcom/flask/colorpicker/ColorPickerView;->lightness:F

    .line 30
    iput v1, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    .line 31
    iput v3, p0, Lcom/flask/colorpicker/ColorPickerView;->backgroundColor:I

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v2, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    .line 34
    iput v3, p0, Lcom/flask/colorpicker/ColorPickerView;->colorSelection:I

    .line 36
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheelFill:Landroid/graphics/Paint;

    .line 37
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->selectorStroke1:Landroid/graphics/Paint;

    .line 38
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->selectorStroke2:Landroid/graphics/Paint;

    .line 39
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaPatternPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->listeners:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    .line 29
    iput v1, p0, Lcom/flask/colorpicker/ColorPickerView;->lightness:F

    .line 30
    iput v1, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    .line 31
    iput v3, p0, Lcom/flask/colorpicker/ColorPickerView;->backgroundColor:I

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v2, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    .line 34
    iput v3, p0, Lcom/flask/colorpicker/ColorPickerView;->colorSelection:I

    .line 36
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheelFill:Landroid/graphics/Paint;

    .line 37
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->selectorStroke1:Landroid/graphics/Paint;

    .line 38
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->selectorStroke2:Landroid/graphics/Paint;

    .line 39
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaPatternPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->listeners:Ljava/util/ArrayList;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/flask/colorpicker/ColorPickerView;->initWith(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    .line 29
    iput v1, p0, Lcom/flask/colorpicker/ColorPickerView;->lightness:F

    .line 30
    iput v1, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    .line 31
    iput v3, p0, Lcom/flask/colorpicker/ColorPickerView;->backgroundColor:I

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v2, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    .line 34
    iput v3, p0, Lcom/flask/colorpicker/ColorPickerView;->colorSelection:I

    .line 36
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheelFill:Landroid/graphics/Paint;

    .line 37
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->selectorStroke1:Landroid/graphics/Paint;

    .line 38
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->color(I)Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->selectorStroke2:Landroid/graphics/Paint;

    .line 39
    invoke-static {}, Lcom/flask/colorpicker/builder/PaintBuilder;->newPaint()Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flask/colorpicker/builder/PaintBuilder$PaintHolder;->build()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaPatternPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->listeners:Ljava/util/ArrayList;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/flask/colorpicker/ColorPickerView;->initWith(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method private drawColorWheel(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "colorWheelCanvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 115
    iget-object v6, p0, Lcom/flask/colorpicker/ColorPickerView;->renderer:Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    if-nez v6, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v6, v8

    .line 120
    .local v2, "half":F
    const v5, 0x40033333    # 2.05f

    .line 121
    .local v5, "strokeWidth":F
    sub-float v6, v2, v5

    iget v7, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    int-to-float v7, v7

    div-float v7, v2, v7

    sub-float v4, v6, v7

    .line 122
    .local v4, "maxRadius":F
    iget v6, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float v6, v4, v6

    div-float v0, v6, v8

    .line 124
    .local v0, "cSize":F
    iget-object v6, p0, Lcom/flask/colorpicker/ColorPickerView;->renderer:Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    invoke-interface {v6}, Lcom/flask/colorpicker/renderer/ColorWheelRenderer;->getRenderOption()Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;

    move-result-object v1

    .line 125
    .local v1, "colorWheelRenderOption":Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;
    iget v6, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    iput v6, v1, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->density:I

    .line 126
    iput v4, v1, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->maxRadius:F

    .line 127
    iput v0, v1, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->cSize:F

    .line 128
    iput v5, v1, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->strokeWidth:F

    .line 129
    iget v6, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    iput v6, v1, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->alpha:F

    .line 130
    iget v6, p0, Lcom/flask/colorpicker/ColorPickerView;->lightness:F

    iput v6, v1, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->lightness:F

    .line 131
    iput-object p1, v1, Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;->targetCanvas:Landroid/graphics/Canvas;

    .line 133
    iget-object v6, p0, Lcom/flask/colorpicker/ColorPickerView;->renderer:Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    invoke-interface {v6, v1}, Lcom/flask/colorpicker/renderer/ColorWheelRenderer;->initWith(Lcom/flask/colorpicker/renderer/ColorWheelRenderOption;)V

    .line 135
    iget-object v6, p0, Lcom/flask/colorpicker/ColorPickerView;->renderer:Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    invoke-interface {v6}, Lcom/flask/colorpicker/renderer/ColorWheelRenderer;->draw()V

    .line 137
    iget-object v6, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    if-eqz v6, :cond_0

    .line 138
    iget-object v6, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/flask/colorpicker/ColorPickerView;->findNearestByColor(I)Lcom/flask/colorpicker/ColorCircle;

    move-result-object v6

    iput-object v6, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    .line 139
    const/4 v6, 0x3

    new-array v3, v6, [F

    .line 140
    .local v3, "hsv":[F
    iget-object v6, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 141
    iget-object v6, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    iget-object v7, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v7}, Lcom/flask/colorpicker/ColorCircle;->getX()F

    move-result v7

    iget-object v8, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v8}, Lcom/flask/colorpicker/ColorCircle;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8, v3}, Lcom/flask/colorpicker/ColorCircle;->set(FF[F)V

    .line 142
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    goto :goto_0
.end method

.method private findNearestByColor(I)Lcom/flask/colorpicker/ColorCircle;
    .locals 30
    .param p1, "color"    # I

    .prologue
    .line 246
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v3, v0, [F

    .line 247
    .local v3, "hsv":[F
    move/from16 v0, p1

    invoke-static {v0, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 248
    const/4 v11, 0x0

    .line 249
    .local v11, "near":Lcom/flask/colorpicker/ColorCircle;
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 250
    .local v12, "minDiff":D
    const/16 v22, 0x1

    aget v22, v3, v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const/16 v24, 0x0

    aget v24, v3, v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    const-wide v26, 0x4066800000000000L    # 180.0

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v14, v22, v24

    .line 251
    .local v14, "x":D
    const/16 v22, 0x1

    aget v22, v3, v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const/16 v24, 0x0

    aget v24, v3, v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v24, v24, v26

    const-wide v26, 0x4066800000000000L    # 180.0

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v18, v22, v24

    .line 253
    .local v18, "y":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flask/colorpicker/ColorPickerView;->renderer:Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/flask/colorpicker/renderer/ColorWheelRenderer;->getColorCircleList()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_0
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flask/colorpicker/ColorCircle;

    .line 254
    .local v2, "colorCircle":Lcom/flask/colorpicker/ColorCircle;
    invoke-virtual {v2}, Lcom/flask/colorpicker/ColorCircle;->getHsv()[F

    move-result-object v10

    .line 255
    .local v10, "hsv1":[F
    const/16 v23, 0x1

    aget v23, v10, v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const/16 v23, 0x0

    aget v23, v10, v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x400921fb54442d18L    # Math.PI

    mul-double v26, v26, v28

    const-wide v28, 0x4066800000000000L    # 180.0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v16, v24, v26

    .line 256
    .local v16, "x1":D
    const/16 v23, 0x1

    aget v23, v10, v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const/16 v23, 0x0

    aget v23, v10, v23

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x400921fb54442d18L    # Math.PI

    mul-double v26, v26, v28

    const-wide v28, 0x4066800000000000L    # 180.0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v20, v24, v26

    .line 257
    .local v20, "y1":D
    sub-double v6, v14, v16

    .line 258
    .local v6, "dx":D
    sub-double v8, v18, v20

    .line 259
    .local v8, "dy":D
    mul-double v24, v6, v6

    mul-double v26, v8, v8

    add-double v4, v24, v26

    .line 260
    .local v4, "dist":D
    cmpg-double v23, v4, v12

    if-gez v23, :cond_0

    .line 261
    move-wide v12, v4

    .line 262
    move-object v11, v2

    goto :goto_0

    .line 266
    .end local v2    # "colorCircle":Lcom/flask/colorpicker/ColorCircle;
    .end local v4    # "dist":D
    .end local v6    # "dx":D
    .end local v8    # "dy":D
    .end local v10    # "hsv1":[F
    .end local v16    # "x1":D
    .end local v20    # "y1":D
    :cond_1
    return-object v11
.end method

.method private findNearestByPosition(FF)Lcom/flask/colorpicker/ColorCircle;
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 231
    const/4 v1, 0x0

    .line 232
    .local v1, "near":Lcom/flask/colorpicker/ColorCircle;
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 234
    .local v4, "minDist":D
    iget-object v6, p0, Lcom/flask/colorpicker/ColorPickerView;->renderer:Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    invoke-interface {v6}, Lcom/flask/colorpicker/renderer/ColorWheelRenderer;->getColorCircleList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flask/colorpicker/ColorCircle;

    .line 235
    .local v0, "colorCircle":Lcom/flask/colorpicker/ColorCircle;
    invoke-virtual {v0, p1, p2}, Lcom/flask/colorpicker/ColorCircle;->sqDist(FF)D

    move-result-wide v2

    .line 236
    .local v2, "dist":D
    cmpl-double v7, v4, v2

    if-lez v7, :cond_0

    .line 237
    move-wide v4, v2

    .line 238
    move-object v1, v0

    goto :goto_0

    .line 242
    .end local v0    # "colorCircle":Lcom/flask/colorpicker/ColorCircle;
    .end local v2    # "dist":D
    :cond_1
    return-object v1
.end method

.method private initWith(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 64
    sget-object v3, Lcom/vkcoffee/android/R$styleable;->ColorPickerPreference:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 66
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    .line 67
    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    .line 68
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {v3}, Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;->indexOf(I)Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;

    move-result-object v2

    .line 69
    .local v2, "wheelType":Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;
    invoke-static {v2}, Lcom/flask/colorpicker/builder/ColorWheelRendererBuilder;->getRenderer(Lcom/flask/colorpicker/ColorPickerView$WHEEL_TYPE;)Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    move-result-object v0

    .line 71
    .local v0, "renderer":Lcom/flask/colorpicker/renderer/ColorWheelRenderer;
    const/4 v3, 0x6

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaSliderViewId:I

    .line 72
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/flask/colorpicker/ColorPickerView;->lightnessSliderViewId:I

    .line 74
    invoke-virtual {p0, v0}, Lcom/flask/colorpicker/ColorPickerView;->setRenderer(Lcom/flask/colorpicker/renderer/ColorWheelRenderer;)V

    .line 75
    iget v3, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    invoke-virtual {p0, v3}, Lcom/flask/colorpicker/ColorPickerView;->setDensity(I)V

    .line 76
    iget-object v3, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/flask/colorpicker/ColorPickerView;->setInitialColor(I)V

    .line 77
    return-void
.end method

.method private setHighlightedColor(I)V
    .locals 5
    .param p1, "previewNumber"    # I

    .prologue
    .line 348
    iget-object v4, p0, Lcom/flask/colorpicker/ColorPickerView;->colorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 349
    .local v2, "children":I
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/flask/colorpicker/ColorPickerView;->colorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 365
    :cond_0
    return-void

    .line 353
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 354
    iget-object v4, p0, Lcom/flask/colorpicker/ColorPickerView;->colorPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 355
    .local v1, "childView":Landroid/view/View;
    instance-of v4, v1, Landroid/widget/LinearLayout;

    if-nez v4, :cond_2

    .line 353
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 358
    check-cast v0, Landroid/widget/LinearLayout;

    .line 359
    .local v0, "childLayout":Landroid/widget/LinearLayout;
    if-ne v3, p1, :cond_3

    .line 360
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 362
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method private updateColorWheel()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method


# virtual methods
.method public addOnColorSelectedListener(Lcom/flask/colorpicker/OnColorSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/flask/colorpicker/OnColorSelectedListener;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method

.method public getAllColors()[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    return-object v0
.end method

.method public getSelectedColor()I
    .locals 3

    .prologue
    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "color":I
    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    iget v2, p0, Lcom/flask/colorpicker/ColorPickerView;->lightness:F

    invoke-virtual {v1, v2}, Lcom/flask/colorpicker/ColorCircle;->getHsvWithLightness(F)[F

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 274
    :cond_0
    iget v1, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    invoke-static {v1, v0}, Lcom/flask/colorpicker/Utils;->adjustAlpha(FI)I

    move-result v1

    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 83
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 94
    invoke-direct {p0}, Lcom/flask/colorpicker/ColorPickerView;->updateColorWheel()V

    .line 95
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 211
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 212
    iget v2, p0, Lcom/flask/colorpicker/ColorPickerView;->backgroundColor:I

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 213
    invoke-direct {p0, p1}, Lcom/flask/colorpicker/ColorPickerView;->drawColorWheel(Landroid/graphics/Canvas;)V

    .line 216
    iget-object v2, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v2}, Lcom/flask/colorpicker/ColorCircle;->getColor()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/flask/colorpicker/ColorPickerView;->findNearestByColor(I)Lcom/flask/colorpicker/ColorCircle;

    move-result-object v2

    iput-object v2, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    const v3, 0x40033333    # 2.05f

    sub-float v0, v2, v3

    .line 219
    .local v0, "maxRadius":F
    iget v2, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    int-to-float v2, v2

    div-float v2, v0, v2

    div-float v1, v2, v5

    .line 220
    .local v1, "size":F
    iget-object v2, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheelFill:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    iget v4, p0, Lcom/flask/colorpicker/ColorPickerView;->lightness:F

    invoke-virtual {v3, v4}, Lcom/flask/colorpicker/ColorCircle;->getHsvWithLightness(F)[F

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    iget-object v2, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheelFill:Landroid/graphics/Paint;

    iget v3, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 222
    iget-object v2, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v2}, Lcom/flask/colorpicker/ColorCircle;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v3}, Lcom/flask/colorpicker/ColorCircle;->getY()F

    move-result v3

    mul-float v4, v1, v5

    iget-object v5, p0, Lcom/flask/colorpicker/ColorPickerView;->selectorStroke1:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 223
    iget-object v2, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v2}, Lcom/flask/colorpicker/ColorCircle;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v3}, Lcom/flask/colorpicker/ColorCircle;->getY()F

    move-result v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v1

    iget-object v5, p0, Lcom/flask/colorpicker/ColorPickerView;->selectorStroke2:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 225
    iget-object v2, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v2}, Lcom/flask/colorpicker/ColorCircle;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v3}, Lcom/flask/colorpicker/ColorCircle;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/flask/colorpicker/ColorPickerView;->alphaPatternPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 226
    iget-object v2, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v2}, Lcom/flask/colorpicker/ColorCircle;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v3}, Lcom/flask/colorpicker/ColorCircle;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/flask/colorpicker/ColorPickerView;->colorWheelFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 228
    .end local v0    # "maxRadius":F
    .end local v1    # "size":F
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    .line 148
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 149
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 150
    .local v4, "widthMode":I
    const/4 v3, 0x0

    .line 151
    .local v3, "width":I
    if-nez v4, :cond_3

    .line 152
    move v3, p1

    .line 159
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 160
    .local v1, "heightMode":I
    const/4 v0, 0x0

    .line 161
    .local v0, "height":I
    if-nez v1, :cond_5

    .line 162
    move v0, p1

    .line 168
    :cond_1
    :goto_1
    move v2, v3

    .line 169
    .local v2, "squareDimen":I
    if-ge v0, v3, :cond_2

    .line 170
    move v2, v0

    .line 172
    :cond_2
    invoke-virtual {p0, v2, v2}, Lcom/flask/colorpicker/ColorPickerView;->setMeasuredDimension(II)V

    .line 173
    return-void

    .line 153
    .end local v0    # "height":I
    .end local v1    # "heightMode":I
    .end local v2    # "squareDimen":I
    :cond_3
    if-ne v4, v5, :cond_4

    .line 154
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    goto :goto_0

    .line 155
    :cond_4
    if-ne v4, v6, :cond_0

    .line 156
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    goto :goto_0

    .line 163
    .restart local v0    # "height":I
    .restart local v1    # "heightMode":I
    :cond_5
    if-ne v1, v5, :cond_6

    .line 164
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_1

    .line 165
    :cond_6
    if-ne v4, v6, :cond_1

    .line 166
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 178
    invoke-direct {p0}, Lcom/flask/colorpicker/ColorPickerView;->updateColorWheel()V

    .line 179
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 206
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 186
    :pswitch_0
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->getSelectedColor()I

    move-result v1

    .line 187
    .local v1, "selectedColor":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/flask/colorpicker/ColorPickerView;->findNearestByPosition(FF)Lcom/flask/colorpicker/ColorCircle;

    move-result-object v2

    iput-object v2, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    .line 188
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->invalidate()V

    goto :goto_0

    .line 192
    .end local v1    # "selectedColor":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->getSelectedColor()I

    move-result v1

    .line 193
    .restart local v1    # "selectedColor":I
    iget-object v2, p0, Lcom/flask/colorpicker/ColorPickerView;->listeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/flask/colorpicker/ColorPickerView;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flask/colorpicker/OnColorSelectedListener;

    .line 196
    .local v0, "listener":Lcom/flask/colorpicker/OnColorSelectedListener;
    :try_start_0
    invoke-interface {v0, v1}, Lcom/flask/colorpicker/OnColorSelectedListener;->onColorSelected(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 197
    :catch_0
    move-exception v3

    goto :goto_1

    .line 202
    .end local v0    # "listener":Lcom/flask/colorpicker/OnColorSelectedListener;
    :cond_0
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->invalidate()V

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 88
    invoke-direct {p0}, Lcom/flask/colorpicker/ColorPickerView;->updateColorWheel()V

    .line 89
    return-void
.end method

.method public setAlphaValue(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 314
    iput p1, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    .line 315
    iget v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    invoke-static {v0}, Lcom/flask/colorpicker/Utils;->alphaValueAsInt(F)I

    move-result v0

    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    iget v2, p0, Lcom/flask/colorpicker/ColorPickerView;->lightness:F

    invoke-virtual {v1, v2}, Lcom/flask/colorpicker/ColorCircle;->getHsvWithLightness(F)[F

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    .line 316
    invoke-direct {p0}, Lcom/flask/colorpicker/ColorPickerView;->updateColorWheel()V

    .line 317
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->invalidate()V

    .line 318
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/flask/colorpicker/ColorPickerView;->setInitialColor(I)V

    .line 309
    invoke-direct {p0}, Lcom/flask/colorpicker/ColorPickerView;->updateColorWheel()V

    .line 310
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->invalidate()V

    .line 311
    return-void
.end method

.method public setDensity(I)V
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 325
    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/flask/colorpicker/ColorPickerView;->density:I

    .line 326
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->invalidate()V

    .line 327
    return-void
.end method

.method public setInitialColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 288
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 289
    .local v0, "hsv":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 291
    invoke-static {p1}, Lcom/flask/colorpicker/Utils;->getAlphaPercent(I)F

    move-result v1

    iput v1, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    .line 292
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/flask/colorpicker/ColorPickerView;->lightness:F

    .line 293
    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    iget v2, p0, Lcom/flask/colorpicker/ColorPickerView;->colorSelection:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 294
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    .line 295
    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->renderer:Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    invoke-interface {v1}, Lcom/flask/colorpicker/renderer/ColorWheelRenderer;->getColorCircleList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 296
    invoke-direct {p0, p1}, Lcom/flask/colorpicker/ColorPickerView;->findNearestByColor(I)Lcom/flask/colorpicker/ColorCircle;

    move-result-object v1

    iput-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    .line 298
    :cond_0
    return-void
.end method

.method public setInitialColors([Ljava/lang/Integer;I)V
    .locals 2
    .param p1, "colors"    # [Ljava/lang/Integer;
    .param p2, "selectedColor"    # I

    .prologue
    .line 282
    iput-object p1, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    .line 283
    iput p2, p0, Lcom/flask/colorpicker/ColorPickerView;->colorSelection:I

    .line 284
    iget-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    iget v1, p0, Lcom/flask/colorpicker/ColorPickerView;->colorSelection:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flask/colorpicker/ColorPickerView;->setInitialColor(I)V

    .line 285
    return-void
.end method

.method public setLightness(F)V
    .locals 2
    .param p1, "lightness"    # F

    .prologue
    .line 301
    iput p1, p0, Lcom/flask/colorpicker/ColorPickerView;->lightness:F

    .line 302
    iget v0, p0, Lcom/flask/colorpicker/ColorPickerView;->alpha:F

    invoke-static {v0}, Lcom/flask/colorpicker/Utils;->alphaValueAsInt(F)I

    move-result v0

    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->currentColorCircle:Lcom/flask/colorpicker/ColorCircle;

    invoke-virtual {v1, p1}, Lcom/flask/colorpicker/ColorCircle;->getHsvWithLightness(F)[F

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColor:Ljava/lang/Integer;

    .line 303
    invoke-direct {p0}, Lcom/flask/colorpicker/ColorPickerView;->updateColorWheel()V

    .line 304
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->invalidate()V

    .line 305
    return-void
.end method

.method public setRenderer(Lcom/flask/colorpicker/renderer/ColorWheelRenderer;)V
    .locals 0
    .param p1, "renderer"    # Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/flask/colorpicker/ColorPickerView;->renderer:Lcom/flask/colorpicker/renderer/ColorWheelRenderer;

    .line 331
    invoke-virtual {p0}, Lcom/flask/colorpicker/ColorPickerView;->invalidate()V

    .line 332
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 2
    .param p1, "previewNumber"    # I

    .prologue
    .line 335
    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    array-length v1, v1

    if-ge v1, p1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iput p1, p0, Lcom/flask/colorpicker/ColorPickerView;->colorSelection:I

    .line 339
    invoke-direct {p0, p1}, Lcom/flask/colorpicker/ColorPickerView;->setHighlightedColor(I)V

    .line 340
    iget-object v1, p0, Lcom/flask/colorpicker/ColorPickerView;->initialColors:[Ljava/lang/Integer;

    aget-object v0, v1, p1

    .line 341
    .local v0, "color":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/flask/colorpicker/ColorPickerView;->setColor(I)V

    goto :goto_0
.end method
