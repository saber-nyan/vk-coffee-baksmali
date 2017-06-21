.class public Lcom/vkcoffee/android/ui/recyclerview/FastScroller;
.super Landroid/view/View;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/recyclerview/FastScroller$Provider;
    }
.end annotation


# static fields
.field private static final TRACK_SNAP_RANGE:I = 0x5


# instance fields
.field private mHandle:Landroid/graphics/drawable/Drawable;

.field private mList:Landroid/support/v7/widget/RecyclerView;

.field private mPopup:Landroid/widget/TextView;

.field private mPopupShown:Z

.field private mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mScrollLocked:Z

.field private mScrollOffset:I

.field private mTrackColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mTrackPaint:Landroid/graphics/Paint;

.field private mTrackWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mTrackColor:I

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mTrackWidth:I

    .line 39
    iput-object v1, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mScrollOffset:I

    .line 46
    new-instance v0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$1;-><init>(Lcom/vkcoffee/android/ui/recyclerview/FastScroller;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 72
    invoke-direct {p0, p1, v1}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mTrackColor:I

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mTrackWidth:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mScrollOffset:I

    .line 46
    new-instance v0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$1;-><init>(Lcom/vkcoffee/android/ui/recyclerview/FastScroller;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mTrackColor:I

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mTrackWidth:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mScrollOffset:I

    .line 46
    new-instance v0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$1;-><init>(Lcom/vkcoffee/android/ui/recyclerview/FastScroller;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mTrackColor:I

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mTrackWidth:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mScrollOffset:I

    .line 46
    new-instance v0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$1;-><init>(Lcom/vkcoffee/android/ui/recyclerview/FastScroller;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/recyclerview/FastScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/recyclerview/FastScroller;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mScrollLocked:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/recyclerview/FastScroller;F)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/recyclerview/FastScroller;
    .param p1, "x1"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->setPosition(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/recyclerview/FastScroller;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/recyclerview/FastScroller;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mPopup:Landroid/widget/TextView;

    return-object v0
.end method

.method private drawHandle(Landroid/graphics/Canvas;I)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I

    .prologue
    .line 272
    iget-object v6, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 273
    .local v2, "drawableWidth":I
    iget-object v6, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 275
    .local v1, "drawableHeight":I
    sub-int v6, p2, v2

    shr-int/lit8 v3, v6, 0x1

    .line 276
    .local v3, "left":I
    iget v5, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mScrollOffset:I

    .line 277
    .local v5, "top":I
    add-int v4, v3, v2

    .line 278
    .local v4, "right":I
    add-int v0, v5, v1

    .line 280
    .local v0, "bottom":I
    iget-object v6, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3, v5, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 281
    iget-object v6, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 282
    return-void
.end method

.method private drawTrack(Landroid/graphics/Canvas;I)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I

    .prologue
    .line 285
    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mTrackWidth:I

    sub-int v0, p2, v0

    shr-int/lit8 v7, v0, 0x1

    .line 286
    .local v7, "left":I
    const/4 v9, 0x0

    .line 287
    .local v9, "top":I
    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mTrackWidth:I

    add-int v8, v7, v0

    .line 288
    .local v8, "right":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->getHeight()I

    move-result v6

    .line 289
    .local v6, "bottom":I
    int-to-float v1, v7

    const/4 v2, 0x0

    int-to-float v3, v8

    int-to-float v4, v6

    iget-object v5, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mTrackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 290
    return-void
.end method

.method private hidePopup()V
    .locals 4

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mPopupShown:Z

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mPopupShown:Z

    .line 242
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mPopup:Landroid/widget/TextView;

    .line 243
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 244
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$3;-><init>(Lcom/vkcoffee/android/ui/recyclerview/FastScroller;)V

    .line 245
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    .line 266
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 269
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 92
    sget-object v1, Lcom/vkcoffee/android/R$styleable;->FastScroller:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    iget v2, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mTrackColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mTrackColor:I

    .line 95
    const/4 v1, 0x0

    iget v2, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mTrackWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mTrackWidth:I

    .line 97
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 98
    iget-object v1, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mTrackPaint:Landroid/graphics/Paint;

    .line 106
    iget-object v1, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mTrackPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mTrackColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    return-void
.end method

.method private static limit(III)I
    .locals 1
    .param p0, "min"    # I
    .param p1, "max"    # I
    .param p2, "value"    # I

    .prologue
    .line 204
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private setPosition(F)V
    .locals 6
    .param p1, "y"    # F

    .prologue
    const/4 v5, 0x0

    .line 196
    iget-object v2, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mPopup:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 197
    .local v0, "bubbleHeight":I
    iget-object v2, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 198
    .local v1, "handleHeight":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    sub-float v3, p1, v3

    float-to-int v3, v3

    invoke-static {v5, v2, v3}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->limit(III)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mScrollOffset:I

    .line 199
    iget-object v2, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mPopup:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    int-to-float v4, v0

    sub-float v4, p1, v4

    float-to-int v4, v4

    invoke-static {v5, v3, v4}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->limit(III)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 200
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->invalidate()V

    .line 201
    return-void
.end method

.method private setRecyclerViewPosition(F)V
    .locals 7
    .param p1, "y"    # F

    .prologue
    .line 176
    iget-object v4, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mList:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_0

    .line 177
    iget-object v4, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 178
    .local v0, "itemCount":I
    if-eqz v0, :cond_0

    .line 180
    iget v4, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mScrollOffset:I

    if-nez v4, :cond_1

    .line 181
    const/4 v1, 0x0

    .line 187
    .local v1, "proportion":F
    :goto_0
    const/4 v4, 0x0

    add-int/lit8 v5, v0, -0x1

    int-to-float v6, v0

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-static {v4, v5, v6}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->limit(III)I

    move-result v3

    .line 188
    .local v3, "targetPos":I
    iget-object v4, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 189
    iget-object v4, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$Provider;

    .line 190
    .local v2, "segmenter":Lcom/vkcoffee/android/ui/recyclerview/FastScroller$Provider;
    iget-object v4, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mPopup:Landroid/widget/TextView;

    invoke-interface {v2, v3}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$Provider;->getPopupText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .end local v0    # "itemCount":I
    .end local v1    # "proportion":F
    .end local v2    # "segmenter":Lcom/vkcoffee/android/ui/recyclerview/FastScroller$Provider;
    .end local v3    # "targetPos":I
    :cond_0
    return-void

    .line 182
    .restart local v0    # "itemCount":I
    :cond_1
    iget v4, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mScrollOffset:I

    iget-object v5, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    if-lt v4, v5, :cond_2

    .line 183
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "proportion":F
    goto :goto_0

    .line 185
    .end local v1    # "proportion":F
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, p1, v4

    .restart local v1    # "proportion":F
    goto :goto_0
.end method

.method private showPopup()V
    .locals 4

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mPopupShown:Z

    if-nez v0, :cond_0

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mPopupShown:Z

    .line 210
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mPopup:Landroid/widget/TextView;

    .line 211
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 212
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller$2;-><init>(Lcom/vkcoffee/android/ui/recyclerview/FastScroller;)V

    .line 213
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    .line 234
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 140
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 141
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 144
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 119
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 122
    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 132
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 135
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->getWidth()I

    move-result v0

    .line 149
    .local v0, "width":I
    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->drawTrack(Landroid/graphics/Canvas;I)V

    .line 150
    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->drawHandle(Landroid/graphics/Canvas;I)V

    .line 151
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 156
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 172
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 158
    :pswitch_0
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->showPopup()V

    .line 159
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->setPressed(Z)V

    .line 160
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mScrollLocked:Z

    .line 162
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->setPosition(F)V

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->setRecyclerViewPosition(F)V

    goto :goto_0

    .line 167
    :pswitch_2
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->hidePopup()V

    .line 168
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->setPressed(Z)V

    .line 169
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mScrollLocked:Z

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setup(Landroid/support/v7/widget/RecyclerView;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "list"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "popup"    # Landroid/widget/TextView;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mList:Landroid/support/v7/widget/RecyclerView;

    .line 111
    iput-object p2, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mPopup:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mPopup:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 114
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->mHandle:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
