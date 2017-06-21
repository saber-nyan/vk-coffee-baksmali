.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "GameHorHolder.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView$ItemWidthFixable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;",
        ">;",
        "Lcom/vkcoffee/android/ui/widget/HorizontalRecyclerView$ItemWidthFixable;"
    }
.end annotation


# instance fields
.field private apiApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;"
        }
    .end annotation
.end field

.field private final canShowBadge:Z

.field private itemWidth:I

.field private listHolder:Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

.field private final visitSource:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "visitSource"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "canShowBadge"    # Z

    .prologue
    .line 126
    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->apiApplications:Ljava/util/ArrayList;

    .line 127
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->visitSource:Ljava/lang/String;

    .line 128
    iput-boolean p2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->canShowBadge:Z

    .line 129
    return-void
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;Lcom/vkcoffee/android/ui/holder/RecyclerHolder;)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;
    .param p1, "x1"    # Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->listHolder:Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->visitSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->apiApplications:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public clearNotificationOnApp(I)V
    .locals 3
    .param p1, "appId"    # I

    .prologue
    .line 175
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->apiApplications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/ApiApplication;

    .line 176
    .local v0, "application":Lcom/vkcoffee/android/data/ApiApplication;
    iget v2, v0, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    if-ne v2, p1, :cond_0

    .line 177
    const/4 v2, 0x0

    iput v2, v0, Lcom/vkcoffee/android/data/ApiApplication;->notificationCount:I

    goto :goto_0

    .line 180
    .end local v0    # "application":Lcom/vkcoffee/android/data/ApiApplication;
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->notifyDataSetChanged()V

    .line 181
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->apiApplications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 116
    check-cast p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->onBindViewHolder(Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 195
    iget v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->itemWidth:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->setItemWidth(I)V

    .line 197
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->apiApplications:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/ApiApplication;

    iput-object v0, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->lastData:Lcom/vkcoffee/android/data/ApiApplication;

    .line 198
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->lastData:Lcom/vkcoffee/android/data/ApiApplication;

    iget-object v1, v1, Lcom/vkcoffee/android/data/ApiApplication;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->badge:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->lastData:Lcom/vkcoffee/android/data/ApiApplication;

    iget v1, v1, Lcom/vkcoffee/android/data/ApiApplication;->notificationCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->badge:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->lastData:Lcom/vkcoffee/android/data/ApiApplication;

    iget v0, v0, Lcom/vkcoffee/android/data/ApiApplication;->notificationCount:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->canShowBadge:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->listHolder:Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    iget-object v2, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;->lastData:Lcom/vkcoffee/android/data/ApiApplication;

    iget-object v3, v0, Lcom/vkcoffee/android/data/ApiApplication;->icons:[Ljava/lang/String;

    sget v0, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    const/4 v0, 0x5

    :goto_1
    aget-object v0, v3, v0

    const v3, 0x7f0202b7

    invoke-virtual {v1, v2, v0, v3}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;->setImage(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 202
    return-void

    .line 200
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 201
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 190
    new-instance v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030024

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter$ViewHolder;-><init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public setApiApplications(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "apiApplications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/ApiApplication;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->apiApplications:Ljava/util/ArrayList;

    .line 185
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->notifyDataSetChanged()V

    .line 186
    return-void
.end method

.method public setItemWidth(I)V
    .locals 0
    .param p1, "itemWidth"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameHorHolder$AppAdapter;->itemWidth:I

    .line 134
    return-void
.end method
