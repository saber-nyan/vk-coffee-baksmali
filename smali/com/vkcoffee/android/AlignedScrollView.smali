.class public Lcom/vkcoffee/android/AlignedScrollView;
.super Landroid/widget/ScrollView;
.source "AlignedScrollView.java"


# instance fields
.field addingContentAtTop:Z

.field private prevHeight:I

.field private prevViewH:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 10
    iput v0, p0, Lcom/vkcoffee/android/AlignedScrollView;->prevHeight:I

    iput v0, p0, Lcom/vkcoffee/android/AlignedScrollView;->prevViewH:I

    .line 11
    iput-boolean v0, p0, Lcom/vkcoffee/android/AlignedScrollView;->addingContentAtTop:Z

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    iput v0, p0, Lcom/vkcoffee/android/AlignedScrollView;->prevHeight:I

    iput v0, p0, Lcom/vkcoffee/android/AlignedScrollView;->prevViewH:I

    .line 11
    iput-boolean v0, p0, Lcom/vkcoffee/android/AlignedScrollView;->addingContentAtTop:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    iput v0, p0, Lcom/vkcoffee/android/AlignedScrollView;->prevHeight:I

    iput v0, p0, Lcom/vkcoffee/android/AlignedScrollView;->prevViewH:I

    .line 11
    iput-boolean v0, p0, Lcom/vkcoffee/android/AlignedScrollView;->addingContentAtTop:Z

    .line 26
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 29
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/AlignedScrollView;->prevHeight:I

    if-lez v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/vkcoffee/android/AlignedScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/AlignedScrollView;->prevHeight:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/vkcoffee/android/AlignedScrollView;->scrollBy(II)V

    .line 32
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 33
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/vkcoffee/android/AlignedScrollView;->addingContentAtTop:Z

    if-eqz v1, :cond_2

    .line 34
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/AlignedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/vkcoffee/android/AlignedScrollView;->prevViewH:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/AlignedScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/vkcoffee/android/AlignedScrollView;->scrollTo(II)V

    .line 39
    :cond_1
    iput-boolean v3, p0, Lcom/vkcoffee/android/AlignedScrollView;->addingContentAtTop:Z

    .line 42
    .end local v0    # "v":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/AlignedScrollView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/AlignedScrollView;->prevHeight:I

    .line 43
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/AlignedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 44
    .restart local v0    # "v":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/AlignedScrollView;->prevViewH:I

    .line 47
    :cond_3
    return-void
.end method
