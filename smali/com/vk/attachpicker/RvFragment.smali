.class public Lcom/vk/attachpicker/RvFragment;
.super Landroid/app/Fragment;
.source "RvFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/RvFragment$TestHolder;,
        Lcom/vk/attachpicker/RvFragment$TestAdapter;
    }
.end annotation


# instance fields
.field private recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 52
    return-void
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/RvFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/RvFragment;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vk/attachpicker/RvFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 22
    const v0, 0x7f030118

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/vk/attachpicker/RvFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 29
    .local v0, "manager":Landroid/support/v7/widget/LinearLayoutManager;
    const v1, 0x7f1002f8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/vk/attachpicker/RvFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 30
    iget-object v1, p0, Lcom/vk/attachpicker/RvFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 31
    iget-object v1, p0, Lcom/vk/attachpicker/RvFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/vk/attachpicker/RvFragment$TestAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vk/attachpicker/RvFragment$TestAdapter;-><init>(Lcom/vk/attachpicker/RvFragment;Lcom/vk/attachpicker/RvFragment$1;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 32
    return-void
.end method
