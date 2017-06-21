.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "GameInfoHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;

.field private urls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;)V
    .locals 1
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;->this$0:Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;->urls:Ljava/util/ArrayList;

    .line 175
    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I
    .param p2, "img"    # I

    .prologue
    .line 226
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;->urls:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/Photo;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v0

    .line 227
    .local v0, "image":Lcom/vkcoffee/android/Photo$Image;
    if-eqz v0, :cond_0

    .line 228
    iget-object v1, v0, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    .line 230
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 172
    check-cast p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;->onBindViewHolder(Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 206
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;->urls:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/Photo;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v0

    .line 207
    .local v0, "image":Lcom/vkcoffee/android/Photo$Image;
    if-eqz v0, :cond_0

    .line 208
    iget v1, v0, Lcom/vkcoffee/android/Photo$Image;->height:I

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p1, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter$ViewHolder;->imageView:Lcom/vkcoffee/android/ui/widget/RatioImageView;

    iget v2, v0, Lcom/vkcoffee/android/Photo$Image;->width:I

    int-to-float v2, v2

    iget v3, v0, Lcom/vkcoffee/android/Photo$Image;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/widget/RatioImageView;->setImageRatio(F)V

    .line 212
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 201
    new-instance v0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030032

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter$ViewHolder;-><init>(Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public setUrls(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Photo;>;"
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/Photo;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;->urls:Ljava/util/ArrayList;

    .line 196
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/gamepage/GameInfoHolder$AppAdapter;->notifyDataSetChanged()V

    .line 197
    return-void
.end method
