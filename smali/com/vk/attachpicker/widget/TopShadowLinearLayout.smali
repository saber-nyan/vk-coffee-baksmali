.class public Lcom/vk/attachpicker/widget/TopShadowLinearLayout;
.super Landroid/widget/LinearLayout;
.source "TopShadowLinearLayout.java"


# instance fields
.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private final shadowHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/TopShadowLinearLayout;->shadowHeight:I

    .line 29
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TopShadowLinearLayout;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/TopShadowLinearLayout;->shadowHeight:I

    .line 34
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TopShadowLinearLayout;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/widget/TopShadowLinearLayout;->shadowHeight:I

    .line 39
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/TopShadowLinearLayout;->init()V

    .line 40
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TopShadowLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020274

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/widget/TopShadowLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TopShadowLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/widget/TopShadowLinearLayout;->setWillNotDraw(Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 61
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TopShadowLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TopShadowLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 64
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 51
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TopShadowLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/TopShadowLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 53
    .local v0, "top":I
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TopShadowLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget v3, p0, Lcom/vk/attachpicker/widget/TopShadowLinearLayout;->shadowHeight:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 55
    .end local v0    # "top":I
    :cond_0
    return-void
.end method
