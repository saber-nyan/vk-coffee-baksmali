.class Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;
.super Landroid/view/View;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagOverlayView"
.end annotation


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private corner:Landroid/graphics/Bitmap;

.field private cornerNormal:Landroid/graphics/ColorFilter;

.field private cornerPaint:Landroid/graphics/Paint;

.field private cornerPressed:Landroid/graphics/ColorFilter;

.field private cornerTop:Landroid/graphics/Bitmap;

.field private selectedTag:I

.field private tagWasSelected:Z

.field private tagsBounds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private textPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/vkcoffee/android/PhotoViewer;

.field private tmpRect:Landroid/graphics/RectF;

.field private tmpRect1:Landroid/graphics/Rect;

.field private touchDownX:F

.field private touchDownY:F

.field private touchslop:I


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/PhotoViewer;Landroid/content/Context;)V
    .locals 8
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1487
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    .line 1488
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1477
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect:Landroid/graphics/RectF;

    .line 1479
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tagsBounds:Ljava/util/ArrayList;

    .line 1480
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect1:Landroid/graphics/Rect;

    .line 1481
    const/4 v1, -0x1

    iput v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->selectedTag:I

    .line 1482
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tagWasSelected:Z

    .line 1489
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->textPaint:Landroid/graphics/Paint;

    .line 1490
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->textPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1491
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1492
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->textPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1493
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->bgPaint:Landroid/graphics/Paint;

    .line 1494
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->bgPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1495
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1496
    .local v0, "corner":Landroid/graphics/Path;
    const v1, 0x41496042    # 12.586f

    const v2, 0x40688312    # 3.633f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1497
    const v1, 0x41169fbe    # 9.414f

    const v2, 0x3f1126e9    # 0.567f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1498
    const v1, -0x40b81062    # -0.781f

    const v2, -0x40beb852    # -0.755f

    const v3, -0x3ffd1eb8    # -2.045f

    const v4, -0x40bdf3b6    # -0.758f

    const v5, -0x3fcaf1aa    # -2.829f

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 1499
    const v1, 0x405a8f5c    # 3.415f

    const v2, 0x40688312    # 3.633f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1500
    const v1, 0x40288312    # 2.633f

    const v2, 0x408c6a7f    # 4.388f

    const v3, 0x3f8d70a4    # 1.105f

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v5, 0x0

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1501
    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1502
    const v1, 0x416e51ec    # 14.895f

    const/high16 v2, 0x40a00000    # 5.0f

    const v3, 0x4155e76d    # 13.369f

    const v4, 0x408c8312    # 4.391f

    const v5, 0x41496042    # 12.586f

    const v6, 0x40688312    # 3.633f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1503
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 1504
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect:Landroid/graphics/RectF;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1505
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1506
    .local v6, "m":Landroid/graphics/Matrix;
    sget v1, Lcom/vkcoffee/android/Global;->displayDensity:F

    sget v2, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v6, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1507
    invoke-virtual {v0, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1508
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect:Landroid/graphics/RectF;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1509
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->corner:Landroid/graphics/Bitmap;

    .line 1510
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->corner:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1511
    new-instance v6, Landroid/graphics/Matrix;

    .end local v6    # "m":Landroid/graphics/Matrix;
    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1512
    .restart local v6    # "m":Landroid/graphics/Matrix;
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1513
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->corner:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->corner:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->corner:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->cornerTop:Landroid/graphics/Bitmap;

    .line 1514
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->cornerPaint:Landroid/graphics/Paint;

    .line 1515
    iget-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->cornerPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1516
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, -0xcccccd

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->cornerPressed:Landroid/graphics/ColorFilter;

    .line 1517
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, -0x27000000

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->cornerNormal:Landroid/graphics/ColorFilter;

    .line 1518
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->touchslop:I

    .line 1519
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 42
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1570
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v33

    check-cast v33, Landroid/view/View;

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getScaleX()F

    move-result v25

    .line 1572
    .local v25, "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1573
    const/high16 v33, 0x3f800000    # 1.0f

    div-float v33, v33, v25

    const/high16 v34, 0x3f800000    # 1.0f

    div-float v34, v34, v25

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1574
    const/4 v13, 0x0

    .line 1575
    .local v13, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$000(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/Photo;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkcoffee/android/Photo;->tags:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_0
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_1d

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkcoffee/android/PhotoTag;

    .line 1576
    .local v26, "tag":Lcom/vkcoffee/android/PhotoTag;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoTag;->userName:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 1577
    .local v27, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v30

    .line 1578
    .local v30, "w":F
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/vkcoffee/android/PhotoTag;->x1:D

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    div-double v36, v36, v38

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v38, v0

    mul-double v36, v36, v38

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/vkcoffee/android/PhotoTag;->x2:D

    move-wide/from16 v38, v0

    const-wide/high16 v40, 0x4059000000000000L    # 100.0

    div-double v38, v38, v40

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v40, v0

    mul-double v38, v38, v40

    add-double v36, v36, v38

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    div-double v36, v36, v38

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v38, v0

    mul-double v36, v36, v38

    const/high16 v33, 0x40000000    # 2.0f

    div-float v33, v30, v33

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v38, v0

    sub-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->round(D)J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-float v0, v0

    move/from16 v31, v0

    .line 1579
    .local v31, "x":F
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/vkcoffee/android/PhotoTag;->y2:D

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    div-double v36, v36, v38

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v38, v0

    mul-double v36, v36, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Paint;->ascent()F

    move-result v33

    div-float v33, v33, v25

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v38, v0

    sub-double v36, v36, v38

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v38, v0

    mul-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->round(D)J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-float v0, v0

    move/from16 v32, v0

    .line 1580
    .local v32, "y":F
    const/high16 v33, 0x40000000    # 2.0f

    div-float v33, v30, v33

    add-float v9, v31, v33

    .line 1581
    .local v9, "arrowX":F
    const/16 v33, 0x0

    cmpg-float v33, v31, v33

    if-gez v33, :cond_0

    .line 1582
    const/16 v31, 0x0

    .line 1584
    :cond_0
    add-float v33, v31, v30

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v25

    cmpl-float v33, v33, v35

    if-lez v33, :cond_1

    .line 1585
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v25

    sub-float v31, v33, v30

    .line 1588
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tagsBounds:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    if-gt v0, v13, :cond_6

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tagsBounds:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .local v10, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    :goto_1
    move/from16 v11, v31

    .local v11, "btmX":F
    move/from16 v12, v32

    .local v12, "btmY":F
    move/from16 v28, v31

    .local v28, "topX":F
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/vkcoffee/android/PhotoTag;->y1:D

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    div-double v36, v36, v38

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v38, v0

    mul-double v36, v36, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Paint;->descent()F

    move-result v33

    div-float v33, v33, v25

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v38, v0

    add-double v36, v36, v38

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v38, v0

    mul-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->round(D)J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-float v0, v0

    move/from16 v29, v0

    .line 1594
    .local v29, "topY":F
    const/16 v21, 0x0

    .local v21, "offBtmY":F
    const/16 v23, 0x0

    .local v23, "offTopY":F
    const/16 v20, 0x0

    .local v20, "offBtmX":F
    const/16 v22, 0x0

    .local v22, "offTopX":F
    const/high16 v7, 0x4f000000

    .local v7, "areaBtm":F
    const/high16 v8, 0x4f000000

    .line 1595
    .local v8, "areaTop":F
    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Paint;->ascent()F

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    add-float v35, v35, v32

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    add-float v36, v31, v30

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Paint;->descent()F

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->round(F)I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    add-float v37, v37, v32

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    move/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1596
    const/high16 v33, -0x3f000000    # -8.0f

    invoke-static/range {v33 .. v33}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v33

    const/high16 v35, -0x3f600000    # -5.0f

    invoke-static/range {v35 .. v35}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v35

    move/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 1597
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v33

    div-int/lit8 v33, v33, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->corner:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    sub-int v16, v33, v35

    .line 1598
    .local v16, "maxOffX":I
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v33

    div-int/lit8 v17, v33, 0x2

    .line 1599
    .local v17, "maxOffY":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v25

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->round(F)I

    move-result v18

    .line 1600
    .local v18, "maxX":I
    const/high16 v33, -0x40000000    # -2.0f

    invoke-static/range {v33 .. v33}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v33

    const/high16 v35, -0x40000000    # -2.0f

    invoke-static/range {v35 .. v35}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v35

    move/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 1601
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    if-ge v15, v13, :cond_b

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tagsBounds:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/graphics/Rect;

    .line 1603
    .local v24, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect1:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect1:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 1605
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v35

    if-ge v0, v1, :cond_2

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    const/16 v35, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move/from16 v0, v17

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v33

    if-eqz v33, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    move-result v35

    mul-int v6, v33, v35

    .line 1609
    .local v6, "area":I
    :goto_3
    int-to-float v0, v6

    move/from16 v33, v0

    cmpg-float v33, v33, v7

    if-gez v33, :cond_2

    .line 1610
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    sub-int v33, v33, v35

    move/from16 v0, v17

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v21, v0

    .line 1611
    int-to-float v7, v6

    .line 1614
    .end local v6    # "area":I
    :cond_2
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v35

    if-le v0, v1, :cond_3

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    const/16 v35, 0x0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move/from16 v0, v17

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v36

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v33

    if-eqz v33, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    move-result v35

    mul-int v6, v33, v35

    .line 1618
    .restart local v6    # "area":I
    :goto_4
    int-to-float v0, v6

    move/from16 v33, v0

    cmpg-float v33, v33, v7

    if-gez v33, :cond_3

    .line 1619
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    sub-int v33, v33, v35

    move/from16 v0, v17

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v33

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v21, v0

    .line 1620
    int-to-float v7, v6

    .line 1623
    .end local v6    # "area":I
    :cond_3
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v35

    if-ge v0, v1, :cond_4

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1625
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    sub-int v33, v18, v33

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v0, v16

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v0, v33

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 1626
    .local v19, "off":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v19

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v33

    if-eqz v33, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    move-result v35

    mul-int v6, v33, v35

    .line 1628
    .restart local v6    # "area":I
    :goto_5
    int-to-float v0, v6

    move/from16 v33, v0

    cmpg-float v33, v33, v7

    if-gez v33, :cond_4

    .line 1629
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    .line 1630
    int-to-float v7, v6

    .line 1633
    .end local v6    # "area":I
    .end local v19    # "off":I
    :cond_4
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v35

    if-le v0, v1, :cond_5

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1635
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v0, v16

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v0, v33

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v33

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v19, v0

    .line 1636
    .restart local v19    # "off":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v19

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v33

    if-eqz v33, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    move-result v35

    mul-int v6, v33, v35

    .line 1638
    .restart local v6    # "area":I
    :goto_6
    int-to-float v0, v6

    move/from16 v33, v0

    cmpg-float v33, v33, v7

    if-gez v33, :cond_5

    .line 1639
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    .line 1640
    int-to-float v7, v6

    .line 1601
    .end local v6    # "area":I
    .end local v19    # "off":I
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 1591
    .end local v7    # "areaBtm":F
    .end local v8    # "areaTop":F
    .end local v10    # "bounds":Landroid/graphics/Rect;
    .end local v11    # "btmX":F
    .end local v12    # "btmY":F
    .end local v15    # "j":I
    .end local v16    # "maxOffX":I
    .end local v17    # "maxOffY":I
    .end local v18    # "maxX":I
    .end local v20    # "offBtmX":F
    .end local v21    # "offBtmY":F
    .end local v22    # "offTopX":F
    .end local v23    # "offTopY":F
    .end local v24    # "r":Landroid/graphics/Rect;
    .end local v28    # "topX":F
    .end local v29    # "topY":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tagsBounds:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .restart local v10    # "bounds":Landroid/graphics/Rect;
    goto/16 :goto_1

    .line 1608
    .restart local v7    # "areaBtm":F
    .restart local v8    # "areaTop":F
    .restart local v11    # "btmX":F
    .restart local v12    # "btmY":F
    .restart local v15    # "j":I
    .restart local v16    # "maxOffX":I
    .restart local v17    # "maxOffY":I
    .restart local v18    # "maxX":I
    .restart local v20    # "offBtmX":F
    .restart local v21    # "offBtmY":F
    .restart local v22    # "offTopX":F
    .restart local v23    # "offTopY":F
    .restart local v24    # "r":Landroid/graphics/Rect;
    .restart local v28    # "topX":F
    .restart local v29    # "topY":F
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 1617
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 1627
    .restart local v19    # "off":I
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1637
    :cond_a
    const/4 v6, 0x0

    goto :goto_6

    .line 1645
    .end local v19    # "off":I
    .end local v24    # "r":Landroid/graphics/Rect;
    :cond_b
    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Paint;->ascent()F

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    add-float v35, v35, v29

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    add-float v36, v31, v30

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Paint;->descent()F

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->round(F)I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    add-float v37, v37, v29

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    move/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1646
    const/high16 v33, -0x3f000000    # -8.0f

    invoke-static/range {v33 .. v33}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v33

    const/high16 v35, -0x3f600000    # -5.0f

    invoke-static/range {v35 .. v35}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v35

    move/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 1647
    const/high16 v33, -0x40000000    # -2.0f

    invoke-static/range {v33 .. v33}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v33

    const/high16 v35, -0x40000000    # -2.0f

    invoke-static/range {v35 .. v35}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v35

    move/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 1648
    const/4 v15, 0x0

    :goto_7
    if-ge v15, v13, :cond_14

    .line 1649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tagsBounds:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/graphics/Rect;

    .line 1650
    .restart local v24    # "r":Landroid/graphics/Rect;
    move-object/from16 v0, v24

    invoke-static {v0, v10}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v33

    if-eqz v33, :cond_f

    .line 1651
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v35

    if-ge v0, v1, :cond_c

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    const/16 v35, 0x0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move/from16 v0, v17

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v33

    if-eqz v33, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    move-result v35

    mul-int v6, v33, v35

    .line 1655
    .restart local v6    # "area":I
    :goto_8
    int-to-float v0, v6

    move/from16 v33, v0

    cmpg-float v33, v33, v8

    if-gez v33, :cond_c

    .line 1656
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    sub-int v33, v33, v35

    move/from16 v0, v17

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v23, v0

    .line 1657
    int-to-float v8, v6

    .line 1660
    .end local v6    # "area":I
    :cond_c
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v35

    if-le v0, v1, :cond_d

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    const/16 v35, 0x0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move/from16 v0, v17

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v36

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v33

    if-eqz v33, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    move-result v35

    mul-int v6, v33, v35

    .line 1664
    .restart local v6    # "area":I
    :goto_9
    int-to-float v0, v6

    move/from16 v33, v0

    cmpg-float v33, v33, v8

    if-gez v33, :cond_d

    .line 1665
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    sub-int v33, v33, v35

    move/from16 v0, v17

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v33

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v23, v0

    .line 1666
    int-to-float v8, v6

    .line 1669
    .end local v6    # "area":I
    :cond_d
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v35

    if-ge v0, v1, :cond_e

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1671
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    sub-int v33, v18, v33

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v0, v16

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v0, v33

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 1672
    .restart local v19    # "off":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v19

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v33

    if-eqz v33, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    move-result v35

    mul-int v6, v33, v35

    .line 1674
    .restart local v6    # "area":I
    :goto_a
    int-to-float v0, v6

    move/from16 v33, v0

    cmpg-float v33, v33, v8

    if-gez v33, :cond_e

    .line 1675
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    .line 1676
    int-to-float v8, v6

    .line 1679
    .end local v6    # "area":I
    .end local v19    # "off":I
    :cond_e
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    move/from16 v0, v33

    move/from16 v1, v35

    if-le v0, v1, :cond_f

    .line 1680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1681
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v0, v16

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v35

    move/from16 v0, v33

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v33

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v19, v0

    .line 1682
    .restart local v19    # "off":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v19

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v33

    if-eqz v33, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/vkcoffee/android/PhotoViewer;->access$3000(Lcom/vkcoffee/android/PhotoViewer;)Landroid/graphics/Rect;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    move-result v35

    mul-int v6, v33, v35

    .line 1684
    .restart local v6    # "area":I
    :goto_b
    int-to-float v0, v6

    move/from16 v33, v0

    cmpg-float v33, v33, v8

    if-gez v33, :cond_f

    .line 1685
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    .line 1686
    int-to-float v8, v6

    .line 1648
    .end local v6    # "area":I
    .end local v19    # "off":I
    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_7

    .line 1654
    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 1663
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 1673
    .restart local v19    # "off":I
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 1683
    :cond_13
    const/4 v6, 0x0

    goto :goto_b

    .line 1691
    .end local v19    # "off":I
    .end local v24    # "r":Landroid/graphics/Rect;
    :cond_14
    add-float v28, v28, v22

    .line 1692
    add-float v29, v29, v23

    .line 1693
    add-float v11, v11, v20

    .line 1694
    add-float v12, v12, v21

    .line 1695
    const/4 v7, 0x0

    .line 1696
    const/4 v8, 0x0

    .line 1697
    float-to-int v0, v11

    move/from16 v33, v0

    float-to-int v0, v12

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Paint;->ascent()F

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->round(F)I

    move-result v36

    add-int v35, v35, v36

    add-float v36, v11, v30

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    float-to-int v0, v12

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Paint;->descent()F

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Math;->round(F)I

    move-result v38

    add-int v37, v37, v38

    move/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1698
    const/high16 v33, -0x3f000000    # -8.0f

    invoke-static/range {v33 .. v33}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v33

    const/high16 v35, -0x3f600000    # -5.0f

    invoke-static/range {v35 .. v35}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v35

    move/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 1699
    const/4 v15, 0x0

    :goto_c
    if-ge v15, v13, :cond_16

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect1:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect1:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tagsBounds:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/graphics/Rect;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v33

    if-eqz v33, :cond_15

    .line 1702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect1:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect1:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    move-result v35

    mul-int v33, v33, v35

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v7, v7, v33

    .line 1699
    :cond_15
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 1705
    :cond_16
    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Paint;->ascent()F

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->round(F)I

    move-result v36

    add-int v35, v35, v36

    add-float v36, v28, v30

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Paint;->descent()F

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Math;->round(F)I

    move-result v38

    add-int v37, v37, v38

    move/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1706
    const/high16 v33, -0x3f000000    # -8.0f

    invoke-static/range {v33 .. v33}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v33

    const/high16 v35, -0x3f600000    # -5.0f

    invoke-static/range {v35 .. v35}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v35

    move/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 1707
    const/4 v15, 0x0

    :goto_d
    if-ge v15, v13, :cond_18

    .line 1708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect1:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect1:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tagsBounds:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/graphics/Rect;

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v33

    if-eqz v33, :cond_17

    .line 1710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect1:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect1:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Rect;->height()I

    move-result v35

    mul-int v33, v33, v35

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v8, v8, v33

    .line 1707
    :cond_17
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 1713
    :cond_18
    const/4 v14, 0x0

    .line 1714
    .local v14, "isTop":Z
    cmpg-float v33, v8, v7

    if-gez v33, :cond_19

    .line 1715
    move/from16 v31, v28

    .line 1716
    move/from16 v32, v29

    .line 1717
    const/4 v14, 0x1

    .line 1722
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Paint;->ascent()F

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Math;->round(F)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    add-float v35, v35, v32

    add-float v36, v31, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Paint;->descent()F

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Math;->round(F)I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    add-float v37, v37, v32

    move-object/from16 v0, v33

    move/from16 v1, v31

    move/from16 v2, v35

    move/from16 v3, v36

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    const/high16 v35, -0x3f000000    # -8.0f

    invoke-static/range {v35 .. v35}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/high16 v36, -0x3f600000    # -5.0f

    invoke-static/range {v36 .. v36}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect:Landroid/graphics/RectF;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v35, v0

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v36, v0

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect:Landroid/graphics/RectF;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v37, v0

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    move/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->selectedTag:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-ne v0, v13, :cond_1a

    const v33, -0xcccccd

    :goto_f
    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->cornerPaint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->selectedTag:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-ne v0, v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->cornerPressed:Landroid/graphics/ColorFilter;

    move-object/from16 v33, v0

    :goto_10
    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect:Landroid/graphics/RectF;

    move-object/from16 v33, v0

    const/high16 v35, 0x40000000    # 2.0f

    invoke-static/range {v35 .. v35}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    const/high16 v36, 0x40000000    # 2.0f

    invoke-static/range {v36 .. v36}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v36

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->bgPaint:Landroid/graphics/Paint;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move/from16 v2, v35

    move/from16 v3, v36

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1728
    if-eqz v14, :cond_1c

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->cornerTop:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->corner:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    div-int/lit8 v35, v35, 0x2

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    sub-float v35, v9, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->cornerPaint:Landroid/graphics/Paint;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move/from16 v2, v35

    move/from16 v3, v36

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1733
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v31

    move/from16 v3, v32

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1734
    add-int/lit8 v13, v13, 0x1

    .line 1736
    goto/16 :goto_0

    .line 1719
    :cond_19
    move/from16 v31, v11

    .line 1720
    move/from16 v32, v12

    goto/16 :goto_e

    .line 1725
    :cond_1a
    const/high16 v33, -0x27000000

    goto/16 :goto_f

    .line 1726
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->cornerNormal:Landroid/graphics/ColorFilter;

    move-object/from16 v33, v0

    goto/16 :goto_10

    .line 1731
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->corner:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->corner:Landroid/graphics/Bitmap;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v35

    div-int/lit8 v35, v35, 0x2

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    sub-float v35, v9, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tmpRect:Landroid/graphics/RectF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->corner:Landroid/graphics/Bitmap;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v37

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    sub-float v36, v36, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->cornerPaint:Landroid/graphics/Paint;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move/from16 v2, v35

    move/from16 v3, v36

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_11

    .line 1737
    .end local v7    # "areaBtm":F
    .end local v8    # "areaTop":F
    .end local v9    # "arrowX":F
    .end local v10    # "bounds":Landroid/graphics/Rect;
    .end local v11    # "btmX":F
    .end local v12    # "btmY":F
    .end local v14    # "isTop":Z
    .end local v15    # "j":I
    .end local v16    # "maxOffX":I
    .end local v17    # "maxOffY":I
    .end local v18    # "maxX":I
    .end local v20    # "offBtmX":F
    .end local v21    # "offBtmY":F
    .end local v22    # "offTopX":F
    .end local v23    # "offTopY":F
    .end local v26    # "tag":Lcom/vkcoffee/android/PhotoTag;
    .end local v27    # "text":Ljava/lang/String;
    .end local v28    # "topX":F
    .end local v29    # "topY":F
    .end local v30    # "w":F
    .end local v31    # "x":F
    .end local v32    # "y":F
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1739
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1523
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1524
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tagsBounds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1525
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x1

    .line 1535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 1536
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v1

    .line 1537
    .local v1, "scale":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tagsBounds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1538
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tagsBounds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v2}, Lcom/vkcoffee/android/PhotoViewer;->access$000(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/Photo;

    move-result-object v2

    iget-object v2, v2, Lcom/vkcoffee/android/Photo;->tags:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/PhotoTag;

    iget v2, v2, Lcom/vkcoffee/android/PhotoTag;->userID:I

    if-eqz v2, :cond_0

    .line 1539
    iput v0, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->selectedTag:I

    .line 1540
    iput-boolean v3, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tagWasSelected:Z

    .line 1541
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1542
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->invalidate()V

    .line 1543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->touchDownX:F

    .line 1544
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->touchDownY:F

    move v2, v3

    .line 1565
    .end local v0    # "i":I
    .end local v1    # "scale":F
    :goto_1
    return v2

    .line 1537
    .restart local v0    # "i":I
    .restart local v1    # "scale":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1549
    .end local v0    # "i":I
    .end local v1    # "scale":F
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    iget-boolean v2, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tagWasSelected:Z

    if-eqz v2, :cond_4

    .line 1550
    iget v2, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->selectedTag:I

    if-eq v2, v7, :cond_3

    iget v2, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->touchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->touchslop:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->touchDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->touchslop:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 1551
    :cond_2
    iput v7, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->selectedTag:I

    .line 1552
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->invalidate()V

    :cond_3
    move v2, v3

    .line 1554
    goto :goto_1

    .line 1556
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tagWasSelected:Z

    if-eqz v2, :cond_6

    .line 1557
    iget v2, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->selectedTag:I

    if-eq v2, v7, :cond_5

    .line 1558
    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->playSoundEffect(I)V

    .line 1559
    new-instance v4, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v2}, Lcom/vkcoffee/android/PhotoViewer;->access$000(Lcom/vkcoffee/android/PhotoViewer;)Lcom/vkcoffee/android/Photo;

    move-result-object v2

    iget-object v2, v2, Lcom/vkcoffee/android/Photo;->tags:Ljava/util/ArrayList;

    iget v5, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->selectedTag:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/PhotoTag;

    iget v2, v2, Lcom/vkcoffee/android/PhotoTag;->userID:I

    invoke-direct {v4, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 1561
    :cond_5
    iput v7, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->selectedTag:I

    .line 1562
    invoke-virtual {p0}, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->invalidate()V

    move v2, v3

    .line 1563
    goto :goto_1

    :cond_6
    move v2, v4

    .line 1565
    goto :goto_1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 1529
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1530
    iget-object v0, p0, Lcom/vkcoffee/android/PhotoViewer$TagOverlayView;->tagsBounds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1531
    return-void
.end method
