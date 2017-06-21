.class Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction$1;
.super Ljava/lang/Object;
.source "ContainerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->commit()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;


# direct methods
.method constructor <init>(Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;)V
    .locals 0
    .param p1, "this$1"    # Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;

    .prologue
    .line 221
    iput-object p1, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction$1;->this$1:Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction$1;->this$1:Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;

    invoke-static {v0}, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->access$300(Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 224
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction$1;->this$1:Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;

    iget-object v0, v0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lme/grishka/appkit/fragments/ContainerFragment;

    invoke-static {v0}, Lme/grishka/appkit/fragments/ContainerFragment;->access$200(Lme/grishka/appkit/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction$1;->this$1:Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;

    invoke-static {v1}, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->access$400(Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 225
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction$1;->this$1:Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;

    iget-object v0, v0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->this$0:Lme/grishka/appkit/fragments/ContainerFragment;

    invoke-static {v0}, Lme/grishka/appkit/fragments/ContainerFragment;->access$200(Lme/grishka/appkit/fragments/ContainerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction$1;->this$1:Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;

    invoke-static {v1}, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;->access$500(Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 226
    return-void
.end method
