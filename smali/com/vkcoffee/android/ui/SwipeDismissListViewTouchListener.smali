.class public Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;
.super Ljava/lang/Object;
.source "SwipeDismissListViewTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$PendingDismissData;,
        Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$DismissCallbacks;
    }
.end annotation


# instance fields
.field private mAnimationTime:J

.field private mCallbacks:Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$DismissCallbacks;

.field private mDismissAnimationRefCount:I

.field private mDownPosition:I

.field private mDownView:Landroid/view/View;

.field private mDownX:F

.field private mDownY:F

.field private mListView:Landroid/widget/ListView;

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mPaused:Z

.field private mPendingDismisses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$PendingDismissData;",
            ">;"
        }
    .end annotation
.end field

.field private mSlop:I

.field private mSwiping:Z

.field private mSwipingSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$DismissCallbacks;)V
    .locals 4
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "callbacks"    # Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$DismissCallbacks;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v1, 0x1

    iput v1, p0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mViewWidth:I

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;

    .line 90
    const/4 v1, 0x0

    iput v1, p0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    .line 129
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 130
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mSlop:I

    .line 131
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mMinFlingVelocity:I

    .line 132
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mMaxFlingVelocity:I

    .line 133
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mAnimationTime:J

    .line 135
    iput-object p1, p0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    .line 136
    iput-object p2, p0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mCallbacks:Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$DismissCallbacks;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->performDismiss(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;

    .prologue
    .line 76
    iget v0, p0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    return v0
.end method

.method static synthetic access$106(Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;

    .prologue
    .line 76
    iget v0, p0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;)Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$DismissCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mCallbacks:Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$DismissCallbacks;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownPosition:I

    return p1
.end method

.method private performDismiss(Landroid/view/View;I)V
    .locals 6
    .param p1, "dismissView"    # Landroid/view/View;
    .param p2, "dismissPosition"    # I

    .prologue
    const/4 v5, 0x1

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 349
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 351
    .local v2, "originalHeight":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v5, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-wide v4, p0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mAnimationTime:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 353
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$3;

    invoke-direct {v3, p0, v2}, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$3;-><init>(Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 393
    new-instance v3, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$4;-><init>(Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 401
    iget-object v3, p0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mPendingDismisses:Ljava/util/List;

    new-instance v4, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$PendingDismissData;

    invoke-direct {v4, p0, p2, p1}, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$PendingDismissData;-><init>(Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;ILandroid/view/View;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 403
    return-void
.end method


# virtual methods
.method public makeScrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$1;-><init>(Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;)V

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mViewWidth:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ListView;->getWidth()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mViewWidth:I

    .line 176
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    .line 324
    :cond_1
    :goto_0
    const/16 v19, 0x0

    :goto_1
    return v19

    .line 178
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mPaused:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 179
    const/16 v19, 0x0

    goto :goto_1

    .line 185
    :cond_2
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 186
    .local v15, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    .line 187
    .local v6, "childCount":I
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v14, v0, [I

    .line 188
    .local v14, "listViewCoords":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    aget v20, v14, v20

    sub-int v17, v19, v20

    .line 190
    .local v17, "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    aget v20, v14, v20

    sub-int v18, v19, v20

    .line 192
    .local v18, "y":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v6, :cond_3

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 194
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5, v15}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 195
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 196
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    .line 201
    .end local v5    # "child":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownX:F

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownY:F

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownPosition:I

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mCallbacks:Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$DismissCallbacks;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownPosition:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$DismissCallbacks;->canDismiss(I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 206
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 212
    :cond_4
    :goto_3
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 192
    .restart local v5    # "child":Landroid/view/View;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 209
    .end local v5    # "child":Landroid/view/View;
    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    goto :goto_3

    .line 216
    .end local v6    # "childCount":I
    .end local v13    # "i":I
    .end local v14    # "listViewCoords":[I
    .end local v15    # "rect":Landroid/graphics/Rect;
    .end local v17    # "x":I
    .end local v18    # "y":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mSwiping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/16 v20, 0x0

    .line 223
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f800000    # 1.0f

    .line 224
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mAnimationTime:J

    move-wide/from16 v20, v0

    .line 225
    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/16 v20, 0x0

    .line 226
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 228
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    .line 229
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 230
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownX:F

    .line 231
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownY:F

    .line 232
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    .line 233
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownPosition:I

    .line 234
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mSwiping:Z

    goto/16 :goto_0

    .line 239
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownX:F

    move/from16 v20, v0

    sub-float v7, v19, v20

    .line 244
    .local v7, "deltaX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x3e8

    invoke-virtual/range {v19 .. v20}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v16

    .line 247
    .local v16, "velocityX":F
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 248
    .local v2, "absVelocityX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 249
    .local v3, "absVelocityY":F
    const/4 v9, 0x0

    .line 250
    .local v9, "dismiss":Z
    const/4 v10, 0x0

    .line 251
    .local v10, "dismissRight":Z
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mViewWidth:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mSwiping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 252
    const/4 v9, 0x1

    .line 253
    const/16 v19, 0x0

    cmpl-float v19, v7, v19

    if-lez v19, :cond_9

    const/4 v10, 0x1

    .line 260
    :cond_8
    :goto_4
    if-eqz v9, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownPosition:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_10

    .line 262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    .line 263
    .local v12, "downView":Landroid/view/View;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownPosition:I

    .line 264
    .local v11, "downPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDismissAnimationRefCount:I

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v20

    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mViewWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    .line 266
    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/16 v20, 0x0

    .line 267
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mAnimationTime:J

    move-wide/from16 v20, v0

    .line 268
    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    new-instance v20, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v11}, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener$2;-><init>(Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;Landroid/view/View;I)V

    .line 269
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 283
    .end local v11    # "downPosition":I
    .end local v12    # "downView":Landroid/view/View;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    .line 284
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 285
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownX:F

    .line 286
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownY:F

    .line 287
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    .line 288
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownPosition:I

    .line 289
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mSwiping:Z

    goto/16 :goto_0

    .line 253
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 254
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mMinFlingVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v19, v19, v2

    if-gtz v19, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mMaxFlingVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v19, v2, v19

    if-gtz v19, :cond_8

    cmpg-float v19, v3, v2

    if-gez v19, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mSwiping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 257
    const/16 v19, 0x0

    cmpg-float v19, v16, v19

    if-gez v19, :cond_b

    const/16 v19, 0x1

    move/from16 v20, v19

    :goto_7
    const/16 v19, 0x0

    cmpg-float v19, v7, v19

    if-gez v19, :cond_c

    const/16 v19, 0x1

    :goto_8
    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    const/4 v9, 0x1

    .line 258
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v19

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_e

    const/4 v10, 0x1

    :goto_a
    goto/16 :goto_4

    .line 257
    :cond_b
    const/16 v19, 0x0

    move/from16 v20, v19

    goto :goto_7

    :cond_c
    const/16 v19, 0x0

    goto :goto_8

    :cond_d
    const/4 v9, 0x0

    goto :goto_9

    .line 258
    :cond_e
    const/4 v10, 0x0

    goto :goto_a

    .line 265
    .restart local v11    # "downPosition":I
    .restart local v12    # "downView":Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mViewWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    goto/16 :goto_5

    .line 277
    .end local v11    # "downPosition":I
    .end local v12    # "downView":Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/16 v20, 0x0

    .line 278
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/high16 v20, 0x3f800000    # 1.0f

    .line 279
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mAnimationTime:J

    move-wide/from16 v20, v0

    .line 280
    invoke-virtual/range {v19 .. v21}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v19

    const/16 v20, 0x0

    .line 281
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_6

    .line 294
    .end local v2    # "absVelocityX":F
    .end local v3    # "absVelocityY":F
    .end local v7    # "deltaX":F
    .end local v9    # "dismiss":Z
    .end local v10    # "dismissRight":Z
    .end local v16    # "velocityX":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mPaused:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownX:F

    move/from16 v20, v0

    sub-float v7, v19, v20

    .line 300
    .restart local v7    # "deltaX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownY:F

    move/from16 v20, v0

    sub-float v8, v19, v20

    .line 301
    .local v8, "deltaY":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mSlop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_11

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    cmpg-float v19, v19, v20

    if-gez v19, :cond_11

    .line 302
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mSwiping:Z

    .line 303
    const/16 v19, 0x0

    cmpl-float v19, v7, v19

    if-lez v19, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mSlop:I

    move/from16 v19, v0

    :goto_b
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mSwipingSlop:I

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 307
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 309
    .local v4, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v19

    shl-int/lit8 v19, v19, 0x8

    or-int/lit8 v19, v19, 0x3

    .line 308
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 312
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 315
    .end local v4    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mSwiping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mSwipingSlop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v7, v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setTranslationX(F)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x40000000    # 2.0f

    .line 318
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v24

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mViewWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    sub-float v22, v22, v23

    .line 317
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    .line 319
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 303
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mSlop:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    goto/16 :goto_b

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 145
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/SwipeDismissListViewTouchListener;->mPaused:Z

    .line 146
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
