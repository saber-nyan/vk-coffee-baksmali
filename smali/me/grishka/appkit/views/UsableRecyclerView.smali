.class public Lme/grishka/appkit/views/UsableRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "UsableRecyclerView.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ObservableListImageLoaderAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/grishka/appkit/views/UsableRecyclerView$SelectorBoundsProvider;,
        Lme/grishka/appkit/views/UsableRecyclerView$FooterViewHolder;,
        Lme/grishka/appkit/views/UsableRecyclerView$FooterRecyclerAdapter;,
        Lme/grishka/appkit/views/UsableRecyclerView$LongClickRunnable;,
        Lme/grishka/appkit/views/UsableRecyclerView$ClickStartRunnable;,
        Lme/grishka/appkit/views/UsableRecyclerView$LongClickable;,
        Lme/grishka/appkit/views/UsableRecyclerView$DisableableClickable;,
        Lme/grishka/appkit/views/UsableRecyclerView$Clickable;,
        Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;,
        Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    }
.end annotation


# instance fields
.field private clickStartTimeout:I

.field private clickingViewHolder:Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

.field private drawHighlightOnTop:Z

.field private emptyView:Landroid/view/View;

.field private emptyViewObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private footerAdapter:Lme/grishka/appkit/views/UsableRecyclerView$FooterRecyclerAdapter;

.field private highlight:Landroid/graphics/drawable/Drawable;

.field private highlightBounds:Landroid/graphics/Rect;

.field private highlightBoundsProvider:Lme/grishka/appkit/views/UsableRecyclerView$SelectorBoundsProvider;

.field private highlightedView:Landroid/view/View;

.field protected imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private imgLoaderObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private lastTouchX:F

.field private lastTouchY:F

.field protected listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private longClickTimeout:I

.field private postedClickStart:Ljava/lang/Runnable;

.field private postedLongClick:Ljava/lang/Runnable;

.field private final recyclerViewDelegate:Lme/grishka/appkit/imageloader/RecyclerViewDelegate;

.field private touchDownX:F

.field private touchDownY:F

.field private touchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;

    invoke-direct {v0, p0}, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->recyclerViewDelegate:Lme/grishka/appkit/imageloader/RecyclerViewDelegate;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightBounds:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Lme/grishka/appkit/views/UsableRecyclerView$1;

    invoke-direct {v0, p0}, Lme/grishka/appkit/views/UsableRecyclerView$1;-><init>(Lme/grishka/appkit/views/UsableRecyclerView;)V

    iput-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->emptyViewObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->drawHighlightOnTop:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->imgLoaderObservers:Ljava/util/ArrayList;

    .line 104
    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->init()V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;

    invoke-direct {v0, p0}, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->recyclerViewDelegate:Lme/grishka/appkit/imageloader/RecyclerViewDelegate;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightBounds:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Lme/grishka/appkit/views/UsableRecyclerView$1;

    invoke-direct {v0, p0}, Lme/grishka/appkit/views/UsableRecyclerView$1;-><init>(Lme/grishka/appkit/views/UsableRecyclerView;)V

    iput-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->emptyViewObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->drawHighlightOnTop:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->imgLoaderObservers:Ljava/util/ArrayList;

    .line 109
    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->init()V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;

    invoke-direct {v0, p0}, Lme/grishka/appkit/imageloader/RecyclerViewDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->recyclerViewDelegate:Lme/grishka/appkit/imageloader/RecyclerViewDelegate;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightBounds:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Lme/grishka/appkit/views/UsableRecyclerView$1;

    invoke-direct {v0, p0}, Lme/grishka/appkit/views/UsableRecyclerView$1;-><init>(Lme/grishka/appkit/views/UsableRecyclerView;)V

    iput-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->emptyViewObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->drawHighlightOnTop:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->imgLoaderObservers:Ljava/util/ArrayList;

    .line 114
    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->init()V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lme/grishka/appkit/views/UsableRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lme/grishka/appkit/views/UsableRecyclerView;

    .prologue
    .line 41
    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->updateEmptyViewVisibility()V

    return-void
.end method

.method static synthetic access$100(Lme/grishka/appkit/views/UsableRecyclerView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/views/UsableRecyclerView;

    .prologue
    .line 41
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->imgLoaderObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000()[I
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lme/grishka/appkit/views/UsableRecyclerView;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$1102(Lme/grishka/appkit/views/UsableRecyclerView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lme/grishka/appkit/views/UsableRecyclerView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 41
    iput-object p1, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedLongClick:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1200()[I
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lme/grishka/appkit/views/UsableRecyclerView;->EMPTY_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$400(Lme/grishka/appkit/views/UsableRecyclerView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/views/UsableRecyclerView;

    .prologue
    .line 41
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lme/grishka/appkit/views/UsableRecyclerView;->EMPTY_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$600(Lme/grishka/appkit/views/UsableRecyclerView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/views/UsableRecyclerView;

    .prologue
    .line 41
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$800(Lme/grishka/appkit/views/UsableRecyclerView;)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/views/UsableRecyclerView;

    .prologue
    .line 41
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->clickingViewHolder:Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    return-object v0
.end method

.method static synthetic access$802(Lme/grishka/appkit/views/UsableRecyclerView;Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .locals 0
    .param p0, "x0"    # Lme/grishka/appkit/views/UsableRecyclerView;
    .param p1, "x1"    # Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    .prologue
    .line 41
    iput-object p1, p0, Lme/grishka/appkit/views/UsableRecyclerView;->clickingViewHolder:Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    return-object p1
.end method

.method static synthetic access$902(Lme/grishka/appkit/views/UsableRecyclerView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lme/grishka/appkit/views/UsableRecyclerView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 41
    iput-object p1, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedClickStart:Ljava/lang/Runnable;

    return-object p1
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 118
    invoke-virtual {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lme/grishka/appkit/views/UsableRecyclerView;->touchSlop:I

    .line 119
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    iput v1, p0, Lme/grishka/appkit/views/UsableRecyclerView;->clickStartTimeout:I

    .line 120
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    iput v1, p0, Lme/grishka/appkit/views/UsableRecyclerView;->longClickTimeout:I

    .line 121
    invoke-virtual {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x101030e

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    new-instance v1, Lme/grishka/appkit/utils/AutoAssignMaxRecycledViewPool;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lme/grishka/appkit/utils/AutoAssignMaxRecycledViewPool;-><init>(I)V

    invoke-virtual {p0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V

    .line 126
    return-void
.end method

.method private updateEmptyViewVisibility()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 324
    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView;->emptyView:Landroid/view/View;

    invoke-virtual {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :cond_0
    return-void

    .line 324
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public addDataSetObserver(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;

    .prologue
    .line 356
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->imgLoaderObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method public addFooterView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 300
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->footerAdapter:Lme/grishka/appkit/views/UsableRecyclerView$FooterRecyclerAdapter;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lme/grishka/appkit/views/UsableRecyclerView$FooterRecyclerAdapter;

    invoke-virtual {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView$FooterRecyclerAdapter;-><init>(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    iput-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->footerAdapter:Lme/grishka/appkit/views/UsableRecyclerView$FooterRecyclerAdapter;

    .line 303
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->footerAdapter:Lme/grishka/appkit/views/UsableRecyclerView$FooterRecyclerAdapter;

    invoke-static {v0}, Lme/grishka/appkit/views/UsableRecyclerView$FooterRecyclerAdapter;->access$700(Lme/grishka/appkit/views/UsableRecyclerView$FooterRecyclerAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->footerAdapter:Lme/grishka/appkit/views/UsableRecyclerView$FooterRecyclerAdapter;

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 309
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->footerAdapter:Lme/grishka/appkit/views/UsableRecyclerView$FooterRecyclerAdapter;

    invoke-static {v0}, Lme/grishka/appkit/views/UsableRecyclerView$FooterRecyclerAdapter;->access$700(Lme/grishka/appkit/views/UsableRecyclerView$FooterRecyclerAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->footerAdapter:Lme/grishka/appkit/views/UsableRecyclerView$FooterRecyclerAdapter;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView$FooterRecyclerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 249
    iget-boolean v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->drawHighlightOnTop:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightedView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightBoundsProvider:Lme/grishka/appkit/views/UsableRecyclerView$SelectorBoundsProvider;

    if-eqz v0, :cond_5

    .line 254
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightBoundsProvider:Lme/grishka/appkit/views/UsableRecyclerView$SelectorBoundsProvider;

    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightedView:Landroid/view/View;

    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightBounds:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2}, Lme/grishka/appkit/views/UsableRecyclerView$SelectorBoundsProvider;->getSelectorBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 259
    :cond_1
    :goto_0
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlight:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 260
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 261
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlight:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lme/grishka/appkit/views/UsableRecyclerView;->lastTouchX:F

    iget v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->lastTouchY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 263
    :cond_2
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 265
    :cond_3
    iget-boolean v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->drawHighlightOnTop:Z

    if-nez v0, :cond_4

    .line 266
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 267
    :cond_4
    return-void

    .line 256
    :cond_5
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public bridge synthetic findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lme/grishka/appkit/views/UsableRecyclerView;->findViewHolderForAdapterPosition(I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderForAdapterPosition(I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    .locals 2

    .prologue
    .line 313
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    .line 314
    .local v0, "adapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    instance-of v1, v0, Lme/grishka/appkit/views/UsableRecyclerView$FooterRecyclerAdapter;

    if-eqz v1, :cond_1

    .line 315
    check-cast v0, Lme/grishka/appkit/views/UsableRecyclerView$FooterRecyclerAdapter;

    .end local v0    # "adapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    iget-object v0, v0, Lme/grishka/appkit/views/UsableRecyclerView$FooterRecyclerAdapter;->wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    .line 319
    :cond_0
    :goto_0
    return-object v0

    .line 316
    .restart local v0    # "adapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    :cond_1
    instance-of v1, v0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;

    if-eqz v1, :cond_0

    .line 317
    check-cast v0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;

    .end local v0    # "adapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    iget-object v0, v0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;->wrapped:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    goto :goto_0
.end method

.method public bridge synthetic getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildViewHolder(Landroid/view/View;)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 330
    invoke-virtual {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    .line 331
    .local v0, "adapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->getItemCount()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImageCountForItem(I)I
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 336
    invoke-virtual {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    .line 337
    .local v0, "adapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->getImageCountForItem(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I
    .param p2, "image"    # I

    .prologue
    .line 342
    invoke-virtual {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    .line 343
    .local v0, "adapter":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImgLoader()Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    return-object v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "image"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lme/grishka/appkit/views/UsableRecyclerView;->findViewHolderForAdapterPosition(I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v0

    .line 349
    .local v0, "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0, p2, p3}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;->setImage(ILandroid/graphics/Bitmap;)V

    .line 352
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 376
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    .line 377
    new-instance v0, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->recyclerViewDelegate:Lme/grishka/appkit/imageloader/RecyclerViewDelegate;

    iget-object v3, p0, Lme/grishka/appkit/views/UsableRecyclerView;->listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    invoke-direct {v0, v1, p0, v2, v3}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;-><init>(Landroid/content/Context;Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;)V

    iput-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .line 378
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 382
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onDetachedFromWindow()V

    .line 383
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->deactivate()V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .line 387
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->getScrollState()I

    move-result v2

    if-nez v2, :cond_4

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->lastTouchX:F

    iput v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->touchDownX:F

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->lastTouchY:F

    iput v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->touchDownY:F

    .line 133
    iput-object v6, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightedView:Landroid/view/View;

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    .line 135
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 136
    invoke-virtual {p0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildViewHolder(Landroid/view/View;)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v0

    .line 137
    .local v0, "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    if-eqz v0, :cond_4

    .line 138
    instance-of v2, v0, Lme/grishka/appkit/views/UsableRecyclerView$Clickable;

    if-eqz v2, :cond_4

    .line 139
    instance-of v2, v0, Lme/grishka/appkit/views/UsableRecyclerView$DisableableClickable;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lme/grishka/appkit/views/UsableRecyclerView$DisableableClickable;

    invoke-interface {v2}, Lme/grishka/appkit/views/UsableRecyclerView$DisableableClickable;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    instance-of v2, v0, Lme/grishka/appkit/views/UsableRecyclerView$DisableableClickable;

    if-nez v2, :cond_3

    .line 140
    :cond_1
    iput-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->clickingViewHolder:Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    .line 141
    iput-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightedView:Landroid/view/View;

    .line 142
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedClickStart:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 143
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedClickStart:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 144
    :cond_2
    new-instance v2, Lme/grishka/appkit/views/UsableRecyclerView$ClickStartRunnable;

    invoke-direct {v2, p0, v6}, Lme/grishka/appkit/views/UsableRecyclerView$ClickStartRunnable;-><init>(Lme/grishka/appkit/views/UsableRecyclerView;Lme/grishka/appkit/views/UsableRecyclerView$1;)V

    iput-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedClickStart:Ljava/lang/Runnable;

    iget v3, p0, Lme/grishka/appkit/views/UsableRecyclerView;->clickStartTimeout:I

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Lme/grishka/appkit/views/UsableRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    :cond_3
    instance-of v2, v0, Lme/grishka/appkit/views/UsableRecyclerView$LongClickable;

    if-eqz v2, :cond_4

    .line 147
    new-instance v2, Lme/grishka/appkit/views/UsableRecyclerView$LongClickRunnable;

    invoke-direct {v2, p0, v6}, Lme/grishka/appkit/views/UsableRecyclerView$LongClickRunnable;-><init>(Lme/grishka/appkit/views/UsableRecyclerView;Lme/grishka/appkit/views/UsableRecyclerView$1;)V

    iput-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedLongClick:Ljava/lang/Runnable;

    iget v3, p0, Lme/grishka/appkit/views/UsableRecyclerView;->longClickTimeout:I

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Lme/grishka/appkit/views/UsableRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    .end local v0    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .end local v1    # "view":Landroid/view/View;
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 154
    iput-object v6, p0, Lme/grishka/appkit/views/UsableRecyclerView;->clickingViewHolder:Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    .line 155
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightedView:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 156
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightedView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 157
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlight:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lme/grishka/appkit/views/UsableRecyclerView;->EMPTY_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 158
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedClickStart:Ljava/lang/Runnable;

    if-eqz v2, :cond_5

    .line 159
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedClickStart:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 160
    iput-object v6, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedClickStart:Ljava/lang/Runnable;

    .line 162
    :cond_5
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedLongClick:Ljava/lang/Runnable;

    if-eqz v2, :cond_6

    .line 163
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedLongClick:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 164
    iput-object v6, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedLongClick:Ljava/lang/Runnable;

    .line 168
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->clickingViewHolder:Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    if-eqz v2, :cond_9

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->lastTouchX:F

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->lastTouchY:F

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lme/grishka/appkit/views/UsableRecyclerView;->touchDownX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lme/grishka/appkit/views/UsableRecyclerView;->touchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lme/grishka/appkit/views/UsableRecyclerView;->touchDownY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lme/grishka/appkit/views/UsableRecyclerView;->touchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 172
    :cond_7
    iput-object v6, p0, Lme/grishka/appkit/views/UsableRecyclerView;->clickingViewHolder:Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    .line 173
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightedView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 174
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlight:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lme/grishka/appkit/views/UsableRecyclerView;->EMPTY_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 175
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedClickStart:Ljava/lang/Runnable;

    if-eqz v2, :cond_8

    .line 176
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedClickStart:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 177
    iput-object v6, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedClickStart:Ljava/lang/Runnable;

    .line 179
    :cond_8
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedLongClick:Ljava/lang/Runnable;

    if-eqz v2, :cond_9

    .line 180
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedLongClick:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 181
    iput-object v6, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedLongClick:Ljava/lang/Runnable;

    .line 185
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->lastTouchX:F

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->lastTouchY:F

    .line 188
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedLongClick:Ljava/lang/Runnable;

    if-eqz v2, :cond_a

    .line 189
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedLongClick:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 190
    iput-object v6, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedLongClick:Ljava/lang/Runnable;

    .line 192
    :cond_a
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->clickingViewHolder:Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lme/grishka/appkit/views/UsableRecyclerView;->touchDownX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lme/grishka/appkit/views/UsableRecyclerView;->touchSlop:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lme/grishka/appkit/views/UsableRecyclerView;->touchDownY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lme/grishka/appkit/views/UsableRecyclerView;->touchSlop:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d

    .line 193
    :cond_b
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->clickingViewHolder:Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    check-cast v2, Lme/grishka/appkit/views/UsableRecyclerView$Clickable;

    invoke-interface {v2}, Lme/grishka/appkit/views/UsableRecyclerView$Clickable;->onClick()V

    .line 194
    invoke-virtual {p0, v7}, Lme/grishka/appkit/views/UsableRecyclerView;->playSoundEffect(I)V

    .line 195
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedClickStart:Ljava/lang/Runnable;

    if-eqz v2, :cond_c

    .line 196
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedClickStart:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 197
    iget-object v2, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedClickStart:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 198
    iput-object v6, p0, Lme/grishka/appkit/views/UsableRecyclerView;->postedClickStart:Ljava/lang/Runnable;

    .line 200
    :cond_c
    iput-object v6, p0, Lme/grishka/appkit/views/UsableRecyclerView;->clickingViewHolder:Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    .line 201
    new-instance v2, Lme/grishka/appkit/views/UsableRecyclerView$2;

    invoke-direct {v2, p0}, Lme/grishka/appkit/views/UsableRecyclerView$2;-><init>(Lme/grishka/appkit/views/UsableRecyclerView;)V

    const-wide/16 v4, 0x32

    invoke-virtual {p0, v2, v4, v5}, Lme/grishka/appkit/views/UsableRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    :cond_d
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public removeDataSetObserver(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$DataSetObserver;

    .prologue
    .line 361
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->imgLoaderObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 362
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 288
    invoke-virtual {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView;->emptyViewObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 291
    :cond_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 292
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 293
    if-eqz p1, :cond_1

    .line 294
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->emptyViewObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 296
    :cond_1
    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->updateEmptyViewVisibility()V

    .line 297
    return-void

    .line 291
    :cond_2
    new-instance v0, Lme/grishka/appkit/imageloader/RecycleImageAdapter;

    check-cast p1, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    .end local p1    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-direct {v0, p1}, Lme/grishka/appkit/imageloader/RecycleImageAdapter;-><init>(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "drawOnTop"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lme/grishka/appkit/views/UsableRecyclerView;->drawHighlightOnTop:Z

    .line 236
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 274
    iput-object p1, p0, Lme/grishka/appkit/views/UsableRecyclerView;->emptyView:Landroid/view/View;

    .line 275
    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->updateEmptyViewVisibility()V

    .line 276
    return-void
.end method

.method public setListener(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;)V
    .locals 1
    .param p1, "listener"    # Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 395
    iput-object p1, p0, Lme/grishka/appkit/views/UsableRecyclerView;->listener:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;

    .line 396
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->setListener(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;)V

    .line 399
    :cond_0
    return-void
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "drawableRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 216
    invoke-virtual {p0}, Lme/grishka/appkit/views/UsableRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 217
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 222
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlight:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 228
    :cond_0
    iput-object p1, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlight:Landroid/graphics/drawable/Drawable;

    .line 229
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlight:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method public setSelectorBoundsProvider(Lme/grishka/appkit/views/UsableRecyclerView$SelectorBoundsProvider;)V
    .locals 0
    .param p1, "provider"    # Lme/grishka/appkit/views/UsableRecyclerView$SelectorBoundsProvider;

    .prologue
    .line 239
    iput-object p1, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlightBoundsProvider:Lme/grishka/appkit/views/UsableRecyclerView$SelectorBoundsProvider;

    .line 240
    return-void
.end method

.method public updateImages()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->updateImages()V

    .line 405
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView;->highlight:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
