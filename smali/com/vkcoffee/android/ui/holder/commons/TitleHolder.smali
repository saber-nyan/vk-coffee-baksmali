.class public Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "TitleHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final textView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    const v0, 0x7f030185

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 19
    const v0, 0x7f1003d5

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->textView:Landroid/widget/TextView;

    .line 20
    return-void
.end method

.method public static blackTitle(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;
    .locals 2
    .param p0, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;-><init>(Landroid/view/ViewGroup;)V

    const v1, 0x7f0f0007

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->withTextColor(I)Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;

    move-result-object v0

    return-object v0
.end method

.method public static blueTitle(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;
    .locals 2
    .param p0, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;-><init>(Landroid/view/ViewGroup;)V

    const v1, 0x7f0f0012

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->withTextColor(I)Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;

    move-result-object v0

    return-object v0
.end method

.method public static darkGrayTitle(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;
    .locals 2
    .param p0, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;-><init>(Landroid/view/ViewGroup;)V

    const v1, 0x7f0f0058

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->withTextColor(I)Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;

    move-result-object v0

    return-object v0
.end method

.method public static grayTitle(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;
    .locals 2
    .param p0, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;-><init>(Landroid/view/ViewGroup;)V

    const v1, 0x7f0f0057

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->withTextColor(I)Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;

    move-result-object v0

    return-object v0
.end method

.method private withText(Ljava/lang/String;)Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-object p0
.end method

.method private withTextColor(I)Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;
    .locals 2
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    return-object p0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->textView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/ViewUtils;->setText(Landroid/widget/TextView;Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public withText(I)Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;
    .locals 1
    .param p1, "text"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 45
    return-object p0
.end method
