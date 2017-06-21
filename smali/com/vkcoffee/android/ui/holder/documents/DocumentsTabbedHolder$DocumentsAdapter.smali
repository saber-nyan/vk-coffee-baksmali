.class Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;
.super Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;
.source "DocumentsTabbedHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DocumentsAdapter"
.end annotation


# static fields
.field private static final VIEW_TYPE_DOC:I = 0x0

.field private static final VIEW_TYPE_LOADER:I = 0x1


# instance fields
.field private final context:Landroid/content/Context;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Document;",
            ">;"
        }
    .end annotation
.end field

.field private isLoaderShowing:Z

.field private final onNeedLoadNextPage:Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;ZLcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "isLoaderShowing"    # Z
    .param p5, "onNeedLoadNextPage"    # Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Document;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Z",
            "Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Document;>;"
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->isLoaderShowing:Z

    .line 105
    iput-boolean p4, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->isLoaderShowing:Z

    .line 106
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->data:Ljava/util/ArrayList;

    .line 107
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->title:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->context:Landroid/content/Context;

    .line 109
    iput-object p5, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->onNeedLoadNextPage:Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;

    .line 110
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->isLoaderShowing:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 178
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 122
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->isLoaderShowing:Z

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->title:Ljava/lang/String;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 166
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 171
    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :goto_0
    return-void

    .line 168
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_0
    check-cast p1, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/BaseDocument;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->bind(Lcom/vkcoffee/android/api/BaseDocument;)V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 131
    packed-switch p2, :pswitch_data_0

    .line 160
    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/LoaderHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/commons/LoaderHolder;-><init>(Landroid/view/ViewGroup;)V

    :goto_0
    return-object v0

    .line 133
    :pswitch_0
    new-instance v0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter$1;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter$1;-><init>(Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;Landroid/content/Context;)V

    .line 154
    .local v0, "documentHolder":Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;, "Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder<Lcom/vkcoffee/android/api/Document;>;"
    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 155
    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/documents/DocumentHolder;->itemView:Landroid/view/View;

    const v2, 0x7f020101

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onScroll(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 189
    add-int v0, p3, p2

    add-int/lit8 v1, p4, -0x3

    if-lt v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->onNeedLoadNextPage:Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocTypeData;->onNeedLoadNextPage()V

    .line 192
    :cond_0
    return-void
.end method

.method public setData(Ljava/util/ArrayList;Z)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isLoaderShowing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/Document;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Document;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->data:Ljava/util/ArrayList;

    .line 114
    iput-boolean p2, p0, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->isLoaderShowing:Z

    .line 115
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/documents/DocumentsTabbedHolder$DocumentsAdapter;->notifyDataSetChanged()V

    .line 116
    return-void
.end method
