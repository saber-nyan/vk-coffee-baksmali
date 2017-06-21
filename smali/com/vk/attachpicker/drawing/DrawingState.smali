.class public Lcom/vk/attachpicker/drawing/DrawingState;
.super Ljava/lang/Object;
.source "DrawingState.java"


# static fields
.field public static final WIDTH:[F


# instance fields
.field private final backupPaintList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private final backupPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final backupWidthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private baseDrawWidth:F

.field private canvasHeight:F

.field private canvasWidth:F

.field private final paintList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private final pathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpMatrix:Landroid/graphics/Matrix;

.field private final transformMatrix:Landroid/graphics/Matrix;

.field private final widthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vk/attachpicker/drawing/DrawingState;->WIDTH:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40200000    # 2.5f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->transformMatrix:Landroid/graphics/Matrix;

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->tmpMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->backupPathList:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->backupPaintList:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->backupWidthList:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->paintList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->widthList:Ljava/util/ArrayList;

    .line 36
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->realWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iput v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->baseDrawWidth:F

    return-void
.end method

.method private applyTransformMatrix(Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 200
    .local v0, "p":Landroid/graphics/Path;
    invoke-virtual {v0, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 202
    .end local v0    # "p":Landroid/graphics/Path;
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/drawing/DrawingState;->backupPathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 203
    .restart local v0    # "p":Landroid/graphics/Path;
    invoke-virtual {v0, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 205
    .end local v0    # "p":Landroid/graphics/Path;
    :cond_1
    return-void
.end method

.method public static findIntIndex(F)I
    .locals 2
    .param p0, "w"    # F

    .prologue
    .line 17
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/vk/attachpicker/drawing/DrawingState;->WIDTH:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 18
    sget-object v1, Lcom/vk/attachpicker/drawing/DrawingState;->WIDTH:[F

    aget v1, v1, v0

    cmpl-float v1, v1, p0

    if-nez v1, :cond_0

    .line 22
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 17
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addElement(Landroid/graphics/Path;Landroid/graphics/Paint;F)V
    .locals 2
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "widthMultiplier"    # F

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->paintList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->widthList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 171
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->paintList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 172
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->widthList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 173
    return-void
.end method

.method public copy()Lcom/vk/attachpicker/drawing/DrawingState;
    .locals 6

    .prologue
    .line 53
    new-instance v0, Lcom/vk/attachpicker/drawing/DrawingState;

    invoke-direct {v0}, Lcom/vk/attachpicker/drawing/DrawingState;-><init>()V

    .line 55
    .local v0, "drawingState":Lcom/vk/attachpicker/drawing/DrawingState;
    iget-object v3, p0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    .line 56
    .local v2, "p":Landroid/graphics/Path;
    iget-object v4, v0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    .end local v2    # "p":Landroid/graphics/Path;
    :cond_0
    iget-object v3, p0, Lcom/vk/attachpicker/drawing/DrawingState;->paintList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Paint;

    .line 60
    .local v2, "p":Landroid/graphics/Paint;
    iget-object v4, v0, Lcom/vk/attachpicker/drawing/DrawingState;->paintList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    .end local v2    # "p":Landroid/graphics/Paint;
    :cond_1
    iget-object v3, p0, Lcom/vk/attachpicker/drawing/DrawingState;->widthList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 64
    .local v1, "f":Ljava/lang/Float;
    iget-object v4, v0, Lcom/vk/attachpicker/drawing/DrawingState;->widthList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 67
    .end local v1    # "f":Ljava/lang/Float;
    :cond_2
    iget v3, p0, Lcom/vk/attachpicker/drawing/DrawingState;->canvasWidth:F

    iput v3, v0, Lcom/vk/attachpicker/drawing/DrawingState;->canvasWidth:F

    .line 68
    iget v3, p0, Lcom/vk/attachpicker/drawing/DrawingState;->canvasHeight:F

    iput v3, v0, Lcom/vk/attachpicker/drawing/DrawingState;->canvasHeight:F

    .line 70
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/drawing/DrawingState;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 223
    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/drawing/DrawingState;->getPathAt(I)Landroid/graphics/Path;

    move-result-object v2

    .line 224
    .local v2, "path":Landroid/graphics/Path;
    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/drawing/DrawingState;->getPaintAt(I)Landroid/graphics/Paint;

    move-result-object v1

    .line 225
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/drawing/DrawingState;->getWidthAt(I)F

    move-result v3

    .line 227
    .local v3, "widthMultiplier":F
    iget v4, p0, Lcom/vk/attachpicker/drawing/DrawingState;->baseDrawWidth:F

    mul-float/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 229
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    .end local v1    # "paint":Landroid/graphics/Paint;
    .end local v2    # "path":Landroid/graphics/Path;
    .end local v3    # "widthMultiplier":F
    :cond_0
    return-void
.end method

.method public getBaseDrawWidth()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->baseDrawWidth:F

    return v0
.end method

.method public getLastPath()Landroid/graphics/Path;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxWidthMultiplier()F
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->widthList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->widthList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 44
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getMergedPath()Landroid/graphics/Path;
    .locals 3

    .prologue
    .line 162
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 163
    .local v1, "path":Landroid/graphics/Path;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-object v1
.end method

.method public getPaintAt(I)Landroid/graphics/Paint;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->paintList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->paintList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    .line 149
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPathAt(I)Landroid/graphics/Path;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 141
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidthAt(I)F
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->widthList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->widthList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 157
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public handleCropChange(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "before"    # Landroid/graphics/Matrix;
    .param p2, "after"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 190
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 191
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/drawing/DrawingState;->applyTransformMatrix(Landroid/graphics/Matrix;)V

    .line 194
    iput v1, p0, Lcom/vk/attachpicker/drawing/DrawingState;->canvasWidth:F

    .line 195
    iput v1, p0, Lcom/vk/attachpicker/drawing/DrawingState;->canvasHeight:F

    .line 196
    return-void
.end method

.method public handleSizeChange(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v3, 0x0

    .line 208
    iget v1, p0, Lcom/vk/attachpicker/drawing/DrawingState;->canvasWidth:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vk/attachpicker/drawing/DrawingState;->canvasHeight:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    cmpl-float v1, p1, v3

    if-eqz v1, :cond_0

    cmpl-float v1, p2, v3

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/vk/attachpicker/drawing/DrawingState;->transformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 210
    iget v1, p0, Lcom/vk/attachpicker/drawing/DrawingState;->canvasWidth:F

    div-float v1, p1, v1

    iget v2, p0, Lcom/vk/attachpicker/drawing/DrawingState;->canvasHeight:F

    div-float v2, p2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 211
    .local v0, "scale":F
    iget-object v1, p0, Lcom/vk/attachpicker/drawing/DrawingState;->transformMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, v3, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 213
    iget-object v1, p0, Lcom/vk/attachpicker/drawing/DrawingState;->transformMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1}, Lcom/vk/attachpicker/drawing/DrawingState;->applyTransformMatrix(Landroid/graphics/Matrix;)V

    .line 214
    iget v1, p0, Lcom/vk/attachpicker/drawing/DrawingState;->baseDrawWidth:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/vk/attachpicker/drawing/DrawingState;->baseDrawWidth:F

    .line 217
    .end local v0    # "scale":F
    :cond_0
    iput p1, p0, Lcom/vk/attachpicker/drawing/DrawingState;->canvasWidth:F

    .line 218
    iput p2, p0, Lcom/vk/attachpicker/drawing/DrawingState;->canvasHeight:F

    .line 219
    return-void
.end method

.method public postScale(FFF)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "focalX"    # F
    .param p3, "focalY"    # F

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 183
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 184
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/drawing/DrawingState;->applyTransformMatrix(Landroid/graphics/Matrix;)V

    .line 185
    iget v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->baseDrawWidth:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->baseDrawWidth:F

    .line 186
    return-void
.end method

.method public postTranslate(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 176
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 177
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 178
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->tmpMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/drawing/DrawingState;->applyTransformMatrix(Landroid/graphics/Matrix;)V

    .line 179
    return-void
.end method

.method public removeLastElement()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->paintList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->paintList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vk/attachpicker/drawing/DrawingState;->paintList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->widthList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->widthList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vk/attachpicker/drawing/DrawingState;->widthList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 123
    :cond_2
    return-void
.end method

.method public restore()V
    .locals 5

    .prologue
    .line 91
    iget-object v2, p0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 92
    iget-object v2, p0, Lcom/vk/attachpicker/drawing/DrawingState;->backupPathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    .line 93
    .local v1, "p":Landroid/graphics/Path;
    iget-object v3, p0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    .end local v1    # "p":Landroid/graphics/Path;
    :cond_0
    iget-object v2, p0, Lcom/vk/attachpicker/drawing/DrawingState;->paintList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 97
    iget-object v2, p0, Lcom/vk/attachpicker/drawing/DrawingState;->backupPaintList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Paint;

    .line 98
    .local v1, "p":Landroid/graphics/Paint;
    iget-object v3, p0, Lcom/vk/attachpicker/drawing/DrawingState;->paintList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    .end local v1    # "p":Landroid/graphics/Paint;
    :cond_1
    iget-object v2, p0, Lcom/vk/attachpicker/drawing/DrawingState;->widthList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 102
    iget-object v2, p0, Lcom/vk/attachpicker/drawing/DrawingState;->backupWidthList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 103
    .local v0, "f":Ljava/lang/Float;
    iget-object v3, p0, Lcom/vk/attachpicker/drawing/DrawingState;->widthList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 105
    .end local v0    # "f":Ljava/lang/Float;
    :cond_2
    return-void
.end method

.method public save()V
    .locals 5

    .prologue
    .line 74
    iget-object v2, p0, Lcom/vk/attachpicker/drawing/DrawingState;->backupPathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 75
    iget-object v2, p0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    .line 76
    .local v1, "p":Landroid/graphics/Path;
    iget-object v3, p0, Lcom/vk/attachpicker/drawing/DrawingState;->backupPathList:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v1    # "p":Landroid/graphics/Path;
    :cond_0
    iget-object v2, p0, Lcom/vk/attachpicker/drawing/DrawingState;->backupPaintList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 80
    iget-object v2, p0, Lcom/vk/attachpicker/drawing/DrawingState;->paintList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Paint;

    .line 81
    .local v1, "p":Landroid/graphics/Paint;
    iget-object v3, p0, Lcom/vk/attachpicker/drawing/DrawingState;->backupPaintList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    .end local v1    # "p":Landroid/graphics/Paint;
    :cond_1
    iget-object v2, p0, Lcom/vk/attachpicker/drawing/DrawingState;->backupWidthList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 85
    iget-object v2, p0, Lcom/vk/attachpicker/drawing/DrawingState;->widthList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 86
    .local v0, "f":Ljava/lang/Float;
    iget-object v3, p0, Lcom/vk/attachpicker/drawing/DrawingState;->backupWidthList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 88
    .end local v0    # "f":Ljava/lang/Float;
    :cond_2
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vk/attachpicker/drawing/DrawingState;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
