.class Lcom/vkcoffee/android/MenuListView$ItemViewHolder;
.super Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
.source "MenuListView.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;
.implements Lme/grishka/appkit/views/UsableRecyclerView$LongClickable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private counter:Landroid/widget/TextView;

.field private icon:Landroid/widget/ImageView;

.field private item:Lcom/vkcoffee/android/MenuListView$MenuItem;

.field private overlayCounter:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/MenuListView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/MenuListView;)V
    .locals 3

    .prologue
    .line 504
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    .line 505
    invoke-virtual {p1}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300b6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 498
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->counter:Landroid/widget/TextView;

    .line 499
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100260

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->icon:Landroid/widget/ImageView;

    .line 501
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->overlayCounter:Landroid/widget/TextView;

    .line 502
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->title:Landroid/widget/TextView;

    .line 506
    sget-boolean v0, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;

    const/high16 v2, 0x434c0000    # 204.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/ui/TabletDrawerItemBackgroundDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 509
    :cond_0
    return-void
.end method


# virtual methods
.method public applyExpansion()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 622
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v2}, Lcom/vkcoffee/android/MenuListView;->access$16(Lcom/vkcoffee/android/MenuListView;)F

    move-result v2

    const v3, 0x3e99999a    # 0.3f

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const v2, 0x3f333333    # 0.7f

    div-float v0, v1, v2

    .line 623
    .local v0, "titlesAlpha":F
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->overlayCounter:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v2}, Lcom/vkcoffee/android/MenuListView;->access$16(Lcom/vkcoffee/android/MenuListView;)F

    move-result v2

    const v3, 0x3e4ccccd    # 0.2f

    div-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v2, v4, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 624
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 625
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v2}, Lcom/vkcoffee/android/MenuListView;->access$16(Lcom/vkcoffee/android/MenuListView;)F

    move-result v2

    sub-float v2, v4, v2

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 628
    :cond_0
    return-void
.end method

.method public bind(Lcom/vkcoffee/android/MenuListView$MenuItem;)V
    .locals 12
    .param p1, "item"    # Lcom/vkcoffee/android/MenuListView$MenuItem;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, "count":I
    const/4 v3, 0x1

    .line 514
    .local v3, "z":Z
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->item:Lcom/vkcoffee/android/MenuListView$MenuItem;

    .line 515
    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/vkcoffee/android/MenuListView$MenuItem;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->icon:Landroid/widget/ImageView;

    new-instance v5, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    iget-object v6, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v6}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p1, Lcom/vkcoffee/android/MenuListView$MenuItem;->icon:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v7}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f00bb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    iget v4, p1, Lcom/vkcoffee/android/MenuListView$MenuItem;->index:I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->OFFLINE()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_4

    .line 519
    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/MenuListView;->getOfflineCounter()I

    move-result v0

    .line 568
    :cond_0
    :goto_0
    if-nez v0, :cond_d

    .line 569
    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->counter:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 570
    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->overlayCounter:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 571
    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->overlayCounter:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->itemView:Landroid/view/View;

    .line 599
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v4}, Lcom/vkcoffee/android/MenuListView;->access$21(Lcom/vkcoffee/android/MenuListView;)I

    move-result v4

    iget v5, p1, Lcom/vkcoffee/android/MenuListView$MenuItem;->index:I

    add-int/lit8 v5, v5, 0x1

    if-eq v4, v5, :cond_2

    .line 600
    const/4 v3, 0x0

    .line 602
    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 603
    sget-boolean v4, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v4, :cond_3

    .line 604
    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->applyExpansion()V

    .line 606
    :cond_3
    return-void

    .line 520
    .end local v2    # "view":Landroid/view/View;
    :cond_4
    iget v4, p1, Lcom/vkcoffee/android/MenuListView$MenuItem;->index:I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->UNREAD()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_5

    .line 521
    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/MenuListView;->getReadCounter()I

    move-result v0

    .line 522
    goto :goto_0

    :cond_5
    iget v4, p1, Lcom/vkcoffee/android/MenuListView$MenuItem;->index:I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->UNTYPING()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_6

    .line 523
    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/MenuListView;->getTypeCounter()I

    move-result v0

    .line 524
    goto :goto_0

    :cond_6
    iget v4, p1, Lcom/vkcoffee/android/MenuListView$MenuItem;->index:I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FEEDBACK()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_7

    .line 525
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumNotifications()I

    move-result v0

    .line 526
    goto :goto_0

    :cond_7
    iget v4, p1, Lcom/vkcoffee/android/MenuListView$MenuItem;->index:I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->DIALOGS()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_8

    .line 527
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumNewMessages()I

    move-result v0

    .line 528
    goto :goto_0

    :cond_8
    iget v4, p1, Lcom/vkcoffee/android/MenuListView$MenuItem;->index:I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FRIENDS()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_9

    .line 529
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumFriendRequests()I

    move-result v0

    .line 530
    goto :goto_0

    :cond_9
    iget v4, p1, Lcom/vkcoffee/android/MenuListView$MenuItem;->index:I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->GROUPS()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_a

    .line 531
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumGroupInvitations()I

    move-result v0

    .line 532
    goto/16 :goto_0

    :cond_a
    iget v4, p1, Lcom/vkcoffee/android/MenuListView$MenuItem;->index:I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->PHOTOS()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_b

    .line 533
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumPhotosMarks()I

    move-result v0

    .line 534
    goto/16 :goto_0

    :cond_b
    iget v4, p1, Lcom/vkcoffee/android/MenuListView$MenuItem;->index:I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->VIDEOS()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_c

    .line 535
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumVideosMarks()I

    move-result v0

    .line 536
    goto/16 :goto_0

    :cond_c
    iget v4, p1, Lcom/vkcoffee/android/MenuListView$MenuItem;->index:I

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->GAMES()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_0

    .line 537
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumAppRequests()I

    move-result v0

    goto/16 :goto_0

    .line 575
    :cond_d
    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->counter:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->overlayCounter:Landroid/widget/TextView;

    if-eqz v4, :cond_e

    .line 577
    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->overlayCounter:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 579
    :cond_e
    const v4, 0xf4240

    if-le v0, v4, :cond_10

    .line 580
    const-string v4, "%.2fM"

    new-array v5, v10, [Ljava/lang/Object;

    int-to-float v6, v0

    const v7, 0x49742400    # 1000000.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, "text":Ljava/lang/String;
    :goto_2
    const/4 v4, -0x5

    if-ne v0, v4, :cond_12

    .line 588
    const-string v1, "OFF"

    .line 593
    :cond_f
    :goto_3
    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->counter:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->overlayCounter:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 595
    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->overlayCounter:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 581
    .end local v1    # "text":Ljava/lang/String;
    :cond_10
    const/16 v4, 0x3e8

    if-le v0, v4, :cond_11

    .line 582
    const-string v4, "%.2fK"

    new-array v5, v10, [Ljava/lang/Object;

    int-to-float v6, v0

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 583
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_2

    .line 584
    .end local v1    # "text":Ljava/lang/String;
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_2

    .line 589
    :cond_12
    const/4 v4, -0x7

    if-ne v0, v4, :cond_f

    .line 590
    const-string v1, "ON"

    goto :goto_3
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$15(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$15(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->item:Lcom/vkcoffee/android/MenuListView$MenuItem;

    iget v1, v1, Lcom/vkcoffee/android/MenuListView$MenuItem;->index:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/MenuListView$Listener;->onMenuItemSelected(IZ)V

    .line 612
    :cond_0
    return-void
.end method

.method public onLongClick()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 615
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$15(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$15(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->item:Lcom/vkcoffee/android/MenuListView$MenuItem;

    iget v1, v1, Lcom/vkcoffee/android/MenuListView$MenuItem;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/MenuListView$Listener;->onMenuItemSelected(IZ)V

    .line 618
    :cond_0
    return v2
.end method
