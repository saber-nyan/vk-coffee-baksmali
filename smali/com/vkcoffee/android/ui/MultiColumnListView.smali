.class public Lcom/vkcoffee/android/ui/MultiColumnListView;
.super Lcom/vkcoffee/android/ui/FixedScrollListView;
.source "MultiColumnListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/MultiColumnListView$OnResizeListener;,
        Lcom/vkcoffee/android/ui/MultiColumnListView$RowLayout;,
        Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;,
        Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;
    }
.end annotation


# instance fields
.field private columnCount:I

.field private currentScrollState:I

.field private drawSelOnTop:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private highlight:Landroid/graphics/drawable/Drawable;

.field private itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private observer:Landroid/database/DataSetObserver;

.field private resizeListener:Lcom/vkcoffee/android/ui/MultiColumnListView$OnResizeListener;

.field private reusableViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private rowsAdapter:Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private selPosition:I

.field private selRect:Landroid/graphics/Rect;

.field private wrappedAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/FixedScrollListView;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->columnCount:I

    .line 30
    new-instance v0, Lcom/vkcoffee/android/ui/MultiColumnListView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/MultiColumnListView$1;-><init>(Lcom/vkcoffee/android/ui/MultiColumnListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->observer:Landroid/database/DataSetObserver;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->reusableViews:Ljava/util/HashMap;

    .line 45
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->drawSelOnTop:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->selPosition:I

    .line 48
    iput v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->currentScrollState:I

    .line 50
    new-instance v0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/MultiColumnListView$2;-><init>(Lcom/vkcoffee/android/ui/MultiColumnListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 117
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->init()V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/FixedScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->columnCount:I

    .line 30
    new-instance v0, Lcom/vkcoffee/android/ui/MultiColumnListView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/MultiColumnListView$1;-><init>(Lcom/vkcoffee/android/ui/MultiColumnListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->observer:Landroid/database/DataSetObserver;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->reusableViews:Ljava/util/HashMap;

    .line 45
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->drawSelOnTop:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->selPosition:I

    .line 48
    iput v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->currentScrollState:I

    .line 50
    new-instance v0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/MultiColumnListView$2;-><init>(Lcom/vkcoffee/android/ui/MultiColumnListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 122
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->init()V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/FixedScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->columnCount:I

    .line 30
    new-instance v0, Lcom/vkcoffee/android/ui/MultiColumnListView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/MultiColumnListView$1;-><init>(Lcom/vkcoffee/android/ui/MultiColumnListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->observer:Landroid/database/DataSetObserver;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->reusableViews:Ljava/util/HashMap;

    .line 45
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->drawSelOnTop:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->selPosition:I

    .line 48
    iput v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->currentScrollState:I

    .line 50
    new-instance v0, Lcom/vkcoffee/android/ui/MultiColumnListView$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/MultiColumnListView$2;-><init>(Lcom/vkcoffee/android/ui/MultiColumnListView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 127
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->init()V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/MultiColumnListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MultiColumnListView;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->updateRows()V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/MultiColumnListView;II)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MultiColumnListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/MultiColumnListView;->positionFromPoint(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/database/DataSetObserver;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MultiColumnListView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->observer:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/ui/MultiColumnListView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MultiColumnListView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->reusableViews:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MultiColumnListView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->wrappedAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MultiColumnListView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/ui/MultiColumnListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MultiColumnListView;

    .prologue
    .line 26
    iget v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->selPosition:I

    return v0
.end method

.method static synthetic access$402(Lcom/vkcoffee/android/ui/MultiColumnListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MultiColumnListView;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->selPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MultiColumnListView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->highlight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/ui/MultiColumnListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MultiColumnListView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/vkcoffee/android/ui/MultiColumnListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MultiColumnListView;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->currentScrollState:I

    return p1
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/ui/MultiColumnListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MultiColumnListView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    new-instance v0, Lcom/vkcoffee/android/ui/MultiColumnListView$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/MultiColumnListView$3;-><init>(Lcom/vkcoffee/android/ui/MultiColumnListView;)V

    invoke-super {p0, v0}, Lcom/vkcoffee/android/ui/FixedScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 174
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->gestureDetector:Landroid/view/GestureDetector;

    .line 175
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->highlight:Landroid/graphics/drawable/Drawable;

    .line 176
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/MultiColumnListView;->setWillNotDraw(Z)V

    .line 177
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-super {p0, v0}, Lcom/vkcoffee/android/ui/FixedScrollListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 178
    return-void
.end method

.method private positionFromPoint(II)I
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v7, -0x1

    .line 276
    invoke-super {p0}, Lcom/vkcoffee/android/ui/FixedScrollListView;->getFirstVisiblePosition()I

    move-result v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v8

    sub-int v0, v6, v8

    .line 277
    .local v0, "firstRow":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 278
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 279
    .local v4, "r":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    if-gt v6, p2, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v6

    if-lt v6, p2, :cond_3

    .line 280
    add-int v6, v0, v1

    if-ltz v6, :cond_0

    add-int v6, v0, v1

    iget-object v8, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v6, v8, :cond_1

    :cond_0
    move v6, v7

    .line 292
    .end local v4    # "r":Landroid/view/View;
    :goto_1
    return v6

    .line 283
    .restart local v4    # "r":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    add-int v8, v0, v1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;

    .line 284
    .local v5, "row":Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    iget v6, v5, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->count:I

    if-ge v3, v6, :cond_3

    move-object v6, v4

    .line 285
    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 286
    .local v2, "item":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    if-gt v6, p1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    if-lt v6, p1, :cond_2

    .line 287
    iget v6, v5, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->start:I

    add-int/2addr v6, v3

    goto :goto_1

    .line 284
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 277
    .end local v2    # "item":Landroid/view/View;
    .end local v3    # "j":I
    .end local v5    # "row":Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "r":Landroid/view/View;
    :cond_4
    move v6, v7

    .line 292
    goto :goto_1
.end method

.method private updateRows()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 227
    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 228
    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->reusableViews:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 229
    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->wrappedAdapter:Landroid/widget/ListAdapter;

    if-nez v6, :cond_0

    .line 273
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->wrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 233
    .local v0, "count":I
    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->wrappedAdapter:Landroid/widget/ListAdapter;

    instance-of v4, v6, Lcom/vkcoffee/android/ui/MultiSectionAdapter;

    .line 234
    .local v4, "isMultiSection":Z
    const/4 v5, 0x0

    .line 235
    .local v5, "offset":I
    new-instance v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;

    invoke-direct {v1, v9}, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;-><init>(Lcom/vkcoffee/android/ui/MultiColumnListView$1;)V

    .line 236
    .local v1, "current":Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;
    iget v6, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->columnCount:I

    iput v6, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->size:I

    .line 237
    const/4 v6, -0x1

    iput v6, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->count:I

    .line 238
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sub-int v6, v2, v5

    if-ge v6, v0, :cond_6

    .line 239
    iget v6, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->count:I

    .line 240
    if-eqz v4, :cond_5

    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->wrappedAdapter:Landroid/widget/ListAdapter;

    check-cast v6, Lcom/vkcoffee/android/ui/MultiSectionAdapter;

    invoke-virtual {v6, v2}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->isSectionHeader(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v7

    .line 241
    .local v3, "isHeader":Z
    :goto_2
    iget v6, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->count:I

    iget v8, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->columnCount:I

    if-eq v6, v8, :cond_1

    if-eqz v3, :cond_4

    .line 242
    :cond_1
    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    if-eqz v3, :cond_3

    .line 245
    iget v6, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->columnCount:I

    iput v6, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->size:I

    .line 246
    iget v6, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->count:I

    if-gtz v6, :cond_2

    .line 247
    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 249
    :cond_2
    new-instance v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;

    .end local v1    # "current":Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;
    invoke-direct {v1, v9}, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;-><init>(Lcom/vkcoffee/android/ui/MultiColumnListView$1;)V

    .line 250
    .restart local v1    # "current":Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;
    iput v2, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->start:I

    .line 251
    iput v7, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->count:I

    .line 252
    iput v7, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->size:I

    .line 253
    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v2, v2, 0x1

    .line 255
    add-int/lit8 v5, v5, 0x1

    .line 257
    :cond_3
    new-instance v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;

    .end local v1    # "current":Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;
    invoke-direct {v1, v9}, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;-><init>(Lcom/vkcoffee/android/ui/MultiColumnListView$1;)V

    .line 258
    .restart local v1    # "current":Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;
    iget v6, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->columnCount:I

    iput v6, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->size:I

    .line 259
    iput v2, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->start:I

    .line 238
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 240
    .end local v3    # "isHeader":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 262
    :cond_6
    iget v6, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->count:I

    if-nez v6, :cond_7

    iget v6, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->start:I

    add-int/lit8 v8, v0, -0x1

    if-ne v6, v8, :cond_7

    iget v6, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->columnCount:I

    if-ne v6, v7, :cond_7

    .line 263
    iput v7, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->count:I

    .line 265
    :cond_7
    iget v6, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->start:I

    iget v7, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->count:I

    add-int/2addr v6, v7

    if-ge v6, v0, :cond_8

    .line 266
    iget v6, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->size:I

    iget v7, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->start:I

    sub-int v7, v0, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->count:I

    .line 268
    :cond_8
    iget v6, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->count:I

    if-lez v6, :cond_9

    .line 269
    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_9
    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rowsAdapter:Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;

    invoke-virtual {v6}, Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, -0x1

    .line 357
    iget v2, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->selPosition:I

    if-eq v2, v6, :cond_0

    .line 358
    iget v2, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->selPosition:I

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    .line 359
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_3

    .line 360
    iput v6, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->selPosition:I

    .line 367
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->drawSelOnTop:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->selPosition:I

    if-eq v2, v6, :cond_1

    .line 368
    iget-object v2, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->highlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 370
    :cond_1
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/FixedScrollListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 371
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->drawSelOnTop:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->selPosition:I

    if-eq v2, v6, :cond_2

    .line 372
    iget-object v2, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->highlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 374
    :cond_2
    return-void

    .line 362
    .restart local v0    # "view":Landroid/view/View;
    :cond_3
    invoke-static {v0, p0}, Lcom/vkcoffee/android/ViewUtils;->getViewOffset(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 363
    .local v1, "y":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->selRect:Landroid/graphics/Rect;

    .line 364
    iget-object v2, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->highlight:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->selRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->columnCount:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->wrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Lcom/vkcoffee/android/ui/FixedScrollListView;->getFirstVisiblePosition()I

    move-result v0

    .line 303
    .local v0, "pos":I
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 304
    :cond_0
    const/4 v1, 0x0

    .line 306
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;

    iget v1, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->start:I

    goto :goto_0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 5
    .param p1, "pos"    # I

    .prologue
    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, "res":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 340
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;

    .line 341
    .local v2, "row":Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;
    iget v3, v2, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->start:I

    if-gt v3, p1, :cond_2

    iget v3, v2, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->start:I

    iget v4, v2, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->count:I

    add-int/2addr v3, v4

    if-le v3, p1, :cond_2

    .line 342
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v3, v0

    invoke-super {p0}, Lcom/vkcoffee/android/ui/FixedScrollListView;->getFirstVisiblePosition()I

    move-result v4

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v3, v0

    invoke-super {p0}, Lcom/vkcoffee/android/ui/FixedScrollListView;->getLastVisiblePosition()I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 343
    invoke-super {p0}, Lcom/vkcoffee/android/ui/FixedScrollListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget v4, v2, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->start:I

    sub-int v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 349
    .end local v1    # "res":Landroid/view/View;
    .end local v2    # "row":Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;
    :cond_0
    :goto_1
    return-object v1

    .line 345
    .restart local v1    # "res":Landroid/view/View;
    .restart local v2    # "row":Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 339
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 4

    .prologue
    .line 311
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 312
    const/4 v0, 0x0

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    invoke-super {p0}, Lcom/vkcoffee/android/ui/FixedScrollListView;->getLastVisiblePosition()I

    move-result v0

    .line 315
    .local v0, "pos":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 319
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;

    iget v2, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->start:I

    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;

    iget v1, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->count:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v2

    add-int v0, v1, v2

    goto :goto_0

    .line 321
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;

    iget v2, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->start:I

    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;

    iget v1, v1, Lcom/vkcoffee/android/ui/MultiColumnListView$RowInfo;->count:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getHeaderViewsCount()I

    move-result v2

    add-int v0, v1, v2

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 381
    invoke-super {p0, p1, p2, p3, p4}, Lcom/vkcoffee/android/ui/FixedScrollListView;->onSizeChanged(IIII)V

    .line 382
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->resizeListener:Lcom/vkcoffee/android/ui/MultiColumnListView$OnResizeListener;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->resizeListener:Lcom/vkcoffee/android/ui/MultiColumnListView$OnResizeListener;

    invoke-interface {v0, p1, p2}, Lcom/vkcoffee/android/ui/MultiColumnListView$OnResizeListener;->onResize(II)V

    .line 385
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 331
    iget v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->currentScrollState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    const/4 v0, 0x1

    .line 334
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/FixedScrollListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/MultiColumnListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->wrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->wrappedAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->observer:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->reusableViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 212
    new-instance v0, Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;-><init>(Lcom/vkcoffee/android/ui/MultiColumnListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->rowsAdapter:Lcom/vkcoffee/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;

    invoke-super {p0, v0}, Lcom/vkcoffee/android/ui/FixedScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->wrappedAdapter:Landroid/widget/ListAdapter;

    .line 214
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->updateRows()V

    .line 215
    return-void
.end method

.method public setColumnCount(I)V
    .locals 1
    .param p1, "cnt"    # I

    .prologue
    .line 218
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->columnCount:I

    .line 219
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->updateRows()V

    .line 220
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "draw"    # Z

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->drawSelOnTop:Z

    .line 199
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 354
    return-void
.end method

.method public setOnResizeListener(Lcom/vkcoffee/android/ui/MultiColumnListView$OnResizeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkcoffee/android/ui/MultiColumnListView$OnResizeListener;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->resizeListener:Lcom/vkcoffee/android/ui/MultiColumnListView$OnResizeListener;

    .line 378
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 298
    return-void
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/MultiColumnListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 194
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "s"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->highlight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->highlight:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 185
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->highlight:Landroid/graphics/drawable/Drawable;

    .line 186
    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 189
    :cond_1
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/FixedScrollListView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiColumnListView;->highlight:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
