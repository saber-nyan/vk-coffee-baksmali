.class public Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GoodGroupCategoryHolder.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<[",
        "Ljava/lang/Object;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# instance fields
.field final image:Landroid/widget/ImageView;

.field lastGroupId:I

.field final text1:Landroid/widget/TextView;

.field final text2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 25
    const v0, 0x7f0300a0

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;->lastGroupId:I

    .line 26
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;->image:Landroid/widget/ImageView;

    .line 27
    const v0, 0x1020014

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;->text1:Landroid/widget/TextView;

    .line 28
    const v0, 0x1020015

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;->text2:Landroid/widget/TextView;

    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;->bind([Ljava/lang/Object;)V

    return-void
.end method

.method public bind([Ljava/lang/Object;)V
    .locals 12
    .param p1, "item"    # [Ljava/lang/Object;

    .prologue
    const/16 v6, 0xa0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 33
    aget-object v0, p1, v11

    check-cast v0, Lcom/vkcoffee/android/data/Good;

    .line 34
    .local v0, "good":Lcom/vkcoffee/android/data/Good;
    aget-object v1, p1, v10

    check-cast v1, Ljava/lang/String;

    .line 35
    .local v1, "groupName":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v2, p1, v3

    check-cast v2, Ljava/lang/String;

    .line 36
    .local v2, "groupPhoto":Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;->lastGroupId:I

    .line 38
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;->text2:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/vkcoffee/android/data/Good;->date:I

    invoke-static {v5, v10}, Lcom/vkcoffee/android/TimeUtils;->langDate(IZ)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xb7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 41
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e004a

    iget v7, v0, Lcom/vkcoffee/android/data/Good;->views_count:I

    new-array v8, v10, [Ljava/lang/Object;

    iget v9, v0, Lcom/vkcoffee/android/data/Good;->views_count:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0800bc

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/vkcoffee/android/data/Good;->category_name:Ljava/lang/String;

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 39
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;->image:Landroid/widget/ImageView;

    const v4, 0x7f0202bd

    invoke-virtual {p0, v3, v2, v4}, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;->lastGroupId:I

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget v1, p0, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;->lastGroupId:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 51
    :cond_0
    return-void
.end method
