.class Lcom/vk/attachpicker/fragment/GraffitiFragment$HeaderHolder;
.super Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
.source "GraffitiFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/fragment/GraffitiFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderHolder"
.end annotation


# instance fields
.field private final emptyView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vk/attachpicker/fragment/GraffitiFragment;


# direct methods
.method public constructor <init>(Lcom/vk/attachpicker/fragment/GraffitiFragment;)V
    .locals 2

    .prologue
    .line 246
    iput-object p1, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$HeaderHolder;->this$0:Lcom/vk/attachpicker/fragment/GraffitiFragment;

    .line 247
    invoke-static {p1}, Lcom/vk/attachpicker/fragment/GraffitiFragment;->access$100(Lcom/vk/attachpicker/fragment/GraffitiFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 248
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$HeaderHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1002fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$HeaderHolder;->emptyView:Landroid/widget/TextView;

    .line 249
    return-void
.end method


# virtual methods
.method public setIsEmpty(Z)V
    .locals 2
    .param p1, "isEmpty"    # Z

    .prologue
    .line 252
    if-eqz p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$HeaderHolder;->emptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GraffitiFragment$HeaderHolder;->emptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
