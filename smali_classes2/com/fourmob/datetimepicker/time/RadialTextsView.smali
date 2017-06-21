.class public Lcom/fourmob/datetimepicker/time/RadialTextsView;
.super Landroid/view/View;
.source "RadialTextsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fourmob/datetimepicker/time/RadialTextsView$InvalidateUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RadialTextsView"


# instance fields
.field private mAmPmCircleRadiusMultiplier:F

.field private mAnimationRadiusMultiplier:F

.field private mCircleRadius:F

.field private mCircleRadiusMultiplier:F

.field mDisappearAnimator:Landroid/animation/ObjectAnimator;

.field private mDrawValuesReady:Z

.field private mHasInnerCircle:Z

.field private mInnerNumbersRadiusMultiplier:F

.field private mInnerTextGridHeights:[F

.field private mInnerTextGridWidths:[F

.field private mInnerTextSize:F

.field private mInnerTextSizeMultiplier:F

.field private mInnerTexts:[Ljava/lang/String;

.field private mInvalidateUpdateListener:Lcom/fourmob/datetimepicker/time/RadialTextsView$InvalidateUpdateListener;

.field private mIs24HourMode:Z

.field private mIsInitialized:Z

.field private mNumbersRadiusMultiplier:F

.field private final mPaint:Landroid/graphics/Paint;

.field mReappearAnimator:Landroid/animation/ObjectAnimator;

.field private mTextGridHeights:[F

.field private mTextGridValuesDirty:Z

.field private mTextGridWidths:[F

.field private mTextSize:F

.field private mTextSizeMultiplier:F

.field private mTexts:[Ljava/lang/String;

.field private mTransitionEndRadiusMultiplier:F

.field private mTransitionMidRadiusMultiplier:F

.field private mTypefaceLight:Landroid/graphics/Typeface;

.field private mTypefaceRegular:Landroid/graphics/Typeface;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mIsInitialized:Z

    .line 78
    return-void
.end method

.method private calculateGridSizes(FFFF[F[F)V
    .locals 6
    .param p1, "numbersRadius"    # F
    .param p2, "xCenter"    # F
    .param p3, "yCenter"    # F
    .param p4, "textSize"    # F
    .param p5, "textGridHeights"    # [F
    .param p6, "textGridWidths"    # [F

    .prologue
    .line 227
    move v0, p1

    .line 229
    .local v0, "offset1":F
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v1, v3, v4

    .line 231
    .local v1, "offset2":F
    const/high16 v3, 0x40000000    # 2.0f

    div-float v2, p1, v3

    .line 232
    .local v2, "offset3":F
    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 234
    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr p3, v3

    .line 236
    const/4 v3, 0x0

    sub-float v4, p3, v0

    aput v4, p5, v3

    .line 237
    const/4 v3, 0x0

    sub-float v4, p2, v0

    aput v4, p6, v3

    .line 238
    const/4 v3, 0x1

    sub-float v4, p3, v1

    aput v4, p5, v3

    .line 239
    const/4 v3, 0x1

    sub-float v4, p2, v1

    aput v4, p6, v3

    .line 240
    const/4 v3, 0x2

    sub-float v4, p3, v2

    aput v4, p5, v3

    .line 241
    const/4 v3, 0x2

    sub-float v4, p2, v2

    aput v4, p6, v3

    .line 242
    const/4 v3, 0x3

    aput p3, p5, v3

    .line 243
    const/4 v3, 0x3

    aput p2, p6, v3

    .line 244
    const/4 v3, 0x4

    add-float v4, p3, v2

    aput v4, p5, v3

    .line 245
    const/4 v3, 0x4

    add-float v4, p2, v2

    aput v4, p6, v3

    .line 246
    const/4 v3, 0x5

    add-float v4, p3, v1

    aput v4, p5, v3

    .line 247
    const/4 v3, 0x5

    add-float v4, p2, v1

    aput v4, p6, v3

    .line 248
    const/4 v3, 0x6

    add-float v4, p3, v0

    aput v4, p5, v3

    .line 249
    const/4 v3, 0x6

    add-float v4, p2, v0

    aput v4, p6, v3

    .line 250
    return-void
.end method

.method private drawTexts(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "texts"    # [Ljava/lang/String;
    .param p5, "textGridWidths"    # [F
    .param p6, "textGridHeights"    # [F

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 257
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 258
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 259
    const/4 v0, 0x0

    aget-object v0, p4, v0

    aget v1, p5, v6

    const/4 v2, 0x0

    aget v2, p6, v2

    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 260
    aget-object v0, p4, v4

    aget v1, p5, v7

    aget v2, p6, v4

    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 261
    aget-object v0, p4, v5

    aget v1, p5, v8

    aget v2, p6, v5

    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 262
    aget-object v0, p4, v6

    const/4 v1, 0x6

    aget v1, p5, v1

    aget v2, p6, v6

    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 263
    aget-object v0, p4, v7

    aget v1, p5, v8

    aget v2, p6, v7

    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 264
    aget-object v0, p4, v8

    aget v1, p5, v7

    aget v2, p6, v8

    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 265
    const/4 v0, 0x6

    aget-object v0, p4, v0

    aget v1, p5, v6

    const/4 v2, 0x6

    aget v2, p6, v2

    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 266
    const/4 v0, 0x7

    aget-object v0, p4, v0

    aget v1, p5, v5

    aget v2, p6, v8

    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 267
    const/16 v0, 0x8

    aget-object v0, p4, v0

    aget v1, p5, v4

    aget v2, p6, v7

    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 268
    const/16 v0, 0x9

    aget-object v0, p4, v0

    const/4 v1, 0x0

    aget v1, p5, v1

    aget v2, p6, v6

    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 269
    const/16 v0, 0xa

    aget-object v0, p4, v0

    aget v1, p5, v4

    aget v2, p6, v5

    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 270
    const/16 v0, 0xb

    aget-object v0, p4, v0

    aget v1, p5, v5

    aget v2, p6, v4

    iget-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 271
    return-void
.end method

.method private renderAnimations()V
    .locals 20

    .prologue
    .line 278
    const v11, 0x3e4ccccd    # 0.2f

    .line 279
    .local v11, "midwayPoint":F
    const/16 v4, 0x1f4

    .line 282
    .local v4, "duration":I
    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v18}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 283
    .local v7, "kf0":Landroid/animation/Keyframe;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTransitionMidRadiusMultiplier:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v11, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 284
    .local v8, "kf1":Landroid/animation/Keyframe;
    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 285
    .local v9, "kf2":Landroid/animation/Keyframe;
    const-string/jumbo v17, "animationRadiusMultiplier"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    const/16 v19, 0x1

    aput-object v8, v18, v19

    const/16 v19, 0x2

    aput-object v9, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 288
    .local v12, "radiusDisappear":Landroid/animation/PropertyValuesHolder;
    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v18}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 289
    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 290
    const-string/jumbo v17, "alpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    const/16 v19, 0x1

    aput-object v8, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 292
    .local v6, "fadeOut":Landroid/animation/PropertyValuesHolder;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v12, v17, v18

    const/16 v18, 0x1

    aput-object v6, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v17

    int-to-long v0, v4

    move-wide/from16 v18, v0

    .line 293
    invoke-virtual/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mDisappearAnimator:Landroid/animation/ObjectAnimator;

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mDisappearAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mInvalidateUpdateListener:Lcom/fourmob/datetimepicker/time/RadialTextsView$InvalidateUpdateListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 298
    const/high16 v2, 0x3e800000    # 0.25f

    .line 299
    .local v2, "delayMultiplier":F
    const/high16 v16, 0x3f800000    # 1.0f

    .line 300
    .local v16, "transitionDurationMultiplier":F
    add-float v15, v16, v2

    .line 301
    .local v15, "totalDurationMultiplier":F
    int-to-float v0, v4

    move/from16 v17, v0

    mul-float v17, v17, v15

    move/from16 v0, v17

    float-to-int v14, v0

    .line 302
    .local v14, "totalDuration":I
    int-to-float v0, v4

    move/from16 v17, v0

    mul-float v17, v17, v2

    int-to-float v0, v14

    move/from16 v18, v0

    div-float v3, v17, v18

    .line 303
    .local v3, "delayPoint":F
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v3

    mul-float v18, v18, v11

    sub-float v11, v17, v18

    .line 305
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 306
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v3, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 307
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTransitionMidRadiusMultiplier:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v11, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 308
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v18}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    .line 309
    .local v10, "kf3":Landroid/animation/Keyframe;
    const-string/jumbo v17, "animationRadiusMultiplier"

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    const/16 v19, 0x1

    aput-object v8, v18, v19

    const/16 v19, 0x2

    aput-object v9, v18, v19

    const/16 v19, 0x3

    aput-object v10, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 312
    .local v13, "radiusReappear":Landroid/animation/PropertyValuesHolder;
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 313
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v3, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 314
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v18}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    .line 315
    const-string/jumbo v17, "alpha"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Keyframe;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    const/16 v19, 0x1

    aput-object v8, v18, v19

    const/16 v19, 0x2

    aput-object v9, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 317
    .local v5, "fadeIn":Landroid/animation/PropertyValuesHolder;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v13, v17, v18

    const/16 v18, 0x1

    aput-object v5, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v17

    int-to-long v0, v14

    move-wide/from16 v18, v0

    .line 318
    invoke-virtual/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mReappearAnimator:Landroid/animation/ObjectAnimator;

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mReappearAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mInvalidateUpdateListener:Lcom/fourmob/datetimepicker/time/RadialTextsView$InvalidateUpdateListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 320
    return-void
.end method


# virtual methods
.method public getDisappearAnimator()Landroid/animation/ObjectAnimator;
    .locals 2

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mDrawValuesReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mDisappearAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 324
    :cond_0
    const-string/jumbo v0, "RadialTextsView"

    const-string/jumbo v1, "RadialTextView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x0

    .line 328
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mDisappearAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public getReappearAnimator()Landroid/animation/ObjectAnimator;
    .locals 2

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mDrawValuesReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mReappearAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 333
    :cond_0
    const-string/jumbo v0, "RadialTextsView"

    const-string/jumbo v1, "RadialTextView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v0, 0x0

    .line 337
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mReappearAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "texts"    # [Ljava/lang/String;
    .param p3, "innerTexts"    # [Ljava/lang/String;
    .param p4, "is24HourMode"    # Z
    .param p5, "disappearsOut"    # Z

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x7

    const/4 v4, 0x1

    .line 82
    iget-boolean v6, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mIsInitialized:Z

    if-eqz v6, :cond_0

    .line 83
    const-string/jumbo v3, "RadialTextsView"

    const-string/jumbo v4, "This RadialTextsView may only be initialized once."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    return-void

    .line 88
    :cond_0
    sget v6, Lcom/fourmob/datetimepicker/R$color;->numbers_text_color:I

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 89
    .local v0, "numbersTextColor":I
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    sget v6, Lcom/fourmob/datetimepicker/R$string;->radial_numbers_typeface:I

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "typefaceFamily":Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTypefaceLight:Landroid/graphics/Typeface;

    .line 92
    sget v6, Lcom/fourmob/datetimepicker/R$string;->sans_serif:I

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "typefaceFamilyRegular":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTypefaceRegular:Landroid/graphics/Typeface;

    .line 94
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 97
    iput-object p2, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTexts:[Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mInnerTexts:[Ljava/lang/String;

    .line 99
    iput-boolean p4, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mIs24HourMode:Z

    .line 100
    if-eqz p3, :cond_1

    move v3, v4

    :cond_1
    iput-boolean v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    .line 103
    if-eqz p4, :cond_3

    .line 104
    sget v3, Lcom/fourmob/datetimepicker/R$string;->circle_radius_multiplier_24HourMode:I

    .line 105
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mCircleRadiusMultiplier:F

    .line 114
    :goto_1
    new-array v3, v8, [F

    iput-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTextGridHeights:[F

    .line 115
    new-array v3, v8, [F

    iput-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTextGridWidths:[F

    .line 116
    iget-boolean v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    if-eqz v3, :cond_4

    .line 117
    sget v3, Lcom/fourmob/datetimepicker/R$string;->numbers_radius_multiplier_outer:I

    .line 118
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mNumbersRadiusMultiplier:F

    .line 119
    sget v3, Lcom/fourmob/datetimepicker/R$string;->text_size_multiplier_outer:I

    .line 120
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTextSizeMultiplier:F

    .line 121
    sget v3, Lcom/fourmob/datetimepicker/R$string;->numbers_radius_multiplier_inner:I

    .line 122
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mInnerNumbersRadiusMultiplier:F

    .line 123
    sget v3, Lcom/fourmob/datetimepicker/R$string;->text_size_multiplier_inner:I

    .line 124
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mInnerTextSizeMultiplier:F

    .line 126
    new-array v3, v8, [F

    iput-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mInnerTextGridHeights:[F

    .line 127
    new-array v3, v8, [F

    iput-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mInnerTextGridWidths:[F

    .line 135
    :goto_2
    iput v9, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mAnimationRadiusMultiplier:F

    .line 136
    const v6, 0x3d4ccccd    # 0.05f

    if-eqz p5, :cond_5

    move v3, v5

    :goto_3
    int-to-float v3, v3

    mul-float/2addr v3, v6

    add-float/2addr v3, v9

    iput v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTransitionMidRadiusMultiplier:F

    .line 137
    const v3, 0x3e99999a    # 0.3f

    if-eqz p5, :cond_2

    move v5, v4

    :cond_2
    int-to-float v5, v5

    mul-float/2addr v3, v5

    add-float/2addr v3, v9

    iput v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTransitionEndRadiusMultiplier:F

    .line 138
    new-instance v3, Lcom/fourmob/datetimepicker/time/RadialTextsView$InvalidateUpdateListener;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/fourmob/datetimepicker/time/RadialTextsView$InvalidateUpdateListener;-><init>(Lcom/fourmob/datetimepicker/time/RadialTextsView;Lcom/fourmob/datetimepicker/time/RadialTextsView$1;)V

    iput-object v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mInvalidateUpdateListener:Lcom/fourmob/datetimepicker/time/RadialTextsView$InvalidateUpdateListener;

    .line 140
    iput-boolean v4, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    .line 141
    iput-boolean v4, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mIsInitialized:Z

    goto/16 :goto_0

    .line 107
    :cond_3
    sget v3, Lcom/fourmob/datetimepicker/R$string;->circle_radius_multiplier:I

    .line 108
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mCircleRadiusMultiplier:F

    .line 109
    sget v3, Lcom/fourmob/datetimepicker/R$string;->ampm_circle_radius_multiplier:I

    .line 110
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mAmPmCircleRadiusMultiplier:F

    goto/16 :goto_1

    .line 129
    :cond_4
    sget v3, Lcom/fourmob/datetimepicker/R$string;->numbers_radius_multiplier_normal:I

    .line 130
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mNumbersRadiusMultiplier:F

    .line 131
    sget v3, Lcom/fourmob/datetimepicker/R$string;->text_size_multiplier_normal:I

    .line 132
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTextSizeMultiplier:F

    goto :goto_2

    :cond_5
    move v3, v4

    .line 136
    goto :goto_3
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x1

    .line 162
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->getWidth()I

    move-result v12

    .line 163
    .local v12, "viewWidth":I
    if-eqz v12, :cond_0

    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mDrawValuesReady:Z

    if-nez v0, :cond_4

    .line 168
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mXCenter:I

    .line 169
    invoke-virtual {p0}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mYCenter:I

    .line 170
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mXCenter:I

    iget v2, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mYCenter:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mCircleRadiusMultiplier:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mCircleRadius:F

    .line 171
    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mIs24HourMode:Z

    if-nez v0, :cond_2

    .line 175
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mAmPmCircleRadiusMultiplier:F

    mul-float v11, v0, v2

    .line 176
    .local v11, "amPmCircleRadius":F
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mYCenter:I

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v11, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mYCenter:I

    .line 179
    .end local v11    # "amPmCircleRadius":F
    :cond_2
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTextSizeMultiplier:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTextSize:F

    .line 180
    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    if-eqz v0, :cond_3

    .line 181
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mInnerTextSizeMultiplier:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mInnerTextSize:F

    .line 185
    :cond_3
    invoke-direct {p0}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->renderAnimations()V

    .line 187
    iput-boolean v4, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    .line 188
    iput-boolean v4, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mDrawValuesReady:Z

    .line 192
    :cond_4
    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    if-eqz v0, :cond_6

    .line 193
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mNumbersRadiusMultiplier:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mAnimationRadiusMultiplier:F

    mul-float v1, v0, v2

    .line 197
    .local v1, "numbersRadius":F
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mXCenter:I

    int-to-float v2, v0

    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mYCenter:I

    int-to-float v3, v0

    iget v4, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTextSize:F

    iget-object v5, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTextGridHeights:[F

    iget-object v6, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTextGridWidths:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->calculateGridSizes(FFFF[F[F)V

    .line 199
    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    if-eqz v0, :cond_5

    .line 201
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mCircleRadius:F

    iget v2, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mInnerNumbersRadiusMultiplier:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mAnimationRadiusMultiplier:F

    mul-float v3, v0, v2

    .line 203
    .local v3, "innerNumbersRadius":F
    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mXCenter:I

    int-to-float v4, v0

    iget v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mYCenter:I

    int-to-float v5, v0

    iget v6, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mInnerTextSize:F

    iget-object v7, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mInnerTextGridHeights:[F

    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mInnerTextGridWidths:[F

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->calculateGridSizes(FFFF[F[F)V

    .line 206
    .end local v3    # "innerNumbersRadius":F
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    .line 210
    .end local v1    # "numbersRadius":F
    :cond_6
    iget v6, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTextSize:F

    iget-object v7, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTypefaceLight:Landroid/graphics/Typeface;

    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTexts:[Ljava/lang/String;

    iget-object v9, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTextGridWidths:[F

    iget-object v10, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTextGridHeights:[F

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->drawTexts(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V

    .line 211
    iget-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mHasInnerCircle:Z

    if-eqz v0, :cond_0

    .line 212
    iget v6, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mInnerTextSize:F

    iget-object v7, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTypefaceRegular:Landroid/graphics/Typeface;

    iget-object v8, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mInnerTexts:[Ljava/lang/String;

    iget-object v9, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mInnerTextGridWidths:[F

    iget-object v10, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mInnerTextGridHeights:[F

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->drawTexts(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V

    goto/16 :goto_0
.end method

.method public setAnimationRadiusMultiplier(F)V
    .locals 1
    .param p1, "animationRadiusMultiplier"    # F

    .prologue
    .line 156
    iput p1, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mAnimationRadiusMultiplier:F

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView;->mTextGridValuesDirty:Z

    .line 158
    return-void
.end method
