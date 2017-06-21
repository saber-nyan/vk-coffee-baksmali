.class public Lme/grishka/appkit/fragments/ContainerFragment;
.super Lme/grishka/appkit/fragments/AppKitFragment;
.source "ContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentTransaction;,
        Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentManager;
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

.field private innerFragmentManager:Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentManager;

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

    .line 17
    invoke-direct {p0}, Lme/grishka/appkit/fragments/AppKitFragment;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment;->runQueue:Ljava/util/ArrayList;

    .line 21
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/ContainerFragment;->activityCreated:Z

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment;->children:Ljava/util/ArrayList;

    .line 23
    iput-boolean v1, p0, Lme/grishka/appkit/fragments/ContainerFragment;->detached:Z

    .line 166
    return-void
.end method

.method static synthetic access$000(Lme/grishka/appkit/fragments/ContainerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/fragments/ContainerFragment;

    .prologue
    .line 17
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/ContainerFragment;->detached:Z

    return v0
.end method

.method static synthetic access$100(Lme/grishka/appkit/fragments/ContainerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/fragments/ContainerFragment;

    .prologue
    .line 17
    iget-boolean v0, p0, Lme/grishka/appkit/fragments/ContainerFragment;->activityCreated:Z

    return v0
.end method

.method static synthetic access$200(Lme/grishka/appkit/fragments/ContainerFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/fragments/ContainerFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lme/grishka/appkit/fragments/ContainerFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lme/grishka/appkit/fragments/ContainerFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment;->runQueue:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getInnerFragmentManager()Landroid/app/FragmentManager;
    .locals 2

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/ContainerFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 39
    :cond_0
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment;->innerFragmentManager:Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentManager;

    if-nez v0, :cond_1

    .line 40
    new-instance v0, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentManager;

    invoke-virtual {p0}, Lme/grishka/appkit/fragments/ContainerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentManager;-><init>(Lme/grishka/appkit/fragments/ContainerFragment;Landroid/app/FragmentManager;)V

    iput-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment;->innerFragmentManager:Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentManager;

    .line 41
    :cond_1
    iget-object v0, p0, Lme/grishka/appkit/fragments/ContainerFragment;->innerFragmentManager:Lme/grishka/appkit/fragments/ContainerFragment$InnerFragmentManager;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/AppKitFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 27
    const/4 v2, 0x1

    iput-boolean v2, p0, Lme/grishka/appkit/fragments/ContainerFragment;->activityCreated:Z

    .line 28
    const/4 v2, 0x0

    iput-boolean v2, p0, Lme/grishka/appkit/fragments/ContainerFragment;->detached:Z

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 30
    .local v0, "handler":Landroid/os/Handler;
    iget-object v2, p0, Lme/grishka/appkit/fragments/ContainerFragment;->runQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 31
    .local v1, "r":Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 33
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lme/grishka/appkit/fragments/ContainerFragment;->runQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 34
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/ContainerFragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Lme/grishka/appkit/fragments/ContainerFragment;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 49
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lme/grishka/appkit/fragments/ContainerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 51
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lme/grishka/appkit/fragments/ContainerFragment;->detached:Z

    .line 53
    :cond_1
    invoke-super {p0}, Lme/grishka/appkit/fragments/AppKitFragment;->onDetach()V

    .line 54
    return-void
.end method
