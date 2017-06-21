.class Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "ProfileFragment.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoardTopicViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# instance fields
.field private subtitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 3

    .prologue
    .line 639
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 640
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f030147

    invoke-static {p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$19(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    .line 636
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicViewHolder;->subtitle:Landroid/widget/TextView;

    .line 637
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1000dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicViewHolder;->title:Landroid/widget/TextView;

    .line 641
    return-void
.end method


# virtual methods
.method public onBind(Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;)V
    .locals 8
    .param p1, "item"    # Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;

    .prologue
    const/4 v5, 0x1

    .line 644
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;->topic:Lcom/vkcoffee/android/api/BoardTopic;

    iget-object v1, v1, Lcom/vkcoffee/android/api/BoardTopic;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicViewHolder;->subtitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;->topic:Lcom/vkcoffee/android/api/BoardTopic;

    iget v2, v2, Lcom/vkcoffee/android/api/BoardTopic;->updated:I

    invoke-static {v2, v5}, Lcom/vkcoffee/android/TimeUtils;->langDate(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \u0412\u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0048

    iget-object v4, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;->topic:Lcom/vkcoffee/android/api/BoardTopic;

    iget v4, v4, Lcom/vkcoffee/android/api/BoardTopic;->numComments:I

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;->topic:Lcom/vkcoffee/android/api/BoardTopic;

    iget v7, v7, Lcom/vkcoffee/android/api/BoardTopic;->numComments:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicViewHolder;->onBind(Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;)V

    return-void
.end method

.method public onClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 649
    new-instance v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicViewHolder;->item:Ljava/lang/Object;

    check-cast v1, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;->topic:Lcom/vkcoffee/android/api/BoardTopic;

    iget v2, v1, Lcom/vkcoffee/android/api/BoardTopic;->id:I

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v1

    neg-int v3, v1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicViewHolder;->item:Ljava/lang/Object;

    check-cast v1, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;->topic:Lcom/vkcoffee/android/api/BoardTopic;

    iget-object v1, v1, Lcom/vkcoffee/android/api/BoardTopic;->title:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;-><init>(IILjava/lang/String;)V

    .line 650
    .local v0, "builder":Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v1

    iget v1, v1, Lcom/vkcoffee/android/api/ExtendedUserProfile;->adminLevel:I

    if-lez v1, :cond_0

    .line 651
    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->setIsAdmin(Z)Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;

    .line 653
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicViewHolder;->item:Ljava/lang/Object;

    check-cast v1, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicInfoItem;->topic:Lcom/vkcoffee/android/api/BoardTopic;

    iget v1, v1, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_1

    .line 654
    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->setIsClosed(Z)Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;

    .line 656
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$BoardTopicViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->go(Landroid/app/Fragment;)V

    .line 657
    return-void
.end method
