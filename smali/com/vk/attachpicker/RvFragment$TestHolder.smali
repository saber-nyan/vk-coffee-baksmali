.class Lcom/vk/attachpicker/RvFragment$TestHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RvFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/RvFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestHolder"
.end annotation


# instance fields
.field private text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vk/attachpicker/RvFragment;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/RvFragment;)V
    .locals 4

    .prologue
    .line 56
    iput-object p1, p0, Lcom/vk/attachpicker/RvFragment$TestHolder;->this$0:Lcom/vk/attachpicker/RvFragment;

    .line 57
    invoke-virtual {p1}, Lcom/vk/attachpicker/RvFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030113

    invoke-static {p1}, Lcom/vk/attachpicker/RvFragment;->access$100(Lcom/vk/attachpicker/RvFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/RvFragment$TestHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1002f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vk/attachpicker/RvFragment$TestHolder;->text:Landroid/widget/TextView;

    .line 59
    return-void
.end method


# virtual methods
.method public update(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vk/attachpicker/RvFragment$TestHolder;->text:Landroid/widget/TextView;

    const-string/jumbo v1, "Not implemented yet"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method
