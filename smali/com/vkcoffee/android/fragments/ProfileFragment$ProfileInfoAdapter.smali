.class Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileInfoAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;",
        ">;>;",
        "Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileInfoAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 1131
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileInfoAdapter;)V
    .locals 0

    .prologue
    .line 1130
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileInfoAdapter;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    return-void
.end method


# virtual methods
.method public getBlockType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileInfoAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;

    iget v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;->backgroundType:I

    return v0
.end method

.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileInfoAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;->getImageCount()I

    move-result v0

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileInfoAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;->getImageURL(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileInfoAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileInfoAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;->getType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/BindableViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileInfoAdapter;->onBindViewHolder(Lcom/vkcoffee/android/BindableViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vkcoffee/android/BindableViewHolder;I)V
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/BindableViewHolder",
            "<",
            "Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1145
    .local p1, "holder":Lcom/vkcoffee/android/BindableViewHolder;, "Lcom/vkcoffee/android/BindableViewHolder<Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileInfoAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/BindableViewHolder;->bind(Ljava/lang/Object;)V

    .line 1146
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileInfoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/BindableViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/BindableViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/vkcoffee/android/BindableViewHolder",
            "<",
            "Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1134
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfileInfoAdapter;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1135
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1141
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 1136
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;

    .line 1137
    .local v1, "item":Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;
    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;->getType()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 1138
    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;->createViewHolder()Lcom/vkcoffee/android/BindableViewHolder;

    move-result-object v2

    goto :goto_0
.end method
