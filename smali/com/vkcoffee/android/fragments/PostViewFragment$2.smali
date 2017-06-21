.class Lcom/vkcoffee/android/fragments/PostViewFragment$2;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$2;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 523
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$2;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$10(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 524
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$2;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$13(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->notifyItemRemoved(I)V

    .line 525
    return-void
.end method
