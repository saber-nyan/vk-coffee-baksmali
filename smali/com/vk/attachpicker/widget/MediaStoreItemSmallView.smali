.class public Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;
.super Lcom/vk/attachpicker/widget/LocalImageView;
.source "MediaStoreItemSmallView.java"


# static fields
.field public static final CHECK_CIRCLE_RADIUS:I

.field public static final CHECK_SIZE:I

.field private static final checkBgPaint:Landroid/graphics/Paint;

.field private static final countLayouts:[Landroid/text/StaticLayout;

.field private static final infiniteLayout:Landroid/text/StaticLayout;

.field private static final sidePadding:I


# instance fields
.field private final adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

.field private bgGalleryCheck:Landroid/graphics/drawable/Drawable;

.field private downTime:J

.field private downX:I

.field private downY:I

.field private durationLayout:Landroid/text/StaticLayout;

.field private foregroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mForegroundBoundsChanged:Z

.field private final mOverlayBounds:Landroid/graphics/Rect;

.field private final mSelfBounds:Landroid/graphics/Rect;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private final selectionContext:Lcom/vk/attachpicker/SelectionContext;

.field private selectionPosition:I

.field private final singleMode:Z

.field private storeEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

.field private videoIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 25
    const/16 v0, 0x63

    new-array v0, v0, [Landroid/text/StaticLayout;

    sput-object v0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->countLayouts:[Landroid/text/StaticLayout;

    .line 28
    const/16 v0, 0x28

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->CHECK_SIZE:I

    .line 29
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->CHECK_CIRCLE_RADIUS:I

    .line 30
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->sidePadding:I

    .line 33
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v10}, Landroid/text/TextPaint;-><init>(I)V

    .line 34
    .local v2, "tp":Landroid/text/TextPaint;
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->sp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 35
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 36
    invoke-static {}, Lcom/vk/attachpicker/util/Fonts;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 38
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->countLayouts:[Landroid/text/StaticLayout;

    array-length v0, v0

    if-ge v8, v0, :cond_0

    .line 39
    sget-object v9, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->countLayouts:[Landroid/text/StaticLayout;

    new-instance v0, Landroid/text/StaticLayout;

    add-int/lit8 v1, v8, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->CHECK_CIRCLE_RADIUS:I

    mul-int/lit8 v3, v3, 0x2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    aput-object v0, v9, v8

    .line 38
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    const-string/jumbo v1, "\u221e"

    sget v3, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->CHECK_CIRCLE_RADIUS:I

    mul-int/lit8 v3, v3, 0x2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    sput-object v0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->infiniteLayout:Landroid/text/StaticLayout;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->checkBgPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vk/attachpicker/SelectionContext;Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "selectionContext"    # Lcom/vk/attachpicker/SelectionContext;
    .param p3, "adapter"    # Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;
    .param p4, "singleMode"    # Z

    .prologue
    const/4 v2, -0x1

    .line 71
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/widget/LocalImageView;-><init>(Landroid/content/Context;)V

    .line 51
    iput v2, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->downX:I

    .line 52
    iput v2, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->downY:I

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->downTime:J

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->mSelfBounds:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->mOverlayBounds:Landroid/graphics/Rect;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->mForegroundBoundsChanged:Z

    .line 68
    iput v2, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->selectionPosition:I

    .line 72
    iput-object p2, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    .line 73
    iput-object p3, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    .line 74
    iput-boolean p4, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->singleMode:Z

    .line 75
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->init()V

    .line 76
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 109
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 110
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020298

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->videoIcon:Landroid/graphics/drawable/Drawable;

    .line 113
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0202b2

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    iget-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 117
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020276

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->bgGalleryCheck:Landroid/graphics/drawable/Drawable;

    .line 120
    sget-object v0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->checkBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0077

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    return-void
.end method

.method private onCheckClick()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 84
    sget-object v0, Lcom/vk/attachpicker/SelectionContext;->globalCheckLock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TimeoutLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    sget-object v0, Lcom/vk/attachpicker/SelectionContext;->globalCheckLock:Lcom/vk/attachpicker/util/TimeoutLock;

    invoke-virtual {v0}, Lcom/vk/attachpicker/util/TimeoutLock;->lock()V

    .line 89
    iget-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->storeEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->storeEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    invoke-virtual {v0}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isCorrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    iget-object v1, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->storeEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/SelectionContext;->isSelected(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    iget-object v1, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->storeEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/SelectionContext;->removeSelection(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->selectionPosition:I

    .line 99
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-virtual {v0}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    iget-object v1, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->storeEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/SelectionContext;->addSelection(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->selectionPosition:I

    .line 95
    iget v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->selectionPosition:I

    if-gez v0, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08035f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v4}, Lcom/vk/attachpicker/SelectionContext;->getLimit()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/vk/attachpicker/widget/LocalImageView;->draw(Landroid/graphics/Canvas;)V

    .line 271
    iget-object v5, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 272
    iget-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 274
    .local v0, "foreground":Landroid/graphics/drawable/Drawable;
    iget-boolean v5, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->mForegroundBoundsChanged:Z

    if-eqz v5, :cond_0

    .line 275
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->mForegroundBoundsChanged:Z

    .line 276
    iget-object v3, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->mSelfBounds:Landroid/graphics/Rect;

    .line 277
    .local v3, "selfBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->mOverlayBounds:Landroid/graphics/Rect;

    .line 279
    .local v2, "overlayBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getLeft()I

    move-result v6

    sub-int v4, v5, v6

    .line 280
    .local v4, "w":I
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getTop()I

    move-result v6

    sub-int v1, v5, v6

    .line 282
    .local v1, "h":I
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getPaddingTop()I

    move-result v6

    .line 283
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getPaddingRight()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getPaddingBottom()I

    move-result v8

    sub-int v8, v1, v8

    .line 282
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 285
    const/16 v5, 0x77

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 286
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 285
    invoke-static {v5, v6, v7, v3, v2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 287
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 290
    .end local v1    # "h":I
    .end local v2    # "overlayBounds":Landroid/graphics/Rect;
    .end local v3    # "selfBounds":Landroid/graphics/Rect;
    .end local v4    # "w":I
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 292
    .end local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Lcom/vk/attachpicker/widget/LocalImageView;->drawableStateChanged()V

    .line 250
    iget-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 253
    :cond_0
    return-void
.end method

.method public getStoreEntry()Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->storeEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Lcom/vk/attachpicker/widget/LocalImageView;->jumpDrawablesToCurrentState()V

    .line 244
    iget-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 245
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 147
    invoke-super {p0, p1}, Lcom/vk/attachpicker/widget/LocalImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 149
    iget-boolean v3, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->singleMode:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->storeEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->storeEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    invoke-virtual {v3}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isCorrupted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    iget-object v3, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->bgGalleryCheck:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    sget v5, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->CHECK_SIZE:I

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    sget v6, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->CHECK_SIZE:I

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 151
    iget-object v3, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->bgGalleryCheck:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    iget v3, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->selectionPosition:I

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->selectionPosition:I

    sget-object v4, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->countLayouts:[Landroid/text/StaticLayout;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 156
    sget-object v3, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->countLayouts:[Landroid/text/StaticLayout;

    iget v4, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->selectionPosition:I

    aget-object v2, v3, v4

    .line 162
    .local v2, "sl":Landroid/text/StaticLayout;
    :goto_0
    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sget v4, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->CHECK_SIZE:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->CHECK_SIZE:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->CHECK_CIRCLE_RADIUS:I

    int-to-float v5, v5

    sget-object v6, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->checkBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 164
    invoke-virtual {v2, v7}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    float-to-int v1, v3

    .line 165
    .local v1, "layoutWidth":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 166
    .local v0, "count":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sget v4, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->CHECK_SIZE:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->CHECK_SIZE:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 167
    invoke-virtual {v2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 168
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 172
    .end local v0    # "count":I
    .end local v1    # "layoutWidth":I
    .end local v2    # "sl":Landroid/text/StaticLayout;
    :cond_0
    iget-object v3, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->durationLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_1

    .line 173
    iget-object v3, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v7}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    float-to-int v1, v3

    .line 175
    .restart local v1    # "layoutWidth":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 176
    .restart local v0    # "count":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    sget v4, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->sidePadding:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->sidePadding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 177
    iget-object v3, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 178
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 181
    .end local v0    # "count":I
    .end local v1    # "layoutWidth":I
    :cond_1
    iget-object v3, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->storeEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->storeEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    iget-boolean v3, v3, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isVideo:Z

    if-eqz v3, :cond_2

    .line 182
    iget-object v3, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->videoIcon:Landroid/graphics/drawable/Drawable;

    sget v4, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->sidePadding:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    sget v6, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->sidePadding:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->videoIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v5, v6

    sget v6, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->sidePadding:I

    iget-object v7, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->videoIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    sget v8, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->sidePadding:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 183
    iget-object v3, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->videoIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 185
    :cond_2
    return-void

    .line 157
    :cond_3
    iget v3, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->selectionPosition:I

    sget-object v4, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->countLayouts:[Landroid/text/StaticLayout;

    array-length v4, v4

    if-lt v3, v4, :cond_4

    .line 158
    sget-object v2, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->infiniteLayout:Landroid/text/StaticLayout;

    .restart local v2    # "sl":Landroid/text/StaticLayout;
    goto/16 :goto_0

    .line 160
    .end local v2    # "sl":Landroid/text/StaticLayout;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "sl":Landroid/text/StaticLayout;
    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 257
    invoke-super/range {p0 .. p5}, Lcom/vk/attachpicker/widget/LocalImageView;->onLayout(ZIIII)V

    .line 258
    iput-boolean p1, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->mForegroundBoundsChanged:Z

    .line 259
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Lcom/vk/attachpicker/widget/LocalImageView;->onMeasure(II)V

    .line 106
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Lcom/vk/attachpicker/widget/LocalImageView;->onSizeChanged(IIII)V

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->mForegroundBoundsChanged:Z

    .line 265
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 190
    iget-object v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    .line 191
    iget-object v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 194
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    .line 195
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->downX:I

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->downY:I

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->downTime:J

    .line 232
    :cond_2
    :goto_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 199
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_7

    .line 200
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 201
    .local v4, "upX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 202
    .local v5, "upY":I
    iget v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->downX:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    iget v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->downY:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    iget-wide v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->downTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->downX:I

    sub-int/2addr v6, v4

    .line 203
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v7

    if-ge v6, v7, :cond_5

    iget v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->downY:I

    sub-int/2addr v6, v5

    .line 204
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->downTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x12c

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    .line 207
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getMeasuredWidth()I

    move-result v6

    sget v7, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->CHECK_SIZE:I

    sub-int v1, v6, v7

    .line 208
    .local v1, "l":I
    const/4 v3, 0x0

    .line 209
    .local v3, "t":I
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getMeasuredWidth()I

    move-result v2

    .line 210
    .local v2, "r":I
    sget v0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->CHECK_SIZE:I

    .line 212
    .local v0, "b":I
    iget-boolean v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->singleMode:Z

    if-nez v6, :cond_6

    if-lt v4, v1, :cond_6

    if-gt v4, v2, :cond_6

    if-ltz v5, :cond_6

    if-gt v5, v0, :cond_6

    .line 213
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->onCheckClick()V

    .line 220
    .end local v0    # "b":I
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    :cond_5
    :goto_2
    const/4 v6, -0x1

    iput v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->downX:I

    .line 221
    const/4 v6, -0x1

    iput v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->downY:I

    .line 222
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->downTime:J

    goto :goto_0

    .line 215
    .restart local v0    # "b":I
    .restart local v1    # "l":I
    .restart local v2    # "r":I
    .restart local v3    # "t":I
    :cond_6
    iget-object v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v6, v6, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_5

    .line 216
    iget-object v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v6, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_2

    .line 223
    .end local v0    # "b":I
    .end local v1    # "l":I
    .end local v2    # "r":I
    .end local v3    # "t":I
    .end local v4    # "upX":I
    .end local v5    # "upY":I
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->downTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x12c

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 224
    iget-object v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v6, :cond_8

    .line 225
    iget-object v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v6, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 227
    :cond_8
    const/4 v6, -0x1

    iput v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->downX:I

    .line 228
    const/4 v6, -0x1

    iput v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->downY:I

    .line 229
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->downTime:J

    .line 230
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method public setImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;ZLcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;Z)V
    .locals 1
    .param p1, "image"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    .param p2, "fullSize"    # Z
    .param p3, "listener"    # Lcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;
    .param p4, "usePlaceholder"    # Z

    .prologue
    .line 130
    iput-object p1, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->storeEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .line 131
    iget-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->selectionContext:Lcom/vk/attachpicker/SelectionContext;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/SelectionContext;->findSelectionPosition(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->selectionPosition:I

    .line 137
    :goto_0
    iget-boolean v0, p1, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isVideo:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->duration:I

    if-lez v0, :cond_1

    .line 138
    iget v0, p1, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->duration:I

    invoke-static {v0}, Lcom/vk/attachpicker/mediastore/DurationStaticLayouts;->get(I)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->durationLayout:Landroid/text/StaticLayout;

    .line 142
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/vk/attachpicker/widget/LocalImageView;->setImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;ZLcom/vk/attachpicker/widget/LocalImageView$ImageDisplayListener;Z)V

    .line 143
    return-void

    .line 134
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->selectionPosition:I

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->durationLayout:Landroid/text/StaticLayout;

    goto :goto_1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 81
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/vk/attachpicker/widget/LocalImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
