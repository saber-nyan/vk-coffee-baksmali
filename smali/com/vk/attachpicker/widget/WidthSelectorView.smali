.class public Lcom/vk/attachpicker/widget/WidthSelectorView;
.super Landroid/widget/LinearLayout;
.source "WidthSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;,
        Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;
    }
.end annotation


# static fields
.field private static final radius:I

.field private static final viewSize:I


# instance fields
.field private final color:I

.field private onWidthSelectedListener:Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x38

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/widget/WidthSelectorView;->viewSize:I

    .line 41
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v0

    sput v0, Lcom/vk/attachpicker/widget/WidthSelectorView;->radius:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "selectedWidth"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iput p2, p0, Lcom/vk/attachpicker/widget/WidthSelectorView;->color:I

    .line 50
    invoke-direct {p0}, Lcom/vk/attachpicker/widget/WidthSelectorView;->init()V

    .line 51
    invoke-virtual {p0, p3}, Lcom/vk/attachpicker/widget/WidthSelectorView;->setWidth(I)V

    .line 52
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/vk/attachpicker/widget/WidthSelectorView;->radius:I

    return v0
.end method

.method private addWidthView(FI)V
    .locals 6
    .param p1, "width"    # F
    .param p2, "widthIndex"    # I

    .prologue
    const/4 v5, 0x1

    .line 82
    new-instance v0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;

    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/WidthSelectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/vk/attachpicker/widget/WidthSelectorView;->color:I

    invoke-direct {v0, v2, v3, p1}, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;-><init>(Landroid/content/Context;IF)V

    .line 83
    .local v0, "colorView":Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;
    iget v2, p0, Lcom/vk/attachpicker/widget/WidthSelectorView;->color:I

    int-to-float v2, v2

    sget-object v3, Lcom/vk/attachpicker/drawing/DrawingState;->WIDTH:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 84
    invoke-virtual {v0, v5}, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->setChecked(Z)V

    .line 86
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/vk/attachpicker/widget/WidthSelectorView;->viewSize:I

    sget v3, Lcom/vk/attachpicker/widget/WidthSelectorView;->radius:I

    mul-int/2addr v3, p2

    mul-int/lit8 v3, v3, 0x2

    const/16 v4, 0x18

    invoke-static {v4}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 87
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 88
    invoke-virtual {p0, v0, v1}, Lcom/vk/attachpicker/widget/WidthSelectorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-static {p0, v0, p2}, Lcom/vk/attachpicker/widget/WidthSelectorView$$Lambda$2;->lambdaFactory$(Lcom/vk/attachpicker/widget/WidthSelectorView;Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;I)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/widget/WidthSelectorView;->setOrientation(I)V

    .line 56
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v1

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v2

    invoke-virtual {p0, v3, v1, v3, v2}, Lcom/vk/attachpicker/widget/WidthSelectorView;->setPadding(IIII)V

    .line 57
    const v1, 0x7f02027b

    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/widget/WidthSelectorView;->setBackgroundResource(I)V

    .line 59
    sget-object v1, Lcom/vk/attachpicker/drawing/DrawingState;->WIDTH:[F

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 60
    sget-object v1, Lcom/vk/attachpicker/drawing/DrawingState;->WIDTH:[F

    aget v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/vk/attachpicker/widget/WidthSelectorView;->addWidthView(FI)V

    .line 59
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method static synthetic lambda$show$161(Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;Landroid/widget/PopupWindow;I)V
    .locals 0
    .param p2, "widthIndex"    # I

    .prologue
    .line 28
    if-eqz p0, :cond_0

    .line 29
    invoke-interface {p0, p2}, Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;->onWidthSelected(I)V

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 32
    return-void
.end method

.method public static show(Landroid/view/View;IILcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "color"    # I
    .param p2, "selectedWidth"    # I
    .param p3, "onWidthSelectedListener"    # Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;

    .prologue
    const/4 v4, 0x1

    .line 24
    new-instance v0, Lcom/vk/attachpicker/widget/WidthSelectorView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1, p2}, Lcom/vk/attachpicker/widget/WidthSelectorView;-><init>(Landroid/content/Context;II)V

    .line 25
    .local v0, "widthSelectorView":Lcom/vk/attachpicker/widget/WidthSelectorView;
    new-instance v1, Landroid/widget/PopupWindow;

    const/16 v2, 0x40

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v2

    const/16 v3, 0xf4

    invoke-static {v3}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v3

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 27
    .local v1, "window":Landroid/widget/PopupWindow;
    invoke-static {p3, v1}, Lcom/vk/attachpicker/widget/WidthSelectorView$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;Landroid/widget/PopupWindow;)Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vk/attachpicker/widget/WidthSelectorView;->setOnWidthSelectedListener(Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;)V

    .line 34
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 37
    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/vk/attachpicker/widget/WidthSelectorView;->color:I

    return v0
.end method

.method synthetic lambda$addWidthView$162(Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;ILandroid/view/View;)V
    .locals 3
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 91
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/WidthSelectorView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 92
    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/widget/WidthSelectorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;

    .line 93
    .local v0, "cv":Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;
    if-ne v0, p1, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->setChecked(Z)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 95
    .end local v0    # "cv":Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;
    :cond_1
    iget-object v2, p0, Lcom/vk/attachpicker/widget/WidthSelectorView;->onWidthSelectedListener:Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;

    if-eqz v2, :cond_2

    .line 96
    iget-object v2, p0, Lcom/vk/attachpicker/widget/WidthSelectorView;->onWidthSelectedListener:Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;

    invoke-interface {v2, p2}, Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;->onWidthSelected(I)V

    .line 98
    :cond_2
    return-void
.end method

.method public setOnWidthSelectedListener(Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;)V
    .locals 0
    .param p1, "onWidthSelectedListener"    # Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vk/attachpicker/widget/WidthSelectorView;->onWidthSelectedListener:Lcom/vk/attachpicker/widget/WidthSelectorView$OnWidthSelectedListener;

    .line 67
    return-void
.end method

.method public setWidth(I)V
    .locals 4
    .param p1, "widthIndex"    # I

    .prologue
    .line 70
    sget-object v3, Lcom/vk/attachpicker/drawing/DrawingState;->WIDTH:[F

    array-length v3, v3

    sub-int/2addr v3, p1

    add-int/lit8 v2, v3, -0x1

    .line 71
    .local v2, "realIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/widget/WidthSelectorView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 72
    invoke-virtual {p0, v1}, Lcom/vk/attachpicker/widget/WidthSelectorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;

    .line 73
    .local v0, "cv":Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;
    if-ne v2, v1, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;->setChecked(Z)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 75
    .end local v0    # "cv":Lcom/vk/attachpicker/widget/WidthSelectorView$ColorView;
    :cond_1
    return-void
.end method
