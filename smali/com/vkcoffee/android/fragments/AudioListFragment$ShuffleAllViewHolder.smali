.class public Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "AudioListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ShuffleAllViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 475
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    .line 476
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f030051

    invoke-static {v1, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/view/View;)V

    .line 477
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f100125

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 478
    .local v0, "t":Landroid/widget/TextView;
    new-instance v1, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02020f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 479
    const v1, 0x7f080090

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 480
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    return-void
.end method


# virtual methods
.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllViewHolder;->onBind(Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Ljava/lang/String;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 484
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 488
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 489
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "action"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$12(Lcom/vkcoffee/android/fragments/AudioListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    .line 491
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x1f4

    if-le v3, v4, :cond_0

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    sput-object v2, Lcom/vkcoffee/android/AudioPlayerService;->listToPlay:Ljava/util/ArrayList;

    .line 497
    :goto_0
    const-string v3, "list_al"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 498
    const-string v3, "position"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 499
    const-string v3, "force_random"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 500
    const-string v3, "show_player"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 501
    const-string v4, "referer"

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$9(Lcom/vkcoffee/android/fragments/AudioListFragment;)I

    move-result v3

    if-ltz v3, :cond_1

    const-string v3, "audios_user"

    :goto_1
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$ShuffleAllViewHolder;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 503
    return-void

    .line 495
    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    :cond_0
    move-object v0, v2

    .restart local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    goto :goto_0

    .line 501
    :cond_1
    const-string v3, "audios_group"

    goto :goto_1
.end method
