.class Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$Adapter;
.super Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
.source "AllGroupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/SegmenterFragment",
        "<",
        "Lcom/vkcoffee/android/api/Group;",
        ">.GridAdapter<",
        "Lcom/vkcoffee/android/api/Group;",
        "Lcom/vkcoffee/android/ui/holder/GroupHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;)V
    .locals 1

    .prologue
    .line 155
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;-><init>(Lcom/vkcoffee/android/fragments/base/SegmenterFragment;)V

    .line 157
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$Adapter$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$Adapter;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$Adapter;->mClickListener:Lcom/vkcoffee/android/functions/VoidF1;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$1;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/GroupHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 167
    new-instance v0, Lcom/vkcoffee/android/ui/holder/GroupHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/GroupHolder;-><init>(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$Adapter;->mClickListener:Lcom/vkcoffee/android/functions/VoidF1;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/GroupHolder;->onClick(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/ui/holder/GroupHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createViewHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$Adapter;->createViewHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/GroupHolder;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/Group;

    iget-object v0, v0, Lcom/vkcoffee/android/api/Group;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getImagesCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$new$383(Lcom/vkcoffee/android/api/Group;)V
    .locals 1
    .param p1, "group"    # Lcom/vkcoffee/android/api/Group;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->access$100(Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->access$100(Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;->openGroupDetails(Lcom/vkcoffee/android/api/Group;)V

    goto :goto_0
.end method
