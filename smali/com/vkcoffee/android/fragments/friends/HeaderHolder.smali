.class public Lcom/vkcoffee/android/fragments/friends/HeaderHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "HeaderHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 17
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(Landroid/view/View;)V

    .line 18
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/HeaderHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 19
    .local v1, "tv":Landroid/widget/TextView;
    const v2, -0x95908b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    sget-object v2, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 22
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/HeaderHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 24
    .local v0, "paddingX":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/HeaderHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 25
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/HeaderHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 24
    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 26
    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 27
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "entry"    # Ljava/lang/CharSequence;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/HeaderHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/friends/HeaderHolder;->bind(Ljava/lang/CharSequence;)V

    return-void
.end method
