.class public Lcom/vkcoffee/android/ui/FormFieldsLayout;
.super Landroid/widget/LinearLayout;
.source "FormFieldsLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FormFieldsLayout;->init()V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FormFieldsLayout;->init()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FormFieldsLayout;->init()V

    .line 24
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/FormFieldsLayout;->setOrientation(I)V

    .line 44
    return-void
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, 0x43fa0000    # 500.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    or-int p1, v0, v1

    .line 48
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 49
    return-void
.end method
