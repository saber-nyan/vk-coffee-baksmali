.class public Lcom/vkcoffee/android/ui/widget/BubbleLayout;
.super Landroid/widget/LinearLayout;
.source "BubbleLayout.java"


# instance fields
.field private idBody:I

.field private idImage:I

.field private idTime:I

.field private mGravityImpl:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->idImage:I

    .line 17
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->idBody:I

    .line 18
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->idTime:I

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->idImage:I

    .line 17
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->idBody:I

    .line 18
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->idTime:I

    .line 28
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->init(Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, -0x1

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->idImage:I

    .line 17
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->idBody:I

    .line 18
    iput v0, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->idTime:I

    .line 33
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->init(Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method private static getMarginLeft(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 158
    if-nez p0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 161
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method private static getMarginRight(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 166
    if-nez p0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private static getMarginWidth(Landroid/view/View;)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 149
    if-nez p0, :cond_0

    .line 150
    const/4 v1, 0x0

    .line 153
    :goto_0
    return v1

    .line 152
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 153
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method private static getMeasuredHeight(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 145
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private static getMeasuredWidthWithMargin(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 141
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getMarginWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/R$styleable;->BubbleLayout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 39
    const/4 v1, 0x0

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->idImage:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->idImage:I

    .line 40
    const/4 v1, 0x1

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->idBody:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->idBody:I

    .line 41
    const/4 v1, 0x2

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->idTime:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->idTime:I

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    :cond_0
    return-void
.end method

.method private onLayoutLeftToRight(IIII)V
    .locals 10
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 66
    const/4 v5, 0x0

    .line 68
    .local v5, "startX":I
    sub-int v2, p4, p2

    .line 69
    .local v2, "h":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 70
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 71
    .local v6, "view":Landroid/view/View;
    invoke-static {v6}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getMarginLeft(Landroid/view/View;)I

    move-result v7

    add-int/2addr v5, v7

    .line 72
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v4, v5, v7

    .line 73
    .local v4, "nextX":I
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74
    .local v1, "gravity":I
    and-int/lit8 v7, v1, 0x30

    const/16 v8, 0x30

    if-ne v7, v8, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getPaddingTop()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v6, v5, v7, v4, v8}, Landroid/view/View;->layout(IIII)V

    .line 83
    :goto_1
    invoke-static {v6}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getMarginRight(Landroid/view/View;)I

    move-result v7

    add-int v5, v4, v7

    .line 69
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    :cond_0
    and-int/lit8 v7, v1, 0x50

    const/16 v8, 0x50

    if-ne v7, v8, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getPaddingBottom()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 78
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getPaddingBottom()I

    move-result v8

    sub-int v8, v2, v8

    .line 77
    invoke-virtual {v6, v5, v7, v4, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getPaddingBottom()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v0, v7, 0x2

    .line 81
    .local v0, "dh":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getPaddingBottom()I

    move-result v8

    sub-int v8, v2, v8

    sub-int/2addr v8, v0

    invoke-virtual {v6, v5, v7, v4, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 85
    .end local v0    # "dh":I
    .end local v1    # "gravity":I
    .end local v4    # "nextX":I
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private onLayoutRightToLeft(IIII)V
    .locals 10
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 89
    sub-int v4, p3, p1

    .line 90
    .local v4, "nextX":I
    sub-int v2, p4, p2

    .line 91
    .local v2, "h":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getChildCount()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 92
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 93
    .local v6, "view":Landroid/view/View;
    invoke-static {v6}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getMarginRight(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v4, v7

    .line 94
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v5, v4, v7

    .line 95
    .local v5, "startX":I
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 96
    .local v1, "gravity":I
    and-int/lit8 v7, v1, 0x30

    const/16 v8, 0x30

    if-ne v7, v8, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getPaddingTop()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v6, v5, v7, v4, v8}, Landroid/view/View;->layout(IIII)V

    .line 105
    :goto_1
    invoke-static {v6}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getMarginLeft(Landroid/view/View;)I

    move-result v7

    sub-int v4, v5, v7

    .line 91
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 98
    :cond_0
    and-int/lit8 v7, v1, 0x50

    const/16 v8, 0x50

    if-ne v7, v8, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getPaddingBottom()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 100
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getPaddingBottom()I

    move-result v8

    sub-int v8, v2, v8

    .line 99
    invoke-virtual {v6, v5, v7, v4, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getPaddingBottom()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v0, v7, 0x2

    .line 103
    .local v0, "dh":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getPaddingBottom()I

    move-result v8

    sub-int v8, v2, v8

    sub-int/2addr v8, v0

    invoke-virtual {v6, v5, v7, v4, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 107
    .end local v0    # "dh":I
    .end local v1    # "gravity":I
    .end local v5    # "startX":I
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method protected measureChild(Landroid/view/View;II)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    .line 136
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 58
    .local v0, "layoutDirection":I
    iget v1, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->mGravityImpl:I

    invoke-static {v1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 59
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->onLayoutRightToLeft(IIII)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->onLayoutLeftToRight(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 111
    iget v5, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->idImage:I

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 112
    .local v2, "viewImage":Landroid/view/View;
    iget v5, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->idBody:I

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, "viewBubble":Landroid/view/View;
    iget v5, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->idTime:I

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 115
    .local v3, "viewTime":Landroid/view/View;
    invoke-virtual {p0, v2, p1, p2}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->measureChild(Landroid/view/View;II)V

    .line 116
    invoke-virtual {p0, v3, p1, p2}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->measureChild(Landroid/view/View;II)V

    .line 118
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 120
    .local v4, "width":I
    invoke-static {v2}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 121
    invoke-static {v3}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 122
    invoke-static {v1}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getMarginWidth(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 124
    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0, v1, v5, p2}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->measureChild(Landroid/view/View;II)V

    .line 126
    invoke-static {v2}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getMeasuredHeight(Landroid/view/View;)I

    move-result v5

    invoke-static {v1}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getMeasuredHeight(Landroid/view/View;)I

    move-result v6

    invoke-static {v3}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getMeasuredHeight(Landroid/view/View;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 128
    .local v0, "maxChildHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v0

    invoke-virtual {p0, v5, v6}, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->setMeasuredDimension(II)V

    .line 129
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 51
    iput p1, p0, Lcom/vkcoffee/android/ui/widget/BubbleLayout;->mGravityImpl:I

    .line 52
    return-void
.end method
