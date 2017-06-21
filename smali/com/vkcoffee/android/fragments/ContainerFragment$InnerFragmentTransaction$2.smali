.class Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction$2;
.super Ljava/lang/Object;
.source "ContainerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->commitAllowingStateLoss()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction$2;->this$1:Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction$2;->this$1:Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->access$300(Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 241
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction$2;->this$1:Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkcoffee/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ContainerFragment;->access$200(Lcom/vkcoffee/android/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction$2;->this$1:Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->access$400(Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 242
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction$2;->this$1:Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lcom/vkcoffee/android/fragments/ContainerFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ContainerFragment;->access$200(Lcom/vkcoffee/android/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction$2;->this$1:Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;->access$500(Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 243
    return-void
.end method
