.class public Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$SavedState;,
        Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;,
        Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$BadgeTabProvider;,
        Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$DrawableTabProvider;,
        Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$IconTabProvider;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private autoExpand:Z

.field private checkedTabWidths:Z

.field private currentPosition:I

.field private currentPositionOffset:F

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field public delegatePageListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private dividerColor:I

.field private dividerPadding:I

.field private dividerPaint:Landroid/graphics/Paint;

.field private dividerWidth:I

.field private expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private indicatorColor:I

.field private indicatorHeight:I

.field private lastScrollX:I

.field private locale:Ljava/util/Locale;

.field private mFooterViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderCount:I

.field private mHeaderViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final pageListener:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private shouldExpand:Z

.field private tabBackgroundResId:I

.field private tabColorStateList:Landroid/content/res/ColorStateList;

.field private tabCount:I

.field private tabPadding:I

.field private tabTextColor:I

.field private tabTextSize:I

.field private tabTypeface:Landroid/graphics/Typeface;

.field private tabTypefaceStyle:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private textAllCaps:Z

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v3, -0x99999a

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 146
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    new-instance v2, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;

    invoke-direct {v2, p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;-><init>(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)V

    iput-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pageListener:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;

    .line 99
    iput v5, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPosition:I

    .line 100
    iput v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPositionOffset:F

    .line 105
    iput-boolean v5, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->checkedTabWidths:Z

    .line 107
    iput v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorColor:I

    .line 108
    const/high16 v2, 0x1a000000

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineColor:I

    .line 109
    const/high16 v2, 0x1a000000

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerColor:I

    .line 111
    iput-boolean v5, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->shouldExpand:Z

    .line 112
    iput-boolean v4, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->autoExpand:Z

    .line 113
    iput-boolean v4, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->textAllCaps:Z

    .line 115
    const/16 v2, 0x34

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollOffset:I

    .line 116
    const/16 v2, 0x8

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorHeight:I

    .line 117
    const/4 v2, 0x2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineHeight:I

    .line 118
    const/16 v2, 0xc

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPadding:I

    .line 119
    const/16 v2, 0x18

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    .line 120
    iput v4, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerWidth:I

    .line 122
    const/16 v2, 0xc

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextSize:I

    .line 123
    iput v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextColor:I

    .line 125
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 126
    iput v4, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 128
    iput v5, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->lastScrollX:I

    .line 130
    const v2, 0x7f020058

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 148
    invoke-virtual {p0, v4}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setFillViewport(Z)V

    .line 149
    invoke-virtual {p0, v5}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 151
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 152
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 153
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 156
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 158
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollOffset:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollOffset:I

    .line 159
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorHeight:I

    .line 160
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineHeight:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineHeight:I

    .line 161
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPadding:I

    .line 162
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    .line 163
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerWidth:I

    .line 164
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextSize:I

    int-to-float v2, v2

    invoke-static {v4, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextSize:I

    .line 168
    sget-object v2, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 170
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextSize:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextSize:I

    .line 171
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextColor:I

    .line 173
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    sget-object v2, Lcom/vkcoffee/android/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 179
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorColor:I

    .line 180
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineColor:I

    .line 181
    const/4 v2, 0x2

    iget v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerColor:I

    .line 182
    const/4 v2, 0x3

    iget v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorHeight:I

    .line 183
    const/4 v2, 0x4

    iget v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineHeight:I

    .line 185
    const/4 v2, 0x5

    iget v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    .line 186
    const/4 v2, 0x7

    iget v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabBackgroundResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 187
    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->shouldExpand:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->shouldExpand:Z

    .line 188
    const/4 v2, 0x6

    iget v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollOffset:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollOffset:I

    .line 191
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 194
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 197
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    .line 198
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 199
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 201
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 202
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 204
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    if-nez v2, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    .line 207
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .prologue
    .line 53
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;I)I
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)I
    .locals 1
    .param p0, "x0"    # Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .prologue
    .line 53
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->mHeaderCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;II)V
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)V
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->doUpdateExpanded()V

    return-void
.end method

.method static synthetic access$500(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$602(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;F)F
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;
    .param p1, "x1"    # F

    .prologue
    .line 53
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$700(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateTabStyles(Z)V

    return-void
.end method

.method private addBadgeTextTab(ILjava/lang/CharSequence;Ljava/lang/String;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "badge"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x0

    .line 330
    if-nez p3, :cond_0

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->addTextTab(ILjava/lang/CharSequence;)V

    .line 364
    :goto_0
    return-void

    .line 335
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 336
    .local v2, "tab":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 338
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 339
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 340
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 342
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 343
    .local v0, "bv":Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 346
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 347
    const v3, 0x7f020059

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 349
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 350
    .local v1, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 351
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 352
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 353
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    new-instance v3, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$3;

    invoke-direct {v3, p0, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$3;-><init>(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private addDrawableTab(ILcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$DrawableTabProvider;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "provider"    # Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$DrawableTabProvider;

    .prologue
    .line 385
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 386
    .local v0, "tab":Landroid/widget/ImageButton;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 387
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 388
    invoke-interface {p2, v0, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$DrawableTabProvider;->getPageTitleDrawable(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    new-instance v1, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$5;

    invoke-direct {v1, p0, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$5;-><init>(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 399
    return-void
.end method

.method private addIconTab(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "resId"    # I

    .prologue
    .line 368
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 369
    .local v0, "tab":Landroid/widget/ImageButton;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 370
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 372
    new-instance v1, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$4;

    invoke-direct {v1, p0, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$4;-><init>(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 381
    return-void
.end method

.method private addTextTab(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 311
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 312
    .local v0, "tab":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 314
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 315
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 317
    new-instance v1, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$2;

    invoke-direct {v1, p0, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$2;-><init>(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    invoke-direct {p0, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setStyle(Landroid/widget/TextView;)V

    .line 324
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 327
    return-void
.end method

.method private doUpdateExpanded()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v6, 0x0

    .line 498
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getWidth()I

    move-result v4

    .line 499
    .local v4, "w":I
    const/4 v5, 0x0

    .line 500
    .local v5, "wSum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 501
    iget-object v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/high16 v8, -0x80000000

    or-int/2addr v8, v4

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getHeight()I

    move-result v10

    or-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 502
    iget-object v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 504
    .local v2, "tw":I
    add-int/2addr v5, v2

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    .end local v2    # "tw":I
    :cond_0
    sub-int v7, v4, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/high16 v8, 0x42480000    # 50.0f

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v8

    if-ge v7, v8, :cond_1

    iget-boolean v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->autoExpand:Z

    if-nez v7, :cond_2

    :cond_1
    iget-boolean v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->shouldExpand:Z

    if-eqz v7, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 508
    .local v0, "expand":Z
    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-object v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_7

    .line 509
    iget-object v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 510
    .local v3, "v":Landroid/view/View;
    if-eqz v0, :cond_5

    .line 511
    iget v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->mHeaderCount:I

    if-lt v1, v7, :cond_3

    .line 512
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 514
    :cond_3
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v11, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "expand":Z
    .end local v3    # "v":Landroid/view/View;
    :cond_4
    move v0, v6

    .line 507
    goto :goto_1

    .line 516
    .restart local v0    # "expand":Z
    .restart local v3    # "v":Landroid/view/View;
    :cond_5
    iget v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->mHeaderCount:I

    if-lt v1, v7, :cond_6

    .line 517
    iget v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    iget v8, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {v3, v7, v6, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 519
    :cond_6
    iget-object v7, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 522
    .end local v3    # "v":Landroid/view/View;
    :cond_7
    return-void
.end method

.method private scrollToChild(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 537
    iget v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabCount:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int v0, v1, p2

    .line 542
    .local v0, "newScrollX":I
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 543
    :cond_2
    iget v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v0, v1

    .line 546
    :cond_3
    iget v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->lastScrollX:I

    if-eq v0, v1, :cond_0

    .line 547
    iput v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->lastScrollX:I

    .line 548
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollTo(II)V

    goto :goto_0
.end method

.method private setStyle(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "tab"    # Landroid/widget/TextView;

    .prologue
    .line 426
    const/4 v0, 0x0

    iget v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextSize:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 427
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    iget v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTypefaceStyle:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 428
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabColorStateList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 429
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 436
    :goto_0
    iget-boolean v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->textAllCaps:Z

    if-eqz v0, :cond_0

    .line 437
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 438
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 443
    :cond_0
    :goto_1
    return-void

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 440
    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateExpanded()V
    .locals 2

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->doUpdateExpanded()V

    .line 495
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$6;

    invoke-direct {v1, p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$6;-><init>(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private updateTabStyles(Z)V
    .locals 6
    .param p1, "selectedOnly"    # Z

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 402
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->mHeaderCount:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabCount:I

    iget v4, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->mHeaderCount:I

    add-int/2addr v2, v4

    if-ge v0, v2, :cond_4

    .line 404
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 406
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 408
    iget-boolean v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->shouldExpand:Z

    if-eqz v2, :cond_2

    .line 409
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 410
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    :goto_1
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 416
    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setStyle(Landroid/widget/TextView;)V

    .line 418
    :cond_0
    instance-of v2, v1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 419
    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setStyle(Landroid/widget/TextView;)V

    .line 421
    :cond_1
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPosition:I

    if-ne v0, v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_2
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    iget v4, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {v1, v2, v3, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 421
    goto :goto_2

    .line 423
    .end local v1    # "v":Landroid/view/View;
    :cond_4
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .param p1, "footer"    # Landroid/view/View;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->mFooterViews:Ljava/util/List;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->mFooterViews:Ljava/util/List;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->mFooterViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->mHeaderViews:Ljava/util/List;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->mHeaderViews:Ljava/util/List;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->mHeaderViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->mHeaderCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->mHeaderCount:I

    .line 216
    return-void
.end method

.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1, "l"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->delegatePageListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->delegatePageListeners:Ljava/util/List;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->delegatePageListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method public getDividerColor()I
    .locals 1

    .prologue
    .line 701
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPadding:I

    return v0
.end method

.method public getInactiveTabTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabColorStateList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorColor:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->shouldExpand:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 794
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabBackgroundResId:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 803
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 779
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 765
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineHeight:I

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->textAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 252
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 254
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->mHeaderViews:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->mHeaderViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 256
    .local v1, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 261
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    iput v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabCount:I

    .line 263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabCount:I

    if-ge v0, v2, :cond_4

    .line 265
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    instance-of v2, v2, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$IconTabProvider;

    if-eqz v2, :cond_1

    .line 266
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$IconTabProvider;

    invoke-interface {v2, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$IconTabProvider;->getPageIconResId(I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->addIconTab(II)V

    .line 263
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 267
    :cond_1
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    instance-of v2, v2, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$DrawableTabProvider;

    if-eqz v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$DrawableTabProvider;

    invoke-direct {p0, v0, v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->addDrawableTab(ILcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$DrawableTabProvider;)V

    goto :goto_2

    .line 269
    :cond_2
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    instance-of v2, v2, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$BadgeTabProvider;

    if-eqz v2, :cond_3

    .line 270
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$BadgeTabProvider;

    invoke-interface {v2, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$BadgeTabProvider;->getPageBadgeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v3, v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->addBadgeTextTab(ILjava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_2

    .line 272
    :cond_3
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->addTextTab(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 277
    :cond_4
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->mFooterViews:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 278
    iget-object v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->mFooterViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 279
    .restart local v1    # "view":Landroid/view/View;
    iget-object v3, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 283
    .end local v1    # "view":Landroid/view/View;
    :cond_5
    invoke-direct {p0, v4}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateTabStyles(Z)V

    .line 285
    iput-boolean v4, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->checkedTabWidths:Z

    .line 287
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;

    invoke-direct {v3, p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$1;-><init>(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 305
    invoke-direct {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateExpanded()V

    .line 307
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 555
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabCount:I

    if-nez v1, :cond_1

    .line 601
    :cond_0
    return-void

    .line 561
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getHeight()I

    move-result v12

    .line 565
    .local v12, "height":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 568
    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->mHeaderCount:I

    add-int v18, v1, v3

    .line 569
    .local v18, "tabCount":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPosition:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 570
    .local v11, "currentTab":Landroid/view/View;
    if-eqz v11, :cond_0

    .line 573
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v2, v1

    .line 574
    .local v2, "lineLeft":F
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v4, v1

    .line 577
    .local v4, "lineRight":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPositionOffset:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPosition:I

    add-int/lit8 v3, v18, -0x1

    if-ge v1, v3, :cond_2

    .line 579
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 580
    .local v14, "nextTab":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v15, v1

    .line 581
    .local v15, "nextTabLeft":F
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v0, v1

    move/from16 v16, v0

    .line 583
    .local v16, "nextTabRight":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPositionOffset:F

    mul-float/2addr v1, v15

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPositionOffset:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v2

    add-float v2, v1, v3

    .line 584
    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPositionOffset:F

    mul-float v1, v1, v16

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPositionOffset:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v4

    add-float v4, v1, v3

    .line 587
    .end local v14    # "nextTab":Landroid/view/View;
    .end local v15    # "nextTabLeft":F
    .end local v16    # "nextTabRight":F
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorHeight:I

    sub-int v1, v12, v1

    int-to-float v3, v1

    int-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 592
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineHeight:I

    sub-int v1, v12, v1

    int-to-float v7, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v8, v1

    int-to-float v9, v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 597
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    add-int/lit8 v1, v18, -0x1

    if-ge v13, v1, :cond_0

    .line 598
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 599
    .local v17, "tab":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v6, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPadding:I

    int-to-float v7, v1

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v8, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPadding:I

    sub-int v1, v12, v1

    int-to-float v9, v1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 597
    add-int/lit8 v13, v13, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 447
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 449
    iget-boolean v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->shouldExpand:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getMeasuredWidth()I

    move-result v0

    .line 454
    .local v0, "myWidth":I
    iget-object v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v2, v0

    invoke-virtual {v1, v2, p2}, Landroid/widget/LinearLayout;->measure(II)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 808
    move-object v0, p1

    check-cast v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$SavedState;

    .line 809
    .local v0, "savedState":Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$SavedState;
    invoke-virtual {v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 810
    iget v1, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$SavedState;->currentPosition:I

    iput v1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPosition:I

    .line 811
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->requestLayout()V

    .line 812
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 816
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 817
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$SavedState;

    invoke-direct {v0, v1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 818
    .local v0, "savedState":Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$SavedState;
    iget v2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->currentPosition:I

    iput v2, v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$SavedState;->currentPosition:I

    .line 819
    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->shouldExpand:Z

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$7;

    invoke-direct {v0, p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$7;-><init>(Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;)V

    invoke-virtual {p0, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->post(Ljava/lang/Runnable;)Z

    .line 533
    :cond_0
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 0
    .param p1, "textAllCaps"    # Z

    .prologue
    .line 756
    iput-boolean p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->textAllCaps:Z

    .line 757
    return-void
.end method

.method public setAutoExpand(Z)V
    .locals 3
    .param p1, "autoExpand"    # Z

    .prologue
    const/4 v2, -0x1

    .line 740
    iput-boolean p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->autoExpand:Z

    .line 741
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateTabStyles(Z)V

    .line 743
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->requestLayout()V

    .line 744
    return-void
.end method

.method public setDefaultTabLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0
    .param p1, "defaultTabLayoutParams"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 86
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0
    .param p1, "dividerColor"    # I

    .prologue
    .line 691
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerColor:I

    .line 692
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 693
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerColor:I

    .line 697
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 698
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "dividerPaddingPx"    # I

    .prologue
    .line 714
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->dividerPadding:I

    .line 715
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 716
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 654
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorColor:I

    .line 655
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 656
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorColor:I

    .line 660
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 661
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .param p1, "indicatorLineHeightPx"    # I

    .prologue
    .line 668
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->indicatorHeight:I

    .line 669
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 670
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 241
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0
    .param p1, "scrollOffsetPx"    # I

    .prologue
    .line 723
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->scrollOffset:I

    .line 724
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 725
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 3
    .param p1, "shouldExpand"    # Z

    .prologue
    const/4 v2, -0x1

    .line 732
    iput-boolean p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->shouldExpand:Z

    .line 733
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 734
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateTabStyles(Z)V

    .line 735
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->requestLayout()V

    .line 736
    return-void
.end method

.method public setTabBackground(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 789
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 790
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateTabStyles(Z)V

    .line 791
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 1
    .param p1, "paddingPx"    # I

    .prologue
    .line 798
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabPadding:I

    .line 799
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateTabStyles(Z)V

    .line 800
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 769
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextColor:I

    .line 770
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateTabStyles(Z)V

    .line 771
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tabColorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabColorStateList:Landroid/content/res/ColorStateList;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateTabStyles(Z)V

    .line 63
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextColor:I

    .line 775
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateTabStyles(Z)V

    .line 776
    return-void
.end method

.method public setTextSize(I)V
    .locals 1
    .param p1, "textSizePx"    # I

    .prologue
    .line 760
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTextSize:I

    .line 761
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateTabStyles(Z)V

    .line 762
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 783
    iput-object p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 784
    iput p2, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 785
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->updateTabStyles(Z)V

    .line 786
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .param p1, "underlineColor"    # I

    .prologue
    .line 677
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineColor:I

    .line 678
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 679
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineColor:I

    .line 683
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 684
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .param p1, "underlineHeightPx"    # I

    .prologue
    .line 705
    iput p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->underlineHeight:I

    .line 706
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->invalidate()V

    .line 707
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    .line 229
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->pageListener:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 235
    invoke-virtual {p0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 236
    return-void
.end method
