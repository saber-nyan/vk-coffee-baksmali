.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "GameHorHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;,
        Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;,
        Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$OnNeedLoadNextPage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private button:Landroid/view/View;

.field private lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private textView:Landroid/widget/TextView;

.field private final visitSource:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 71
    const v1, 0x7f03002a

    invoke-direct {p0, v1, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/content/Context;)V

    .line 72
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->visitSource:Ljava/lang/String;

    .line 74
    const v1, 0x7f100122

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->textView:Landroid/widget/TextView;

    .line 75
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 76
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const v1, 0x7f100124

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->$(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 77
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 78
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 79
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->itemView:Landroid/view/View;

    const v2, -0x141210

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$1;

    invoke-direct {v2, p0, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$1;-><init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;Landroid/support/v7/widget/LinearLayoutManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 92
    const v1, 0x7f100123

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->$(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->button:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v1, 0x7f100121

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->$(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;)Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;)V
    .locals 3
    .param p1, "data"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;

    .line 99
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;->appAdapter:Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;

    invoke-static {v0, p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->access$102(Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;Lcom/vkcoffee/android/ui/holder/RecyclerHolder;)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    .line 100
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;->appAdapter:Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->textView:Landroid/widget/TextView;

    iget v1, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;->titleRes:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->button:Landroid/view/View;

    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;->appAdapter:Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 103
    return-void

    .line 102
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->bind(Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;

    if-eqz v0, :cond_0

    .line 110
    const-class v1, Lcom/vkcoffee/android/fragments/GamesListFragment;

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->lastData:Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;

    iget v2, v2, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$Ref;->titleRes:I

    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->visitSource:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/vkcoffee/android/fragments/GamesListFragment;->createArgs(Lcom/vkcoffee/android/data/CatalogInfo;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v2, v0}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 112
    :cond_0
    return-void
.end method
