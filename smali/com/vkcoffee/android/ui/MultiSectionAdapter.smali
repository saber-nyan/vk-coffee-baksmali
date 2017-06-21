.class public abstract Lcom/vkcoffee/android/ui/MultiSectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultiSectionAdapter.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/PinnedHeaderListView$PinnedSectionedHeaderAdapter;


# instance fields
.field private headerViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    return-void
.end method

.method private getSectionHeaderView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->getHeaderLayoutResource()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, "t":Landroid/widget/TextView;
    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->getSectionCount()I

    move-result v2

    .line 62
    .local v2, "ns":I
    const/4 v0, 0x0

    .line 63
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 64
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->isSectionHeaderVisible(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 67
    :cond_0
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->getItemCount(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    return v0
.end method

.method public getExtraViewTypeCount()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderLayoutResource()I
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f0300c2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/4 v3, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->resolveIndex(I)[I

    move-result-object v0

    .line 77
    .local v0, "idx":[I
    aget v1, v0, v3

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 78
    const/4 v1, 0x0

    .line 80
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    aget v2, v0, v3

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 1
    .param p1, "section"    # I
    .param p2, "position"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getItemCount(I)I
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/4 v3, 0x1

    .line 89
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->resolveIndex(I)[I

    move-result-object v0

    .line 90
    .local v0, "idx":[I
    aget v1, v0, v3

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 91
    neg-int v1, p1

    int-to-long v2, v1

    .line 93
    :goto_0
    return-wide v2

    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    aget v2, v0, v3

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->getItemId(II)J

    move-result-wide v2

    goto :goto_0
.end method

.method public abstract getItemId(II)J
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x1

    .line 110
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->resolveIndex(I)[I

    move-result-object v0

    .line 111
    .local v0, "s":[I
    aget v2, v0, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x0

    aget v2, v0, v2

    aget v1, v0, v1

    invoke-virtual {p0, v2, v1}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->getItemViewType(II)I

    move-result v1

    goto :goto_0
.end method

.method public getItemViewType(II)I
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getSectionCount()I
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->resolveIndex(I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "section"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 169
    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 170
    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 171
    .local v0, "hv":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->getSectionTitle(I)Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-nez v6, :cond_0

    .line 173
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v6, v9, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .end local v0    # "hv":Landroid/widget/TextView;
    .end local v4    # "title":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 179
    :cond_1
    const/4 v5, 0x0

    .line 180
    .local v5, "view":Landroid/widget/TextView;
    if-nez p2, :cond_5

    .line 181
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->getSectionHeaderView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    .line 182
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v9, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 183
    .local v3, "lp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    .end local v3    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_1
    if-eqz p2, :cond_4

    :try_start_0
    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p2, :cond_4

    .line 189
    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 190
    .local v2, "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 191
    .local v1, "i":I
    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p2, :cond_2

    .line 192
    add-int/lit8 v6, p1, -0x1

    if-eq v1, v6, :cond_3

    add-int/lit8 v6, p1, 0x8

    if-gt v1, v6, :cond_6

    .line 193
    :cond_3
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->getSectionHeaderView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    .line 201
    .end local v1    # "i":I
    .end local v2    # "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->getSectionTitle(I)Ljava/lang/String;

    move-result-object v4

    .line 203
    .restart local v4    # "title":Ljava/lang/String;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "title":Ljava/lang/String;
    :goto_3
    move-object v0, v5

    .line 206
    goto :goto_0

    :cond_5
    move-object v5, p2

    .line 185
    check-cast v5, Landroid/widget/TextView;

    goto :goto_1

    .line 196
    .restart local v1    # "i":I
    .restart local v2    # "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_6
    :try_start_1
    iget-object v6, p0, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 204
    .end local v1    # "i":I
    .end local v2    # "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v6

    goto :goto_3
.end method

.method public abstract getSectionTitle(I)Ljava/lang/String;
.end method

.method public abstract getView(IILandroid/view/View;)Landroid/view/View;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->resolveIndex(I)[I

    move-result-object v0

    .line 99
    .local v0, "idx":[I
    aget v1, v0, v4

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 103
    aget v1, v0, v3

    invoke-virtual {p0, v1, p2, p3}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    :cond_0
    aget v1, v0, v3

    aget v2, v0, v4

    invoke-virtual {p0, v1, v2, p2}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->getView(IILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->getExtraViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "pos"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->resolveIndex(I)[I

    move-result-object v0

    .line 127
    .local v0, "idx":[I
    aget v2, v0, v4

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 130
    :goto_0
    return v1

    :cond_0
    aget v1, v0, v1

    aget v2, v0, v4

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->isEnabled(II)Z

    move-result v1

    goto :goto_0
.end method

.method public isEnabled(II)Z
    .locals 1
    .param p1, "section"    # I
    .param p2, "item"    # I

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public isSectionHeader(I)Z
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v0, 0x1

    .line 159
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->resolveIndex(I)[I

    move-result-object v1

    aget v1, v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isSectionHeaderVisible(I)Z
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->headerViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 22
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 23
    return-void
.end method

.method public resolveIndex(I)[I
    .locals 8
    .param p1, "item"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 26
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 27
    .local v4, "result":[I
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->getSectionCount()I

    move-result v2

    .line 28
    .local v2, "ns":I
    const/4 v1, 0x0

    .line 29
    .local v1, "idx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 30
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->isSectionHeaderVisible(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 31
    if-ne v1, p1, :cond_1

    .line 32
    aput v0, v4, v6

    .line 33
    const/4 v5, -0x1

    aput v5, v4, v7

    .line 47
    :cond_0
    :goto_1
    return-object v4

    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    :cond_2
    move v3, v1

    .line 39
    .local v3, "prevIdx":I
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/MultiSectionAdapter;->getItemCount(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 40
    if-lt p1, v3, :cond_3

    if-ge p1, v1, :cond_3

    if-eq v3, v1, :cond_3

    .line 41
    aput v0, v4, v6

    .line 42
    sub-int v5, p1, v3

    aput v5, v4, v7

    goto :goto_1

    .line 29
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
