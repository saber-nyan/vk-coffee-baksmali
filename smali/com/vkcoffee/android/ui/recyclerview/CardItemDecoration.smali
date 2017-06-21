.class public Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "CardItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;
    }
.end annotation


# static fields
.field public static final BACKGROUND_COLOR:I = -0x141210


# instance fields
.field private mAdapterToChildPosition:Landroid/util/SparseIntArray;

.field private mBackgroundPaddingBottom:I

.field private mBackgroundPaddingLeft:I

.field private mBackgroundPaddingRight:I

.field private mBackgroundPaddingTop:I

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mBuildAdapterToChildProjection:Z

.field private final mCardBackground:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

.field private mCardsSpacing:I

.field private mClipToPadding:Z

.field private mFullSize:Z

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mProvider:Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;Z)V
    .locals 5
    .param p1, "provider"    # Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "fullWidth"    # Z

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mClipToPadding:Z

    .line 53
    iput-boolean v1, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBuildAdapterToChildProjection:Z

    .line 54
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mAdapterToChildPosition:Landroid/util/SparseIntArray;

    .line 57
    new-instance v1, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, -0x1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    int-to-float v4, v4

    iput-boolean p2, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mFullSize:Z

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mCardBackground:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    .line 58
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v1, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaint:Landroid/graphics/Paint;

    const v2, -0x141210

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iput-object p1, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mProvider:Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 63
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mCardBackground:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 65
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingLeft:I

    .line 66
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingTop:I

    .line 67
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingRight:I

    .line 68
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingBottom:I

    .line 69
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;Landroid/view/View;IIIIII)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I
    .param p7, "topExtra"    # I
    .param p8, "bottomExtra"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mCardBackground:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->getRadius()I

    move-result v6

    .line 204
    .local v6, "radius":I
    const/4 v1, 0x0

    sub-int v0, p4, p7

    int-to-float v2, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingLeft:I

    add-int/2addr v0, p3

    int-to-float v3, v0

    add-int v0, p6, p8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 207
    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingRight:I

    sub-int v0, p5, v0

    int-to-float v1, v0

    sub-int v0, p4, p7

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    add-int v0, p6, p8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 210
    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingLeft:I

    add-int/2addr v0, p3

    int-to-float v1, v0

    sub-int v0, p4, p7

    int-to-float v2, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingRight:I

    sub-int v0, p5, v0

    int-to-float v3, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingTop:I

    add-int/2addr v0, p4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 213
    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingLeft:I

    add-int/2addr v0, p3

    int-to-float v1, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingBottom:I

    sub-int v0, p6, v0

    int-to-float v2, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingRight:I

    sub-int v0, p5, v0

    int-to-float v3, v0

    add-int v0, p6, p8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 216
    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingLeft:I

    add-int/2addr v0, p3

    int-to-float v1, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingTop:I

    add-int/2addr v0, p4

    int-to-float v2, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingLeft:I

    add-int/2addr v0, p3

    add-int/2addr v0, v6

    int-to-float v3, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingTop:I

    add-int/2addr v0, p4

    add-int/2addr v0, v6

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 219
    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingLeft:I

    add-int/2addr v0, p3

    int-to-float v1, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingBottom:I

    sub-int v0, p6, v0

    sub-int/2addr v0, v6

    int-to-float v2, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingLeft:I

    add-int/2addr v0, p3

    add-int/2addr v0, v6

    int-to-float v3, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingBottom:I

    sub-int v0, p6, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 222
    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingRight:I

    sub-int v0, p5, v0

    sub-int/2addr v0, v6

    int-to-float v1, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingTop:I

    add-int/2addr v0, p4

    int-to-float v2, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingRight:I

    sub-int v0, p5, v0

    int-to-float v3, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingTop:I

    add-int/2addr v0, p4

    add-int/2addr v0, v6

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 225
    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingRight:I

    sub-int v0, p5, v0

    sub-int/2addr v0, v6

    int-to-float v1, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingBottom:I

    sub-int v0, p6, v0

    sub-int/2addr v0, v6

    int-to-float v2, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingRight:I

    sub-int v0, p5, v0

    int-to-float v3, v0

    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingBottom:I

    sub-int v0, p6, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 228
    .end local v6    # "radius":I
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mCardBackground:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->setBounds(IIII)V

    .line 229
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mCardBackground:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 230
    return-void
.end method

.method static is(II)Z
    .locals 1
    .param p0, "i"    # I
    .param p1, "inspection"    # I

    .prologue
    .line 328
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isnt(II)Z
    .locals 1
    .param p0, "i"    # I
    .param p1, "inspection"    # I

    .prologue
    .line 332
    and-int v0, p0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clipToPadding(Z)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .locals 0
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mClipToPadding:Z

    .line 93
    return-object p0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 234
    iget-object v2, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mProvider:Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;

    if-eqz v2, :cond_0

    .line 235
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 236
    .local v0, "position":I
    iget-object v2, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mProvider:Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;

    invoke-interface {v2, v0}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;->getBlockType(I)I

    move-result v1

    .line 238
    .local v1, "type":I
    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->is(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mCardsSpacing:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 243
    .end local v0    # "position":I
    .end local v1    # "type":I
    :cond_0
    return-void
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mPaddingTop:I

    return v0
.end method

.method public getShadowSize()F
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mCardBackground:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->getShadowSize()F

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 25
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 98
    if-nez p2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mProvider:Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;

    if-nez v2, :cond_2

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mPaddingLeft:I

    sub-int v5, v2, v3

    .line 103
    .local v5, "left":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mCardBackground:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->getRadius()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mPaddingTop:I

    sub-int v6, v2, v3

    .line 104
    .local v6, "top":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingRight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mPaddingRight:I

    add-int v7, v2, v3

    .line 105
    .local v7, "right":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mCardBackground:Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;->getRadius()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mPaddingBottom:I

    add-int v8, v2, v3

    .line 106
    .local v8, "bottom":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->drawBackground(Landroid/graphics/Canvas;Landroid/view/View;IIIIII)V

    goto :goto_0

    .line 110
    .end local v5    # "left":I
    .end local v6    # "top":I
    .end local v7    # "right":I
    .end local v8    # "bottom":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v16

    .line 111
    .local v16, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mFullSize:Z

    if-eqz v2, :cond_4

    const/4 v15, 0x0

    .line 112
    .local v15, "leftDefault":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mFullSize:Z

    if-eqz v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v18

    .line 114
    .local v18, "rightDefault":I
    :goto_2
    const/4 v6, 0x0

    .line 115
    .restart local v6    # "top":I
    const/4 v8, 0x0

    .line 116
    .restart local v8    # "bottom":I
    const/4 v9, 0x0

    .line 117
    .local v9, "topExtra":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mCardsSpacing:I

    .line 119
    .local v10, "bottomExtra":I
    move v5, v15

    .line 120
    .restart local v5    # "left":I
    move/from16 v7, v18

    .line 121
    .restart local v7    # "right":I
    const/16 v24, 0x0

    .line 122
    .local v24, "wasTop":Z
    const/16 v23, 0x0

    .line 123
    .local v23, "wasBottom":Z
    const/4 v14, 0x0

    .line 125
    .local v14, "draw":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBuildAdapterToChildProjection:Z

    if-eqz v2, :cond_8

    invoke-static/range {p2 .. p2}, Lcom/vkcoffee/android/ui/recyclerview/RecyclerViewUtils;->getRealFirstPosition(Landroid/support/v7/widget/RecyclerView;)I

    move-result v19

    .line 126
    .local v19, "start":I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBuildAdapterToChildProjection:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mAdapterToChildPosition:Landroid/util/SparseIntArray;

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-static {v0, v2, v1}, Lcom/vkcoffee/android/ui/recyclerview/RecyclerViewUtils;->mapAdapterToChildPositions(Landroid/support/v7/widget/RecyclerView;Landroid/util/SparseIntArray;I)I

    move-result v21

    .line 127
    .local v21, "viewEnd":I
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    .line 130
    .local v11, "adapterEnd":I
    move/from16 v17, v19

    .local v17, "position":I
    :goto_5
    move/from16 v0, v17

    move/from16 v1, v21

    if-gt v0, v1, :cond_0

    .line 131
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBuildAdapterToChildProjection:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mAdapterToChildPosition:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v22

    .line 133
    .local v22, "viewPosition":I
    :goto_6
    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_b

    .line 130
    :cond_3
    :goto_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 111
    .end local v5    # "left":I
    .end local v6    # "top":I
    .end local v7    # "right":I
    .end local v8    # "bottom":I
    .end local v9    # "topExtra":I
    .end local v10    # "bottomExtra":I
    .end local v11    # "adapterEnd":I
    .end local v14    # "draw":Z
    .end local v15    # "leftDefault":I
    .end local v17    # "position":I
    .end local v18    # "rightDefault":I
    .end local v19    # "start":I
    .end local v21    # "viewEnd":I
    .end local v22    # "viewPosition":I
    .end local v23    # "wasBottom":Z
    .end local v24    # "wasTop":Z
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mClipToPadding:Z

    if-eqz v2, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mPaddingLeft:I

    sub-int v15, v2, v3

    goto :goto_1

    :cond_5
    const v15, 0x7fffffff

    goto :goto_1

    .line 112
    .restart local v15    # "leftDefault":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mClipToPadding:Z

    if-eqz v2, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingRight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mPaddingRight:I

    add-int v18, v2, v3

    goto/16 :goto_2

    :cond_7
    const/high16 v18, -0x80000000

    goto/16 :goto_2

    .line 125
    .restart local v5    # "left":I
    .restart local v6    # "top":I
    .restart local v7    # "right":I
    .restart local v8    # "bottom":I
    .restart local v9    # "topExtra":I
    .restart local v10    # "bottomExtra":I
    .restart local v14    # "draw":Z
    .restart local v18    # "rightDefault":I
    .restart local v23    # "wasBottom":Z
    .restart local v24    # "wasTop":Z
    :cond_8
    const/16 v19, 0x0

    goto :goto_3

    .line 126
    .restart local v19    # "start":I
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/lit8 v21, v2, -0x1

    goto :goto_4

    .restart local v11    # "adapterEnd":I
    .restart local v17    # "position":I
    .restart local v21    # "viewEnd":I
    :cond_a
    move/from16 v22, v17

    .line 131
    goto :goto_6

    .line 136
    .restart local v22    # "viewPosition":I
    :cond_b
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 138
    .local v13, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBuildAdapterToChildProjection:Z

    if-eqz v2, :cond_14

    move/from16 v12, v17

    .line 140
    .local v12, "adapterPosition":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mProvider:Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;

    invoke-interface {v2, v12}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;->getBlockType(I)I

    move-result v20

    .line 143
    .local v20, "type":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mFullSize:Z

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mClipToPadding:Z

    if-nez v2, :cond_d

    .line 144
    const/16 v2, 0x8

    move/from16 v0, v20

    invoke-static {v0, v2}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->is(II)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 145
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mPaddingLeft:I

    sub-int/2addr v2, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 147
    :cond_c
    const/16 v2, 0x10

    move/from16 v0, v20

    invoke-static {v0, v2}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->is(II)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 148
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingRight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mPaddingRight:I

    add-int/2addr v2, v3

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 153
    :cond_d
    if-eqz v20, :cond_e

    if-nez v24, :cond_e

    .line 154
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v13}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mPaddingTop:I

    sub-int v6, v2, v3

    .line 155
    const/16 v24, 0x1

    .line 156
    const/16 v23, 0x0

    .line 157
    if-nez v12, :cond_e

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mPaddingTop:I

    sub-int v9, v2, v3

    .line 163
    :cond_e
    if-eqz v20, :cond_f

    .line 164
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v13}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaddingBottom:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mPaddingBottom:I

    add-int v8, v2, v3

    .line 168
    :cond_f
    const/4 v2, 0x4

    move/from16 v0, v20

    invoke-static {v0, v2}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->is(II)Z

    move-result v2

    if-eqz v2, :cond_10

    if-nez v23, :cond_10

    .line 169
    const/16 v24, 0x0

    .line 170
    const/16 v23, 0x1

    .line 171
    const/4 v14, 0x1

    .line 175
    :cond_10
    move/from16 v0, v21

    if-ne v12, v0, :cond_11

    if-eqz v24, :cond_11

    if-nez v23, :cond_11

    .line 176
    const/4 v14, 0x1

    .line 177
    const/16 v24, 0x0

    .line 178
    const/16 v23, 0x0

    .line 183
    :cond_11
    if-eq v12, v11, :cond_12

    move/from16 v0, v21

    if-ne v12, v0, :cond_13

    .line 184
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v2

    sub-int v10, v2, v8

    .line 187
    :cond_13
    if-eqz v14, :cond_3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 188
    invoke-direct/range {v2 .. v10}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->drawBackground(Landroid/graphics/Canvas;Landroid/view/View;IIIIII)V

    .line 189
    const/4 v14, 0x0

    .line 190
    const/4 v9, 0x0

    .line 191
    move-object/from16 v0, p0

    iget v10, v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mCardsSpacing:I

    .line 192
    move v5, v15

    .line 193
    move/from16 v7, v18

    goto/16 :goto_7

    .line 138
    .end local v12    # "adapterPosition":I
    .end local v20    # "type":I
    :cond_14
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v12

    goto/16 :goto_8
.end method

.method public setBackgroundColor(I)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    return-object p0
.end method

.method public setCardsSpacing(I)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .locals 0
    .param p1, "spacing"    # I

    .prologue
    .line 271
    iput p1, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mCardsSpacing:I

    .line 272
    return-object p0
.end method

.method public setFullSize(Z)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .locals 0
    .param p1, "fullSize"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mFullSize:Z

    .line 263
    return-object p0
.end method

.method public setPadding(IIII)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 250
    iput p1, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mPaddingLeft:I

    .line 251
    iput p2, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mPaddingTop:I

    .line 252
    iput p3, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mPaddingRight:I

    .line 253
    iput p4, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mPaddingBottom:I

    .line 254
    return-object p0
.end method

.method public setProvider(Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .locals 0
    .param p1, "provider"    # Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    iput-object p1, p0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->mProvider:Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;

    .line 73
    return-object p0
.end method
