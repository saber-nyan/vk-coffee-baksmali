.class public Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;
.super Landroid/view/ViewGroup;
.source "ExpandableBarLayout.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x190

.field private static final SCRIM_MAX_OPACITY:I = 0x66


# instance fields
.field private mBackgroundView:Landroid/view/View;

.field private mExpandButton:Landroid/view/View;

.field private mExpandPanel:Landroid/view/View;

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mListener:Lcom/vkcoffee/android/functions/VoidFloat;

.field private mOpenListener:Lcom/vkcoffee/android/functions/VoidFBool;

.field private mOpened:Z

.field private final mScrimPaint:Landroid/graphics/Paint;

.field private mShadow:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->setWillNotDraw(Z)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 63
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->setWillNotDraw(Z)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 63
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->setWillNotDraw(Z)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 63
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->setWillNotDraw(Z)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 63
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mOpened:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mOpened:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)Lcom/vkcoffee/android/functions/VoidFBool;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mOpenListener:Lcom/vkcoffee/android/functions/VoidFBool;

    return-object v0
.end method


# virtual methods
.method public closePanel()V
    .locals 6

    .prologue
    .line 216
    iget-object v1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    if-nez v1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    const-string/jumbo v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 220
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 221
    iget-object v1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 222
    new-instance v1, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$2;-><init>(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 251
    invoke-static {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 259
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 124
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 125
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mOpened:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v6, v0

    .line 127
    .local v6, "bottom":I
    const/4 v1, 0x0

    int-to-float v2, v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getBottom()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 128
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v0, v7, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    .end local v6    # "bottom":I
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 134
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mShadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 160
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mOpened:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 161
    iget-object v2, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 162
    .local v0, "bottom":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->closePanel()V

    .line 169
    .end local v0    # "bottom":I
    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 140
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mOpened:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mBackgroundView:Landroid/view/View;

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 142
    .local v0, "count":I
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 144
    .local v1, "result":Z
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 155
    .end local v0    # "count":I
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    if-ne p2, v2, :cond_1

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 150
    .restart local v0    # "count":I
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getBottom()I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 152
    .restart local v1    # "result":Z
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 155
    .end local v0    # "count":I
    .end local v1    # "result":Z
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public hasTransientState()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mOpened:Z

    return v0
.end method

.method synthetic lambda$closePanel$586(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 252
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    sub-float v0, v1, v2

    .line 253
    .local v0, "interpolation":F
    iget-object v1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mListener:Lcom/vkcoffee/android/functions/VoidFloat;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mListener:Lcom/vkcoffee/android/functions/VoidFloat;

    invoke-interface {v1, v0}, Lcom/vkcoffee/android/functions/VoidFloat;->f(F)V

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42cc0000    # 102.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 257
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->invalidate()V

    .line 258
    return-void
.end method

.method synthetic lambda$onFinishInflate$584(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->toggle()V

    return-void
.end method

.method synthetic lambda$openPanel$585(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 206
    .local v0, "interpolation":F
    iget-object v1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mListener:Lcom/vkcoffee/android/functions/VoidFloat;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mListener:Lcom/vkcoffee/android/functions/VoidFloat;

    invoke-interface {v1, v0}, Lcom/vkcoffee/android/functions/VoidFloat;->f(F)V

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42cc0000    # 102.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 210
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->invalidate()V

    .line 211
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mBackgroundView:Landroid/view/View;

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandButton:Landroid/view/View;

    .line 71
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandButton:Landroid/view/View;

    invoke-static {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getPaddingLeft()I

    move-result v1

    .line 109
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getPaddingTop()I

    move-result v2

    .line 110
    .local v2, "top":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandButton:Landroid/view/View;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_0
    add-int v0, v2, v3

    .line 111
    .local v0, "buttonBottom":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mBackgroundView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 112
    iget-object v3, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mBackgroundView:Landroid/view/View;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v3, v1, v0, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 114
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 115
    iget-object v3, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v3, v1, v0, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 117
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandButton:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 118
    iget-object v3, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandButton:Landroid/view/View;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v1, v2, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 120
    :cond_2
    return-void

    .line 110
    .end local v0    # "buttonBottom":I
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    .line 89
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 90
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 91
    .local v0, "childMeasureWidth":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->getPaddingBottom()I

    move-result v3

    sub-int v1, v2, v3

    .line 93
    .local v1, "height":I
    iget-object v2, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandButton:Landroid/view/View;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/view/View;->measure(II)V

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 100
    iget-object v2, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/view/View;->measure(II)V

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mBackgroundView:Landroid/view/View;

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/view/View;->measure(II)V

    .line 104
    return-void

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandButton:Landroid/view/View;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public openPanel()V
    .locals 6

    .prologue
    .line 173
    iget-object v1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    if-nez v1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    const-string/jumbo v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mExpandPanel:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 177
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 178
    iget-object v1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 179
    new-instance v1, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$1;-><init>(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 204
    invoke-static {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 212
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public setOpenListener(Lcom/vkcoffee/android/functions/VoidFBool;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkcoffee/android/functions/VoidFBool;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mOpenListener:Lcom/vkcoffee/android/functions/VoidFBool;

    .line 268
    return-void
.end method

.method public setProgressListener(Lcom/vkcoffee/android/functions/VoidFloat;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkcoffee/android/functions/VoidFloat;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mListener:Lcom/vkcoffee/android/functions/VoidFloat;

    .line 264
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->mOpened:Z

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->closePanel()V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/layout/ExpandableBarLayout;->openPanel()V

    goto :goto_0
.end method
