.class Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;
.super Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;
.source "GameGenresHolder.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder$GetterData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppsAdapter"
.end annotation


# static fields
.field private static final VIEW_TYPE_APP:I = 0x0

.field private static final VIEW_TYPE_LOADER:I = 0x1


# instance fields
.field private final context:Landroid/content/Context;

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;"
        }
    .end annotation
.end field

.field private isLoaderShowing:Z

.field private final onNeedLoadNextPage:Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$OnNeedLoadNextPage;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final title:Ljava/lang/String;

.field private final visitSource:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Context;ZLcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$OnNeedLoadNextPage;Ljava/lang/String;)V
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
    .param p5, "onNeedLoadNextPage"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$OnNeedLoadNextPage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Z",
            "Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$OnNeedLoadNextPage;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->isLoaderShowing:Z

    .line 111
    iput-boolean p4, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->isLoaderShowing:Z

    .line 112
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->data:Ljava/util/ArrayList;

    .line 113
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->title:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->context:Landroid/content/Context;

    .line 115
    iput-object p5, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->onNeedLoadNextPage:Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$OnNeedLoadNextPage;

    .line 116
    iput-object p6, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->visitSource:Ljava/lang/String;

    .line 117
    return-void
.end method


# virtual methods
.method public getApiApplications()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->isLoaderShowing:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 129
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->isLoaderShowing:Z

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->title:Ljava/lang/String;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 153
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :goto_0
    return-void

    .line 155
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :pswitch_0
    check-cast p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/ApiApplication;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->bind(Lcom/vkcoffee/android/data/ApiApplication;)V

    goto :goto_0

    .line 153
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
    .line 138
    packed-switch p2, :pswitch_data_0

    .line 147
    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/LoaderHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/commons/LoaderHolder;-><init>(Landroid/view/ViewGroup;)V

    :goto_0
    return-object v0

    .line 140
    :pswitch_0
    new-instance v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->visitSource:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;-><init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder$GetterData;Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    .local v0, "gameAppHolder":Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;
    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 142
    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameAppHolder;->itemView:Landroid/view/View;

    const v2, 0x7f020101

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 138
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
    .line 185
    add-int v0, p3, p2

    add-int/lit8 v1, p4, -0x3

    if-lt v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->onNeedLoadNextPage:Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$OnNeedLoadNextPage;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$OnNeedLoadNextPage;->onNeedLoadNextPage(I)V

    .line 188
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
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->data:Ljava/util/ArrayList;

    .line 121
    iput-boolean p2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->isLoaderShowing:Z

    .line 122
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameGenresHolder$AppsAdapter;->notifyDataSetChanged()V

    .line 123
    return-void
.end method
