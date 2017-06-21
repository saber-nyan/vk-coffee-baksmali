.class public Lcom/vkcoffee/android/ui/ConstrainedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ConstrainedLinearLayout.java"


# instance fields
.field private maxHeight:I

.field private maxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v0, 0x7fffffff

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    iput v0, p0, Lcom/vkcoffee/android/ui/ConstrainedLinearLayout;->maxWidth:I

    iput v0, p0, Lcom/vkcoffee/android/ui/ConstrainedLinearLayout;->maxHeight:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x7fffffff

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput v0, p0, Lcom/vkcoffee/android/ui/ConstrainedLinearLayout;->maxWidth:I

    iput v0, p0, Lcom/vkcoffee/android/ui/ConstrainedLinearLayout;->maxHeight:I

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/vkcoffee/android/ui/ConstrainedLinearLayout;->applyAttrs(Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v0, 0x7fffffff

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    iput v0, p0, Lcom/vkcoffee/android/ui/ConstrainedLinearLayout;->maxWidth:I

    iput v0, p0, Lcom/vkcoffee/android/ui/ConstrainedLinearLayout;->maxHeight:I

    .line 28
    invoke-direct {p0, p2, p3}, Lcom/vkcoffee/android/ui/ConstrainedLinearLayout;->applyAttrs(Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method private applyAttrs(Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const v4, 0x7fffffff

    const/4 v3, 0x0

    .line 32
    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ConstrainedLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/vkcoffee/android/R$styleable;->ConstrainedLinearLayout:[I

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/ConstrainedLinearLayout;->maxWidth:I

    .line 35
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/ConstrainedLinearLayout;->maxHeight:I

    .line 37
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 4
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    .line 41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 42
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/ui/ConstrainedLinearLayout;->maxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    or-int p1, v0, v1

    .line 44
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 45
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/ui/ConstrainedLinearLayout;->maxHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    or-int p2, v0, v1

    .line 47
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 49
    return-void
.end method
