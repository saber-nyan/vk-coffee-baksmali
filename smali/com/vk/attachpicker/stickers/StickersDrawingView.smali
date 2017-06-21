.class public Lcom/vk/attachpicker/stickers/StickersDrawingView;
.super Landroid/view/View;
.source "StickersDrawingView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/vk/attachpicker/gesture/MoveGestureDetector$OnMoveGestureListener;
.implements Lcom/vk/attachpicker/gesture/RotationGestureDetector$OnRotationGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;,
        Lcom/vk/attachpicker/stickers/StickersDrawingView$OnTextStickerClickListener;
    }
.end annotation


# static fields
.field private static final STATE_INSIDE:I = 0x1

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_OUTSIDE:I = 0x2

.field private static final STATE_WAS_SCALED_OR_ROTATED:I = 0x3


# instance fields
.field private downTime:J

.field private downX:I

.field private downY:I

.field private drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

.field private interceptTouchListener:Landroid/view/View$OnTouchListener;

.field private moveGestureDetector:Lcom/vk/attachpicker/gesture/MoveGestureDetector;

.field private moveView:Lcom/vk/attachpicker/stickers/Sticker;

.field private onStickerMoveListener:Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;

.field private onTextStickerClickListener:Lcom/vk/attachpicker/stickers/StickersDrawingView$OnTextStickerClickListener;

.field private rotationGestureDetector:Lcom/vk/attachpicker/gesture/RotationGestureDetector;

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private state:I

.field private touchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lcom/vk/attachpicker/stickers/StickersDrawingState;

    invoke-direct {v0}, Lcom/vk/attachpicker/stickers/StickersDrawingState;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

    .line 38
    iput v1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->downX:I

    .line 39
    iput v1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->downY:I

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->downTime:J

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->touchEnabled:Z

    .line 47
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Lcom/vk/attachpicker/stickers/StickersDrawingState;

    invoke-direct {v0}, Lcom/vk/attachpicker/stickers/StickersDrawingState;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

    .line 38
    iput v1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->downX:I

    .line 39
    iput v1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->downY:I

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->downTime:J

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->touchEnabled:Z

    .line 52
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, -0x1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Lcom/vk/attachpicker/stickers/StickersDrawingState;

    invoke-direct {v0}, Lcom/vk/attachpicker/stickers/StickersDrawingState;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

    .line 38
    iput v1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->downX:I

    .line 39
    iput v1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->downY:I

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->downTime:J

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->touchEnabled:Z

    .line 57
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/stickers/StickersDrawingView;)Lcom/vk/attachpicker/stickers/StickersDrawingState;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/stickers/StickersDrawingView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    new-instance v0, Lcom/vk/attachpicker/gesture/MoveGestureDetector;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/gesture/MoveGestureDetector;-><init>(Lcom/vk/attachpicker/gesture/MoveGestureDetector$OnMoveGestureListener;)V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveGestureDetector:Lcom/vk/attachpicker/gesture/MoveGestureDetector;

    .line 62
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 63
    new-instance v0, Lcom/vk/attachpicker/gesture/RotationGestureDetector;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/gesture/RotationGestureDetector;-><init>(Lcom/vk/attachpicker/gesture/RotationGestureDetector$OnRotationGestureListener;)V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->rotationGestureDetector:Lcom/vk/attachpicker/gesture/RotationGestureDetector;

    .line 64
    return-void
.end method


# virtual methods
.method public addStickerView(Lcom/vk/attachpicker/stickers/Sticker;)V
    .locals 2
    .param p1, "sticker"    # Lcom/vk/attachpicker/stickers/Sticker;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vk/attachpicker/stickers/StickersDrawingView$1;

    invoke-direct {v1, p0, p1}, Lcom/vk/attachpicker/stickers/StickersDrawingView$1;-><init>(Lcom/vk/attachpicker/stickers/StickersDrawingView;Lcom/vk/attachpicker/stickers/Sticker;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->invalidate()V

    .line 93
    return-void
.end method

.method public getDrawingState()Lcom/vk/attachpicker/stickers/StickersDrawingState;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->copy()Lcom/vk/attachpicker/stickers/StickersDrawingState;

    move-result-object v0

    return-object v0
.end method

.method public getInterceptTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->interceptTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public handleCrop(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "before"    # Landroid/graphics/Matrix;
    .param p2, "after"    # Landroid/graphics/Matrix;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

    invoke-virtual {v0, p1, p2}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->handleCrop(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)V

    .line 97
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->invalidate()V

    .line 98
    return-void
.end method

.method public handleSizeChange(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

    invoke-virtual {v0, p1, p2}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->handleSizeChange(II)V

    .line 102
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->invalidate()V

    .line 103
    return-void
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

    invoke-virtual {v0}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchEnabled()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->touchEnabled:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->draw(Landroid/graphics/Canvas;)V

    .line 117
    return-void
.end method

.method public onMove(FF)V
    .locals 1
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    .line 286
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    invoke-virtual {v0, p1, p2}, Lcom/vk/attachpicker/stickers/Sticker;->translateBy(FF)V

    .line 288
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->invalidate()V

    .line 290
    :cond_0
    return-void
.end method

.method public onRotation(FFF)V
    .locals 2
    .param p1, "delta"    # F
    .param p2, "focalX"    # F
    .param p3, "focalY"    # F

    .prologue
    const/4 v1, 0x3

    .line 273
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    if-eqz v0, :cond_1

    .line 274
    iget v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->state:I

    if-eq v0, v1, :cond_0

    .line 275
    iput v1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->state:I

    .line 276
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->onStickerMoveListener:Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;

    invoke-interface {v0}, Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;->onTwoFingerGesture()V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    neg-float v1, p1

    invoke-virtual {v0, v1, p2, p3}, Lcom/vk/attachpicker/stickers/Sticker;->rotateBy(FFF)V

    .line 280
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->invalidate()V

    .line 282
    :cond_1
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v1, 0x3

    .line 249
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    if-eqz v0, :cond_1

    .line 250
    iget v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->state:I

    if-eq v0, v1, :cond_0

    .line 251
    iput v1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->state:I

    .line 252
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->onStickerMoveListener:Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;

    invoke-interface {v0}, Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;->onTwoFingerGesture()V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/vk/attachpicker/stickers/Sticker;->scaleBy(FFF)V

    .line 256
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->invalidate()V

    .line 258
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 269
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->handleSizeChange(II)V

    .line 124
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->interceptTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->interceptTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 134
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->touchEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 135
    const/16 v19, 0x0

    .line 244
    :goto_0
    return v19

    .line 138
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/vk/attachpicker/util/Utils;->getXOnScreen(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    neg-int v7, v0

    .line 139
    .local v7, "deltaX":I
    invoke-static/range {p0 .. p0}, Lcom/vk/attachpicker/util/Utils;->getYOnScreen(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    neg-int v8, v0

    .line 140
    .local v8, "deltaY":I
    int-to-float v0, v7

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v4, v0, 0xff

    .line 143
    .local v4, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 144
    .local v17, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 146
    .local v18, "y":I
    if-eqz v4, :cond_2

    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v4, v0, :cond_b

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    move-object/from16 v19, v0

    if-nez v19, :cond_b

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->size()I

    move-result v19

    if-lez v19, :cond_9

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->size()I

    move-result v19

    add-int/lit8 v12, v19, -0x1

    .local v12, "i":I
    :goto_1
    if-ltz v12, :cond_3

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 166
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    move-object/from16 v19, v0

    if-nez v19, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    .line 167
    invoke-static/range {p1 .. p1}, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->getFocalX(Landroid/view/MotionEvent;)F

    move-result v10

    .line 168
    .local v10, "focalX":F
    invoke-static/range {p1 .. p1}, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->getFocalY(Landroid/view/MotionEvent;)F

    move-result v11

    .line 170
    .local v11, "focalY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->get(I)Lcom/vk/attachpicker/stickers/Sticker;

    move-result-object v5

    .line 171
    .local v5, "closestSticker":Lcom/vk/attachpicker/stickers/Sticker;
    invoke-virtual {v5, v10, v11}, Lcom/vk/attachpicker/stickers/Sticker;->distance(FF)F

    move-result v9

    .line 173
    .local v9, "distance":F
    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_8

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->get(I)Lcom/vk/attachpicker/stickers/Sticker;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Lcom/vk/attachpicker/stickers/Sticker;->distance(FF)F

    move-result v6

    .line 175
    .local v6, "d":F
    cmpg-float v19, v6, v9

    if-gtz v19, :cond_4

    .line 176
    move v9, v6

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->get(I)Lcom/vk/attachpicker/stickers/Sticker;

    move-result-object v5

    .line 173
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 153
    .end local v5    # "closestSticker":Lcom/vk/attachpicker/stickers/Sticker;
    .end local v6    # "d":F
    .end local v9    # "distance":F
    .end local v10    # "focalX":F
    .end local v11    # "focalY":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->get(I)Lcom/vk/attachpicker/stickers/Sticker;

    move-result-object v16

    .line 155
    .local v16, "v":Lcom/vk/attachpicker/stickers/Sticker;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    .line 156
    .local v15, "pc":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    if-ge v13, v15, :cond_6

    .line 157
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/stickers/Sticker;->isCoordinatesInsideView(FF)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 158
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->getStickers()Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v12, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->invalidate()V

    .line 148
    :cond_6
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_1

    .line 156
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 180
    .end local v13    # "j":I
    .end local v15    # "pc":I
    .end local v16    # "v":Lcom/vk/attachpicker/stickers/Sticker;
    .restart local v5    # "closestSticker":Lcom/vk/attachpicker/stickers/Sticker;
    .restart local v9    # "distance":F
    .restart local v10    # "focalX":F
    .restart local v11    # "focalY":F
    :cond_8
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    .line 183
    .end local v5    # "closestSticker":Lcom/vk/attachpicker/stickers/Sticker;
    .end local v9    # "distance":F
    .end local v10    # "focalX":F
    .end local v11    # "focalY":F
    .end local v12    # "i":I
    :cond_9
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vk/attachpicker/stickers/StickersDrawingView;->downX:I

    .line 184
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vk/attachpicker/stickers/StickersDrawingView;->downY:I

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/vk/attachpicker/stickers/StickersDrawingView;->downTime:J

    .line 186
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vk/attachpicker/stickers/StickersDrawingView;->state:I

    .line 237
    :cond_a
    :goto_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveGestureDetector:Lcom/vk/attachpicker/gesture/MoveGestureDetector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/gesture/MoveGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->rotationGestureDetector:Lcom/vk/attachpicker/gesture/RotationGestureDetector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/gesture/RotationGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_5
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 188
    :cond_b
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v4, v0, :cond_c

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v4, v0, :cond_10

    .line 189
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->downX:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->downY:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->downX:I

    move/from16 v19, v0

    sub-int v19, v19, v17

    .line 190
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    const/16 v20, 0x5

    invoke-static/range {v20 .. v20}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->downY:I

    move/from16 v19, v0

    sub-int v19, v19, v18

    .line 191
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    const/16 v20, 0x5

    invoke-static/range {v20 .. v20}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_d

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->downTime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    const-wide/16 v22, 0x1f4

    cmp-long v19, v20, v22

    if-gez v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/vk/attachpicker/stickers/TextSticker;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->onTextStickerClickListener:Lcom/vk/attachpicker/stickers/StickersDrawingView$OnTextStickerClickListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->onTextStickerClickListener:Lcom/vk/attachpicker/stickers/StickersDrawingView$OnTextStickerClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    move-object/from16 v19, v0

    check-cast v19, Lcom/vk/attachpicker/stickers/TextSticker;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/vk/attachpicker/stickers/StickersDrawingView$OnTextStickerClickListener;->onClick(Lcom/vk/attachpicker/stickers/TextSticker;)V

    .line 200
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->onStickerMoveListener:Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->state:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    .line 201
    if-ltz v17, :cond_e

    if-ltz v18, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->getMeasuredWidth()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->getMeasuredHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_f

    .line 202
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->drawingState:Lcom/vk/attachpicker/stickers/StickersDrawingState;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/vk/attachpicker/stickers/StickersDrawingState;->removeSticker(Lcom/vk/attachpicker/stickers/Sticker;)V

    .line 204
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->invalidate()V

    .line 209
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->onStickerMoveListener:Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;->onUp()V

    .line 210
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    goto/16 :goto_4

    .line 211
    :cond_10
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v4, v0, :cond_a

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->downTime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    const-wide/16 v22, 0x96

    cmp-long v19, v20, v22

    if-lez v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->moveView:Lcom/vk/attachpicker/stickers/Sticker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->state:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 213
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->state:I

    move/from16 v19, v0

    if-nez v19, :cond_11

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->onStickerMoveListener:Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->onStickerMoveListener:Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;->onStartMove()V

    .line 220
    :cond_11
    if-ltz v17, :cond_12

    if-ltz v18, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->getMeasuredWidth()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/vk/attachpicker/stickers/StickersDrawingView;->getMeasuredHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_13

    .line 221
    :cond_12
    const/4 v14, 0x2

    .line 225
    .local v14, "newState":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->state:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v14, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->onStickerMoveListener:Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 226
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v14, v0, :cond_14

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->onStickerMoveListener:Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;->onEnterOutside()V

    .line 231
    :goto_7
    move-object/from16 v0, p0

    iput v14, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->state:I

    goto/16 :goto_4

    .line 223
    .end local v14    # "newState":I
    :cond_13
    const/4 v14, 0x1

    .restart local v14    # "newState":I
    goto :goto_6

    .line 229
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->onStickerMoveListener:Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;->onEnterInside()V

    goto :goto_7

    .line 240
    .end local v14    # "newState":I
    :catch_0
    move-exception v19

    goto/16 :goto_5
.end method

.method public setInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "interceptTouchListener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->interceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 298
    return-void
.end method

.method public setOnStickerMoveListener(Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;)V
    .locals 0
    .param p1, "onStickerMoveListener"    # Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->onStickerMoveListener:Lcom/vk/attachpicker/stickers/StickersDrawingView$OnStickerMoveListener;

    .line 76
    return-void
.end method

.method public setOnTextStickerClickListener(Lcom/vk/attachpicker/stickers/StickersDrawingView$OnTextStickerClickListener;)V
    .locals 0
    .param p1, "onTextStickerClickListener"    # Lcom/vk/attachpicker/stickers/StickersDrawingView$OnTextStickerClickListener;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->onTextStickerClickListener:Lcom/vk/attachpicker/stickers/StickersDrawingView$OnTextStickerClickListener;

    .line 72
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0
    .param p1, "touchEnabled"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/vk/attachpicker/stickers/StickersDrawingView;->touchEnabled:Z

    .line 111
    return-void
.end method
