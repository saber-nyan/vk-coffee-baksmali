.class public Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/ListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListDialogAdapter"
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;->items:Ljava/util/List;

    .line 110
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;->setData(Ljava/util/List;)V

    .line 111
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;

    iget v0, v0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;->id:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;

    iget v0, v0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;->type:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 136
    if-nez p2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;

    iget v2, v2, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const v1, 0x7f03007b

    .line 138
    .local v1, "res":I
    :goto_0
    new-instance v0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;-><init>(Landroid/content/Context;I)V

    .local v0, "holder":Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;
    iget-object p2, v0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;->itemView:Landroid/view/View;

    .line 142
    .end local v1    # "res":I
    :goto_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;->bind(Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;)V

    .line 143
    return-object p2

    .line 137
    .end local v0    # "holder":Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;
    :cond_0
    const v1, 0x7f03007a

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;

    .restart local v0    # "holder":Lcom/vkcoffee/android/ui/ListDialog$ListDialogItemHolder;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x2

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;>;"
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .end local p1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/ListDialog$ListDialogItem;>;"
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;->items:Ljava/util/List;

    .line 115
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/ListDialog$ListDialogAdapter;->notifyDataSetChanged()V

    .line 116
    return-void
.end method
