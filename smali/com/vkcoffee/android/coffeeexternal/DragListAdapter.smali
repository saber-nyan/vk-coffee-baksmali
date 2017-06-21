.class public Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DragListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 33
    iput-object p1, p0, Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v7, 0x7f100263

    .line 43
    move-object v3, p2

    .line 44
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300b6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 45
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 46
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 49
    :cond_0
    const v4, 0x7f100262

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, "counter":Landroid/widget/TextView;
    const-string v4, ":::"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const v4, 0x7f100261

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 53
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/vkcoffee/android/MenuListView;->getTitle(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v4, 0x7f100260

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 56
    .local v1, "icon":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/vkcoffee/android/MenuListView;->getIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/coffeeexternal/DragListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v4, v5}, Lcom/vkcoffee/android/MenuListData;->saveResult(Ljava/lang/String;I)V

    .line 59
    return-object v3
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method
