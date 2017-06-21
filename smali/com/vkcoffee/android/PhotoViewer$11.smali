.class Lcom/vkcoffee/android/PhotoViewer$11;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/PhotoViewer;->loadUsers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/PhotoViewer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/PhotoViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/PhotoViewer;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/vkcoffee/android/PhotoViewer$11;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 679
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 680
    .local v0, "h":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 681
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    iget v3, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 683
    .end local v1    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/PhotoViewer$11;->this$0:Lcom/vkcoffee/android/PhotoViewer;

    invoke-static {v2}, Lcom/vkcoffee/android/PhotoViewer;->access$1700(Lcom/vkcoffee/android/PhotoViewer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/Photo;

    .line 684
    .local v1, "p":Lcom/vkcoffee/android/Photo;
    iget-object v2, v1, Lcom/vkcoffee/android/Photo;->user:Lcom/vkcoffee/android/UserProfile;

    if-nez v2, :cond_1

    .line 685
    iget v2, v1, Lcom/vkcoffee/android/Photo;->userID:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    iput-object v2, v1, Lcom/vkcoffee/android/Photo;->user:Lcom/vkcoffee/android/UserProfile;

    goto :goto_1

    .line 688
    .end local v1    # "p":Lcom/vkcoffee/android/Photo;
    :cond_2
    return-void
.end method
