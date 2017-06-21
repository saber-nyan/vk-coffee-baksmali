.class public Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;
    }
.end annotation


# instance fields
.field private currentPosition:I

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private delegate:Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

.field private dividerPadding:I

.field private indicatorColor:I

.field private lastScrollX:I

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private tabCount:I

.field private tabPadding:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x34

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 33
    iput v1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->currentPosition:I

    .line 37
    const v0, -0x141210

    iput v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->indicatorColor:I

    .line 38
    iput v1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->underlineColor:I

    .line 40
    invoke-static {v4}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->scrollOffset:I

    .line 41
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->underlineHeight:I

    .line 42
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->dividerPadding:I

    .line 43
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabPadding:I

    .line 45
    iput v1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->lastScrollX:I

    .line 50
    invoke-virtual {p0, v3}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->setFillViewport(Z)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->setWillNotDraw(Z)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->setHorizontalScrollBarEnabled(Z)V

    .line 54
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 55
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v4}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;)Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->delegate:Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    return-object v0
.end method

.method private scrollToChild(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 140
    iget v2, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabCount:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 144
    .local v1, "newScrollX":I
    if-lez p1, :cond_2

    .line 145
    iget v2, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v1, v2

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->getScrollX()I

    move-result v0

    .line 148
    .local v0, "currentScrollX":I
    iget v2, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->lastScrollX:I

    if-eq v1, v2, :cond_0

    .line 149
    if-ge v1, v0, :cond_3

    .line 150
    iput v1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->lastScrollX:I

    .line 151
    iget v2, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->lastScrollX:I

    invoke-virtual {p0, v2, v5}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->smoothScrollTo(II)V

    goto :goto_0

    .line 152
    :cond_3
    iget v2, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->scrollOffset:I

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget v4, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->scrollOffset:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    iget v3, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->scrollOffset:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->lastScrollX:I

    .line 154
    iget v2, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->lastScrollX:I

    invoke-virtual {p0, v2, v5}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->smoothScrollTo(II)V

    goto :goto_0
.end method


# virtual methods
.method public addIconTab(I)V
    .locals 7
    .param p1, "resId"    # I

    .prologue
    .line 90
    iget v1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabCount:I

    .line 91
    .local v1, "position":I
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 92
    .local v2, "tab":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0202b2

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 94
    new-instance v3, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$1;

    invoke-direct {v3, p0, v1}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$1;-><init>(Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;I)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, "imageView":Landroid/widget/ImageView;
    const v3, 0x7f0f0074

    invoke-static {v3}, Lcom/vk/attachpicker/Picker;->color(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 105
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 107
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x38

    invoke-static {v4}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v4

    const/16 v5, 0x30

    invoke-static {v5}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v5

    const/16 v6, 0x11

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v3, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    return-void
.end method

.method public addStickerTab(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 7
    .param p1, "sticker"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    const/4 v3, 0x1

    .line 113
    iget v1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabCount:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabCount:I

    .line 114
    .local v1, "position":I
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 115
    .local v2, "tab":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0202b2

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 117
    new-instance v4, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$2;

    invoke-direct {v4, p0, v1}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$2;-><init>(Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;I)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v4, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    iget v4, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v1, v4, :cond_0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 126
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, "imageView":Landroid/widget/ImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 128
    invoke-static {}, Lcom/vk/attachpicker/Picker;->picasso()Lcom/squareup/picasso/Picasso;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vkcoffee/android/data/orm/StickerStockItem;->getServerIconURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 129
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x38

    invoke-static {v4}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v4

    const/16 v5, 0x30

    invoke-static {v5}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v5

    const/16 v6, 0x11

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    return-void

    .line 125
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->currentPosition:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 168
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabCount:I

    if-nez v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->getHeight()I

    move-result v9

    .line 174
    .local v9, "height":I
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->underlineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iget v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->underlineHeight:I

    sub-int v0, v9, v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v9

    iget-object v5, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 177
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->currentPosition:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 178
    .local v8, "currentTab":Landroid/view/View;
    const/4 v3, 0x0

    .line 179
    .local v3, "lineLeft":F
    const/4 v5, 0x0

    .line 180
    .local v5, "lineRight":F
    if-eqz v8, :cond_2

    .line 181
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v3, v0

    .line 182
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v5, v0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    int-to-float v6, v9

    iget-object v7, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onPageScrolled(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "first"    # I

    .prologue
    const/4 v2, 0x1

    .line 194
    iget v1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->currentPosition:I

    if-ne v1, p1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iput p1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->currentPosition:I

    .line 198
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 201
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 202
    iget-object v1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v0, p1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 204
    :cond_3
    if-ne p2, p1, :cond_4

    if-le p1, v2, :cond_4

    .line 205
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->scrollToChild(I)V

    .line 209
    :goto_3
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->invalidate()V

    goto :goto_0

    .line 207
    :cond_4
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->scrollToChild(I)V

    goto :goto_3
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 162
    return-void
.end method

.method public removeTabs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 72
    iput v1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabCount:I

    .line 73
    iput v1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->currentPosition:I

    .line 74
    return-void
.end method

.method public selectTab(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 77
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabCount:I

    if-lt p1, v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_0
.end method

.method public setDelegate(Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;)V
    .locals 0
    .param p1, "scrollSlidingTabStripDelegate"    # Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->delegate:Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;

    .line 68
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0
    .param p1, "indicatorColor"    # I

    .prologue
    .line 213
    iput p1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->indicatorColor:I

    .line 214
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->invalidate()V

    .line 215
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0
    .param p1, "underlineColor"    # I

    .prologue
    .line 218
    iput p1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->underlineColor:I

    .line 219
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->invalidate()V

    .line 220
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->underlineColor:I

    .line 224
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->invalidate()V

    .line 225
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0
    .param p1, "underlineHeightPx"    # I

    .prologue
    .line 228
    iput p1, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->underlineHeight:I

    .line 229
    invoke-virtual {p0}, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->invalidate()V

    .line 230
    return-void
.end method

.method public updateTabStyles()V
    .locals 3

    .prologue
    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabCount:I

    if-ge v0, v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 135
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/vk/attachpicker/stickers/ScrollSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method
