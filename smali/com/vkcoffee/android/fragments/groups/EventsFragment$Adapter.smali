.class Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;
.super Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
.source "EventsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groups/EventsFragment;
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

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groups/EventsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/groups/EventsFragment;)V
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/groups/EventsFragment;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;-><init>(Lcom/vkcoffee/android/fragments/base/SegmenterFragment;)V

    .line 153
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;->mClickListener:Lcom/vkcoffee/android/functions/VoidF1;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/groups/EventsFragment;Lcom/vkcoffee/android/fragments/groups/EventsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/groups/EventsFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/groups/EventsFragment$1;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/groups/EventsFragment;)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/GroupHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 163
    new-instance v0, Lcom/vkcoffee/android/ui/holder/GroupHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/GroupHolder;-><init>(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;->mClickListener:Lcom/vkcoffee/android/functions/VoidF1;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/holder/GroupHolder;->onClick(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/ui/holder/GroupHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createViewHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;->createViewHolder(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/GroupHolder;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/Group;

    iget-object v0, v0, Lcom/vkcoffee/android/api/Group;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getImagesCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$new$384(Lcom/vkcoffee/android/api/Group;)V
    .locals 1
    .param p1, "group"    # Lcom/vkcoffee/android/api/Group;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/groups/EventsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->access$100(Lcom/vkcoffee/android/fragments/groups/EventsFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/groups/EventsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->access$100(Lcom/vkcoffee/android/fragments/groups/EventsFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/groups/EventsFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/groups/EventsFragment;->openGroupDetails(Lcom/vkcoffee/android/api/Group;)V

    goto :goto_0
.end method
