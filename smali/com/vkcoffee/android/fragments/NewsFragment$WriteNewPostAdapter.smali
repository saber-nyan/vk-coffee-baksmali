.class Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "NewsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/NewsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WriteNewPostAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;",
        ">;",
        "Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

.field final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/NewsFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/NewsFragment;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostAdapter;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 1078
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostAdapter;->url:Ljava/lang/String;

    .line 1079
    return-void
.end method


# virtual methods
.method public getBlockType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostAdapter;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$4800(Lcom/vkcoffee/android/fragments/NewsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1107
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostAdapter;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostAdapter;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/NewsFragment;->access$4700(Lcom/vkcoffee/android/fragments/NewsFragment;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1102
    const v0, 0x2dc2fc9

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1073
    check-cast p1, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostAdapter;->onBindViewHolder(Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;I)V
    .locals 0
    .param p1, "holder"    # Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;
    .param p2, "position"    # I

    .prologue
    .line 1088
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1073
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 1083
    new-instance v0, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostAdapter;->this$0:Lcom/vkcoffee/android/fragments/NewsFragment;

    invoke-direct {v0, v1, p1}, Lcom/vkcoffee/android/fragments/NewsFragment$WriteNewPostHolder;-><init>(Lcom/vkcoffee/android/fragments/NewsFragment;Landroid/view/ViewGroup;)V

    return-object v0
.end method
