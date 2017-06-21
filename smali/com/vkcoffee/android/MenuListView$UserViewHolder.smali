.class Lcom/vkcoffee/android/MenuListView$UserViewHolder;
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
    name = "UserViewHolder"
.end annotation


# instance fields
.field private id:I

.field private online:Landroid/widget/ImageView;

.field private photo:Landroid/widget/ImageView;

.field private photoURL:Ljava/lang/String;

.field final synthetic this$0:Lcom/vkcoffee/android/MenuListView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/MenuListView;)V
    .locals 3

    .prologue
    .line 974
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    .line 975
    invoke-virtual {p1}, Lcom/vkcoffee/android/MenuListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300b7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 969
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100264

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->online:Landroid/widget/ImageView;

    .line 970
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->photo:Landroid/widget/ImageView;

    .line 972
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f100106

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->title:Landroid/widget/TextView;

    .line 976
    return-void
.end method

.method private bindPhoto()V
    .locals 3

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$7(Lcom/vkcoffee/android/MenuListView;)Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$13(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$MenuAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0, v1, p0, v2}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->bindViewHolder(Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;I)V

    .line 1003
    return-void
.end method


# virtual methods
.method public applyExpansion(Z)V
    .locals 6
    .param p1, "ignoreZero"    # Z

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 1031
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v2}, Lcom/vkcoffee/android/MenuListView;->access$16(Lcom/vkcoffee/android/MenuListView;)F

    move-result v2

    const v3, 0x3e99999a    # 0.3f

    sub-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v3, 0x3f333333    # 0.7f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1032
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1033
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v2}, Lcom/vkcoffee/android/MenuListView;->access$16(Lcom/vkcoffee/android/MenuListView;)F

    move-result v2

    sub-float v2, v5, v2

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1035
    :cond_0
    iget v1, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->id:I

    if-lez v1, :cond_4

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    .line 1036
    .local v0, "offset":I
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$16(Lcom/vkcoffee/android/MenuListView;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$24(Lcom/vkcoffee/android/MenuListView;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    .line 1037
    :cond_2
    const/4 v0, 0x0

    .line 1039
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v3}, Lcom/vkcoffee/android/MenuListView;->access$16(Lcom/vkcoffee/android/MenuListView;)F

    move-result v3

    sub-float v3, v5, v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1040
    return-void

    .line 1035
    .end local v0    # "offset":I
    :cond_4
    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    goto :goto_0
.end method

.method public bind(Lcom/vkcoffee/android/UserProfile;)V
    .locals 4
    .param p1, "profile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    const/4 v1, 0x0

    .line 979
    iget v0, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    iput v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->id:I

    .line 980
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    iget-object v0, p1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->photoURL:Ljava/lang/String;

    .line 982
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->online:Landroid/widget/ImageView;

    iget v0, p1, Lcom/vkcoffee/android/UserProfile;->online:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 983
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->online:Landroid/widget/ImageView;

    iget v0, p1, Lcom/vkcoffee/android/UserProfile;->online:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    const v0, 0x7f0201af

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 984
    invoke-direct {p0}, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->bindPhoto()V

    .line 985
    sget-boolean v0, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    .line 986
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->applyExpansion(Z)V

    .line 988
    :cond_0
    return-void

    .line 982
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 983
    :cond_2
    const v0, 0x7f0201b0

    goto :goto_1
.end method

.method public bind(Lcom/vkcoffee/android/api/Group;)V
    .locals 2
    .param p1, "group"    # Lcom/vkcoffee/android/api/Group;

    .prologue
    .line 991
    iget v0, p1, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v0, v0

    iput v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->id:I

    .line 992
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 993
    iget-object v0, p1, Lcom/vkcoffee/android/api/Group;->photo:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->photoURL:Ljava/lang/String;

    .line 994
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->online:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 995
    invoke-direct {p0}, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->bindPhoto()V

    .line 996
    sget-boolean v0, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    .line 997
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->applyExpansion(Z)V

    .line 999
    :cond_0
    return-void
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->photo:Landroid/widget/ImageView;

    const v1, 0x7f0202c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1019
    return-void
.end method

.method public onClick()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1006
    iget v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->id:I

    if-lez v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$15(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$Listener;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->id:I

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/MenuListView$Listener;->onUserSelected(IZ)V

    .line 1011
    :goto_0
    return-void

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$15(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$Listener;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->id:I

    neg-int v1, v1

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/MenuListView$Listener;->onCommunitySelected(IZ)V

    goto :goto_0
.end method

.method public onLongClick()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1022
    iget v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->id:I

    if-lez v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$15(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$Listener;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->id:I

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/MenuListView$Listener;->onUserSelected(IZ)V

    .line 1027
    :goto_0
    return v2

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$15(Lcom/vkcoffee/android/MenuListView;)Lcom/vkcoffee/android/MenuListView$Listener;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->id:I

    neg-int v1, v1

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/MenuListView$Listener;->onCommunitySelected(IZ)V

    goto :goto_0
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1015
    return-void
.end method
