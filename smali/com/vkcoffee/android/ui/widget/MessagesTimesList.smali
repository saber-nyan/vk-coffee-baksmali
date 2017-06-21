.class public Lcom/vkcoffee/android/ui/widget/MessagesTimesList;
.super Landroid/widget/FrameLayout;
.source "MessagesTimesList.java"


# static fields
.field public static DX:I


# instance fields
.field private list:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/ui/widget/MessagesTimesList;->DX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/MessagesTimesList;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 57
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/widget/MessagesTimesList;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/vkcoffee/android/ui/widget/MessagesTimesList;->list:Landroid/view/View;

    if-ne v1, v2, :cond_0

    .line 59
    sget v2, Lcom/vkcoffee/android/ui/widget/MessagesTimesList;->DX:I

    add-int/2addr v2, p4

    invoke-virtual {v1, p2, p3, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 56
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 64
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 42
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 43
    .local v0, "h":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 45
    .local v3, "w":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/widget/MessagesTimesList;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 46
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/widget/MessagesTimesList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 47
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/vkcoffee/android/ui/widget/MessagesTimesList;->list:Landroid/view/View;

    if-ne v2, v4, :cond_0

    sget v4, Lcom/vkcoffee/android/ui/widget/MessagesTimesList;->DX:I

    :goto_1
    add-int/2addr v4, v3

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 48
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 47
    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 45
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 47
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 51
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v3, v0}, Lcom/vkcoffee/android/ui/widget/MessagesTimesList;->setMeasuredDimension(II)V

    .line 52
    return-void
.end method

.method public setList(Landroid/view/View;)V
    .locals 0
    .param p1, "list"    # Landroid/view/View;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/MessagesTimesList;->list:Landroid/view/View;

    .line 38
    return-void
.end method
