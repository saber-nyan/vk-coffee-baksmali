.class public Lcom/vkcoffee/android/ui/ProfileGiftsView;
.super Landroid/view/ViewGroup;
.source "ProfileGiftsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/ProfileGiftsView$ImageLoader;
    }
.end annotation


# instance fields
.field private mCount:I

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mGifts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/vkcoffee/android/api/models/GiftItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMinHeight:I

.field private mOnClickDelegate:Landroid/view/View$OnClickListener;

.field private mThreads:Ljava/lang/ThreadGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mCount:I

    .line 34
    new-instance v0, Ljava/lang/ThreadGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#Executor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mThreads:Ljava/lang/ThreadGroup;

    .line 35
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 36
    new-instance v0, Lcom/vkcoffee/android/ui/ProfileGiftsView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ProfileGiftsView$1;-><init>(Lcom/vkcoffee/android/ui/ProfileGiftsView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mOnClickDelegate:Landroid/view/View$OnClickListener;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mCount:I

    .line 34
    new-instance v0, Ljava/lang/ThreadGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#Executor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mThreads:Ljava/lang/ThreadGroup;

    .line 35
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 36
    new-instance v0, Lcom/vkcoffee/android/ui/ProfileGiftsView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ProfileGiftsView$1;-><init>(Lcom/vkcoffee/android/ui/ProfileGiftsView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mOnClickDelegate:Landroid/view/View$OnClickListener;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mCount:I

    .line 34
    new-instance v0, Ljava/lang/ThreadGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#Executor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mThreads:Ljava/lang/ThreadGroup;

    .line 35
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 36
    new-instance v0, Lcom/vkcoffee/android/ui/ProfileGiftsView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ProfileGiftsView$1;-><init>(Lcom/vkcoffee/android/ui/ProfileGiftsView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mOnClickDelegate:Landroid/view/View$OnClickListener;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mCount:I

    .line 34
    new-instance v0, Ljava/lang/ThreadGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#Executor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mThreads:Ljava/lang/ThreadGroup;

    .line 35
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 36
    new-instance v0, Lcom/vkcoffee/android/ui/ProfileGiftsView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/ProfileGiftsView$1;-><init>(Lcom/vkcoffee/android/ui/ProfileGiftsView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mOnClickDelegate:Landroid/view/View$OnClickListener;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/ProfileGiftsView;)Ljava/lang/ThreadGroup;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ProfileGiftsView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mThreads:Ljava/lang/ThreadGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/ProfileGiftsView;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/ProfileGiftsView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    if-eqz p2, :cond_0

    .line 60
    sget-object v1, Lcom/vkcoffee/android/R$styleable;->ProfileGiftsView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 62
    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mMinHeight:I

    .line 65
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method private refresh()V
    .locals 5

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->removeAllViews()V

    .line 143
    iget-object v2, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mThreads:Ljava/lang/ThreadGroup;

    invoke-virtual {v2}, Ljava/lang/ThreadGroup;->interrupt()V

    .line 144
    iget-object v2, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mGifts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/models/GiftItem;

    .line 145
    .local v0, "giftItem":Lcom/vkcoffee/android/api/models/GiftItem;
    new-instance v1, Lcom/vkcoffee/android/ui/OverlayImageView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/vkcoffee/android/ui/OverlayImageView;-><init>(Landroid/content/Context;)V

    .line 146
    .local v1, "iv":Lcom/vkcoffee/android/ui/OverlayImageView;
    const v3, 0x7f020101

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/ui/OverlayImageView;->setOverlay(I)V

    .line 147
    iget-object v3, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mOnClickDelegate:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/ui/OverlayImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v3, 0x7f0200fd

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/ui/OverlayImageView;->setImageResource(I)V

    .line 149
    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/OverlayImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/vkcoffee/android/ui/ProfileGiftsView$2;

    invoke-direct {v4, p0, v1, v0}, Lcom/vkcoffee/android/ui/ProfileGiftsView$2;-><init>(Lcom/vkcoffee/android/ui/ProfileGiftsView;Lcom/vkcoffee/android/ui/OverlayImageView;Lcom/vkcoffee/android/api/models/GiftItem;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 157
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 159
    .end local v0    # "giftItem":Lcom/vkcoffee/android/api/models/GiftItem;
    .end local v1    # "iv":Lcom/vkcoffee/android/ui/OverlayImageView;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 126
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->refresh()V

    .line 127
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 120
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mThreads:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->interrupt()V

    .line 121
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 106
    iget-object v4, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mGifts:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->getPaddingLeft()I

    move-result v3

    .line 108
    .local v3, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mCount:I

    if-ge v1, v4, :cond_0

    .line 109
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v2, v3, v4

    .line 111
    .local v2, "newOffset":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 112
    move v3, v2

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "newOffset":I
    .end local v3    # "offset":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v11, 0x0

    .line 74
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 75
    .local v7, "width":I
    iget v2, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mMinHeight:I

    .line 77
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->getPaddingRight()I

    move-result v12

    add-int v8, v10, v12

    .line 78
    .local v8, "xPadding":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->getPaddingBottom()I

    move-result v10

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->getPaddingTop()I

    move-result v12

    add-int v9, v10, v12

    .line 80
    .local v9, "yPadding":I
    sub-int v6, v7, v8

    .line 81
    .local v6, "pureWidth":I
    sub-int v5, v2, v9

    .line 84
    .local v5, "pureHeight":I
    div-int v4, v6, v5

    .line 87
    .local v4, "maxCount":I
    div-int v0, v6, v4

    .line 88
    .local v0, "childSize":I
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 90
    .local v1, "childSpec":I
    iget-object v10, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mGifts:Ljava/util/List;

    if-nez v10, :cond_0

    move v10, v11

    :goto_0
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mCount:I

    .line 91
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->getChildCount()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 92
    iget v10, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mCount:I

    if-ge v3, v10, :cond_1

    .line 93
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v1, v1}, Landroid/view/View;->measure(II)V

    .line 94
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 90
    .end local v3    # "i":I
    :cond_0
    iget-object v10, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mGifts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_0

    .line 96
    .restart local v3    # "i":I
    :cond_1
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/16 v12, 0x8

    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 100
    :cond_2
    add-int v2, v0, v9

    .line 101
    invoke-virtual {p0, v7, v2}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->setMeasuredDimension(II)V

    .line 102
    return-void
.end method

.method public setGifts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/vkcoffee/android/api/models/GiftItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "gifts":Ljava/util/List;, "Ljava/util/List<+Lcom/vkcoffee/android/api/models/GiftItem;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mGifts:Ljava/util/List;

    if-eq p1, v0, :cond_0

    .line 136
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ProfileGiftsView;->mGifts:Ljava/util/List;

    .line 137
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/ProfileGiftsView;->refresh()V

    .line 139
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method
