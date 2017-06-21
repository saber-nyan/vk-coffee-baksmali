.class public Lcom/vkcoffee/android/fragments/ContainerFragment;
.super Lcom/vkcoffee/android/fragments/VKFragment;
.source "ContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentTransaction;,
        Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentManager;
    }
.end annotation


# instance fields
.field private activityCreated:Z

.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private detached:Z

.field private innerFragmentManager:Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentManager;

.field private runQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VKFragment;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment;->runQueue:Ljava/util/ArrayList;

    .line 19
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/ContainerFragment;->activityCreated:Z

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment;->children:Ljava/util/ArrayList;

    .line 21
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/ContainerFragment;->detached:Z

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/ContainerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/ContainerFragment;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment;->detached:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/ContainerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/ContainerFragment;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment;->activityCreated:Z

    return v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/ContainerFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/ContainerFragment;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/ContainerFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/ContainerFragment;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment;->runQueue:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getInnerFragmentManager()Landroid/app/FragmentManager;
    .locals 2

    .prologue
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ContainerFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment;->innerFragmentManager:Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentManager;

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentManager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ContainerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentManager;-><init>(Lcom/vkcoffee/android/fragments/ContainerFragment;Landroid/app/FragmentManager;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment;->innerFragmentManager:Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentManager;

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ContainerFragment;->innerFragmentManager:Lcom/vkcoffee/android/fragments/ContainerFragment$InnerFragmentManager;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 25
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/ContainerFragment;->activityCreated:Z

    .line 26
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/ContainerFragment;->detached:Z

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 28
    .local v0, "handler":Landroid/os/Handler;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ContainerFragment;->runQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 29
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 31
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ContainerFragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ContainerFragment;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 48
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/ContainerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 50
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/ContainerFragment;->detached:Z

    .line 52
    :cond_1
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->onDetach()V

    .line 53
    return-void
.end method
