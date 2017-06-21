.class public Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
.super Landroid/support/v7/widget/RecyclerView$LayoutParams;
.source "LayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/superslim/LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonicartos/superslim/LayoutManager$LayoutParams$InvalidFirstPositionException;,
        Lcom/tonicartos/superslim/LayoutManager$LayoutParams$MissingFirstPositionException;,
        Lcom/tonicartos/superslim/LayoutManager$LayoutParams$HeaderDisplayOptions;
    }
.end annotation


# static fields
.field private static final DEFAULT_HEADER_DISPLAY:I = 0x11

.field private static final DEFAULT_HEADER_MARGIN:I = -0x1

.field private static final DEFAULT_IS_HEADER:Z = false

.field public static final HEADER_ALIGN_END:I = 0x4

.field public static final HEADER_ALIGN_START:I = 0x2

.field public static final HEADER_INLINE:I = 0x1

.field public static final HEADER_OVERLAY:I = 0x8

.field public static final HEADER_STICKY:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NO_FIRST_POSITION:I = -0x1


# instance fields
.field public headerDisplay:I

.field public headerEndMarginIsAuto:Z

.field public headerMarginEnd:I

.field public headerMarginStart:I

.field public headerStartMarginIsAuto:Z

.field public isHeader:Z

.field private mFirstPosition:I

.field sectionManager:Ljava/lang/String;

.field sectionManagerKind:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1772
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 1767
    const/4 v0, 0x1

    iput v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManagerKind:I

    .line 1774
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    .line 1775
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1779
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1767
    iput v5, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManagerKind:I

    .line 1781
    sget-object v4, Lcom/tonicartos/superslim/R$styleable;->superslim_LayoutManager:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1782
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/tonicartos/superslim/R$styleable;->superslim_LayoutManager_slm_isHeader:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    .line 1786
    sget v4, Lcom/tonicartos/superslim/R$styleable;->superslim_LayoutManager_slm_headerDisplay:I

    const/16 v7, 0x11

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerDisplay:I

    .line 1789
    sget v4, Lcom/tonicartos/superslim/R$styleable;->superslim_LayoutManager_slm_section_firstPosition:I

    const/4 v7, -0x1

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->mFirstPosition:I

    .line 1794
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v4, v7, :cond_3

    .line 1795
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1796
    .local v3, "value":Landroid/util/TypedValue;
    sget v4, Lcom/tonicartos/superslim/R$styleable;->superslim_LayoutManager_slm_section_headerMarginStart:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 1798
    iget v4, v3, Landroid/util/TypedValue;->type:I

    if-ne v4, v8, :cond_0

    move v4, v5

    :goto_0
    invoke-direct {p0, v0, v4}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->loadHeaderStartMargin(Landroid/content/res/TypedArray;Z)V

    .line 1800
    sget v4, Lcom/tonicartos/superslim/R$styleable;->superslim_LayoutManager_slm_section_headerMarginEnd:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 1801
    iget v4, v3, Landroid/util/TypedValue;->type:I

    if-ne v4, v8, :cond_1

    move v4, v5

    :goto_1
    invoke-direct {p0, v0, v4}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->loadHeaderEndMargin(Landroid/content/res/TypedArray;Z)V

    .line 1803
    sget v4, Lcom/tonicartos/superslim/R$styleable;->superslim_LayoutManager_slm_section_sectionManager:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 1804
    iget v4, v3, Landroid/util/TypedValue;->type:I

    if-ne v4, v9, :cond_2

    :goto_2
    invoke-direct {p0, v0, v5}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->loadSlm(Landroid/content/res/TypedArray;Z)V

    .line 1823
    .end local v3    # "value":Landroid/util/TypedValue;
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1824
    return-void

    .restart local v3    # "value":Landroid/util/TypedValue;
    :cond_0
    move v4, v6

    .line 1798
    goto :goto_0

    :cond_1
    move v4, v6

    .line 1801
    goto :goto_1

    :cond_2
    move v5, v6

    .line 1804
    goto :goto_2

    .line 1807
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_3
    sget v4, Lcom/tonicartos/superslim/R$styleable;->superslim_LayoutManager_slm_section_headerMarginStart:I

    .line 1808
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v4

    if-ne v4, v8, :cond_4

    move v1, v5

    .line 1810
    .local v1, "isDimension":Z
    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->loadHeaderStartMargin(Landroid/content/res/TypedArray;Z)V

    .line 1812
    sget v4, Lcom/tonicartos/superslim/R$styleable;->superslim_LayoutManager_slm_section_headerMarginEnd:I

    .line 1813
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v4

    if-ne v4, v8, :cond_5

    move v1, v5

    .line 1815
    :goto_5
    invoke-direct {p0, v0, v1}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->loadHeaderEndMargin(Landroid/content/res/TypedArray;Z)V

    .line 1817
    sget v4, Lcom/tonicartos/superslim/R$styleable;->superslim_LayoutManager_slm_section_sectionManager:I

    .line 1818
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v4

    if-ne v4, v9, :cond_6

    move v2, v5

    .line 1820
    .local v2, "isString":Z
    :goto_6
    invoke-direct {p0, v0, v2}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->loadSlm(Landroid/content/res/TypedArray;Z)V

    goto :goto_3

    .end local v1    # "isDimension":Z
    .end local v2    # "isString":Z
    :cond_4
    move v1, v6

    .line 1808
    goto :goto_4

    .restart local v1    # "isDimension":Z
    :cond_5
    move v1, v6

    .line 1813
    goto :goto_5

    :cond_6
    move v2, v6

    .line 1818
    goto :goto_6
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "other"    # Landroid/view/ViewGroup$LayoutParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1851
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1767
    const/4 v0, 0x1

    iput v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManagerKind:I

    .line 1852
    invoke-direct {p0, p1}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->init(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1853
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "other"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1836
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1767
    const/4 v0, 0x1

    iput v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManagerKind:I

    .line 1837
    invoke-direct {p0, p1}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->init(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1838
    return-void
.end method

.method public static from(Landroid/view/ViewGroup$LayoutParams;)Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    .locals 3
    .param p0, "other"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v2, -0x2

    .line 1862
    if-nez p0, :cond_0

    .line 1863
    const-string/jumbo v0, "SuperSLiM"

    const-string/jumbo v1, "Null value passed in call to LayoutManager.LayoutParams.from()."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    new-instance v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    invoke-direct {v0, v2, v2}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;-><init>(II)V

    .line 1869
    :goto_0
    return-object v0

    .line 1866
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 1867
    new-instance v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p0    # "other":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p0}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 1869
    .restart local p0    # "other":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    invoke-direct {v0, p0}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private init(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "other"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1954
    instance-of v1, p1, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1955
    check-cast v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    .line 1956
    .local v0, "lp":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    iget-boolean v1, v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    iput-boolean v1, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    .line 1957
    iget v1, v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerDisplay:I

    iput v1, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerDisplay:I

    .line 1958
    iget v1, v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->mFirstPosition:I

    iput v1, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->mFirstPosition:I

    .line 1959
    iget-object v1, v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManager:Ljava/lang/String;

    iput-object v1, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManager:Ljava/lang/String;

    .line 1960
    iget v1, v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManagerKind:I

    iput v1, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManagerKind:I

    .line 1961
    iget v1, v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerMarginEnd:I

    iput v1, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerMarginEnd:I

    .line 1962
    iget v1, v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerMarginStart:I

    iput v1, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerMarginStart:I

    .line 1963
    iget-boolean v1, v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerEndMarginIsAuto:Z

    iput-boolean v1, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerEndMarginIsAuto:Z

    .line 1964
    iget-boolean v1, v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerStartMarginIsAuto:Z

    iput-boolean v1, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerStartMarginIsAuto:Z

    .line 1974
    .end local v0    # "lp":Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
    :goto_0
    return-void

    .line 1966
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->isHeader:Z

    .line 1967
    const/16 v1, 0x11

    iput v1, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerDisplay:I

    .line 1968
    iput v3, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerMarginEnd:I

    .line 1969
    iput v3, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerMarginStart:I

    .line 1970
    iput-boolean v2, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerStartMarginIsAuto:Z

    .line 1971
    iput-boolean v2, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerEndMarginIsAuto:Z

    .line 1972
    iput v2, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManagerKind:I

    goto :goto_0
.end method

.method private loadHeaderEndMargin(Landroid/content/res/TypedArray;Z)V
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "isDimension"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1977
    if-eqz p2, :cond_0

    .line 1978
    iput-boolean v1, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerEndMarginIsAuto:Z

    .line 1979
    sget v0, Lcom/tonicartos/superslim/R$styleable;->superslim_LayoutManager_slm_section_headerMarginEnd:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerMarginEnd:I

    .line 1984
    :goto_0
    return-void

    .line 1982
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerEndMarginIsAuto:Z

    goto :goto_0
.end method

.method private loadHeaderStartMargin(Landroid/content/res/TypedArray;Z)V
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "isDimension"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1987
    if-eqz p2, :cond_0

    .line 1988
    iput-boolean v1, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerStartMarginIsAuto:Z

    .line 1989
    sget v0, Lcom/tonicartos/superslim/R$styleable;->superslim_LayoutManager_slm_section_headerMarginStart:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerMarginStart:I

    .line 1994
    :goto_0
    return-void

    .line 1992
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerStartMarginIsAuto:Z

    goto :goto_0
.end method

.method private loadSlm(Landroid/content/res/TypedArray;Z)V
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "isString"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1997
    if-eqz p2, :cond_1

    .line 1998
    sget v0, Lcom/tonicartos/superslim/R$styleable;->superslim_LayoutManager_slm_section_sectionManager:I

    .line 1999
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManager:Ljava/lang/String;

    .line 2000
    iget-object v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManager:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2001
    iput v1, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManagerKind:I

    .line 2010
    :goto_0
    return-void

    .line 2003
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManagerKind:I

    goto :goto_0

    .line 2006
    :cond_1
    sget v0, Lcom/tonicartos/superslim/R$styleable;->superslim_LayoutManager_slm_section_sectionManager:I

    .line 2007
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManagerKind:I

    goto :goto_0
.end method


# virtual methods
.method public areHeaderFlagsSet(I)Z
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1874
    iget v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerDisplay:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstPosition()I
    .locals 1

    .prologue
    .line 1883
    iget v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->mFirstPosition:I

    return v0
.end method

.method public getTestedFirstPosition()I
    .locals 2

    .prologue
    .line 1907
    iget v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->mFirstPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1908
    new-instance v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams$MissingFirstPositionException;

    invoke-direct {v0, p0}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams$MissingFirstPositionException;-><init>(Lcom/tonicartos/superslim/LayoutManager$LayoutParams;)V

    throw v0

    .line 1910
    :cond_0
    iget v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->mFirstPosition:I

    return v0
.end method

.method public isHeaderEndAligned()Z
    .locals 1

    .prologue
    .line 1914
    iget v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerDisplay:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeaderInline()Z
    .locals 1

    .prologue
    .line 1918
    iget v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerDisplay:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeaderOverlay()Z
    .locals 1

    .prologue
    .line 1922
    iget v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerDisplay:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeaderStartAligned()Z
    .locals 1

    .prologue
    .line 1926
    iget v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerDisplay:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeaderSticky()Z
    .locals 1

    .prologue
    .line 1930
    iget v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->headerDisplay:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFirstPosition(I)V
    .locals 1
    .param p1, "firstPosition"    # I

    .prologue
    .line 1894
    if-gez p1, :cond_0

    .line 1895
    new-instance v0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams$InvalidFirstPositionException;

    invoke-direct {v0, p0}, Lcom/tonicartos/superslim/LayoutManager$LayoutParams$InvalidFirstPositionException;-><init>(Lcom/tonicartos/superslim/LayoutManager$LayoutParams;)V

    throw v0

    .line 1897
    :cond_0
    iput p1, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->mFirstPosition:I

    .line 1898
    return-void
.end method

.method public setSlm(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1950
    iput p1, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManagerKind:I

    .line 1951
    return-void
.end method

.method public setSlm(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1940
    const/4 v0, -0x1

    iput v0, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManagerKind:I

    .line 1941
    iput-object p1, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams;->sectionManager:Ljava/lang/String;

    .line 1942
    return-void
.end method
