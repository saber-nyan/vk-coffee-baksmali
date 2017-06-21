.class public Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;
.super Landroid/view/ViewGroup;
.source "SubPagerOfListItem.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;
    }
.end annotation


# instance fields
.field private adapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private adapterSize:I

.field private divider:Landroid/graphics/drawable/Drawable;

.field private dividerHeight:I

.field private isShowFirstItemMode:Z

.field private final itemHeight:I

.field private listAdapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

.field needInvalidated:Z

.field private recyclerBaskets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field public final scroller:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private final subPagerParentView:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final tmpRect:Landroid/graphics/Rect;

.field private tmpView:Landroid/view/View;

.field private typesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private viewsBasket:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/widget/SubPagerOfList;I)V
    .locals 3
    .param p1, "subPagerParentView"    # Lcom/vkcoffee/android/ui/widget/SubPagerOfList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "itemHeight"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->typesMap:Ljava/util/HashMap;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->viewsBasket:Landroid/util/SparseArray;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->recyclerBaskets:Landroid/util/SparseArray;

    .line 46
    iput-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->divider:Landroid/graphics/drawable/Drawable;

    .line 47
    iput v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->dividerHeight:I

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpRect:Landroid/graphics/Rect;

    .line 50
    iput-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpView:Landroid/view/View;

    .line 52
    iput v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->adapterSize:I

    .line 53
    iput-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->listAdapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    .line 57
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->needInvalidated:Z

    .line 58
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->isShowFirstItemMode:Z

    .line 260
    new-instance v0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$1;-><init>(Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->adapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 329
    new-instance v0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$2;-><init>(Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->scroller:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 65
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->subPagerParentView:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    .line 66
    iput p2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->itemHeight:I

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;)Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->listAdapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    return-object v0
.end method

.method private clearView(I)Landroid/view/View;
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 141
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->viewsBasket:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 142
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->viewsBasket:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 144
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->typesMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getOrCreateRecycleBasketByType(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 146
    :cond_0
    return-object v0
.end method

.method private fillView(I)Landroid/view/View;
    .locals 10
    .param p1, "key"    # I

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 85
    iget-object v5, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->viewsBasket:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 86
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 87
    iget-boolean v5, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->isShowFirstItemMode:Z

    if-eqz v5, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getTopForPosition(I)I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getBottomForPosition(I)I

    move-result v7

    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 89
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_0
    move-object v3, v2

    .line 120
    .end local v2    # "view":Landroid/view/View;
    .local v3, "view":Landroid/view/View;
    :goto_0
    return-object v3

    .line 93
    .end local v3    # "view":Landroid/view/View;
    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->popFromRecycle(I)Landroid/view/View;

    move-result-object v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    iget-object v6, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->listAdapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v5, p1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 96
    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 98
    iget v5, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->itemHeight:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 99
    .local v0, "measureSpecH":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 100
    .local v1, "measureSpecW":I
    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 115
    :goto_1
    iget-object v5, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->viewsBasket:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getTopForPosition(I)I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getBottomForPosition(I)I

    move-result v7

    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 118
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    move-object v3, v2

    .line 120
    .end local v2    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    goto :goto_0

    .line 102
    .end local v0    # "measureSpecH":I
    .end local v1    # "measureSpecW":I
    .end local v3    # "view":Landroid/view/View;
    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->listAdapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    iget-object v6, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->subPagerParentView:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getParentList()Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->listAdapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    invoke-virtual {v7, p1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->getItemViewType(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 103
    .local v4, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v2, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 104
    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object v5, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->listAdapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    invoke-virtual {v5, v4, p1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 107
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->addView(Landroid/view/View;)V

    .line 108
    iget-object v5, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->typesMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->listAdapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    invoke-virtual {v6, p1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->getItemViewType(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget v5, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->itemHeight:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 111
    .restart local v0    # "measureSpecH":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 112
    .restart local v1    # "measureSpecW":I
    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    goto :goto_1
.end method

.method private getBottomForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getTopForPosition(I)I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->itemHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getCurrentBottom(I)I
    .locals 3
    .param p1, "top"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->subPagerParentView:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getEmulatedHeight()I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->subPagerParentView:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getEmulatedHeight()I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->subPagerParentView:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getEmulatedTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getCurrentTop()I
    .locals 2

    .prologue
    .line 160
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->subPagerParentView:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getEmulatedTop()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getEndIndexForTopBottom(II)I
    .locals 3
    .param p1, "top"    # I
    .param p2, "bottom"    # I

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->isShowFirstItemMode:Z

    if-eqz v0, :cond_0

    .line 173
    sub-int v0, p2, p1

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->itemHeight:I

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->dividerHeight:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->adapterSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 175
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->itemHeight:I

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->dividerHeight:I

    add-int/2addr v0, v1

    div-int v0, p2, v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->adapterSize:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private getOrCreateRecycleBasketByType(I)Landroid/util/SparseArray;
    .locals 2
    .param p1, "type"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->recyclerBaskets:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 152
    .local v0, "basket":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-nez v0, :cond_0

    .line 153
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "basket":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 154
    .restart local v0    # "basket":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->recyclerBaskets:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 156
    :cond_0
    return-object v0
.end method

.method private getStartIndexForTop(I)I
    .locals 3
    .param p1, "top"    # I

    .prologue
    const/4 v0, 0x0

    .line 168
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->isShowFirstItemMode:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->itemHeight:I

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->dividerHeight:I

    add-int/2addr v1, v2

    div-int v1, p1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private getTopForPosition(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/high16 v3, 0x41000000    # 8.0f

    .line 210
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->isShowFirstItemMode:Z

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->subPagerParentView:Lcom/vkcoffee/android/ui/widget/SubPagerOfList;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfList;->getEmulatedTop()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->itemHeight:I

    iget v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->dividerHeight:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 213
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->itemHeight:I

    iget v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->dividerHeight:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private popFromRecycle(I)Landroid/view/View;
    .locals 5
    .param p1, "key"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 125
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->listAdapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    invoke-virtual {v3, p1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->getItemViewType(I)I

    move-result v1

    .line 126
    .local v1, "type":I
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getOrCreateRecycleBasketByType(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 127
    .local v0, "recyclerBasket":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 128
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    move-object v3, v2

    .line 136
    :goto_0
    return-object v3

    .line 131
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 132
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "view":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 133
    .restart local v2    # "view":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->removeAt(I)V

    move-object v3, v2

    .line 134
    goto :goto_0

    .line 136
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearLastValues()V
    .locals 4

    .prologue
    .line 285
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->recyclerBaskets:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 286
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->recyclerBaskets:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 287
    .local v0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 288
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->removeView(Landroid/view/View;)V

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 285
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .end local v0    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    .end local v2    # "j":I
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->recyclerBaskets:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 292
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->viewsBasket:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 300
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->viewsBasket:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 301
    .local v1, "key":I
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->viewsBasket:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpView:Landroid/view/View;

    .line 302
    iget v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->adapterSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 304
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 305
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 306
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->dividerHeight:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 308
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->divider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->divider:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 310
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 299
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    .end local v1    # "key":I
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpView:Landroid/view/View;

    .line 315
    return-void
.end method

.method public getListAdapter()Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->listAdapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    return-object v0
.end method

.method protected invalidateVirtualViews()V
    .locals 10

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getMeasuredWidth()I

    move-result v9

    if-nez v9, :cond_0

    .line 181
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->needInvalidated:Z

    .line 207
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getCurrentTop()I

    move-result v6

    .line 186
    .local v6, "top":I
    invoke-direct {p0, v6}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getStartIndexForTop(I)I

    move-result v3

    .line 187
    .local v3, "indexStart":I
    invoke-direct {p0, v6}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getCurrentBottom(I)I

    move-result v9

    invoke-direct {p0, v6, v9}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getEndIndexForTopBottom(II)I

    move-result v2

    .line 189
    .local v2, "indexEnd":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getChildCount()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 190
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 191
    .local v8, "view":Landroid/view/View;
    iget-object v9, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->viewsBasket:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 192
    .local v1, "index":I
    if-ltz v1, :cond_3

    iget-object v9, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->viewsBasket:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 194
    .local v4, "key":I
    :goto_2
    if-ltz v4, :cond_2

    .line 195
    iget-object v9, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->typesMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 196
    .local v7, "type":I
    iget-object v9, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->listAdapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    invoke-virtual {v9, v4}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->getItemViewType(I)I

    move-result v5

    .line 197
    .local v5, "neededType":I
    if-lt v4, v3, :cond_1

    if-gt v4, v2, :cond_1

    if-eq v7, v5, :cond_2

    .line 198
    :cond_1
    invoke-direct {p0, v4}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->clearView(I)Landroid/view/View;

    .line 189
    .end local v5    # "neededType":I
    .end local v7    # "type":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 192
    .end local v4    # "key":I
    :cond_3
    const/4 v4, -0x1

    goto :goto_2

    .line 203
    .end local v1    # "index":I
    .end local v8    # "view":Landroid/view/View;
    :cond_4
    move v0, v3

    :goto_3
    if-gt v0, v2, :cond_5

    .line 204
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->fillView(I)Landroid/view/View;

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 206
    :cond_5
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->invalidate()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 223
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->needInvalidated:Z

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->invalidateVirtualViews()V

    .line 236
    :goto_0
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->viewsBasket:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 227
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->viewsBasket:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 228
    .local v1, "key":I
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->viewsBasket:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpView:Landroid/view/View;

    .line 229
    if-eqz p1, :cond_1

    .line 230
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 232
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getTopForPosition(I)I

    move-result v4

    sub-int v5, p4, p2

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getBottomForPosition(I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 234
    .end local v1    # "key":I
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpView:Landroid/view/View;

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 240
    iget v5, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->itemHeight:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 241
    .local v4, "measureSpecH":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 242
    .local v3, "measureSpec":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 243
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpView:Landroid/view/View;

    .line 244
    iget-object v5, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 245
    iget-object v5, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpView:Landroid/view/View;

    invoke-virtual {v5, v3, v4}, Landroid/view/View;->measure(II)V

    .line 242
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 248
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->tmpView:Landroid/view/View;

    .line 249
    iget v5, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->adapterSize:I

    iget v6, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->itemHeight:I

    mul-int v1, v5, v6

    .line 250
    .local v1, "heightItems":I
    iget v5, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->adapterSize:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->dividerHeight:I

    mul-int v0, v5, v6

    .line 251
    .local v0, "heightDividers":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    add-int v6, v1, v0

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->setMeasuredDimension(II)V

    .line 252
    return-void
.end method

.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->listAdapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->listAdapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 345
    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->invalidateVirtualViews()V

    .line 349
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getCurrentTop()I

    move-result v2

    .line 351
    .local v2, "top":I
    invoke-direct {p0, v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getStartIndexForTop(I)I

    move-result v1

    .line 352
    .local v1, "indexStart":I
    invoke-direct {p0, v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getCurrentBottom(I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->getEndIndexForTopBottom(II)I

    move-result v0

    .line 354
    .local v0, "indexEnd":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->listAdapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    sub-int v4, v0, v1

    iget v5, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->adapterSize:I

    invoke-virtual {v3, p1, v1, v4, v5}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->onScroll(Landroid/support/v7/widget/RecyclerView;III)V

    .line 355
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->typesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public setAdapter(Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;)V
    .locals 3
    .param p1, "listAdapter"    # Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->listAdapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->listAdapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->adapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 271
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->listAdapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    .line 272
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->listAdapter:Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->adapterDataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 273
    invoke-virtual {p1}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->adapterSize:I

    .line 274
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->invalidateVirtualViews()V

    .line 275
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->clearLastValues()V

    .line 276
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->requestLayout()V

    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 278
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 318
    if-eqz p1, :cond_0

    .line 319
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->dividerHeight:I

    .line 323
    :goto_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->divider:Landroid/graphics/drawable/Drawable;

    .line 324
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->requestLayout()V

    .line 325
    return-void

    .line 321
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->dividerHeight:I

    goto :goto_0
.end method

.method public setIsShowFirstItemMode(Z)V
    .locals 1
    .param p1, "isShowFirstItemMode"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->isShowFirstItemMode:Z

    .line 71
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->invalidateVirtualViews()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->needInvalidated:Z

    .line 73
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->requestLayout()V

    .line 74
    return-void
.end method

.method setMeasuredDimensionPublic(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;->setMeasuredDimension(II)V

    .line 256
    return-void
.end method
