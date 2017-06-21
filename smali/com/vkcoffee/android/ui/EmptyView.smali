.class public Lcom/vkcoffee/android/ui/EmptyView;
.super Landroid/widget/LinearLayout;
.source "EmptyView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/vkcoffee/android/ui/EmptyView;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const v1, 0x7f030082

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/EmptyView;

    .line 29
    .local v0, "r":Lcom/vkcoffee/android/ui/EmptyView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/EmptyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    const v1, 0x7f100108

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/EmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    return-object v0
.end method

.method public static setButtonText(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resID"    # I

    .prologue
    .line 73
    const v0, 0x7f100108

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    return-void
.end method

.method public static setButtonText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 69
    const v0, 0x7f100108

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public static setButtonVisible(Landroid/view/View;Z)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visible"    # Z

    .prologue
    .line 81
    const v0, 0x7f100108

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    return-void

    .line 81
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static setOnBtnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 77
    const v0, 0x7f100108

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public static setText(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resID"    # I

    .prologue
    .line 65
    const v0, 0x7f100107

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 66
    return-void
.end method

.method public static setText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 61
    const v0, 0x7f100107

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method


# virtual methods
.method public setButtonText(I)V
    .locals 0
    .param p1, "resID"    # I

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/vkcoffee/android/ui/EmptyView;->setButtonText(Landroid/view/View;I)V

    .line 48
    return-void
.end method

.method public setButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/vkcoffee/android/ui/EmptyView;->setButtonText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method public setButtonVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/vkcoffee/android/ui/EmptyView;->setButtonVisible(Landroid/view/View;Z)V

    .line 56
    return-void
.end method

.method public setOnBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/vkcoffee/android/ui/EmptyView;->setOnBtnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method public setText(I)V
    .locals 0
    .param p1, "resID"    # I

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/vkcoffee/android/ui/EmptyView;->setText(Landroid/view/View;I)V

    .line 40
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/vkcoffee/android/ui/EmptyView;->setText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method
