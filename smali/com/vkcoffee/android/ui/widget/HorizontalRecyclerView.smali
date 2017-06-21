.class public Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;
.super Lme/grishka/appkit/views/UsableRecyclerView;
.source "HorizontalRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView$ItemWidthFixable;
    }
.end annotation


# instance fields
.field private itemBetterWidth:I

.field private itemOriginHeight:I

.field private itemOriginWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x10

    .line 22
    invoke-direct {p0, p1}, Lme/grishka/appkit/views/UsableRecyclerView;-><init>(Landroid/content/Context;)V

    .line 13
    const/16 v0, 0x8

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginWidth:I

    .line 14
    iput v1, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginHeight:I

    .line 15
    iput v1, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemBetterWidth:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0x10

    .line 26
    invoke-direct {p0, p1, p2}, Lme/grishka/appkit/views/UsableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/16 v0, 0x8

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginWidth:I

    .line 14
    iput v1, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginHeight:I

    .line 15
    iput v1, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemBetterWidth:I

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v1, 0x10

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lme/grishka/appkit/views/UsableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/16 v0, 0x8

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginWidth:I

    .line 14
    iput v1, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginHeight:I

    .line 15
    iput v1, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemBetterWidth:I

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    sget-object v1, Lcom/vkcoffee/android/R$styleable;->HorizontalRecyclerView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 37
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 38
    const/4 v1, 0x0

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginWidth:I

    .line 39
    const/4 v1, 0x1

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginHeight:I

    .line 40
    const/4 v1, 0x2

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemBetterWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemBetterWidth:I

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    .line 48
    .local v0, "adapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    if-eqz v0, :cond_8

    .line 49
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->getPaddingLeft()I

    move-result v9

    sub-int v7, v8, v9

    .line 50
    .local v7, "w":I
    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->getItemCount()I

    move-result v5

    .line 51
    .local v5, "size":I
    iget v1, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemBetterWidth:I

    .line 52
    .local v1, "betterSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 53
    int-to-double v8, v7

    int-to-double v10, v2

    const-wide v12, 0x3fe999999999999aL    # 0.8

    add-double/2addr v10, v12

    div-double/2addr v8, v10

    double-to-int v4, v8

    .line 54
    .local v4, "minVariant":I
    int-to-double v8, v7

    int-to-double v10, v2

    const-wide v12, 0x3fc999999999999aL    # 0.2

    add-double/2addr v10, v12

    div-double/2addr v8, v10

    double-to-int v3, v8

    .line 55
    .local v3, "maxVariant":I
    iget v8, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginWidth:I

    if-le v8, v3, :cond_2

    .line 69
    .end local v3    # "maxVariant":I
    .end local v4    # "minVariant":I
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->getChildCount()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_1
    if-ltz v2, :cond_6

    .line 70
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->getChildViewHolder(Landroid/view/View;)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v6

    .line 71
    .local v6, "viewHolder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    instance-of v8, v6, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView$ItemWidthFixable;

    if-eqz v8, :cond_1

    .line 72
    check-cast v6, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView$ItemWidthFixable;

    .end local v6    # "viewHolder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    invoke-interface {v6, v1}, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView$ItemWidthFixable;->setItemWidth(I)V

    .line 69
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 58
    .restart local v3    # "maxVariant":I
    .restart local v4    # "minVariant":I
    :cond_2
    iget v8, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginWidth:I

    if-gt v8, v3, :cond_3

    iget v8, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginWidth:I

    if-lt v8, v4, :cond_3

    .line 59
    iget v1, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginWidth:I

    .line 61
    :cond_3
    iget v8, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginWidth:I

    if-lt v4, v8, :cond_4

    iget v8, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginWidth:I

    sub-int v8, v1, v8

    iget v9, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginWidth:I

    sub-int v9, v4, v9

    if-le v8, v9, :cond_4

    .line 62
    move v1, v4

    .line 64
    :cond_4
    iget v8, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginWidth:I

    if-lt v3, v8, :cond_5

    iget v8, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginWidth:I

    sub-int v8, v1, v8

    iget v9, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginWidth:I

    sub-int v9, v3, v9

    if-le v8, v9, :cond_5

    .line 65
    move v1, v3

    .line 52
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v3    # "maxVariant":I
    .end local v4    # "minVariant":I
    :cond_6
    instance-of v8, v0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView$ItemWidthFixable;

    if-eqz v8, :cond_7

    .line 77
    check-cast v0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView$ItemWidthFixable;

    .end local v0    # "adapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView$ItemWidthFixable;->setItemWidth(I)V

    .line 80
    :cond_7
    iget v8, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginHeight:I

    iget v9, p0, Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView;->itemOriginWidth:I

    sub-int v9, v1, v9

    add-int/2addr v8, v9

    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 82
    .end local v1    # "betterSize":I
    .end local v2    # "i":I
    .end local v5    # "size":I
    .end local v7    # "w":I
    :cond_8
    invoke-super/range {p0 .. p2}, Lme/grishka/appkit/views/UsableRecyclerView;->onMeasure(II)V

    .line 83
    return-void
.end method
