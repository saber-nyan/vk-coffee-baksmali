.class Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "ProfileFragment.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$DisableableClickable;
.implements Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverviewInfoViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;",
        ">;",
        "Lme/grishka/appkit/views/UsableRecyclerView$DisableableClickable;",
        "Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;"
    }
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private photos:Lcom/vkcoffee/android/ui/PhotoStripView;

.field private text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 3

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 1070
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f030154

    invoke-static {p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$19(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    .line 1065
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1000dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;->icon:Landroid/widget/ImageView;

    .line 1066
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100393

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/PhotoStripView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    .line 1067
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;->text:Landroid/widget/TextView;

    .line 1071
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setOverlapOffset(F)V

    .line 1072
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setPadding(I)V

    .line 1073
    return-void
.end method


# virtual methods
.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    .line 1100
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;->item:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;->onClick:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;)V
    .locals 2
    .param p1, "item"    # Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;->text:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1078
    iget-object v0, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setVisibility(I)V

    .line 1084
    :goto_0
    return-void

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setVisibility(I)V

    .line 1083
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    iget-object v1, p1, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setCount(I)V

    goto :goto_0
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;->onBind(Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;)V

    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;->item:Ljava/lang/Object;

    check-cast v0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;->onClick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1092
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;->photos:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    .line 1096
    return-void
.end method
