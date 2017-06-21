.class Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$3;
.super Landroid/widget/ArrayAdapter;
.source "ExtendedSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;->setupRegionParams(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/vkcoffee/android/data/database/Country;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 286
    .local p4, "x2":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/data/database/Country;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$3;->this$0:Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 292
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 293
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 294
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$3;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/data/database/Country;

    iget-boolean v2, v2, Lcom/vkcoffee/android/data/database/Country;->important:Z

    if-eqz v2, :cond_1

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 296
    :cond_0
    return-object v0

    .line 294
    :cond_1
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/search/ExtendedSearchFragment$3;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/database/Country;

    iget v0, v0, Lcom/vkcoffee/android/data/database/Country;->id:I

    int-to-long v0, v0

    return-wide v0
.end method
