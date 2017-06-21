.class Lcom/vk/attachpicker/RvFragment$TestAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RvFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/RvFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/vk/attachpicker/RvFragment$TestHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/RvFragment;


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/RvFragment;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vk/attachpicker/RvFragment$TestAdapter;->this$0:Lcom/vk/attachpicker/RvFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vk/attachpicker/RvFragment;Lcom/vk/attachpicker/RvFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vk/attachpicker/RvFragment;
    .param p2, "x1"    # Lcom/vk/attachpicker/RvFragment$1;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/RvFragment$TestAdapter;-><init>(Lcom/vk/attachpicker/RvFragment;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x64

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/vk/attachpicker/RvFragment$TestHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/RvFragment$TestAdapter;->onBindViewHolder(Lcom/vk/attachpicker/RvFragment$TestHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/vk/attachpicker/RvFragment$TestHolder;I)V
    .locals 0
    .param p1, "holder"    # Lcom/vk/attachpicker/RvFragment$TestHolder;
    .param p2, "position"    # I

    .prologue
    .line 43
    invoke-virtual {p1, p2}, Lcom/vk/attachpicker/RvFragment$TestHolder;->update(I)V

    .line 44
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/vk/attachpicker/RvFragment$TestAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vk/attachpicker/RvFragment$TestHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vk/attachpicker/RvFragment$TestHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 38
    new-instance v0, Lcom/vk/attachpicker/RvFragment$TestHolder;

    iget-object v1, p0, Lcom/vk/attachpicker/RvFragment$TestAdapter;->this$0:Lcom/vk/attachpicker/RvFragment;

    invoke-direct {v0, v1}, Lcom/vk/attachpicker/RvFragment$TestHolder;-><init>(Lcom/vk/attachpicker/RvFragment;)V

    return-object v0
.end method
