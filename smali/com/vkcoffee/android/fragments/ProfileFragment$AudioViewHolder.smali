.class Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "ProfileFragment.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;
.implements Lme/grishka/appkit/views/UsableRecyclerView$LongClickable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;",
        "Lme/grishka/appkit/views/UsableRecyclerView$LongClickable;"
    }
.end annotation


# instance fields
.field private audioView:Lcom/vkcoffee/android/AudioAttachView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 5

    .prologue
    const v4, 0x7f0a0027

    const/4 v3, 0x0

    .line 565
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 566
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/view/View;)V

    .line 567
    new-instance v0, Lcom/vkcoffee/android/AudioAttachView;

    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/AudioAttachView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->audioView:Lcom/vkcoffee/android/AudioAttachView;

    .line 568
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->audioView:Lcom/vkcoffee/android/AudioAttachView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 569
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 570
    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;)Lcom/vkcoffee/android/AudioAttachView;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->audioView:Lcom/vkcoffee/android/AudioAttachView;

    return-object v0
.end method


# virtual methods
.method public onBind(Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;)V
    .locals 9
    .param p1, "item"    # Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 573
    iget-object v6, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;->audio:Lcom/vkcoffee/android/AudioFile;

    .line 574
    .local v6, "a":Lcom/vkcoffee/android/AudioFile;
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->audioView:Lcom/vkcoffee/android/AudioAttachView;

    iget-object v1, v6, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    iget-object v2, v6, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    iget v3, v6, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget v4, v6, Lcom/vkcoffee/android/AudioFile;->aid:I

    iget v5, v6, Lcom/vkcoffee/android/AudioFile;->duration:I

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/AudioAttachView;->setData(Ljava/lang/String;Ljava/lang/String;III)V

    .line 575
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->audioView:Lcom/vkcoffee/android/AudioAttachView;

    invoke-virtual {v0, v8}, Lcom/vkcoffee/android/AudioAttachView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->audioView:Lcom/vkcoffee/android/AudioAttachView;

    invoke-virtual {v0, v8}, Lcom/vkcoffee/android/AudioAttachView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 577
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->audioView:Lcom/vkcoffee/android/AudioAttachView;

    invoke-virtual {v0, v7}, Lcom/vkcoffee/android/AudioAttachView;->setLongClickable(Z)V

    .line 578
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->audioView:Lcom/vkcoffee/android/AudioAttachView;

    invoke-virtual {v0, v7}, Lcom/vkcoffee/android/AudioAttachView;->setClickable(Z)V

    .line 579
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$15(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v0

    iget v1, v6, Lcom/vkcoffee/android/AudioFile;->aid:I

    if-ne v0, v1, :cond_0

    .line 580
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->audioView:Lcom/vkcoffee/android/AudioAttachView;

    iget-object v1, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;->audio:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v2, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;->audio:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/AudioAttachView;->onPlayStateChanged(III)V

    .line 582
    :cond_0
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->onBind(Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;)V

    return-void
.end method

.method public onClick()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 585
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkcoffee/android/AudioPlayerService;->getOid()I

    move-result v3

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->item:Ljava/lang/Object;

    check-cast v2, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;->audio:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->oid:I

    if-ne v3, v2, :cond_1

    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkcoffee/android/AudioPlayerService;->getAid()I

    move-result v3

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->item:Ljava/lang/Object;

    check-cast v2, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;->audio:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    if-ne v3, v2, :cond_1

    .line 586
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 587
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 588
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 589
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "action"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 603
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/vkcoffee/android/Auth;->ensureLoggedIn(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkcoffee/android/AudioPlayerService;->getOid()I

    move-result v3

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->item:Ljava/lang/Object;

    check-cast v2, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;->audio:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->oid:I

    if-ne v3, v2, :cond_2

    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v2}, Lcom/vkcoffee/android/AudioPlayerService;->getAid()I

    move-result v3

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->item:Ljava/lang/Object;

    check-cast v2, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;->audio:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    if-ne v3, v2, :cond_2

    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    iget-boolean v2, v2, Lcom/vkcoffee/android/AudioPlayerService;->initing:Z

    if-nez v2, :cond_0

    .line 595
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$16(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_3

    .line 596
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->item:Ljava/lang/Object;

    check-cast v2, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;->audio:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-static {v3, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$17(Lcom/vkcoffee/android/fragments/ProfileFragment;I)V

    .line 597
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->audioView:Lcom/vkcoffee/android/AudioAttachView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->item:Ljava/lang/Object;

    check-cast v2, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;->audio:Lcom/vkcoffee/android/AudioFile;

    iget v4, v2, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->item:Ljava/lang/Object;

    check-cast v2, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;->audio:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v3, v4, v2, v5}, Lcom/vkcoffee/android/AudioAttachView;->onPlayStateChanged(III)V

    goto :goto_0

    .line 600
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->item:Ljava/lang/Object;

    check-cast v2, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioInfoItem;->audio:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-static {v3, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$18(Lcom/vkcoffee/android/fragments/ProfileFragment;I)V

    goto :goto_0
.end method

.method public onLongClick()Z
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->audioView:Lcom/vkcoffee/android/AudioAttachView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$AudioViewHolder;->audioView:Lcom/vkcoffee/android/AudioAttachView;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/AudioAttachView;->onLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
