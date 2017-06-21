.class public Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
.super Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;
.source "TwoWayGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;,
        Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;
    }
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final DEBUG:Z = false

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3

.field public static final TAG:Ljava/lang/String; = "TwoWayGridView"


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field protected mGridBuilder:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mNumRows:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mRequestedNumRows:I

.field private mRequestedRowHeight:I

.field private mRequestedVerticalSpacing:I

.field private mRowHeight:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;-><init>(Landroid/content/Context;)V

    .line 67
    iput v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumColumns:I

    .line 68
    iput v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumRows:I

    .line 70
    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mHorizontalSpacing:I

    .line 72
    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mVerticalSpacing:I

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStretchMode:I

    .line 82
    iput-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mReferenceView:Landroid/view/View;

    .line 83
    iput-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 85
    const/4 v0, 0x3

    iput v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGravity:I

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mTempRect:Landroid/graphics/Rect;

    .line 89
    iput-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGridBuilder:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;

    .line 93
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setupGridType()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 97
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    iput v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumColumns:I

    .line 68
    iput v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumRows:I

    .line 70
    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mHorizontalSpacing:I

    .line 72
    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mVerticalSpacing:I

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStretchMode:I

    .line 82
    iput-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mReferenceView:Landroid/view/View;

    .line 83
    iput-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 85
    const/4 v0, 0x3

    iput v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGravity:I

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mTempRect:Landroid/graphics/Rect;

    .line 89
    iput-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGridBuilder:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;

    .line 141
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setupGridType()V

    .line 142
    return-void
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRequestedColumnWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRequestedVerticalSpacing:I

    return v0
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRequestedNumColumns:I

    return v0
.end method

.method static synthetic access$1400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->detachAllViewsFromParent()V

    return-void
.end method

.method static synthetic access$1600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "x4"    # Z

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->cleanupLayoutState(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGravity:I

    return v0
.end method

.method static synthetic access$2000(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumRows:I

    return v0
.end method

.method static synthetic access$2002(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumRows:I

    return p1
.end method

.method static synthetic access$2100(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRowHeight:I

    return v0
.end method

.method static synthetic access$2102(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRowHeight:I

    return p1
.end method

.method static synthetic access$2200(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->detachAllViewsFromParent()V

    return-void
.end method

.method static synthetic access$2300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRequestedRowHeight:I

    return v0
.end method

.method static synthetic access$2600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRequestedNumRows:I

    return v0
.end method

.method static synthetic access$2700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "x4"    # Z

    .prologue
    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->cleanupLayoutState(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumColumns:I

    return v0
.end method

.method static synthetic access$302(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumColumns:I

    return p1
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mVerticalSpacing:I

    return v0
.end method

.method static synthetic access$402(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mVerticalSpacing:I

    return p1
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mReferenceView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mReferenceView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mColumnWidth:I

    return v0
.end method

.method static synthetic access$602(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mColumnWidth:I

    return p1
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mHorizontalSpacing:I

    return v0
.end method

.method static synthetic access$702(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mHorizontalSpacing:I

    return p1
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStretchMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$902(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    return-object p1
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v3, 0x1

    .line 388
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_0

    .line 484
    :goto_0
    return v2

    .line 392
    :cond_0
    iget-boolean v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->layoutChildren()V

    .line 396
    :cond_1
    const/4 v1, 0x0

    .line 397
    .local v1, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 399
    .local v0, "action":I
    if-eq v0, v3, :cond_3

    .line 400
    iget v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    if-gez v4, :cond_2

    .line 401
    sparse-switch p1, :sswitch_data_0

    .line 414
    :cond_2
    sparse-switch p1, :sswitch_data_1

    .line 473
    :cond_3
    :goto_1
    if-eqz v1, :cond_a

    move v2, v3

    .line 474
    goto :goto_0

    .line 409
    :sswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->resurrectSelection()Z

    move v2, v3

    .line 410
    goto :goto_0

    .line 416
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 417
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGridBuilder:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 419
    :cond_4
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->fullScroll(I)Z

    move-result v1

    .line 421
    goto :goto_1

    .line 424
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 425
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGridBuilder:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;

    const/16 v5, 0x42

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 427
    :cond_5
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->fullScroll(I)Z

    move-result v1

    .line 429
    goto :goto_1

    .line 432
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 433
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGridBuilder:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 436
    :cond_6
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->fullScroll(I)Z

    move-result v1

    .line 438
    goto :goto_1

    .line 441
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_7

    .line 442
    iget-object v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGridBuilder:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;

    invoke-virtual {v4, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 444
    :cond_7
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->fullScroll(I)Z

    move-result v1

    .line 446
    goto :goto_1

    .line 450
    :sswitch_5
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_8

    .line 451
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->keyPressed()V

    :cond_8
    move v2, v3

    .line 454
    goto :goto_0

    .line 459
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_9

    .line 460
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    .line 462
    :cond_9
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->pageScroll(I)Z

    move-result v1

    goto :goto_1

    .line 476
    :cond_a
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 478
    :pswitch_0
    invoke-super {p0, p1, p3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 480
    :pswitch_1
    invoke-super {p0, p1, p3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 482
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 401
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 414
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_5
        0x3e -> :sswitch_6
        0x42 -> :sswitch_5
    .end sparse-switch

    .line 476
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setupGridType()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mScrollVertically:Z

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGridBuilder:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGridBuilder:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .prologue
    .line 291
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 294
    .local v0, "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 295
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 296
    .restart local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 299
    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 300
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 301
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 302
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 304
    iget-boolean v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 305
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 306
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 313
    :goto_0
    return-void

    .line 308
    :cond_1
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .line 310
    .local v1, "invertedIndex":I
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 311
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 754
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v1

    .line 755
    .local v1, "count":I
    if-lez v1, :cond_2

    iget-boolean v9, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mScrollVertically:Z

    if-nez v9, :cond_2

    .line 756
    iget v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumRows:I

    .line 757
    .local v4, "numRows":I
    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v0, v9, v4

    .line 759
    .local v0, "columnCount":I
    mul-int/lit8 v2, v0, 0x64

    .line 761
    .local v2, "extent":I
    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 762
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 763
    .local v3, "left":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 764
    .local v7, "width":I
    if-lez v7, :cond_0

    .line 765
    mul-int/lit8 v8, v3, 0x64

    div-int/2addr v8, v7

    add-int/2addr v2, v8

    .line 768
    :cond_0
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 769
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v5

    .line 770
    .local v5, "right":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 771
    if-lez v7, :cond_1

    .line 772
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getWidth()I

    move-result v8

    sub-int v8, v5, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v7

    sub-int/2addr v2, v8

    .line 777
    .end local v0    # "columnCount":I
    .end local v2    # "extent":I
    .end local v3    # "left":I
    .end local v4    # "numRows":I
    .end local v5    # "right":I
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "width":I
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v8

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 782
    iget v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    if-ltz v7, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    iget-boolean v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mScrollVertically:Z

    if-nez v7, :cond_0

    .line 783
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 784
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 785
    .local v1, "left":I
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 786
    .local v5, "width":I
    if-lez v5, :cond_0

    .line 787
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumRows:I

    .line 788
    .local v2, "numRows":I
    iget v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    div-int v4, v7, v2

    .line 789
    .local v4, "whichColumn":I
    iget v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    div-int v0, v7, v2

    .line 790
    .local v0, "columnCount":I
    mul-int/lit8 v7, v4, 0x64

    mul-int/lit8 v8, v1, 0x64

    div-int/2addr v8, v5

    sub-int/2addr v7, v8

    .line 791
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    int-to-float v9, v0

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    .line 790
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 794
    .end local v0    # "columnCount":I
    .end local v1    # "left":I
    .end local v2    # "numRows":I
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "whichColumn":I
    .end local v5    # "width":I
    :cond_0
    return v6
.end method

.method protected computeHorizontalScrollRange()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 800
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mScrollVertically:Z

    if-eqz v3, :cond_0

    .line 805
    :goto_0
    return v2

    .line 803
    :cond_0
    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumRows:I

    .line 804
    .local v1, "numRows":I
    iget v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    div-int v0, v3, v1

    .line 805
    .local v0, "columnCount":I
    mul-int/lit8 v3, v0, 0x64

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 698
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v1

    .line 699
    .local v1, "count":I
    if-lez v1, :cond_2

    iget-boolean v9, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mScrollVertically:Z

    if-eqz v9, :cond_2

    .line 700
    iget v4, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumColumns:I

    .line 701
    .local v4, "numColumns":I
    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    .line 703
    .local v5, "rowCount":I
    mul-int/lit8 v2, v5, 0x64

    .line 705
    .local v2, "extent":I
    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 706
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 707
    .local v6, "top":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 708
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 709
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 712
    :cond_0
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 713
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 714
    .local v0, "bottom":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 715
    if-lez v3, :cond_1

    .line 716
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 721
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "numColumns":I
    .end local v5    # "rowCount":I
    .end local v6    # "top":I
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v8

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 726
    iget v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    if-ltz v7, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    iget-boolean v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mScrollVertically:Z

    if-eqz v7, :cond_0

    .line 727
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 728
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 729
    .local v3, "top":I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 730
    .local v0, "height":I
    if-lez v0, :cond_0

    .line 731
    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumColumns:I

    .line 732
    .local v1, "numColumns":I
    iget v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    div-int v5, v7, v1

    .line 733
    .local v5, "whichRow":I
    iget v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    div-int v2, v7, v1

    .line 734
    .local v2, "rowCount":I
    mul-int/lit8 v7, v5, 0x64

    mul-int/lit8 v8, v3, 0x64

    div-int/2addr v8, v0

    sub-int/2addr v7, v8

    .line 735
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    int-to-float v9, v2

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    .line 734
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 738
    .end local v0    # "height":I
    .end local v1    # "numColumns":I
    .end local v2    # "rowCount":I
    .end local v3    # "top":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "whichRow":I
    :cond_0
    return v6
.end method

.method protected computeVerticalScrollRange()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 744
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mScrollVertically:Z

    if-nez v3, :cond_0

    .line 749
    :goto_0
    return v2

    .line 747
    :cond_0
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumColumns:I

    .line 748
    .local v0, "numColumns":I
    iget v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int v1, v3, v0

    .line 749
    .local v1, "rowCount":I
    mul-int/lit8 v3, v1, 0x64

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0
.end method

.method fillGap(Z)V
    .locals 1
    .param p1, "down"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGridBuilder:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;->fillGap(Z)V

    .line 226
    return-void
.end method

.method findMotionRowX(I)I
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v0

    .line 254
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 256
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumRows:I

    .line 257
    .local v2, "numRows":I
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 258
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 259
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 260
    iget v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 271
    .end local v1    # "i":I
    .end local v2    # "numRows":I
    :goto_1
    return v3

    .line 258
    .restart local v1    # "i":I
    .restart local v2    # "numRows":I
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 264
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_3

    .line 265
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 266
    iget v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 264
    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    .line 271
    .end local v1    # "i":I
    .end local v2    # "numRows":I
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method findMotionRowY(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v0

    .line 231
    .local v0, "childCount":I
    if-lez v0, :cond_3

    .line 233
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mNumColumns:I

    .line 234
    .local v2, "numColumns":I
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 235
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 236
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 237
    iget v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 248
    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :goto_1
    return v3

    .line 235
    .restart local v1    # "i":I
    .restart local v2    # "numColumns":I
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 241
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_3

    .line 242
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 243
    iget v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 241
    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    .line 248
    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x2

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "moved":Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2

    .line 523
    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mLayoutMode:I

    .line 524
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setSelectionInt(I)V

    .line 525
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->invokeOnItemScrollListener()V

    .line 526
    const/4 v0, 0x1

    .line 534
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 538
    :cond_1
    return v0

    .line 527
    :cond_2
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    .line 528
    iput v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mLayoutMode:I

    .line 529
    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setSelectionInt(I)V

    .line 530
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->invokeOnItemScrollListener()V

    .line 531
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getStretchMode()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStretchMode:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mBlockLayoutRequests:Z

    .line 318
    .local v0, "blockLayoutRequests":Z
    if-nez v0, :cond_0

    .line 319
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mBlockLayoutRequests:Z

    .line 323
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->layoutChildren()V

    .line 325
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->invalidate()V

    .line 327
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_2

    .line 328
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->resetList()V

    .line 329
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    if-nez v0, :cond_1

    .line 337
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mBlockLayoutRequests:Z

    .line 340
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGridBuilder:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;->layoutChildren()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    if-nez v0, :cond_1

    .line 337
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v1

    if-nez v0, :cond_3

    .line 337
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mBlockLayoutRequests:Z

    :cond_3
    throw v1
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v1, -0x1

    .line 206
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 207
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v1

    .line 214
    .end local p1    # "position":I
    :cond_1
    :goto_0
    return p1

    .line 211
    .restart local p1    # "position":I
    :cond_2
    if-ltz p1, :cond_3

    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    if-lt p1, v2, :cond_1

    :cond_3
    move p1, v1

    .line 212
    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 544
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 546
    const/4 v1, -0x1

    .line 547
    .local v1, "closestChildIndex":I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 548
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getScrollY()I

    move-result v8

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 552
    iget-object v6, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mTempRect:Landroid/graphics/Rect;

    .line 553
    .local v6, "otherRect":Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 554
    .local v4, "minDistance":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v0

    .line 555
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 557
    iget-object v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGridBuilder:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;

    invoke-virtual {v7, v3, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 555
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 561
    :cond_1
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 562
    .local v5, "other":Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 563
    invoke-virtual {p0, v5, v6}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 564
    invoke-static {p3, v6, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 566
    .local v2, "distance":I
    if-ge v2, v4, :cond_0

    .line 567
    move v4, v2

    .line 568
    move v1, v3

    goto :goto_1

    .line 573
    .end local v0    # "childCount":I
    .end local v2    # "distance":I
    .end local v3    # "i":I
    .end local v4    # "minDistance":I
    .end local v5    # "other":Landroid/view/View;
    .end local v6    # "otherRect":Landroid/graphics/Rect;
    :cond_2
    if-ltz v1, :cond_3

    .line 574
    iget v7, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setSelection(I)V

    .line 578
    :goto_2
    return-void

    .line 576
    :cond_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->requestLayout()V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 374
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 379
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 384
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 277
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView;->onMeasure(II)V

    .line 278
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mScrollVertically:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGridBuilder:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;

    instance-of v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$VerticalGridBuilder;

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mScrollVertically:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGridBuilder:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;

    instance-of v0, v0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$HorizontalGridBuilder;

    if-nez v0, :cond_2

    .line 280
    :cond_1
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setupGridType()V

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGridBuilder:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;->onMeasure(II)V

    .line 284
    return-void
.end method

.method pageScroll(I)Z
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x0

    .line 496
    const/4 v0, -0x1

    .line 498
    .local v0, "nextPage":I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    .line 499
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 504
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    .line 505
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setSelectionInt(I)V

    .line 506
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->invokeOnItemScrollListener()V

    .line 508
    const/4 v1, 0x1

    .line 511
    :cond_1
    return v1

    .line 500
    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    .line 501
    iget v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mDataSetObserver:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->resetList()V

    .line 169
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->clear()V

    .line 170
    iput-object p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 172
    const/4 v1, -0x1

    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mOldSelectedPosition:I

    .line 173
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mOldSelectedRowId:J

    .line 175
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 176
    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mOldItemCount:I

    .line 177
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    .line 178
    iput-boolean v5, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mDataChanged:Z

    .line 179
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->checkFocus()V

    .line 181
    new-instance v1, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;-><init>(Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mDataSetObserver:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;

    .line 182
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mDataSetObserver:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 184
    iget-object v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRecycler:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayAbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 187
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    .line 188
    iget v1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 192
    .local v0, "position":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setSelectedPositionInt(I)V

    .line 193
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setNextSelectedPositionInt(I)V

    .line 194
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->checkSelectionChanged()V

    .line 201
    .end local v0    # "position":I
    :goto_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->requestLayout()V

    .line 202
    return-void

    .line 190
    :cond_1
    invoke-virtual {p0, v4, v5}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_0

    .line 196
    .end local v0    # "position":I
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->checkFocus()V

    .line 198
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setColumnWidth(I)V
    .locals 1
    .param p1, "columnWidth"    # I

    .prologue
    .line 650
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    .line 651
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRequestedColumnWidth:I

    .line 652
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->requestLayoutIfNecessary()V

    .line 654
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 588
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 589
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGravity:I

    .line 590
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->requestLayoutIfNecessary()V

    .line 592
    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 603
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 604
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRequestedHorizontalSpacing:I

    .line 605
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->requestLayoutIfNecessary()V

    .line 607
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 676
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    .line 677
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRequestedNumColumns:I

    .line 678
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->requestLayoutIfNecessary()V

    .line 680
    :cond_0
    return-void
.end method

.method public setNumRows(I)V
    .locals 1
    .param p1, "numRows"    # I

    .prologue
    .line 689
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRequestedNumRows:I

    if-eq p1, v0, :cond_0

    .line 690
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRequestedNumRows:I

    .line 691
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->requestLayoutIfNecessary()V

    .line 693
    :cond_0
    return-void
.end method

.method public setRowHeight(I)V
    .locals 1
    .param p1, "rowHeight"    # I

    .prologue
    .line 663
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRequestedRowHeight:I

    if-eq p1, v0, :cond_0

    .line 664
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRequestedRowHeight:I

    .line 665
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->requestLayoutIfNecessary()V

    .line 667
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->setNextSelectedPositionInt(I)V

    .line 358
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mLayoutMode:I

    .line 359
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->requestLayout()V

    .line 360
    return-void

    .line 356
    :cond_0
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mGridBuilder:Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView$GridBuilder;->setSelectionInt(I)V

    .line 370
    return-void
.end method

.method public setStretchMode(I)V
    .locals 1
    .param p1, "stretchMode"    # I

    .prologue
    .line 633
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 634
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mStretchMode:I

    .line 635
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->requestLayoutIfNecessary()V

    .line 637
    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 619
    iget v0, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRequestedVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 620
    iput p1, p0, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->mRequestedVerticalSpacing:I

    .line 621
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/twowaysgridview/TwoWayGridView;->requestLayoutIfNecessary()V

    .line 623
    :cond_0
    return-void
.end method
